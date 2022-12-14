%clauses
transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).

duracion(2).
duracion(1).
%finclauses

viaje(C,S,H,P):-
    transporte(C, CostoTransporte),
    alojamiento(C, H, CostoAlojamiento),
    duracion(S),
    CostoAlojamientoTotal is S * CostoAlojamiento,
    P is CostoTransporte + CostoAlojamientoTotal.