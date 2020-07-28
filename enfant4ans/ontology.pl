fact(attr(X), A, B) :- fact(attr(X, Y), A, B), attr(X, Y).

fact(ATTR, membre(A), B) :- fact(ATTR, membre_vu(A), B).
fact(ATTR, membre(A), B) :- fact(ATTR, membre_déduit(A), B).

fact(attr(handicape, sourd),  A, B)   :- fact(attr(handicape_sourd), A, B).
fact(attr(handicape, muet),   A, B)   :- fact(attr(handicape_muet), A, B).
fact(attr(handicape, moteur), A, B)   :- fact(attr(handicape_moteur), A, B).

fact(attr(humain), A, B) :- fact(attr(class_humain_job), A, B).
fact(attr(humain), A, B) :- fact(attr(class_humain_type), A, B).
fact(attr(humain), A, B) :- fact(attr(membre_fréquent_class_humain), seen_membre(A), B).

fact(attr(animal), A, B) :- fact(attr(membre_fréquent_class_animaux), seen_membre(A), B).
fact(attr(animal), A, B) :- fact(attr(class_animal), A, B).

fact(attr(mobile_entity), A, B) :- fact(attr(class_vehicle), A, B).
fact(attr(mobile_entity), A, B) :- fact(attr(humain), A, B).
fact(attr(mobile_entity), A, B) :- fact(attr(animal), A, B).

attr(class_manipulable, VALUE) :- attr(class_manipulable_vaiselle, VALUE).
attr(class_manipulable, VALUE) :- attr(class_manipulable_autres, VALUE).



%% vaisselle
%% machine,
%% insecte,
%% oiseau,
%% plante,
%% aliment
%% nourriture
%% légume
%% véhicule,
%% vivant
%% cocotte (poule)
%% objet, outil, 
%% jouet, jeu,
%% appareil,
%% animaux, animal
%% bêtes, bête
%% légume, légume
%% gens
%% liquide
%% solide
%% odeur
%%   habit, vêtement
%% dame -> madame
%% enfant -> fille / garcon
%% personne
%% affaire

%% corps,
