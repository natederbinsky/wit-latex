
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wit_syllabus2}[2016/9/02 WIT Syllabus Class]

\LoadClass[11pt]{article}

\RequirePackage[margin=0.8in]{geometry}
\RequirePackage{multirow}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{titlesec}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage{pbox}
\RequirePackage{array}
\RequirePackage{footnote}

%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%%

\setlength\parindent{0pt}
\titleformat*{\section}{\large\bfseries}

%%

\date{Fall \the\year}

\newcommand{\myProfessorFirst}{Bob}
\newcommand{\myProfessorLast}{Smith}

\newcommand{\myInstitution}{Wentworth Institute of Technology}
\newcommand{\myCollege}{Engineering and Technology}
\newcommand{\myCourseCode}{COMP101}
\newcommand{\myCourseTitle}{Intro to Computing}

\newcommand{\course}[3]{
	\renewcommand{\myCollege}{#1}
	\renewcommand{\myCourseCode}{#2}
	\renewcommand{\myCourseTitle}{#3}
}

\newcommand{\prof}[2]{
	\renewcommand{\myProfessorFirst}{#1}
	\renewcommand{\myProfessorLast}{#2}
}

%%

\renewcommand{\maketitle}{

	\vspace*{-1.6cm}
	\begin{center}
		\includegraphics[width=0.7in]{_wit2} \\
		\Huge \myInstitution \\
		\LARGE {College of} {\myCollege} \\
		\vspace{0.5cm}
		\large { {\myCourseCode} -- {\myCourseTitle} } \\
		\large { \@date }
	\end{center}

	\thispagestyle{empty}
	\pagestyle{myheadings}
	\markright{\textit{{\myCourseCode, \@date, \myProfessorLast} -- Syllabus}}

}

\AtBeginDocument{\maketitle}

%%

\newenvironment{SyllabusHeader}{

\newcommand{\topicEndline}{ \\ & }

\newcommand{\topic}[2]{
& \\
\textbf{##1} & ##2 \\
}

\newcommand{\instructor}{\topic{Instructor}{{\myProfessorFirst} {\myProfessorLast}}}
\newcommand{\office}[2]{\topic{Office}{##1 \topicEndline ##2}}
\newcommand{\contact}[3]{\topic{Contact}{##1 \topicEndline \href{mailto:##2}{##2} \topicEndline \url{##3}}}

\begin{savenotes}
\begin{tabular*}{1.0\textwidth}{ l l }
& \\
\hline
}{
& \\
\hline
& \\
\end{tabular*}
\end{savenotes}
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
If a student has registered for a course and subsequently withdraws or receives a failing grade in its prerequisite, \textbf{then the student must drop that course}.
In some cases, the student will be dropped from that course by the Registrar.
However, it is the student's responsibility to make sure that he or she meets the course prerequisites and to drop a course if the student has not successfully completed the prerequisite.
The student must see his or her academic advisor or academic department chair for schedule revision and to discuss the impact of the failed or withdrawn course on the student's degree status.
}

%%

\newcommand{\SyllabusAcademicSupport}{

\SyllabusSection{Academic Support}

The Center for Academic Excellence facilitates Wentworth students’ academic success and helps them to achieve their full learning potential.
Students may choose to receive individual assistance through one-on-one tutoring in many subjects, including math, science, writing, and major classes.
In addition, the Center for Academic Excellence offers Facilitated Study Groups (FSGs), tutor-led study tables, academic workshops, and learning-strategy consultations.
The peer-tutoring program is certified by the College Reading and Learning Association’s International Tutor Training Certification program.
To make an appointment or to review our drop-in offerings, please visit \texttt{www.wit.edu/cae}.
For additional assistance or support on subjects not listed, please reach out via email at \texttt{cae@wit.edu}.
}

%%

\newcommand{\SyllabusAcademicHonesty}{

\SyllabusSection{Academic Honesty Statement}

Students at Wentworth are expected to be honest and forthright in their academic endeavors.
Academic dishonesty includes cheating, prohibited collaboration, coercion, inventing false information or citations, plagiarism, tampering with computers, destroying other people's coursework or lab or studio property, theft of course materials, or other academic misconduct.
If you have any questions, contact your professor prior to submitting an assignment for evaluation.
See your academic catalogue for a full list of definitions and the WIT Academic Honesty website for the procedures:  \texttt{wit.edu/academic-honesty}.
}

%%

\newcommand{\SyllabusDisability}{

\SyllabusSection{Wellness and Disability Services}

College can be challenging and it is common to feel overwhelmed or stressed at times.
If these feelings are related to course work or academic performance, please talk to me.
For more significant mental health concerns, the \textbf{Center for Wellness and Disability Services (003 Watson Hall, 617-989-4390)} provides free and confidential mental health counseling.
\\

If you or someone you know needs support around thoughts of suicide, the following resources are available:

\begin{itemize}
\item Center for Wellness and Disability Services, Watson 003, 617-989-4390, M-F 8:15-4:45
\item Campus Police, First level of 610 Huntington Avenue, 617-989-4444, 24/7
\item Samaritans, call or text 1-877-870-4673
\item Crisis Text Line, text “start” to 741-741
\item National Suicide Prevention Lifeline, call 1-800-273-8255
\item GLBT Youth Hotline, call 1-866-488-7386
\item Beth Israel Deaconess Emergency Room, 190 Pilgrim Rd Boston, MA
\end{itemize}

Students requiring academic accommodations must provide an official accommodation memo from the \textbf{Center for Wellness and Disability Services} and contact me privately to discuss logistics.
}

%%

\newcommand{\SyllabusCOF}{

\SyllabusSection{College of the Fenway Students}

If you are enrolled in this course through COF Cross Registration, notify your course instructor.
Please provide her/him with your email address to be sure that you receive course information in a timely way.
You should also discuss how to access online applications that might be used in the course.
}

%%

\newcounter{ScheduleWeek}

\newenvironment{SyllabusSchedule}[1][0.0cm]{

\newcommand{\week}[3]{
\stepcounter{ScheduleWeek}
\centering \small \arabic{ScheduleWeek} & \parbox{7.5cm}{\small ##1} & \parbox{3.5cm}{\centering \small ##2} & \parbox{4.0cm}{\small ##3} \\[#1] \hline
}

\setlength{\extrarowheight}{#1}
\begin{savenotes}
\begin{tabular}{ | p{1.0cm} | p{7.5cm} | p{3.5cm} | p{4.0cm} | }
\hline
\centering \textbf{Week} & \textbf{Topic} & \centering \textbf{Reading} & \textbf{Assignments/Notes} \\[#1]
\hline
}{
\end{tabular}
\end{savenotes}
}
