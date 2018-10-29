domains
    name=symbol
predicates
    father (name, name)
    everybody
clauses
    father ("Pavel", "Petr").
    father ("Petr", "Michael").
    father ("Pert", "Ivan").
    everybody:- father (X, Y),
    write(X," - father of ",Y,"a"),nl,
    fail.
goal
    everybody.
