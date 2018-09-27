/ print deck of cards
/ run in the kona console
/ visit https://github.com/kevinlawler/kona to get the kona source && make

/ full solution to problem 1:
("A",($1+!10),"JQK"),\:/:"CDHS"


/ explanation:
       1+!10                      / take (!) the first 10 ints and then add 1, e.g: 1 2 3 4 5 6 7 8 9 10
      $1+!10                      / string format ($), to make ("1", "2", ..., "10")
 "A",($1+!10),"JQK"               / prepend "A" to the front of the list, and append "J", "Q", "K" to the end
("A",($1+!10),"JQK"),\:/:"CDHS"   / in K, enlist (,) is a verb and each-left (\:) is an adverb (modifies a verb)
                                  / similarly, each-right (/:) is an adverb.
                                  / Adverbs bind before verbs, so (x f/: y) is (x (f/:) y)
                                  / and you can combine them, so (x f/:\: y) is (x (f/:\:) y)
                                  / (,\:/:) means "enlist each-left with each-right"
                                  / so it takes the list-of-lists on the left ("A", "1", ... "K") and appends a "C",
                                  / then it takes another copy of the list on the left and appends a "D", etc.

