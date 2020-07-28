library(shiny)

l_blob <- "drapeau, , en rang, , géant, gens, grand-mère, grand-père, joie, joue, journaux, maquillage, masque, monsieur, moustache, ogre, princesse, rue, trottoir, 
 animaux, aquarium, bêtes, zoo, 
légume, abeille, agneau, aile, âne, arbre, bain, barque, bassin, bébé, bec, bête, bœuf, botte de foin, boue, bouquet, bourgeon, branche, caillou, campagne, car, champ, chariot, chat, cheminée, cheval, chèvre, chien, cochon, colline, coq, coquelicot, crapaud, cygne, départ, dindon, escargot, étang, ferme, fermier, feuille, flamme, fleur, fontaine, fumée, grain, graine, grenouille, griffe, guêpe, herbe, hérisson, insecte, jardin, mare, marguerite, miel, morceau de pain, mouche, mouton, oie, oiseau, pierre, pigeon, plante, plume, poney, poule, poussin, prairie, rat, rivière, route, tortue, tracteur, tulipe, vache, vétérinaire, 
animal, bébés, bouche, cage, câlin, caresse, cochon d’Inde, foin, graines, hamster, lapin, maison, nez, œil, oreille, patte, toit, yeux, 
arête, frite, gobelet, jambon, os, poulet, purée, radis, restaurant, sole, 
bassine, cocotte, épluchure, légume, pomme de terre, rondelle, soupe, consommé, potage, 
glaçon, jus, kiwi, lame, mûre, noyau, paille, pamplemousse, râpe, 
allumette, anniversaire, appétit, beurre, coquille, crêpes, croûte, dessert, envie, faim, fève, four, galette, gâteau, goût, invitation, langue, lèvres, liquide, louche, mie, moitié, moule, odeur, œuf, part, pâte, pâtisserie, recette, rouleau, sel, soif, tarte, tranche, yaourt, 
bagarre, balançoire, ballon, bande, bicyclette, bille, cadenas, cage à écureuil, cerf-volant, château, coup, cour, course, échasse, flaque, paix, pardon, partie, pédale, pelle, pompe, préau, raquette, rayon, récréation, sable, sifflet, signe, tas, tricycle, tuyau, vélo, filet, 
acrobate, arrêt, arrière, barre, barreau, bord, bras, cerceau, chaises, cheville, chute, cœur, corde, corps, côté, cou, coude, cuisse, danger, doigts, dos, échasses, échelle, épaule, équipe, escabeau, fesse, filet, fond, genou, gymnastique, hanche, jambes, jeu, mains, milieu, montagne, mur d’escalade, muscle, numéro, ongle, parcours, pas, passerelle, pente, peur, pieds, plongeoir, poignet, poing, pont de singe, poutre d’équilibre, prises, rivière des crocodiles, roulade, saut, serpent, sport, suivant, tête, toboggan, tour, trampoline, tunnel, ventre, 
accident, aéroport, auto, camion, engin, feu, frein, fusée, garage, gare, grue, hélicoptère, moto, panne, parking, pilote, pneu, quai, train, virage, vitesse, voyage, wagon, zigzag, 
aiguille, ampoule, avion, bois, bout, bricolage, bruit, cabane, carton, clou, colle, crochet, élastique, ficelle, fil, marionnette, marteau, métal, mètre, morceau, moteur, objet, outil, peinture, pinceau, planche, plâtre, scie, tournevis, vis, voiture, véhicule, 
à l’endroit, à l’envers, anorak, arc, bagage, baguette, barbe, bonnet, botte, bouton, bretelle, cagoule, casque, casquette, ceinture, chapeau, chaussette, chausson, chaussure, chemise, cigarette, col, collant, couronne, cravate, culotte, écharpe, épée, fée, flèche, fusil, gant, habit, jean, jupe, lacet, laine, linge, lunettes, magicien, magie, maillot, manche, manteau, mouchoir, moufle, nœud, paire, pantalon, pied, poche, prince, pull-over, pyjama, reine, robe, roi, ruban, semelle, soldat, sorcière, tache, taille, talon, tissu, tricot, uniforme, valise, veste, vêtement, 
arrosoir, assiette, balle, bateau, boîte, bouchon, bouteille, bulles, canard, casserole, cuillère, cuvette, douche, entonnoir, gouttes, litre, moulin, pluie, poisson, pont, pot, roue, sac en plastique, saladier, seau, tablier, tasse, trous, verre, 
ami, attention, camarade, colère, copain, coquin, dame, directeur, directrice, droit, effort, élève, enfant, fatigue, faute, fille, garçon, gardien, madame, maître, maîtresse, mensonge, ordre, personne, retard, sourire, travail, 
crayon, stylo, feutre, taille-crayon, pointe, mine, gomme, dessin, coloriage, rayure, peinture, pinceau, couleur, craie, papier, feuille, cahier, carnet, carton, ciseaux, découpage, pliage, pli, colle, affaire, boîte, casier, caisse, trousse, cartable, jouet, jeu, pion, dé, domino, puzzle, cube, perle, chose, forme : carré, rond, pâte à modeler, tampon, livre, histoire, bibliothèque, image, album, titre, bande dessinée, conte, dictionnaire, magazine, catalogue, page, ligne, mot, enveloppe, étiquette, carte d’appel : affiche, alphabet, appareil, caméscope, cassette, cédé, cédérom, chaîne, chanson, chiffre, contraire, différence, doigt, écran, écriture, film, fois, idée, instrument, intrus, lettre, liste, magnétoscope, main, micro, modèle, musique, nom, nombre, orchestre, ordinateur, photo, point, poster, pouce, prénom, question, radio, sens, tambour, télécommande, téléphone, télévision, trait, trompette, voix, xylophone, zéro, 
angle, armoire, banc, bureau, cabinet, carreau, chaise, classe, clé, coin, couloir, dossier, eau, école, écriture, entrée, escalier, étagère, étude, extérieur, fenêtre, intérieur, lavabo, lecture, lit, marche, matelas, maternelle, meuble, mousse, mur, peluche, placard, plafond, porte, portemanteau, poubelle, radiateur, rampe, récréation, rentrée, rideau, robinet, salle, savon, serrure, serviette, siège, sieste, silence, sol, sommeil, sonnette, sortie, table, tableau, tabouret, tapis, tiroir, toilette, vitre, w.-c.
"

