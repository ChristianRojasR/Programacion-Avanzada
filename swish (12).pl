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
    fibonacci_2(N1, RAnt, RAntAnt),
    RAct is RAnt + RAntAnt.

% Factorial
% factorial(n) = n * factorial(n-1)

factorial(0, 1):-!.
factorial(1, 1):-!.

factorial(N, R):-
    N1 is N - 1,
    factorial(N1, R1),
    R is N * R1.

% Mulriplicacion
% multiplicacion(n, m) = 

multiplicacion(_, 0, 0):-!.

multiplicacion(N, M, R):-
    M1 is M - 1,
    multiplicacion(N ,M1, R1),
    R is N + R1.

% Potencia

potencia(_, 0, 1):-!.

potencia(N, P, R):-
    P1 is P - 1,
    potencia(N ,P1, R1),
    R is N * R1.

% Cociente

division(N, D, 0):- N > D, !.

division(N, D, R):-
    D1 is D - N,
    division(N, D1, R1),
    R is R1 + 1.