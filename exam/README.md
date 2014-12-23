Exam
====
Produces an exam.

## Usage
See the example **exam.tex** and **calc1.tex** documents

1. `\documentclass{wit_exam}`
2. ...
3. `\author{ **your name here** }`
4. `\title{ **exam name here** }`
5. `\date{ **semester designation here** }`
6. `\course{ **course code here** }{ **course name here** }`
7. ...
8. `\ExamInstruction{ **Instruction text here** }`
9. ...
10. `\ProblemDeclaration{ **Problem name here** }{ **Points here** }`
11. `\BonusDeclaration{ **Problem name here** }{ **Points here** }`
12. ...
13. `\begin{document}`
14. ...
15. `\begin{ProblemDefinition}[ **Optional instructions here** ]`
16. ...
17. `\end{ProblemDefinition}`
18. ...
19. `\end{document}`

### ExamInstruction
Use this command for each instruction you would like listed on the title page. If no instructions are provided, the section will not display.

### Declaration
The `\ProblemDeclaration` and `\BonusDeclaration` commands function identically, but the latter will not add to the total number of available points. As such, the `\ProblemDefinition` command should be used independent of which declaration was used.

### ProblemDefinition
The optional argument provides an italicized instruction block below the problem section header. Any valid LaTeX commands can be used within this environment.
