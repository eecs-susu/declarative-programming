domains
    list = integer*
predicates
    generate_list(integer, list)
clauses
    generate_list(0, []) :- !.
    generate_list(N, [H|T]) :- Prev=N - 1, generate_list(Prev, T), H=N.
goal
    generate_list(10, L).
