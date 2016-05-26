draft:
standard evaluation of dplyr fuctions
*bedoeld als notites om op terug te kijken* 


https://stackoverflow.com/questions/26724124/standard-evaluation-in-dplyr-summarise-on-variable-given-as-a-character-string
http://www.r-bloggers.com/using-mutate-from-dplyr-inside-a-function-getting-around-non-standard-evaluation/
http://www.carlboettiger.info/2015/02/06/fun-standardizing-non-standard-evaluation.html
http://adv-r.had.co.nz/Computing-on-the-language.html
http://developer.r-project.org/nonstandard-eval.pdf

normal use of functions

function(dataframe, variables)

mutate(df, name of thing = function)
filter( df, selection of things)
select(df, names of variables)
idem als df[,vector van namen]



funtionality is nice in interactive use, but not in function. 
example error in using.

using the _functions 

examples of mutate_, filter_ select_