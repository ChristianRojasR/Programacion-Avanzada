nota(1).
nota(3).
nota(7).
nota(6).

%quiero la nota maxima

producto_cartesiano(N1, N2):-
    nota(N1), nota(N2).

primero_menor(N1, N2):-
    producto_cartesiano(N1, N2),
    N1 < N2.

los_no_mayores(N1):-
    primero_menor(N1, _).

mayor(N):-
    nota(N),
    \+ los_no_mayores(N).