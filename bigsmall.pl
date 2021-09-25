bigger(monkey,dog).
bigger(monkey,cat).
bigger(lion,dog).
bigger(dog,cat).
bigger(cat,crow).

is_bigger(X,Y):-
bigger(X,Y);
is_bigger(X,Z), is_bigger(Z,Y).