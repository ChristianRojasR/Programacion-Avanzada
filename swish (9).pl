hombre(rodrigo, media, negro, joven).
hombre(luis, alta, castaño, adulta).
hombre(fernando, bajo, pelirrojo, vieja).
hombre(jhon, bajo, rubio, adulta).
mujer(dayana, media, pelirrojo, joven).
mujer(deysi, media, negro, vieja).
mujer(leila, baja, rubio, adulta).
mujer(jeni, alta, castaño, adulta).

gusta(rodrigo, pop, ciencia-ficción, natación).
gusta(luis, clásica, policíaca, jogging).
gusta(jhon, jazz, ciencia-ficción, natación).
gusta(fernando, clásica, aventura, tenis).
gusta(dayana, pop, ciencia-ficción, natación).
gusta(leila, clásica, policíaca, jogging).
gusta(jeni, jazz, ciencia-ficción, natación).
gusta(deysi, clásica, aventura, tenis).

busca(dayana, media, negro, joven).
busca(leila, alta, castaño, adulta).
busca(deysi, bajo, pelirrojo, vieja).
busca(jeni, bajo, rubio, adulta).
busca(rodrigo, media, pelirrojo, joven).
busca(fernando, media, negro, vieja).
busca(luis, baja, rubio, adulta).
busca(jhon, alta, castaño, adulta).

adecuadas(X, Y):-
    hombre(X, A1, C1, E1), mujer(Y, A2, C2, E2),
    busca(X, A2, C2, E2),
    busca(Y, A1, C1, E1),
    gusta(X, M1, L1, S1),
    gusta(Y, M2, L2, S2),
    M1 == M2, L1 == L2, S1 == S2.