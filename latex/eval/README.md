Eval2
=====
Creates a set of evaluation questions, each with space to choose a response value {1-5, NA}.

**Note**: This class builds on/requires `wit_handout2`.

**Note**: identical to the `wit_eval` class (see `old`) aside from minor cosmetic changes.

## Usage
See the example **eval2.tex** document.

1. `\documentclass{wit_eval2}`
2. ...
3. `\title{ **document title here** }`
4. `\author{ **your name here** }`
5. `\date{ **semester designation here** }`
6. `\course{ **course code here** }{ **course title here** }`
7. ...
8. `\begin{document}`
9. `\EvalInstructions{ **optional instructions here** }`
10. `\begin{EvalBody}`
11. `\question{ **question text here** }`
12. ...
13. `\end{EvalBody}`
14. `\EvalFooter{ **optional final notes here** }`
15. `\end{document}`
