:- discontiguous domain/2.
:- discontiguous gender/2.

%%===================
%% Variables du modèle (domaine)

%% Depuis : https://fr.wiktionary.org/wiki/Wiktionnaire:Liste_de_1750_mots_fran%C3%A7ais_les_plus_courants

nm(il,    [il, ils]).
nm(elle,  [elle, elles]).

%% Les autres - complet
nf(adj_couleur, [couleur, couleurs]).
nm(adj_comportement_1, [comportement, comportements]).
nm(adj_comportement_2, [comportement, comportements]).
nf(adj_taille,         [taille, tailles]).
domain(adj_couleur,         [jaune, blond, brun, gris, roux, noir, blanc, bleu,
                         rouge, vert, transparent, multicolore]).
domain(adj_comportement_1,  [doux, calme, patient, tranquille, sérieux, énervé, fou]).
domain(adj_comportement_2,  [poli, inséparable, méchant, cruel, prudent]).
domain(adj_attention,       [curieux, jaloux, sage, gentil]).
domain(adj_taille,          [géant, grand, moyen, petit]).
domain(adj_handicape_sourd, [sourd]).
domain(adj_handicape_muet,  [muet]).
domain(adj_handicape_moteur,[moteur]).
domain(adj_propreté,        [propre, sale]).
domain(adj_cycle,           [
  nouveau, neuf, différent, usé, cassé, vieux, abîmé, ancien, né, mort
  ]).

%% Les jeux

nf(adj_humidité,  [humidité, humidités]).
domain(adj_humidité,         [mouillé, humide, sec]).
domain(adj_chaleur,          [chaud, froid, gelé]).
domain(adj_intéret,          [amusant,  intéressant]).

%% Coin déguisements

nf(adj_longueur,  [longueure, longueures]).
domain(adj_luminosité,       [clair, foncé, sombre]).
domain(adj_longueur,         [court, long, gros, profond]).
domain(adj_largeur,          [large, étroit, gros, épais, mince, maigre]).
domain(adj_gout_estetique,   [joli, beau, coquet, moche, bizarre]).
domain(adj_habillage,        [nu, barbouillé]).

%% Coin bricolage

domain(adj_agilité,          [adroit, maladroit]).
domain(adj_ressenti_faisable,[difficile, dur, facile]).
domain(adj_ressenti_odeur,   [bon, mauvais]).
domain(adj_ressenti_son,     [calme, bruit, silence]).
domain(adj_surface,          [lisse, rugueux]).

domain(adj_forme_dominate,   [pointu, rond, carré, tordu, tube]).

domain(forme_globale,    [trou, bonhomme]).
domain(forme_découpe,    [rondelles, cubes, tranches]).
  
%% Coin garage-train

domain(nombre,           [un, deux, trois, quatre, cinq, six, sept, huit, neuf, dix]).
domain(adj_position,     [premier, deuxième, troisième, dernier, aîné]).
domain(adj_duretée,      [mou, souple, fragile, solide]).
domain(adj_interaction,      [seul, utile, serré, groupé, caché, abandonné, en_équipe]).
%% même, pareil


%% Dans la salle de jeux

domain(adj_risque,           [dangereux]).
domain(adj_mouvement,        [immobile]).
%%gauche

%% Dans la cour

%% Gâteaux, crêpes
domain(adj_apetit,            [gourmand]).
domain(adj_ressenti_gout,     [mauvais, bon, délicieux]).
domain(adj_contenu,           [plein, vide, creux]).
domain(adj_cuisson,           [cru, cuit]).

%% Les animaux
domain(adj_reproduction,     [enceinte ]).
domain(cycle_vie,            [nouveau_né, oeuf_de, bébé, jeune, vieux, mort]).

%% À la ferme
domain(adj_nain,             [énorme, immense, gros]).
domain(adj_santé,            [malade, guéri]).

%% La fête
domain(adj_type_appareil,    [électrique]).

%% Le temps
domain(adj_ressenti_temps,      [lent, rapide]).
domain(adj_ressenti_récompense, [déçu]).
domain(adj_ressenti_humeur,     [triste, joie]).
domain(adj_ciel,                [pluvieux, nuageux, instable, changeant]).

%% À la maison 
%% La cuisine

