/ run in kona console
/ first 100 fibonnacci
/ hardcoded solution for "first 100"
*+99(|+\)\1 1


/ explanation
/ with a function on the left, and values on the right, backslash (\) means "scan".
/ examples:
/ +\ 1 1 1 returns 1 2 3
/ +\ 1 1 0 0 42 returns 1 2 2 2 44
/ reverse is (|), so the phrase (|+\ x) means "reverse the sum-scan of x"
/ |+\ 1 1 1 returns 3 2 1
/ |+\ 1 1 0 0 42 returns 44 2 2 2 1

/ backslash is overloaded:
/ if you supply a function F and an integer N on the left of (\), then it turns into something like "repeat" or "do-while":
/ N F\ x  means "do F to x N times"
/ 3 (2+)\ 10 returns 10 12 14 16

/ so finally we can explain this whole chunk:

99 (|+\)\ 1 1  / repeat 99 times: reverse the sum-scan of the list 1 1
/ to see more clearly, a small example:
/    3(|+\)\1 1
/ (1 1
/  2 1
/  3 2
/  5 3)

/ we want the 2nd column, so a short way to say that is take the first (*) of the transpose (+)
*+99(|+\)\1 1  / take the head (*) of the transposed array

