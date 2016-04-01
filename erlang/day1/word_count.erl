% Write a function that uses recursion to return the number of words in a string.

-module(word_count).
-export([word_count/1]).

aux([], Acc) -> Acc;
aux([$ ], Acc) -> Acc;
aux([$ , $  | Tail], Acc) -> aux(" " ++ Tail, Acc);
aux([$  | Tail], Acc) -> aux(Tail, Acc + 1);
aux([_ | Tail], Acc) -> aux(Tail, Acc).

word_count(String) -> aux(" " ++ String, 0).