%% La chambre
domain(adj_ressenti_touché,    [douillet, confortable]).

%% La famille

%% Un accident, la maladie
domain(adj_couleur_variabte,   [pâle]).

%% Le jardin
domain(adj_maturité,           [mûr]).

%% Les sorties

%% Dans le quartier
domain(adj_priorité,          [important]).
domain(adj_probabilité,       [impossible]).

%% Au marché
domain(adj_ressenti_cout,      [cher]).
domain(adj_ressenti_poid,      [léger, lourd]).

%% À la mer


%% objets

domain(class_humain_job, [
  marchand, boulanger, clown, coiffeur, facteur, fleuriste,
  pharmacien, policier, pompier, ouvrier, chasseur, 
  dentiste, docteur, infirmier, infirmière, médecin,
  princesse, directeur, directrice, élève, gardien, maîtresse, 
  maître, vétérinaire, magicien, sorcière, fermier, acrobate,
  prince, reine, roi, soldat
  ]).

domain(class_aliments_solid,   [
   abricot, ail, ananas, banane, 
   bifteck, carotte, cerise, chocolat, 
   chou, citron, citrouille, clémentine, concombre, 
   coquillage, corbeille, crabe, 
   crevette, endive,  
   fraise, framboise, fromage, fruit, 
   gâteau, haricot, huile, légume, 
   melon, navet, noisette, 
   noix,  oignon, orange, 
   pâtes, pêche, persil, petit_pois, poire, 
   poireau, pomme, pomme_de_terre,  
   prune, queue, raisin, riz, salade, 
   sucre, thé, tomate, viande,
   pain, morceau_de_pain, biscuit, bonbon, céréale, confiture, tartine,
   jambon, poulet, purée, radis, pomme_de_terre, kiwi, mûre,
   pamplemousse, beurre, galette, gâteau, sel, tarte, frite
]).

domain(class_aliments_liquide,   [
  vin, boisson, lait, soupe, potage, jus, miel, café
]).

domain(class_lieu,      [
  ascenseur, balcon, boucherie,  boulangerie, boutique,
  bus, caniveau, caravane, carrefour, cave, charcuterie, cinéma, cirque,
  clocher, église, magasin, manège, pharmacie, police, poste, quartier, square,
  piscine, place, promenade, parc, passage, usine, village, ville, route,
  foire, hôpital, hôtel, immeuble, palais, travaux, incendie, embouteillage, 
  monument, panneau, monde, camp, chemin, chêne, forêt, lac, nid, pin, rocher, 
  sapin, sommet, tente, rangée, terrier, terrain,
  cimetière, crèche, chambre, cuisine, aquarium,
  zoo, bassin, campagne, champ, cheminée, colline, ferme, fontaine, jardin, mare,
  prairie, rivière, route, maison, toit, restaurant, pâtisserie, balançoire, 
  château, préau, bord, montagne, passerelle, pente, plongeoir, aéroport, garage,
  gare, virage, moulin, pont, écran, couloir, extérieur, fenêtre, intérieur, 
  lavabo, lit, sol, cabane, bibliothèque,
  toilette, sortie, sol, salle, rampe, portemanteau, porte, plafond, placard, 
  mur, matelas, marche, étagère, escalier, entrée, école, dossier, coin, classe,
  cabinet, ligne, page, bibliothèque, douche, parcours, mur_d_escalade, milieu, 
  cour, étang, rue, zoo,
  mouleNMD, bois
]).

domain(attribut_humain,  [
  adresse, appartement, 
  santé, âge]).

domain(class_plante,   [
  muguet, herbe, jonquille, pâquerette, champignon,
  arbre, aille, bourgeon, branche, botte_de_foin, bouquet, coquelicot,
  fleur, grain, graine, graines, herbe, marguerite, tulipe, foin
]).

domain(class_manipulable_vaiselle, [
  bol, coquetier, couteau, couvercle, couvert,
  assiette, casserole, plat, cuillère
]).

