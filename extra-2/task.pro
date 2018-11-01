domains
    binary_tree = empty; tr(real, binary_tree, binary_tree)
predicates
    count_tree_leaves(binary_tree, integer)
    sum_tree_leaves(binary_tree, real)
    mean_tree_leaves(binary_tree, real)
clauses
    count_tree_leaves(empty, 0) :- !.
    count_tree_leaves(tr(_, empty, empty), 1) :- !.
    count_tree_leaves(tr(_, Left, Right), Leaves) :- count_tree_leaves(Left, LeftLeaves), 
                                             count_tree_leaves(Right, RightLeaves), 
                                             Leaves = LeftLeaves + RightLeaves.
    
    sum_tree_leaves(empty, 0) :- !.
    sum_tree_leaves(tr(Value, empty, empty), Value) :- !.
    sum_tree_leaves(tr(_, Left, Right), Sum) :- sum_tree_leaves(Left, LeftSum),
                                             sum_tree_leaves(Right, RightSum),
                                             Sum = LeftSum + RightSum.

    mean_tree_leaves(Tree, Mean) :- count_tree_leaves(Tree, LeavesCount), sum_tree_leaves(Tree, LeavesSum), Mean = LeavesSum / LeavesCount, !.
goal
    BinaryTree = tr(
        1, 
        tr(2, empty, empty), 
        tr(3, 
            tr(5, empty, empty), 
            tr(6, empty, empty)
        )
    ),
    sum_tree_leaves(BinaryTree, SUM),
    mean_tree_leaves(BinaryTree, LeavesMean).
