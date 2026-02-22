\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tesecaiera}[2022/03/24 Classe de Tese de Doutorado do Caio]

% Formato ABNT de página A4 como padrão
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax

\LoadClass[a4paper, oneside]{memoir}

\clubpenalty=9996
\widowpenalty=9999
\brokenpenalty=4991
\predisplaypenalty=10000
\postdisplaypenalty=1549
\displaywidowpenalty=1602

% Dependências
\RequirePackage{ragged2e}
\RequirePackage[normalem]{ulem}

% Tables and floats
\RequirePackage{longtable}
\RequirePackage{colortbl}
\RequirePackage{pdflscape}
\RequirePackage{tabu}
\RequirePackage{threeparttable}
\RequirePackage{threeparttablex}
\RequirePackage{makecell}
\RequirePackage{multicol}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{wrapfig}
\RequirePackage{float}
\RequirePackage{subcaption}
\RequirePackage{rotating}
\RequirePackage{graphicx}
\newcolumntype{L}{>{\centering\arraybackslash}m{2cm}}

% Lists
\RequirePackage{paralist}

% Math
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Tikz
\RequirePackage{tikz} %for all basic options
\RequirePackage{tikz-qtree} %for simple tree syntax
\RequirePackage{tree-dvips}
\usepgflibrary{arrows} %for arrow endings
\usetikzlibrary{positioning,shapes.multipart} %for structured nodes
\usetikzlibrary{tikzmark}

% Linguistic examples
\RequirePackage{linguex}
\RequirePackage{langsci-avm}
\alignSubExtrue%
\setlength{\Exlabelsep}{0.5em}
\setlength{\SubExleftmargin}{1.5em}
\setlength{\SubExleftmargin}{1.0em}

% Decorando páginas
\makeoddfoot{plain}{}{}{\small\thepage}
\makeevenfoot{plain}{\small\thepage}{}{}
\makepagestyle{ruled}
\makeevenfoot{ruled}{\small\thepage}{}{} % page numbers at the outside
\makeoddfoot{ruled}{}{}{\small\thepage}
\makeheadrule{ruled}{\textwidth}{0.75pt}
\makeevenhead{ruled}{\small\leftmark}{}{}
\makeoddhead{ruled}{}{}{\small\rightmark}
\makepsmarks{ruled}{%
	\nouppercaseheads%
	\createmark{chapter}{left}{shownumber}{}{.\space}
	\createmark{part}{right}{shownumber}{}{.\space}
	\createmark{section}{right}{shownumber}{}{.\space}
	\createmark{subsection}{right}{shownumber}{}{.\space}
	\createplainmark{toc}{both}{\contentsname}
	\createplainmark{lof}{both}{\listfigurename}
	\createplainmark{lot}{both}{\listtablename}
	\createplainmark{bib}{both}{\bibname}
	\createplainmark{index}{both}{\indexname}
	\createplainmark{glossary}{both}{\glossaryname}
}

