% Write a function that uses matching to selectively print “success” or
% “error: message” given input of the form {error, Message} or success .

-module(result).
-export([show/1]).

show(success) -> io:format("success~n");
show({error, Message}) -> io:format("error: ~s~n", [Message]).
