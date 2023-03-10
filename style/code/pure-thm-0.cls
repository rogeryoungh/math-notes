%% 定理环境

\RequirePackage{amsthm}
\let\proof\relax
\let\endproof\relax

\newenvironment{proof}
  {\par\noindent\textbf{证明\quad}\zhkai}
  {\hfill$\Box$\quad\par}

\newtheoremstyle{thmstyle}
  {3pt}{3pt}{\zhkai}{-3pt}{\bfseries}{}{0.5em}
  {\thmname{#1} \thmnumber{#2} \thmnote{【{#3}】}}
\newtheoremstyle{solvestyle}
  {3pt}{3pt}{\zhkai}{-3pt}{\bfseries}{}{0.5em}
  {\thmname{#1} \thmnote{【{#3}】}}

\RequirePackage{pifont,manfnt,bbding}
\RequirePackage[many]{tcolorbox}

\theoremstyle{thmstyle} %theorem style
\newtheorem{theorem}{定理}[section]
\newtheorem{definition}[theorem]{定义}
\newtheorem{lemma}[theorem]{引理}
\newtheorem{corollary}[theorem]{推论}
\newtheorem{postulate}[theorem]{公设}
\newtheorem{axiom}[theorem]{公理}
\newtheorem{example}[theorem]{例}
\newtheorem{problem}[theorem]{问题}
\newtheorem{proposition}[theorem]{命题}

\theoremstyle{solvestyle}
\newtheorem{solution}{解}

