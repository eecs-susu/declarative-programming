predicates
    write_numbers(integer)
clauses
    write_numbers(1) :- write(1), nl.
    write_numbers(N) :- N > 0, PREV=N-1, write(N), nl, write_numbers(PREV).
goal
    write_numbers(7).
