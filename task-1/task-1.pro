constants
    e = 2.71
    pi = 3.14
predicates
    example
    compare_first
    compare_second
    compare_third
    check_parity(integer)
    check_random_number_parity
    power(integer, integer, integer)
    expression_first(integer, integer)
    deg_to_rad(real, real)
    expression_second(real, real)
clauses
    example :- X=2, Y=3, M=X+Y, write(M), nl.
    compare_first :- 'a' < 'b'.
    compare_second :- "antony" > "antonia".
    compare_third :- P1=peter, P2=sally, P1>P2.
    check_parity(X) :- write(X, " is"), X mod 2 = 0, write(" even"), nl, !.
    check_parity(_) :- write(" odd"), nl.
    check_random_number_parity :- random(1000, X), check_parity(X).
    power(0, X, 0) :- X > 0.
    power(X, 0, 1) :- X > 0.
    power(X, P, V) :- X>0, P>0, PD=P-1, power(X,PD,VR), V=VR*X.
    deg_to_rad(DEG, RAD) :- RAD=DEG * pi * 180.
    expression_first(X, Y) :- power(X, 2, X2), power(6, Y, SY), RES=(X2 + SY) / (8 - e * e), write(RES), nl.
    expression_second(X, Y) :- deg_to_rad(60, A), deg_to_rad(45, B), R=Y*ln(X) * (cos(A) / tan(B)) + Y, write(R), nl.
goal
    expression_second(2, 1).    
