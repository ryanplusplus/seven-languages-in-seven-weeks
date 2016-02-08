% Sort the elements of a list.

ssort([], []).
ssort([H|[]], [H|[]]).
ssort(Input, [Min|SortedT]) :-
  min_list(Input, Min),
  permutation(Input, [Min|SortedT]),
  ssort(SortedT, SortedT).
