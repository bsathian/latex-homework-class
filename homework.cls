\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[Homework LaTeX class]

%Loading existing classes and packages
\LoadClass{article}
\RequirePackage{amsmath}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\geometry{lmargin = 1.25cm, rmargin = 1.25cm,tmargin = 1.25in}
\RequirePackage{fancyhdr}
\RequirePackage{mathtools}
\RequirePackage{float}
\DeclarePairedDelimiter{\ceil}{\lceil}{\rceil}
\pagestyle{fancy}

\newcounter{question}
\newenvironment{question}{
	\refstepcounter{question}
	\vspace{0.3cm}
	\subsection*{Question \thequestion}
	%\hrule
	\vspace{0.4cm}
}{
	\vskip0.5cm
	\begin{center}
		\makebox[0.5\linewidth]{\rule{0.25\linewidth}{0.5pt}}
	\end{center}
}

\def\@course{Default}
\def\@homework{Default}
\def\@name{John Smith}

\newcommand{\course}[1]{
	\def\@course{#1}
\lhead{{#1}}}
\newcommand{\homework}[1]{
	\def\@homework{#1}
	\chead{{#1}}}
\newcommand{\name}[1]{
	\def\@name{#1}
\rhead{{#1}}}
\renewcommand{\maketitle}{
	
	\begin{center}
		{\huge \@course}
	\end{center}
	\vskip0.25cm
	\begin{center}
		{\Large \@homework}
	\end{center}
	\vskip0.5cm
	\begin{center}
		{\large \bfseries \@name}
	\end{center}

	
	\begin{center}
	\makebox[\linewidth]{\rule{\linewidth}{0.5pt}}
	\end{center}
	%\hrule
	\thispagestyle{empty}

}




