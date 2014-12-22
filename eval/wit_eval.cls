
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wit_eval}[2014/12/22 WIT Evaluation Class]

\LoadClass{wit_handout}

\RequirePackage{rotating}
\RequirePackage{color}
\RequirePackage[flushmargin]{footmisc}

%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\setlength\parindent{0pt}

%%

\newcommand{\EvalInstructions}[1]{
	\textit{\small #1} 
	\vspace{0.8cm}
}

\newcommand{\EvalFooter}[1]{
	\let\thefootnote\relax\footnote{ \textbf{#1} }
}

\newenvironment{EvalBody}{

\newcommand*{\headformat}[1]{\tiny \textbf{##1}}
\newcommand*{\head}[1]{%
  \multirow{1}{*}{
    \begin{sideways}
      \makebox[0.2cm][l]{\headformat{##1}}
    \end{sideways}}}
    
\newcommand{\question}[1]{\small ##1 \dotfill & \centering \texttt{5} & \centering \texttt{4} & \centering \texttt{3} & \centering \texttt{2} & \centering \texttt{1} & \centering \texttt{NA} \tabularnewline }

\renewcommand{\arraystretch}{2}
\begin{tabular}{ p{11.0cm} c c c c c c }
\textbf{Question} & \head{Strongly} \head{Agree} & \head{Agree} \head{\textcolor{white}{a}} & \head{Neutral} \head{\textcolor{white}{a}} & \head{Disagree} \head{\textcolor{white}{a}} & \head{Strongly} \head{Disagree} & \head{Not} \head{Applicable} \tabularnewline
}{
\end{tabular}
\\
}