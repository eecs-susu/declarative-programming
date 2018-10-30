domains
    name=string
predicates
    parent(name, name)
clauses
    parent(il, ma).
    parent(ma, ir).
    parent(el, iv).
    parent(ni, ir).
    parent(ol, al).
    parent(ma, sa).
    parent(se, iv).
goal
    parent(X, iv), parent(Y, iv), X<>Y.
    