predicates
    for(integer, integer, integer)
clauses
    for(X, X, X) :- !.
    for(N1, N2, X) :- X=N1; N=N1 + 1, for(N, N2, X).
goal
    for(0, 5, N).
