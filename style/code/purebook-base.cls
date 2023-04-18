\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{purebook}[2023/03/10 v0.0.2 Pure Document Class]

\LoadClass[a4paper,oneside,UTF8,fontset=none]{ctexbook}

%%%%  purebook 设置  %%%%

%% 数学环境

\RequirePackage{amsmath, amsfonts, amssymb}
\RequirePackage{mathtools, mathrsfs}
\RequirePackage[xindy]{imakeidx}

%% 页面设置

\RequirePackage{geometry}
\geometry{
  paper=a4paper,
  top=25.4mm,
  bottom=25.4mm,
  left=20mm,
  right=20mm,
  headheight=21.7mm,
  headsep=4mm,
  footskip=12mm,
}
\pagestyle{plain}

%% 颜色

\RequirePackage[table]{xcolor}

\definecolor{linkcolor}{RGB}{128,0,0}
\definecolor{frenchplum}{RGB}{190,20,83}

%% 链接

\RequirePackage{hyperref}
\hypersetup{
  breaklinks=true,
  unicode=true,
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  colorlinks=true,
  linkcolor=linkcolor,
  citecolor=linkcolor,
  urlcolor=linkcolor,
}

%% 目录

\ctexset{
  section/titleformat = \raggedright
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

%% 列表缩进

\RequirePackage{enumitem}

\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=1em,itemindent=1em}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=1em,itemindent=1em}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=1em,itemindent=1em}
