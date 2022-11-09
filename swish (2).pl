%recursividad'
%ejemlo, factorial
fact(0, 1):-!.

fact(N, error):-
    N < 0,
    !.

fact(N, R):-
    N1 is N -1,
    fact(N1, R1),
    R is R1 * N.