domain(class_manipulable_autres, [
  panier, enveloppe, volet, timbre, colis, paquet,
  cloche, courrier, croix, médicament, laisse,
  essence, bûche, buisson, châtaigne, gourde, loupe, écorce,
  marron, mûre,
  brouette, râteau, terre, tige, 
  ordonnance, pansement, poison, trousse,
  album, bavoir, biberon, rasoir,
  aspirateur,
  bague, barrette, bijou, bracelet, brosse, cadre,
  chiffon,  coffre, coffret, collier, canapé,
  flocon, goutte, luge, neige, parapluie, parasol, ski, 
  thermomètre, 
  couette, coussin, couverture, 
  dentifrice, drap, fauteuil, 'fer-à-repasser',
  glace, lampe, lit,  
  oreiller, parfum, peigne, pouf, 
  poupée, poussière,
  shampoing, trésor, tube, vase, balai, 
  cuisinière, dînette, éponge, évier, four, fourchette,
  'lave-linge', lessive, nappe, pile, plateau, poêle,
  réfrigérateur, torchon, monnaie,
  drapeau, journaux, maquillage, masque, trottoir, aquarium,
  pompe, lunettes,
  louche, pelle, sifflet, arrosoir,
  caillou, feuille, pierre, plume, coquille, pédale, raquette, filet, barre, 
  barreau, chaises, corde, échasses, échelle, escabeau, pont_de_singe, 
  poutre_d_équilibre, toboggan, tour, trampoline, tunnel, grue, pneu, ampoule, 
  carton, crochet, élastique, ficelle, fil, marionnette, marteau, mètre, moteur,
  pinceau, planche, scie, tournevis, vis, bagage, baguette, cigarette, flèche,
  fusil, lacet, mouchoir, valise, balle, boîte, bouchon, bouteille, 
  cuvette, entonnoir, sac_en_plastique, roue, pot, saladier,
  seau, tasse, verre, stylo, feutre, 'taille-crayon', crayon, mine, gomme, dessin, 
  coloriage, craie, papier, cahier, carnet, ciseaux, découpage, pliage, colle, 
  casier, caisse, trousse, cartable, pion, dé, domino, puzzle, 
  cube, perle, chose, pâte_à_modeler, tampon, livre, dictionnaire, magazine, 
  catalogue, enveloppe, étiquette,  caméscope, cassette, cédé, cédérom, doigt, 
  magnétoscope, micro, ordinateur, poster, pouce, radio, tambour, télécommande, 
  téléphone, télévision, trompette, xylophone, armoire, banc, bureau, chaise,
  clé, poubelle, radiateur, rideau, robinet, savon, serviette, siège, tabouret,
  tiroir, glaçon, bassine, lame,
  noyau, paille, râpe, allumette, épluchure, fève, rouleau, ballon,
  cage_à_écureuil, bille , cadenas, échasse, tuyau, bande_dessinée
  ]).

domain(class_habit, [
  anorak, bonnet, manteau
]).

domain(class_animal,  [
  moineau, corbeau, écureuil, moustique, araignée,
  chenille, coccinelle, fourmi, lézard, souris, taupe, ver,
  hirondelle, papillon,
  aigle, cerf, chouette, cigogne, crocodile, dauphin, éléphant, 
  girafe, hibou, hippopotame, kangourou, lion, loup, ours, panda, 
  panthère, perroquet, phoque, renard, requin, rhinocéros, singe, tigre, zèbre,
  cochon_d_Inde, lapin, hamster, chèvre, chien, cheval, chat, coq, crapaud, 
  cygne, dindon, boeuf, grenouille, guêpe, hérisson, mouche, mouton, oie, 
  pigeon, poney, poule, poussin, rat, tortue, vache, serpent, canard, poissonD,
  abeille, agneau, âne, cochon, escargot
]).

domain(class_humain_type,  [
  lutin, orc, humain, fée, ogre
  ]).

domain(class_vehicle, [
  ambulance, poussette, traîneau,
  tracteur, barque, chariot, tricycle, vélo, auto, camion, fusée,
  hélicoptère, train, wagon, avion, bateau, moto, car, bicyclette,
  voiture
]).

domain(membre_fréquent_class_humain,   [
  front, gorge, jambe, menton, mine, peau, sang, squelette,
  cheveu, cil, dent, sourcil, os,
  visage, figure, joue, bras, mains, main, pied, tête, yeux, bouche, nez,
  œil, oreille, doigts, dos, épaule, cœur, cheville, cuisse, cou, coude, 
  fesse, genou, hanche, jambes, muscle, ongle, pieds, poignet, poing, 
  pouce, langue, lèvres, ventre
  ]).
