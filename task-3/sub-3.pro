predicates
    odd_sum(integer, integer)
clauses
    odd_sum(N, Sum) :- N < 1, Sum=0.
    odd_sum(N, Sum) :- N mod 2 = 1, Prev=N-2, odd_sum(Prev, Partsum), Sum=N + Partsum.
    odd_sum(N, Sum) :- N mod 2 = 0, Odd=N-1, odd_sum(Odd, Sum).
goal
    odd_sum(15, Sum).
