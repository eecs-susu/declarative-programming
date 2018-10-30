domains
    name=string
predicates
    parent(name, name)
    whos_parent
clauses
    parent("Mary", "Fedor").
    parent("Ivan", "Fedor").
    parent("Ivan", "Stepan").
    parent("Fedor", "Olga").
    parent("Fedor", "Tanya").
    whos_parent :- parent(X, Y), write(X, " is parent for ", Y), nl, fail.
goal
    %parent("Fedor", "Olga").
    %parent(Parent, "Tanya").
    %parent("Ivan", Child).
    %parent(Parent, "Olga"), parent(Grandparent, Parent).
    %parent("Ivan", Child), parent(Child, Grandson).
    %parent(X, "Fedor"), parent(Y, "Stepan"), X=Y.
    whos_parent.
