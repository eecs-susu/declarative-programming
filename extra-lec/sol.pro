domains
    list_int = integer*

predicates
    subset(list_int, list_int)

clauses
    subset([], []).
    subset([H|LeftTail], [H|RightTail]) :- subset(LeftTail, RightTail).
    subset([_|Tail], Result) :- subset(Tail, Result).

goal
    subset([1, 2, 3, 4], Result), write(Result), nl, fail.



