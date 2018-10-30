domains
    File = input
    Number = integer
predicates
    process(integer)
clauses
    process(0) :- !.
    process(N) :- readint(Num), Res=Num * Num * Num, write(Res), nl, Prev=N - 1, process(Prev).
goal
    openread(input, "data.txt"),
    readdevice(input),
    readint(N),
    process(N).
