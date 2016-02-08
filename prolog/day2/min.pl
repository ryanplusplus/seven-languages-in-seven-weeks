% Find the smallest element of a list.

min([H|[]], H).
min([H|T], Min) :- min(T, MinT), Min is min(H, MinT).
