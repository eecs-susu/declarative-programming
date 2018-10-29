domains
    name, city = string
predicates
    rest(name, city)
    uk(city)
    ru(city)
    rest_ru(name)
clauses
    rest(sasha, antalia).
    rest(anna, sochi).
    rest(dima, urmala).
    rest(oleg, london).
    uk(london).
    ru(sochi).
    rest_ru(X):-
                rest(X, Y),
                ru(Y).
goal
    rest_ru(X),
    write(X),nl.