nm(cheveu,    [cheveu, cheveux]).
nf(cheveu,    [chevelure, chevelures]).

domain(membre_rare_class_humain,   [
  bosse, fièvre, larme, piqûre, frange,
  moustache, barbe, sourire
]).

domain(membre_fréquent_class_animaux,   [
  patte, bec, griffe, arête, os, aile
]).

domain(membre_rare_class_animaux,   [
]).


%% clin d’œil, endroit, , 
%% paysage, mariage

domain(class_ressenti_age,   [
  petit_enfant, adulte, bébé,
  fille, garçon, 
  madame, monsieur]).

domain(class_humain_relation,   [
  voisin, amour, cousin, cousine, 
  fils, frère, grand_parent, homme, femme,
  jumeau, maman, mari, mère, papa, parent, père,
  petit_fils, petite_fille, soeur,
  'grand-mère', 'grand-père', camarade, copain
]).

domain(class_genre,    [homme, femme, animal, plante, chose]).

domain(adj_etat_lieu,  [désordre, rangé]).

domain(class_sensible, [
  air, 'arc-en-ciel', brouillard, ciel, éclair,
  nuage, orage, ouragan, tempête, tonnerre, vent
  ]).

domain(matériau,      [
  or, argent, bois
]).

domain(class_activité,      [
  ménage, spectacle, surprise, fête, câlin, caresse, bagarre, bain
]).

domain(class_mouvement,     [
  chute, roulade, saut  
]).

%% baiser, bisou, caprice, argent, repas, prix,

domain(class_moment, [
   noël, récréation
]).

domain(class_habits,    [
  botte, bouton, bretelle, cagoule, casque, casquette, ceinture, chapeau, 
  chaussette, chausson, chaussure, chemise, col, collant, couronne, 
  cravate, culotte, écharpe, épée, gant, 'pull-over', pyjama, robe,
  jean, jupe, laine, linge, maillot, moufle, pantalon, veste
]).

%% chance, humeur, , 
%% boule, cadeau, canne_à_pêche, cube, guirlande, épingle, bâton, , canne, déguisement, 
%% bêtise, 
%% auchemar, cri, danse, 
%% dinosaure, 
%% à moitié, autant, beaucoup, encore, moins, peu, plus, trop
%% demi, égal, entier, , , meilleur, 
%% fort
%% travail
 
%% en_rang,  boue, départ, 
%% flamme, fumée, cage,  
%% consommé, anniversaire, appétit, croûte, dessert, 
%% envie, faim, goût, invitation, mie, moitié part, 
%% pâte, recette, soif, tranche, yaourt, bande, 'cerf-volant',
%% coup, course, flaque, paix, pardon, partie, rayon, sable, 
%% signe, tas, arrêt, cerceau, côté, danger, 
%% fond, gymnastique, numéro, pas, peur, prises,
%% sport, suivant, accident, engin, feu, frein, panne, parking, pilote,
%% quai, vitesse, voyage, zigzag, aiguille, bout, bricolage, clou, métal, 
%% morceau, peinture, plâtre, à_l_endroit, à_l_envers, arc, magie, manche,
%% nœud, paire, poche, ruban, semelle, tache, talon, tissu, tricot, 
%% uniforme, bulles, gouttes, litre, pluie, tablier, trous, ami, attention,
%% colère, coquin, droit, effort, fatigue, faute, mensonge, ordre, retard,
%% pointe, rayure, peinture, couleur, pli, histoire, image, titre, conte,
%% mot, affiche, alphabet, chaîne, chanson, chiffre, contraire, différence,
%% écriture, film, fois, idée, instrument, intrus, lettre, liste, modèle,
%% musique, nom, nombre, orchestre, photo, point, prénom, question, sens,
%% trait, voix, zéro, angle, carreau, eau, écriture, étude, lecture, maternelle,
%% meuble, mousse, peluche, récréation, rentrée, serrure, sieste, silence, 
%% sommeil, sonnette, table, tableau, tapis, tiroir, toilette, vitre, 'w.-c.',