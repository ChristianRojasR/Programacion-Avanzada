%clauses
entrada(paella, 800).
entrada(gazpacho, 100).
entrada(consomé, 50).
carne(filete_de_cerdo, 300).
carne(pollo_asado, 300).
pescado(trucha, 300).
pescado(bacalao, 300).
postre(flan, 200).
postre(helado, 500).
postre(pastel, 800).
bebida(vino, 200).
bebida(cerveza, 300).
bebida(agua_mineral, 0).
%fin clauses

menus(X, Y, Z):-
    entrada(X, _),
    (carne(Y, _); pescado(Y, _)),
    postre(Z, _).

proy(X):-
    entrada(_, X1),
    (carne(_, X2); pescado(_, X2)),
    postre(_, X3),
    X is X1 + X2 + X3.

prod_cart(X, Y):-
    proy(X),
    proy(Y).

selec(X, Y):-
    prod_cart(X,Y),
    X > Y.

proy_may(X):-
    selec(X, _).

menor(X):-
    proy(X),
    not(proy_may(X)), !.

prod_cart_2(X, Y):-
    proy_may(X), proy_may(Y).

selec_2(X, Y):-
    prod_cart_2(X,Y),
    X > Y.

proy_may_2(X):-
    selec_2(X, _).

menor_2(X):-
    proy_may(X),
    not(proy_may_2(X)), !.