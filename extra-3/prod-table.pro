database
    prod_table_db(integer, integer, integer)

predicates
    prod_table(integer, integer, integer)

clauses
    prod_table(Left, Right, Value) :- prod_table_db(Left, Right, Value), !.
    prod_table(Left, Right, Value) :- Value = Left * Right, 
    			asserta(prod_table_db(Left, Right, Value)), 
    			asserta(prod_table_db(Right, Left, Value)).

goal
    prod_table(3, 5, V12).

