predicates
    max_log(integer, integer, integer)
    count(integer, integer)
clauses
    count(A, R) :- A >= 0, A <= 9, R=1.
    count(A, R) :- A > 9, Mod=A mod 10, count(Mod, RSub), R=RSub + 1.
    max_log(A, B, R) :- count(A, ALen), count(B, BLen), ALen > BLen, R=A; R=B.
goal
    max_log(220, 112300, R).
