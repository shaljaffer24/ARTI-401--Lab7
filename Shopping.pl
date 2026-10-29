shopping_list:-
    menu([coffee, milk, chocolate, apple, juice]).


menu(Basket) :-
    nl, write('** Shopping List **'),nl,
    write('d. display all items.'),nl,
    write('a. Add an item to the list.'),nl,
    write('e. exit.'),nl, write('Enter your choice:'),nl,
    read(X), choice(X, Basket).

choice(d, Basket):-
    display_basket(Basket),
    menu(Basket).

choice(a, Basket):-
    write('Enter the item you want to add to it:'), nl,
    read(Y), append(Basket, [Y], UpdatedBasket), nl,
    write('The item has been added'),
    menu(UpdatedBasket).

choice(e,_):-
    write('Exiting program').

choice(_,Basket):-
    write('Invalid choice'),nl,
    menu(Basket).

display_basket([]).
display_basket([H|T]):-
    write(H), nl,
    display_basket(T).

