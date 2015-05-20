Eval2
=====
Creates a set of evaluation questions, each with space to choose a response value {1-5, NA}.

**Note**: This class builds on/requires `wit_handout2`.

**Note**: identical to the `wit_eval` class (see `old`) aside from minor cosmetic changes.

## Usage
See the example **eval2.tex** document.

1. `\documentclass{wit_eval2}`
2. ...
2. `\title{ **document title here** }`
3. `\author{ **your name here** }`
4. `\date{ **semester designation here** }`
5. `\course{ **course code here** }{ **course title here** }`
6. ...
7. `\begin{document}`
8. `\EvalInstructions{ **optional instructions here** }`
9. `\begin{EvalBody}`
10. `\question{ **question text here** }`
11. ...
12. `\end{EvalBody}`
13. `\EvalFooter{ **optional final notes here** }`
14. `\end{document}`
