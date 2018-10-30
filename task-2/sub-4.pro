domains
    name=string
predicates
    parent(name, name)
    male(name)
    female(name)
    are_sisters(name, name)
    has_child(name)
clauses
    parent("Mary", "Fedor").
    parent("Ivan", "Fedor").
    parent("Ivan", "Stepan").
    parent("Fedor", "Olga").
    parent("Fedor", "Tanya").
    male("Ivan").
    male("Fedor").
    male("Stepan").
    female(Name) :- not(male(Name)).
    are_sisters(First, Second) :- female(First), 
                             female(Second), 
                             parent(P1, First), 
                             parent(P2, Second), 
                             P1=P2.
    has_child(Name) :- parent(Name, _).
goal
    %are_sisters("Olga", "Tanya").
    %has_child("Ivan").
    has_child("Stepan").