l_blob_done <- "drapeau, journaux, maquillage, masque, trottoir, aquarium, jambon, poulet, purée, radis, pomme de terre, soupe, potage, jus, kiwi, mûre, pamplemousse, beurre, galette, gâteau, sel, tarte, frite, pompe, grand-mère, grand-père, monsieur, princesse, bébé,
joue, moustache, bras, mains, main, pied, tête, yeux, bouche, nez, œil, oreille, doigts, dos, épaule, cœur, cheville, cuisse, cou, coude, fesse, genou, hanche, jambes, muscle, ongle, pieds, poignet, poing, barbe, lunettes, sourire, pouce
zoo, bassin, campagne, champ, cheminée, colline, ferme, fontaine, jardin, mare, prairie, rivière, route, maison, toit, restaurant, pâtisserie, balançoire, château, préau, bord, montagne, passerelle, pente, plongeoir, aéroport, garage, gare, virage, moulin, pont, écran, couloir, extérieur, fenêtre, intérieur, lavabo, lit, sol,
cochon d’Inde, lapin, hamster, chèvre, chien, cheval, chat, coq, crapaud, cygne, dindon, bœuf, grenouille, guêpe, hérisson, insecte, mouche, mouton, oie, oiseau, pigeon, poney, poule, poussin, rat, tortue, vache, serpent, canard, poisson,
abeille, agneau, âne, arbre, aile, bourgeon, branche, botte de foin, bouquet, cochon, coquelicot, escargot, fleur, grain, graine, herbe, marguerite, plante, tulipe, foin, graines, légume,
tracteur, barque, chariot, vétérinaire, cochon d’Inde, gobelet, langue, lèvres, louche, œuf, pelle, sifflet, tricycle, vélo, auto, camion, fusée, hélicoptère, train, wagon, avion, cabane, véhicule, fée, magicien, sorcière, bateau, directeur, directrice, élève, gardien, maîtresse, maître, bibliothèque,
caillou, feuille, pierre, plume, cocotte, coquille, pédale, raquette, filet, barre, barreau, chaises, corde, échasses, échelle, escabeau, pont de singe, poutre d’équilibre, toboggan, tour, trampoline, tunnel, grue, moto, pneu, ampoule, carton, crochet, élastique, ficelle, fil, marionnette, marteau, mètre, moteur, objet, outil, pinceau, planche, scie, tournevis, vis, anorak, bagage, baguette, bonnet, cigarette, flèche, fusil, lacet, manteau, mouchoir, valise, assiette, balle, boîte, bouchon, bouteille, casserole, cuillère, cuvette, entonnoir, sac en plastique, roue, pot, saladier, seau, tasse, verre, stylo, feutre, taille-crayon, mine, gomme, dessin, coloriage, craie, papier, cahier, carnet, ciseaux, découpage, pliage, colle, casier, caisse, trousse, cartable, jouet, jeu, pion, dé, domino, puzzle, cube, perle, chose, pâte à modeler, tampon, livre, dictionnaire, magazine, catalogue, enveloppe, étiquette, appareil, caméscope, cassette, cédé, cédérom, doigt, magnétoscope, micro, ordinateur, poster, pouce, radio, tambour, télécommande, téléphone, télévision, trompette, xylophone, armoire, banc, bureau, chaise, clé, poubelle, radiateur, rideau, robinet, savon, serviette, siège, tabouret, tiroir,
toilette, sortie, sol, salle, rampe, portemanteau, porte, plafond, placard, mur, matelas, marche, étagère, escalier, entrée, école, dossier, coin, classe, cabinet, ligne, page, bibliothèque, douche, parcours, mur d’escalade, milieu, cour, étang"


ui <- fluidPage(
  uiOutput("words"),
  textOutput("code")
)

server <- function(input, output, session) {
  
  gList <- list()
  gDoneList <- strsplit(l_blob_done, split = ", ")[[1]]
  gInList <- strsplit(l_blob, split = ", ")[[1]]
  gInList <- gInList[!gInList %in% gDoneList]
  
  output$words <- renderUI({
    lapply(gInList, function(x) a(href = "#", onclick = paste0("Shiny.setInputValue('add', '",x,"')"), x) )
  })
  
  observeEvent(input$add, {
    gList <<- c(gList, input$add)
    gInList <<- gInList[!gInList %in% gList]
    output$code <- renderText({
      paste(gList, sep = ", ", collapse = ", ")
      })
    
    output$words <- renderUI({
      lapply(gInList, function(x) list(a(href = "#", onclick = paste0("Shiny.setInputValue('add', '",x,"')"), x),",") )
    })
  })
  
}

shinyApp(ui, server)