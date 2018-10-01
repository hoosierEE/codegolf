NB. hole 7 in J
NB. (normalized, magnitude) of a vector and its length

NB. full solution:
(([:+.@*j./);+&.*:/)

NB. magnitude
                *:    NB. square (*:) the elements of y
             +&.      NB. perform sum (+) under (&.) the above operation, which means
                      NB. "do the squaring, then sum, then undo the squaring"
                      NB. or in other languages: sqrt(sum(square(y)))
             +&.*:/   NB. in this case insert (/) acts on the sum, inserting it between squared elements of y
        j./           NB. insert (/) the verb "complex" (j.) between the elements of y
                      NB. e.g. if y is 3 4 then this would become 3j4
       *              NB. this is "signum" for integers, or "distance to 0" for complex
    +.                NB. separate real/imaginary
    +.@*              NB. compose (@) the 2 above functions into 1
  [:                  NB. cap left branch of fork, causing the expression to be prefix (rather than infix)
 ([:+.@*j./)          NB. so now we have one result value (the normalized vector)
             +&.*:/   NB. and another value (the magnitude)
            ;         NB. link the two result values into a single boxed array
(                   ) NB. wrap entire expression in parens so J interpreter treats it as a single verb