% Decorando divisões
\chapterstyle{bringhurst}
\setsecnumdepth{paragraph}
\setcounter{tocdepth}{3}
\newcommand\chap[1]{%
	\chapter*[#1]{#1}%
	\addcontentsline{toc}{chapter}{#1}}
\newcommand\ssec[1]{%
	\section*{#1}%
	\addcontentsline{toc}{section}{#1}}
\newcommand\subssec[1]{%
	\subsection*{\emph{#1}}%
	\addcontentsline{toc}{subsection}{#1}}


\setlength{\cftsectionindent}{1em}
\setlength{\cftsubsectionindent}{2em}
\setlength{\cftsubsubsectionindent}{3em}

% Fontes, línguas, unicode
\RequirePackage{csquotes}
\RequirePackage{fontspec}
\RequirePackage{emoji}
\RequirePackage{mathpazo}
\RequirePackage{hyphenat}
\RequirePackage[main=brazil, bidi=basic]{babel}
\newfontfamily\cartafont{EBGaramond08-Regular.ttf}[
	Extension=.otf,
	ItalicFont=EBGaramond08-Italic,
	BoldFont=EBGaramondSC08-Regular,
]
\newfontfamily\fleurfont{EBGaramond12-AllSC.otf}[
	Extension=.otf,
	ItalicFont=EBGaramond08-Italic,
	BoldFont=EBGaramondSC08-Regular,
]
\newcommand{\fleurl}{{\fleurfont{}}}
\newcommand{\fleurr}{{\fleurfont{}}}
\defaultfontfeatures{Renderer=Harfbuzz}

\babelfont[brazil]{rm}[Script=Latin]{Brill}
\babelfont[brazil]{sf}{Noto Sans}
\babelfont[brazil]{tt}[Scale=0.8]{Mononoki Nerd Font}

\babelfont[german]{rm}[Script=Latin]{Brill}
\babelfont[german]{sf}{Noto Sans}
\babelfont[german]{tt}[Scale=0.8]{Mononoki Nerd Font}
\babeltags{de=german}
%
\babelfont[english]{rm}[Script=Latin]{Brill}
\babelfont[english]{sf}{Noto Sans}
\babelfont[english]{tt}[Scale=0.8]{Mononoki Nerd Font}

\babelprovide[import, onchar=ids fonts letters]{ancientgreek}
\babelfont[ancientgreek]{rm}[BoldFont=Brill Bold]{Brill}
\babeltags{grc = ancientgreek}

\babelprovide[import, onchar=ids fonts letters]{russian}
\babelfont[russian]{rm}{Brill}

\babelprovide[import]{hebrew}
\babelfont[hebrew]{rm}[Scale=0.8]{Ezra SIL}

\babelprovide[]{ipa}
\babelfont[ipa]{rm}{Gentium Plus}
\babeltags{ipa = ipa}

\babelprovide[]{syntax}
\babelfont[syntax]{rm}[Scale=0.85]{Noto Sans}
\babeltags{syntax = syntax}

\babelprovide{hittite}
\babelfont[hittite]{rm}{UllikummiA}

\babelprovide[import,onchar=ids fonts]{sanskrit}
\babelfont[sanskrit]{rm}[Scale=1]{AdishilaLetterpressHeavy}
\babelfont[sanskrit]{sf}[Scale=1]{AdishilaLetterpressHeavy}

\babelprovide[import, onchar=ids fonts letters]{armenian}
\babelfont[armenian]{rm}[Scale=0.8]{Noto Serif Armenian}

\babelprovide[]{linearb}
\babelfont[linearb]{rm}[]{Noto Sans Linear B}

\RequirePackage{microtype}

% Configurações para o Hyperref
% Paleta de cores
\RequirePackage{xcolor}
\definecolor{green}{RGB}{16, 87, 87} % rgb(16,87,87)

\RequirePackage[pdfusetitle]{hyperref}
\hypersetup{%
	colorlinks=true, % false: boxed links; true: colored links
	linkcolor=green,  % color of internal links
	citecolor=green,  % color of links to bibliography
	filecolor=green,  % color of file links
	urlcolor=green,
}

\newcommand{\gloss}[1]{\foreignlanguage{syntax}{\textsc{#1}}}
\newcommand{\Sg}{\gloss{Sg}}
\newcommand{\Adv}{\gloss{Adv}}
\newcommand{\Neg}{\gloss{Neg}}
\newcommand{\Pl}{\gloss{Pl}}
\newcommand{\iPl}{\gloss{1Pl}}
\newcommand{\iiPl}{\gloss{2Pl}}
\newcommand{\iiiPl}{\gloss{3Pl}}
\newcommand{\iSg}{\gloss{1Sg}}
\newcommand{\iiSg}{\gloss{2Sg}}
\newcommand{\iiiSg}{\gloss{3Sg}}
\newcommand{\Art}{\gloss{Art}}
\newcommand{\PRO}{\gloss{pro}}
\newcommand{\pro}{\textsyntax{\emph{pro}}}
\newcommand{\Part}{\gloss{Part}}
\newcommand{\Med}{\gloss{Med}}
\newcommand{\Pass}{\gloss{Pass}}
\newcommand{\Comp}{\gloss{Comp}}
\newcommand{\Pron}{\gloss{Pron}}
\newcommand{\Nom}{\gloss{Nom}}
\newcommand{\Mass}{\gloss{Mass}}
\newcommand{\Det}{\gloss{Det}}
\newcommand{\Dat}{\gloss{Dat}}
\newcommand{\Fut}{\gloss{Fut}}
\newcommand{\Pres}{\gloss{Pres}}
\newcommand{\Rel}{\gloss{Rel}}
\newcommand{\Interr}{\gloss{Interr}}
\newcommand{\Opt}{\gloss{Opt}}
\newcommand{\Atv}{\gloss{Atv}}
\newcommand{\Indef}{\gloss{Indef}}
\newcommand{\Voc}{\gloss{Voc}}
\newcommand{\Interj}{\gloss{Interj}}
\newcommand{\Prep}{\gloss{Prep}}
\newcommand{\F}{\gloss{F}}
\newcommand{\M}{\gloss{M}}
\newcommand{\Neut}{\gloss{Neut}}
\newcommand{\Acu}{\gloss{Acu}}
\newcommand{\Gen}{\gloss{Gen}}
\newcommand{\Inf}{\gloss{Inf}}
\newcommand{\Conj}{\gloss{Conj}}
\newcommand{\Particl}{\gloss{Particl}}
\newcommand{\KG}[2]{\glsxtrshort{KG} #1 §#2}
\newcommand{\GH}[2]{\glsxtrshort{ChantraineGH} #1 §#2}
\newcommand{\CGG}[1]{\glsxtrshort{CGG} §#1}
\newcommand{\SSVCG}[1]{\glsxtrshort{RijksbaronSSVCG} §#1}
\newcommand{\CAGL}[1]{\glsxtrshort{CAGL} (p.~#1)}

\setlength{\footmarkwidth}{0.5em}
\setlength{\footmarksep}{0em}
\setlength{\footparindent}{0em}
\footmarkstyle{\textsuperscript{#1}\hspace{0.5em}}

% Glossário
\let\printindex\undefined
\usepackage{../bibliografia/bibliocaiera}
\renewcommand{\passagem}[1]{\ifglshasparent{\glsentryparent{idx.#1}}{\glsxtrusefield{\glsentryparent{\glsentryparent{idx.#1}}}{useri},
	}{}\glsxtrusefield{\glsentryparent{idx.#1}}{useri},
	\gls{idx.#1}\ifglshasfield{useri}{idx.#1}{ =~\hyperref[corp:#1]{C\glsentryuseri{idx.#1}}}{}}
\newcommand{\entrada}[1]{\glsuserii{\glsentryparent{\glsentryparent{idx.#1}}} (\glsuseriii{\glsentryparent{\glsentryparent{idx.#1}}}), \glsuserii{\glsentryparent{idx.#1}} (\glsuseriii{\glsentryparent{idx.#1}}), \gls{idx.#1}}

\makeatletter
\apptocmd{\gl@stop}{\nobreak}{}{}
\makeatother
