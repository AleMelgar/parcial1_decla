% Base de conocimientos

personaje(shrek).
personaje(lord_farquaad).
personaje(enanos).
personaje(hadas).
personaje(lobos).
personaje(osos).
personaje(munecos_jengibre).
personaje(burro).
personaje(dragon).

vive_en(shrek, pantano).
vive_en(enanos, pantano).
vive_en(hadas, pantano).
vive_en(lobos, pantano).
vive_en(osos, pantano).
vive_en(munecos_jengibre, pantano).

amigo(shrek, burro).
amigo(shrek, fiona).
amigo(burro, fiona).

rescata(shrek, fiona).
rescata(burro, fiona).

desea(lord_farquaad, casarse_con_fiona).
desea(lord_farquaad, ser_rey).

transforma_en(fiona, ogra).

valiente(shrek).
valiente(burro).

feroz(shrek).
feroz(dragon).

% Reglas

amigos_de_shrek(X) :- amigo(shrek, X) ; amigo(X, shrek).

es_valiente(X) :- rescata(X, _).

% Consultas

% 1. Quien vive en el pantano?
% vive_en(X, pantano), \+ ( X = enanos ; X = hadas ; X = lobos ; X = osos ; X = munecos_jengibre ).

% 2. Quienes son amigos de Shrek? - con regla
% amigos_de_shrek(X).

% 3. Quien desea casarse con Fiona?
% desea(X, casarse_con_fiona).

% 4. Shrek rescata a fiona?
% rescata(shrek, fiona).

% 5. Que personaje se transforma por las noches?
% transforma_en(X, ogra).

% 6. quien es valiente? - con regla
% es_valiente(X).

% 7. quien es feroz? 
% feroz(X).

% 8. Que personajes llegaron al pantano expulsados del reino?
% vive_en(X, pantano), X \= shrek.