
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wit_letter2}[2015/12/18 WIT Letter Class]

\LoadClass[11pt]{article}

\RequirePackage[margin=0.8in]{geometry}
\RequirePackage{multirow}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{fancyhdr}

%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\setlength\parindent{0pt}

%%

\newcommand{\myOpen}{To Whom It May Concern:}
\newcommand{\myClose}{%
Professor Foo \\
Assistant Professor, Department of Computer Science and Networking \\Phone: (617) 989-1234 \\E-Mail: foo@wit.edu
}

\newcommand{\mySchoolLogo}{_witfull2}
\newcommand{\mySchoolInfo}{550 Huntington Avenue\hspace{5pt}\textbar\hspace{5pt}Boston, Massachusetts 02115-5998\hspace{5pt}\textbar\hspace{5pt}TEL: (617) 989-4590\hspace{5pt}\textbar\hspace{5pt}www.wit.edu}

\newcommand{\open}[1]{
	\renewcommand{\myOpen}{#1}
}

\newcommand{\close}[1]{
	\renewcommand{\myClose}{#1}
}

\newcommand{\signature}[1]{
	\vspace{#1}
	\myClose
}

\newcommand{\info}[1]{
	\renewcommand{\mySchoolInfo}{#1}
}

%%

\renewcommand{\maketitle}{
	\includegraphics[width=3.5in]{\mySchoolLogo}
	\vspace{0.3in} \\
	\myOpen \\
	
	\pagestyle{fancy}
	\lhead{}
	\chead{}
	\rhead{}
	\lfoot{}
	\cfoot{\small{\textsf{\mySchoolInfo}}}
	\rfoot{}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

\AtBeginDocument{\maketitle}
