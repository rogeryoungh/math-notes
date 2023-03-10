%% 代码

\RequirePackage{listings}
%\setmonofont{Iosevka SS14}

\definecolor{codecolorkeywords}{RGB}{0,96,255}
\definecolor{codecolorcomments}{RGB}{127,127,127}
\definecolor{codecolorxmlcomments}{rgb}{0.5,0.5,0.5}
\definecolor{codecolorstrings}{RGB}{83,160,119}
\definecolor{codecolortypes}{rgb}{0.17,0.57,0.68}
\definecolor{codecolorbg}{RGB}{244,247,248}

\lstset{
  basicstyle=\ttfamily \lst@ifdisplaystyle\fi,
  % Code
  columns=fullflexible,
  tabsize=4,
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  breaklines=true,
  numbers=left,
  numbersep=10pt,
  xleftmargin=2em,
  stepnumber=1,
  firstnumber=1,
  numberfirstline=true,
  % Code design
  keywordstyle=\bfseries\color{codecolorkeywords},
  commentstyle=\color{codecolorcomments},
  stringstyle=\color{codecolorstrings},
  numberstyle=\ttfamily\small\color{gray},
  breakatwhitespace=false,
  breaklines=true,
  captionpos=t,
  keepspaces=true,
  %frame
  frame=tb,
  framerule=.5pt,
  framexleftmargin=7mm,
  rulecolor=\color{black},
  %backgroundcolor=\color{codecolorbg},
  abovecaptionskip=0pt,
  belowcaptionskip=5pt,
}


\lstdefinestyle{cpp}{
  % Line numbers
  literate=
    {==}{{==}}2
    {->}{{->}}2
    {!=}{{!=}}2
    {>=}{{>=}}2
    {<=}{{<=}}2
    {<>}{{<>}}2
    {>>}{{>>}}2
    {<<}{{<<}}2
    {\&\&}{{\&\&}}2,
  language=C++,
  morekeywords={return},
  emph={int,long,float,double,short,byte,bool,ll,signed,unsigned,void,char,true,false},
  emphstyle=\color{frenchplum}
}


\lstdefinestyle{python}{
  % Line numbers
  literate=
    {==}{{==}}2
    {->}{{->}}2
    {!=}{{!=}}2
    {>=}{{>=}}2
    {<=}{{<=}}2
    {<>}{{<>}}2
    {>>}{{>>}}2
    {<<}{{<<}}2
    {\&\&}{{\&\&}}2,
  language=python,
}

\lstdefinestyle{nonumbers}{
  numbers=none,
  xleftmargin=1em,
  framexleftmargin=3.5mm,
}

\RequirePackage{caption}

\DeclareCaptionFormat{codecaptionformat}{%
  \parbox{\linewidth}{#1#2 \ttfamily#3}
}

\captionsetup[lstlisting]{format=codecaptionformat}
\renewcommand{\lstlistingname}{
  {\ttfamily </> 代码}
}
