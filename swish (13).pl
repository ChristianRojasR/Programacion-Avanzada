ventas(abril, 1200).
ventas(mayo, 1500).
ventas(junio, 100).

proy_vent(X):-
    ventas(_, X).

prod_cartesiano(X, Y):-
    proy_vent(X),
    proy_vent(Y).

conj_min(X, Y):-
    prod_cartesiano(X, Y),
    X<Y.

proy_min(X):-
    conj_min(X,_).

maximo(X):-
    proy_vent(X),
    not(proy_min(X)), !.


prod_cartesiano_2(X, Y):-
    proy_min(X),
    proy_min(Y).

conj_min_2(X, Y):-
    prod_cartesiano_2(X, Y),
    X<Y.

proy_min_2(X):-
    conj_min_2(X,_).

maximo_2(X):-
    proy_min(X),
    not(proy_min_2(X)), !.

maximos(Z, W):-
    maximo(X),
    maximo_2(Y),
    ventas(Z, X),
    ventas(W, Y).