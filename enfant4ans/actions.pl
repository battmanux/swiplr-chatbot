% preconditions can use upper classes defined through ontology
% ASSERT shall only use low level variables

possible_action(aller(WHO, FROM, TO), T0, T1, ASSERT, CONSUMPTION) :-
  fact(attr(mobile_entity), WHO, T0), 
  fact(attr(localisé_à, FROM), WHO, T0), 
  fact(attr(class_lieu), FROM, T0),
  fact(attr(class_lieu), TO,   T1),
  not(FROM = TO),
  next(T0, T1), 
  ASSERT = [
    fact(attr(localisé_à, TO), WHO, T1),
    fact(not_attr(localisé_à, FROM), WHO, T0)
    ],
  CONSUMPTION = [
    time(1)
    ].

