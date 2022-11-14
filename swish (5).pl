numero(1).
numero(2).
numero(3).

prod_cartesiano(X, Y):-
    numero(X), !,numero(Y).

selec(X, Y):-
    prod_cartesiano(X,Y),
    X < Y.

proy(X):-
    selec(X, _).

mayor(X):-
    numero(X),
    not(proy(X)).