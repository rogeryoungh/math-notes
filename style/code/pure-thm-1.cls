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

\tcbset{
  common/.style={
    fontupper=\zhkai,
    sharp corners,
    lower separated=false,
    % before upper={\setlength{\parindent}{\normalparindent}},
    coltitle=black,
    colback=white,
    colframe=gray!25,
    fonttitle=\bfseries,
    enhanced,
    breakable,
    attach boxed title to top left={
      yshift=0mm,},
    boxed title style={
      sharp corners,
      colframe=gray!25,
      colback=gray!25,
    },
    separator sign={.},
  },
  claim/.style={
    coltitle=black,
    colback=gray!10,
    colframe=gray!50,
    fonttitle=\bfseries,
    detach title,
    boxrule=0pt,
    leftrule=2pt,
    attach title to upper,
    sharp corners,
    left=1mm,
  }
}

\newtcolorbox[auto counter, number within=section]{thmcounter}{}

\DeclareTColorBox[use counter from=thmcounter]{definition}{ o t\label g }{
  common,
  IfValueTF={#1}{title={定义 \thetcbcounter【#1】}}{title=定义 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}

\DeclareTColorBox[use counter from=thmcounter]{theorem}{ o t\label g }{
  common,
  IfValueTF={#1}{title={定理 \thetcbcounter【#1】}}{title=定理 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}

\DeclareTColorBox[use counter from=thmcounter]{lemma}{ o t\label g }{
  common,
  IfValueTF={#1}{title={引理 \thetcbcounter【#1】}}{title=引理 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}

\DeclareTColorBox[use counter from=thmcounter]{corollary}{ o t\label g }{
  common,
  IfValueTF={#1}{title={推论 \thetcbcounter【#1】}}{title=推论 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}

\DeclareTColorBox[use counter from=thmcounter]{postulate}{ o t\label g }{
  common,
  IfValueTF={#1}{title={公设 \thetcbcounter【#1】}}{title=公设 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}

\DeclareTColorBox[use counter from=thmcounter]{axiom}{ o t\label g }{
  common,
  IfValueTF={#1}{title={公理 \thetcbcounter【#1】}}{title=公理 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}

\DeclareTColorBox[use counter from=thmcounter]{example}{ o t\label g }{
  common,
  IfValueTF={#1}{title={例 \thetcbcounter【#1】}}{title=例 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}

\DeclareTColorBox[use counter from=thmcounter]{problem}{ o t\label g }{
  common,
  IfValueTF={#1}{title={问题【#1】}}{title=问题},
  IfBooleanTF={#2}{label=#3}{}
}
  
\DeclareTColorBox[use counter from=thmcounter]{proposition}{ o t\label g }{
  common,
  IfValueTF={#1}{title={命题 \thetcbcounter【#1】}}{title=命题 \thetcbcounter},
  IfBooleanTF={#2}{label=#3}{}
}


  
\DeclareTColorBox[no counter]{note}{ o t\label g }{
  claim,
  IfValueTF={#1}{title={笔记【#1】$\quad$}}{title=笔记$\quad$},
  IfBooleanTF={#2}{label=#3}{}
}

\newtheoremstyle{thmstyle}
  {3pt}{3pt}{\zhkai}{-3pt}{\bfseries}{}{0.5em}
  {\thmname{#1} \thmnumber{#2} \thmnote{【{#3}】}}
\newtheoremstyle{solvestyle}
  {3pt}{3pt}{\zhkai}{-3pt}{\bfseries}{}{0.5em}
  {\thmname{#1} \thmnote{【{#3}】}}

\theoremstyle{solvestyle}
\newtheorem{solution}{解}

