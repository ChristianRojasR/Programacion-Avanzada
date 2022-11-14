hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría).

niño(X,Y):-
    padre(Y, X).

hijo(X,Y):-
    hombre(X),
    padre(Y, X).

hija(X,Y):-
    mujer(X),
    padre(Y, X).

hermano_o_hermana(X,Y):-
    niño(X,Z) ,(hijo(Y,Z); hija(Y,Z)),
    not(X = Y).

hermana(X,Y):-
    hermano_o_hermana(X, Y),
    mujer(X).

hermano(X,Y):-
    hermano_o_hermana(X, Y),
    hombre(X).