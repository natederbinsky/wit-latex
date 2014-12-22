Eval
====
Creates a set of evaluation questions, each with space to choose a response value {1-5, NA}.

**NOTE**: This class builds on/requires `wit_handout`.

## Usage
See the example **eval.tex** document.

1. `\documentclass{wit_eval}`
2. ...
2. `\title{ **document title here** }`
3. `\author{ **your name here** }`
4. `\date{ **semester designation here** }`
5. `\course{ **course code here** }{ **course title here** }`
6. ...
6. `\begin{document}`
7. `\maketitle`
8. `\EvalInstructions{ **optional instructions here** }`
8. `\begin{EvalBody}`
9. `\question{ **question text here** }`
10. ...
9. `\end{EvalBody}`
10. `\EvalFooter{ **optional final notes here** }`
9. `\end{document}`

