% fact(STATE, WHAT, STEP)


%%%%%%%%%%%%%%%%%%
%% Generic  Facts
%%%%%%%%%%%%%%%%%%

fact(attr(membre_fréquent_class_animaux, pattes), membre_déduit(W), S) :-
  fact(attr(class_animal, chien), W, S).
