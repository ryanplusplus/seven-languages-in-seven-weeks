% Write a function that uses recursion to count to ten.

-module(count).
-export([to_ten/0]).

aux(10) -> io:fwrite("10~n");
aux(N) -> io:fwrite("~w, ", [N]), aux(N + 1).

to_ten() -> aux(1).
