padre(pedro, manuel).
padre(maria, juan).
padre(pedro, martin).
padre(juan, pedro).
padre(maria, felipe).

ancestro(X, Y):-
    padre(X, Y).

ancestro(X, Y):-
    padre(Z, Y),
    ancestro(X, Z).