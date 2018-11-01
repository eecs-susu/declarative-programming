database
fib_db(integer, integer)

predicates
fib(integer, integer).

clauses
fib(0, 1) :- !.
fib(1, 1) :- !.
fib(Num, Value) :- fib_db(Num, Value), !.
fib(Num, Value) :- N1 = Num - 1,fib(N1, F1), N2 = Num - 2, fib(N2, F2), Value = F1 + F2, asserta(fib_db(Num, Value)).

goal
    fib(3, F3), fib(4, F4), fib(10, F10)
    .


