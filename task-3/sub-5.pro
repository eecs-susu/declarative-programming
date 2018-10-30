domains
    vertex = integer
predicates
    path(vertex, vertex)
    path_exist(vertex, vertex)
clauses
    path(1, 2).
    path(1, 3).
    path(2, 4).
    path(2, 5).
    path(3, 6).
    path(6, 7).
    path(6, 9).
    path(7, 8).
    path(9, 8).
    path(9, 10).
    path(10, 5).

    path_exist(U, V) :- path(U, V), !.
    path_exist(U, V) :- path(U, Child), path(Child, V).
goal
    path_exist(1, 6).
