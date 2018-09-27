NB. Pascal's Triangle in J
NB. http://jsoftware.com/

NB. full solution:
([:!/~i.)


NB. explanation
NB. x!y means "how many (unordered) ways to choose x items from y items"
NB. / means "insert" so f/ 1 2 3 means (1 f (2 f 3))
NB. ~ in this case means "make the left argument be a copy of the right argument"
NB. f/~ y is a J idiom meaning "y-by-y function table of f", for example using multiply (*):
NB.    */~2 3
NB. 4 6
NB. 6 9

    i. y  NB. first y integers.  i.4 gives 0 1 2 3.
 !/~i. y  NB. function table of "out of" for first y integers
([:!/~i.) NB. fix annoying J quirk.
          NB. If I were to assign the shorter version to a name, e.g. pascal =: !/~i.
          NB. then J recognizes that these are essentially 2 verbs concatenated:
          NB. F is (i.) and G is (!/~)
          NB. and it treats the whole phrase as a "hook": https://code.jsoftware.com/wiki/Vocabulary/hook
          NB. so it parses as (y F (G y)) which is not what I want
          NB. one way to force it to work like (F (G y)) is cap ([:)
          NB. ([: f g) y is like (f(g(y))
          NB. ...
          NB. also I just realized I could have used apply (@) instead and saved a byte:
          NB. (!/~@i.)
          NB. ah well.
