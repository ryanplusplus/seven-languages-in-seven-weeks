% Consider a list of keyword-value tuples, such as:
%   [{erlang, "a functional language"}, {ruby, "an OO language"}]
% Write a function that accepts the list and a keyword and returns the associated
% value for the keyword.

-module(associative_array).
-export([lookup/2]).

lookup(Arr, Key) ->
  lists:foldl(fun(Cur, Acc) ->
    case Cur of
      {Key, Value} -> Value;
      _ -> Acc
    end
  end, undefined, Arr).
