fib(1, 1):-!.
fib(2, 1):-!.

fib(N, R):-
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, R1),
    fib(N2, R2),
    R is R1 + R2.

fib2(N, R):-
    fib2inr(N, R, _).

fib2(1, 1, 0):-!.
fib2(2, 1, 1):-!.

fib2(N, R, R1):-
    N1 is N - 1,
    fib2(N1, R1, R2),
    R is R1 + R2.