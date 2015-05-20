
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wit_handout2}[2015/5/20 WIT Handout Class]

\LoadClass[11pt]{article}

\RequirePackage[margin=0.8in]{geometry}
\RequirePackage{multirow}
\RequirePackage[pdftex]{graphicx}

%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\setlength\parindent{0pt}

%%

\author{Professor Smith}
\title{Handout}
\date{Fall \the\year}

\newcommand{\myInstitution}{Wentworth Institute of Technology}
\newcommand{\myCourseCode}{COMP101}
\newcommand{\myCourseTitle}{Intro to Computing}

\newcommand{\course}[2]{
	\renewcommand{\myCourseCode}{#1}
	\renewcommand{\myCourseTitle}{#2}
}

%%

\renewcommand{\maketitle}{
	\begin{tabular}{ p{1.12cm} p{0.9\textwidth} }
		\multirow{3}{*}{\includegraphics[width=0.46in]{_wit2}} & \textbf{\myInstitution} \\
			& {{\myCourseCode} -- {\myCourseTitle}} \\
			& {{\@date}, {\@author}}\\
	\end{tabular}

	\begin{tabular*}{1.0\textwidth}{ c }
    		\\ 
    		\hline
    		\\
	\end{tabular*}

	\begin{center}
		\LARGE{\@title}
	\end{center}
	
	\thispagestyle{empty}
	\pagestyle{myheadings}
	\markright{\textit{{\myCourseCode, \@date, \@author} -- {\@title}}}
}

\AtBeginDocument{\maketitle}
