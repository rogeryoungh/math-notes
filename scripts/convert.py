import sys

def get_file(path) -> str:
    data = ''
    with open(path, 'r') as f:
        data = f.read()
    return data

def dfs(path):
    ret = ''
    newcommand = ''
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

        if match('%% \\'):
            newcommand += line[3:] + '\n'

        if match('%'):
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

        if match('\\begin{lemma}'):
            info = get_in_brace('\\[', '\\]')
            tmp = '> **引理**\n>\n'
            if len(info) > 0:
                tmp = '> **引理【%s】**\n>\n' % info
            while True:
                line = data[index]
                index += 1
                if match('\\end{lemma}'):
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
    if newcommand != '':
        return '$\n' + newcommand + '$\n\n' + ret
    return ret


def convert(indir, outdir):
    ret = dfs(indir)
    with open(outdir, 'w') as f:
        f.write(ret)

if __name__ == '__main__':
    if len(sys.argv) < 3:
        print('option: <file> <out>')
    else:
        convert(sys.argv[1], sys.argv[2])
