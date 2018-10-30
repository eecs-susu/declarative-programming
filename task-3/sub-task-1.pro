domains
    name = string
predicates
    possible_position(name, integer)
    position(name, integer)
clauses
    possible_position("Jury", 1).
    possible_position("Jury", 2).
    possible_position("Jury", 3).
    possible_position("Grisha", 1).
    possible_position("Tolya", 1).
    possible_position("Tolya", 2).
    
    position(Name, Position) :- possible_position(Name, Position), 
                            possible_position(AName, APosition),
                            possible_position(BName, BPosition),
                            Name <> AName,
                            Name <> BName,
                            AName <> BName,
                            Position <> APosition,
                            Position <> BPosition,
                            APosition <> BPosition.
goal
    position(Name, Position).    
