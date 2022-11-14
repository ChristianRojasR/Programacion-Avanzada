% Sumatoria Gaussiana
% n(n+1)/2

sumatoria(1, 1):- !.

sumatoria(N, R):-
    N1 is (N - 1),
    sumatoria(N1, R1),
    R is (R1 + N).
% Fibonacci
% fibonacci n = fibonacci n-1 + fibonacci n-2

fibonacci(1, 1):- !.
fibonacci(0, 0):- !.

fibonacci(N, R):-
    N1 is N - 1,
    fibonacci(N1, R1),
    N2 is N -2,
    fibonacci(N2, R2),
    R is R1 + R2.

fibonacci_2(1, 1, 0):- !.

fibonacci_2(N, RAct, RAnt):-
    N1 is N - 1,
    fibonacci_2(N1, RAnt, RAux),
    RAct is RAnt + RAux.