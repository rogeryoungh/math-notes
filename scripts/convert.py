in_doc = False
begin_doc = False
root_dir = './gaodai/'
in_begin = 0


def get_file(path) -> str:
    data = ''
    with open(root_dir + path, 'r') as f:
        data = f.read()
    return data


newcommand = r'''
$$
\newcommand{\transpose}[1]{{#1}^\mathsf{T}}
\newcommand{\rank}{\operatorname{rank}}
\newcommand{\diag}{\operatorname{diag}}
\renewcommand{\Im}{\operatorname{Im}}
\newcommand{\tr}{\operatorname{tr}}
\renewcommand{\char}{\operatorname{char}}
\newcommand{\codim}{\operatorname{codim}}
\newcommand{\Hom}{\operatorname{Hom}}
\newcommand{\Ker}{\operatorname{Ker}}
\newcommand{\rad}{\operatorname{rad}}
\newcommand{\bfA}{\boldsymbol{A}}
\newcommand{\bbA}{\mathbb{A}}
\newcommand{\bfB}{\boldsymbol{B}}
\newcommand{\bfI}{\boldsymbol{I}}
\newcommand{\bfP}{\boldsymbol{P}}
\newcommand{\bfeps}{\boldsymbol{\eps}}
\newcommand{\vzero}{\boldsymbol{0}}
\newcommand{\num}[1]{{\fzfs{（}}{\rm{#1}}{\fzfs{）}}}
\newcommand{\ji}[2]{#1_1,\cdots,#1_#2}
$$
'''

def dfs(path):
    global in_doc
    global begin_doc
    global in_begin
    ret = ''
    data = get_file(path)
    data = data.replace('\t', '').replace('    ', '')
    data = data.replace('\\begin{equation*}', '$$')
    data = data.replace('\\end{equation*}', '$$')
    data = data.replace('\\end{equation*}', '$$')
    data = data.replace('\\[', '$$')
    data = data.replace('\\]', '$$')
    data = data.splitlines()
    index = 0
    while index < len(data):
        line = data[index]
        index += 1

        def match(s):
            return line.startswith(s)

        def get_in_brace(a, b):
            i1 = line.find(a) + 1
            i2 = line.rfind(b)
            if i1 == -1 or i2 == -1:
                return ''
            return line[i1:i2]

        if not in_doc:
            if match('\\begin{document}'):
                in_doc = True
            continue
        if not begin_doc:
            if match('\\mainmatter'):
                begin_doc = True
            continue

        if match('%') or match('\\backmatter') or match('\\printindex'):
            continue

        if match('\\end{document}'):
            in_doc = False
            break
        if match('\\include'):
            s = get_in_brace('{', '}')
            ret += dfs(s + '.tex') + '\n'
            continue

        if match('\\begin{definition}'):
            info = get_in_brace('\\[', '\\]')
            tmp = '> **定义**\n>\n'
            if len(info) > 0:
                tmp = '> **定义【%s】**\n>\n' % info
            while True:
                line = data[index]
                index += 1
                if match('\\end{definition}'):
                    break
                tmp += '> %s\n' % line
            ret += tmp + '\n'
            continue

        if match('\\begin{theorem}'):
            info = get_in_brace('\\[', '\\]')
            tmp = '> **定理**\n>\n'
            if len(info) > 0:
                tmp = '> **定理【%s】**\n>\n' % info
            while True:
                line = data[index]
                index += 1
                if match('\\end{theorem}'):
                    break
                tmp += '> %s\n' % line
            ret += tmp + '\n'
            continue

        if match('\\begin{axiom}'):
            info = get_in_brace('\\[', '\\]')
            tmp = '> **公理**\n>\n'
            if len(info) > 0:
                tmp = '> **公理【%s】**\n>\n' % info
            while True:
                line = data[index]
                index += 1
                if match('\\end{axiom}'):
                    break
                tmp += '> %s\n' % line
            ret += tmp + '\n'
            continue

        if match('\\begin{proposition}'):
            info = get_in_brace('\\[', '\\]')
            tmp = '> **命题**\n>\n'
            if len(info) > 0:
                tmp = '> **命题【%s】**\n>\n' % info
            while True:
                line = data[index]
                index += 1
                if match('\\end{proposition}'):
                    break
                tmp += '> %s\n' % line
            ret += tmp + '\n'
            continue

        if match('\\begin{proof}'):
            tmp = '> **证明**\n>\n'
            while True:
                line = data[index]
                index += 1
                if match('\\end{proof}'):
                    break
                tmp += '> %s\n' % line
            ret += tmp + '\n'
            continue

        if match('\\chapter'):
            ret += '# ' + get_in_brace('{', '}') + '\n'
            continue
        if match('\\section'):
            ret += '## ' + get_in_brace('{', '}') + '\n'
            continue
        if match('\\subsection'):
            ret += '### ' + get_in_brace('{', '}') + '\n'
            continue
        if match('\\paragraph'):
            ret += '#### ' + get_in_brace('{', '}') + '\n'
            continue
        ret += line + '\n'

    return ret


def convert(root, indir, outdir):
    global in_doc
    global begin_doc
    global root_dir
    global in_begin
    in_doc = False
    begin_doc = False
    root_dir = root
    in_begin = 0

    ret = dfs(indir)
    with open(outdir, 'w') as f:
        f.write(newcommand + ret)

convert('./src/数学分析/', 'main.tex', './mdbook/docs/1.md')
convert('./src/抽象代数/', 'main.tex', './mdbook/docs/2.md')
convert('./src/高等代数/', 'main.tex', './mdbook/docs/3.md')
