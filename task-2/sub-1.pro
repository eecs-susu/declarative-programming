domains
    name, gift = string
predicates
    present(name, name, gift)
clauses
    present("Nick", "Tom", book).
    present("Mary", "Tom", pen).
    present("Rick", "Mary", toy).
    present("Bob", "Pet", toy).
goal
    %present("Rick", "Mary", toy).
    %present("Nick", "Tom", toy).
    %present("Mary", "Tom", Gift).
    %present(_, "Tom", Gift).
    present(Name, "Pet", toy).
