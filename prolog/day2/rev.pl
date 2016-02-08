% Reverse the elements of a list.

rev([], []).
rev([H|[]], [H|[]]).
rev([H|T], Reversed) :- rev(T, ReversedT), append(ReversedT, [H], Reversed).
