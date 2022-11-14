%clauses
entrada(paella).
entrada(gazpacho).
entrada(consomé).
carne(filete_de_cerdo).
carne(pollo_asado).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(helado).
postre(pastel).
bebida(vino).
bebida(cerveza).
bebida(agua_mineral).
%fin clauses

menus(X, Y, Z):-
    entrada(X),
    (carne(Y); pescado(Y)),
    postre(Z).

menus_consome(consomé, Y, Z):-
    menus(_, Y, Z).

menus_sin_flan(X, Y, Z):-
    menus(X, Y, Z),
    not(Z = flan).

menus_con_bebidas(X, Y, Z, W):-
    menus(X, Y, Z),
    bebida(W).