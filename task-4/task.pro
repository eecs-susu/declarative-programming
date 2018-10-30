domains
    list = real*
predicates
    mean(list, real)
    len(list, integer)
    sum(list, real)
clauses
    len([], 0).
    len([_|T], R) :- len(T, Sub), R=Sub + 1.
    sum([], 0).
    sum([H|T], R) :- sum(T, Sub), R=Sub + H.
    mean([], 0).
    mean(L, R) :- sum(L, Sum), len(L, Len), R=Sum / Len.
goal
    mean([1, 3, 5, 5], R).
