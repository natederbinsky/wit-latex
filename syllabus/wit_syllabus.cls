
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wit_syllabus}[2014/12/19 WIT Syllabus Class]

\LoadClass[11pt]{article}

\RequirePackage[margin=0.8in]{geometry}
\RequirePackage{multirow}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{url}

%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%%

\setlength\parindent{0pt}
\titleformat*{\section}{\large\bfseries}

%%

\newcommand{\myInstitution}{Wentworth Institute of Technology}
\newcommand{\myCollege}{Engineering and Technology}
\newcommand{\myCourseCode}{COMP101}
\newcommand{\myCourseTitle}{Intro to Computing}

\newcommand{\course}[3]{
	\renewcommand{\myCollege}{#1}
	\renewcommand{\myCourseCode}{#2}
	\renewcommand{\myCourseTitle}{#3}
}

%%

\renewcommand{\maketitle}{

	\vspace*{-1.6cm}
	\begin{center}
		\includegraphics[width=0.7in]{_wit} \\
		\Huge \myInstitution \\
		\LARGE {College of} {\myCollege} \\
		\vspace{0.5cm}
		\large { {\myCourseCode} -- {\myCourseTitle} } \\
		\large { \@date }
	\end{center}
	
	\thispagestyle{empty}
	\pagestyle{myheadings}
	\markright{\textit{{\myCourseCode, \@date, \@author} -- Syllabus}}
	
}

%%

\newenvironment{SyllabusHeader}{

\newcommand{\topicEndline}{ \\ & }

\newcommand{\topic}[2]{
& \\
\textbf{##1} & ##2 \\
}

\newcommand{\instructor}{\topic{Instructor}{\@author}}
\newcommand{\office}[2]{\topic{Office}{##1 \topicEndline ##2}}
\newcommand{\contact}[3]{\topic{Contact}{##1 \topicEndline ##2 \topicEndline ##3}}

\begin{tabular*}{1.0\textwidth}{ l l }
& \\ 
\hline
}{
& \\ 
\hline
& \\ 
\end{tabular*}
}

%%

\newcommand{\SyllabusSection}[1]{\section*{\uppercase{#1}:}}

%%

\newenvironment{SyllabusBooks}[1]{

\newcommand{\book}[1]{\item ##1}
\newcommand{\bookInfo}[6]{
	\book{{##1}. \textit{##2}, {##3} {ed}. {##4}, {##5} (ISBN-13: {##6})}
}

\SyllabusSection{#1}
\begin{itemize}
}
{
\end{itemize}
}

\newcommand{\SyllabusBookstore}{
	\SyllabusSection{The College Bookstore}
	
	\begin{tabular}{ p{3.0cm} l }
		Location: & 103 Ward Street Boston MA 02115 \\
		Telephone: & (617) 445-8814 \\
	\end{tabular}
}

%%

\newcommand{\SyllabusGradingSystem}{

\SyllabusSection{Wentworth Grading System}

\begin{tabular}{ | c | l | c | c | }

\hline
\textbf{Grade} & \textbf{Definition} & \textbf{Weight} & \textbf{Numerical} \\ \hline

& \multirow{6}{11cm}{Student learning and accomplishment far exceeds published objectives for the course/test/assignment and student work is distinguished consistently by its high level of competency and/or innovation.} & & \\
\texttt{A\textcolor{white}{-}} & & \texttt{4.00} & \texttt{96 - 100} \\
& & & \\ \cline{1-1} \cline{3-4}
& & & \\ 
\texttt{A-} & & \texttt{3.67} & \texttt{92 - 95\textcolor{white}{0}} \\
& & & \\ \hline

& \multirow{6}{11cm}{Student learning and accomplishment goes beyond what is expected in the published objectives for the course/test/assignment and student work is frequently characterized by its special depth of understanding, development, and/or innovative experimentation.} & & \\
\texttt{B+} & & \texttt{3.33} & \texttt{88 - 91\textcolor{white}{0}} \\
& & & \\ \cline{1-1} \cline{3-4}
& & & \\ 
\texttt{B\textcolor{white}{+}} & & \texttt{3.00} & \texttt{84 - 87\textcolor{white}{0}} \\
& & & \\ \hline

& \multirow{9}{11cm}{Student learning and accomplishment meets all published objectives for the course/test/assignment and the student work demonstrates the expected level of understanding, and application of concepts introduced.} & & \\
\texttt{B-} & & \texttt{2.67} & \texttt{80 - 83\textcolor{white}{0}} \\
& & & \\ \cline{1-1} \cline{3-4}
& & & \\ 
\texttt{C+} & & \texttt{2.33} & \texttt{76 - 79\textcolor{white}{0}} \\
& & & \\ \cline{1-1} \cline{3-4}
& & & \\ 
\texttt{C\textcolor{white}{+}} & & \texttt{2.00} & \texttt{72 - 75\textcolor{white}{0}} \\
& & & \\ \hline

& \multirow{9}{11cm}{Student learning and accomplishment based on the published objectives for the course/test/assignment were met with minimum passing achievement.} & & \\
\texttt{C-} & & \texttt{1.67} & \texttt{68 - 71\textcolor{white}{0}} \\
& & & \\ \cline{1-1} \cline{3-4}
& & & \\ 
\texttt{D+} & & \texttt{1.33} & \texttt{64 - 67\textcolor{white}{0}} \\
& & & \\ \cline{1-1} \cline{3-4}
& & & \\ 
\texttt{D\textcolor{white}{+}} & & \texttt{1.00} & \texttt{60 - 63\textcolor{white}{0}} \\
& & & \\ \hline

& \multirow{3}{11cm}{Student learning and accomplishment based on the published objectives for the course/test/assignment were not sufficiently addressed nor met.} & & \\
\texttt{F\textcolor{white}{+}} & & \texttt{0.00} & \texttt{\textcolor{white}{60} < 60\textcolor{white}{0}} \\
& & & \\ \hline

\end{tabular}

}

%%

\newcommand{\SyllabusDropAdd}{

\SyllabusSection{Add/Drop}

Students should check the academic calendar to confirm the add/drop deadline. 
Dropping and/or adding courses is done online. 
Courses dropped in this period are removed from the student's record. 
\\

Non-attendance does not constitute dropping a course. 
If a student has registered for a course and subsequently withdraws or receives a failing grade in its prerequisite, then the student must drop that course. 
In some cases, the student will be dropped from that course by the Registrar. 
However, it is the student's responsibility to make sure that he or she meets the course prerequisites and to drop a course if the student has not successfully completed the prerequisite. 
The student must see his or her academic advisor or academic department chair for schedule revision and to discuss the impact of the failed or withdrawn course on the student's degree status.

}

%%

\newcommand{\SyllabusAcademicSupport}{

\SyllabusSection{Academic Support}

The Learning Center (TLC) assists all Wentworth students in the areas of math, science, technical courses specific to majors, and writing. 
In this student-based learning environment, students can receive individual help with their studies, meet and work in study groups, attend workshops on a wide variety of subjects and find resources to assist them in meeting their goals for academic success.  
It includes tutors in many subjects, writing assistance and workshops focused on helping good students become great students.  
Make appointments at \url{http://www.wit.edu/tlc} or through LConnect.

}

%%

\newcommand{\SyllabusAcademicHonesty}{

\SyllabusSection{Academic Honesty Statement}

\textit{``Students at Wentworth are expected to be honest and forthright in their academic endeavors.  
Academic dishonesty includes cheating, inventing false information or citations, plagiarism, tampering with computers, destroying other people's studio property, or academic misconduct'}' (Academic Catalog).
See your catalogue for a full explanation.

}

%%

\newcommand{\SyllabusDisability}{

\SyllabusSection{Disability Services Statement}

Any student who thinks s/he may require a disability-related accommodation for this course should contact Disability Services privately to discuss their specific needs. 
Disability Services coordinates reasonable accommodations for students with documented disabilities. 
They are located in Watson Hall 003 (the Center for Wellness and Disability Services) and can be contacted at 617-989-4390 or \url{mailto:counseling@wit.edu}.  
For more information on acceptable documentation and the Disability Services process, visit the Disability Services website at \url{http://www.wit.edu/disabilityservices}.

}

%%

\newcommand{\SyllabusCOF}{

\SyllabusSection{College of the Fenway Students}

If you are enrolled in this course through COF Cross Registration, notify your course instructor. 
Please provide her/him with your email address to be sure that you receive course information in a timely way. 
You should also discuss how to access online applications that might be used in the course.

}

%%

\newenvironment{SyllabusSchedule}{

\newcounter{ScheduleWeek}

\newcommand{\week}[3]{
\stepcounter{ScheduleWeek}
\centering \small \arabic{ScheduleWeek} & \small ##1 & \small \centering ##2 & \small ##3 \\ \hline
}

\begin{tabular}{ | p{1.0cm} | p{7.5cm} | p{3.5cm} | p{4.0cm} | }
\hline
\centering \textbf{Week} & \textbf{Topic} & \centering \textbf{Reading} & \textbf{Assignments/Notes} \\
\hline
}{
\end{tabular}
}
