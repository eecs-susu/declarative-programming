predicates
    nod(integer, integer, integer)
clauses
    nod(X, Y, R) :- X = Y, R=X.
    nod(X, Y, R) :- X < Y, D=Y-X, nod(X, D, R).
    nod(X, Y, R) :- X > Y, nod(Y, X, R).
goal
    nod(10, 20, R).
