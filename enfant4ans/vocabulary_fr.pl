art(nms, def) --> [le].
art(nfs, def) --> [la].
art(nmp, def) --> [les].
art(nfp, def) --> [les].

art(nms, indef) --> [un].
art(nfs, indef) --> [une].
art(nmp, indef) --> [des].
art(nfp, indef) --> [des].

art(nms, poss) --> [de, le].
art(nfs, poss) --> [de, la].
art(nmp, poss) --> [de, les].
art(nfp, poss) --> [de, les].

art(nms,   none) --> [].
art(nfs,   none) --> [].
art(nmp,   none) --> [].
art(nfp,   none) --> [].


art2(A, B, C, V, V) :- art(A, B, C, []).

reduce([de, le],  [du]).
reduce([de, les], [des]).

ppers(p3ms, nms) --> [il].
ppers(p3fs, nfs) --> [elle].
ppers(p3mp, nmp) --> [ils].
ppers(p3fp, nfp) --> [elles].

pposs(p3ms, nms) --> [le, sien].
pposs(p3ms, nfs) --> [la, sienne].
pposs(p3ms, nmp) --> [les, siens].
pposs(p3ms, nfp) --> [les, siennes].
pposs(p3fs, nms) --> [le, sien].
pposs(p3fs, nfs) --> [la, sienne].
pposs(p3fs, nmp) --> [les, siens].
pposs(p3fs, nfp) --> [les, siennes].

pposs(p3mp, nms) --> [le, leur].
pposs(p3mp, nfs) --> [la, leur].
pposs(p3mp, nmp) --> [les, leurs].
pposs(p3mp, nfp) --> [les, leurs].
pposs(p3fp, nms) --> [le, leur].
pposs(p3fp, nfs) --> [la, leur].
pposs(p3fp, nmp) --> [les, leurs].
pposs(p3fp, nfp) --> [les, leurs].

adjposs(p3ms, nms) --> [mon].
adjposs(p3ms, nfs) --> [ma].
adjposs(p3ms, nmp) --> [mes].
adjposs(p3ms, nfp) --> [mes].
adjposs(p3fs, nms) --> [mon].
adjposs(p3fs, nfs) --> [ma].
adjposs(p3fs, nmp) --> [mes].
adjposs(p3fs, nfp) --> [mes].

:- [names_fr].

word(X, MS, nms) :- adj(X, [MS, _ , _ , _ ]).
word(X, MP, nmp) :- adj(X, [_ , MP, _ , _ ]).
word(X, FS, nfs) :- adj(X, [_ , _ , FS, _ ]).
word(X, FP, nfp) :- adj(X, [_ , _ , _ , FP]).

word(X, MS, nms) :- nm(X, [MS, _ ]).
word(X, MP, nmp) :- nm(X, [_ , MP]).
word(X, FS, nfs) :- nf(X, [FS, _ ]).
word(X, FP, nfp) :- nf(X, [_ , FP]).

word(MODEL, TEXT, GENDER, V, V) :- word(MODEL, TEXT, GENDER).

word_type(verbe_d_état,            [être, paraître, sembler, devenir, demeurer, rester, avoir_l_air, passer_pour]).

word_type(adjectif_court,          [beau, bon, bref, grand, gros, faux, haut, jeune, joli, mauvais, meilleur, nouveau, petit, vieux]).
word_type(adjectif_exception_list, [faux, chanceux, doux, public, grec, franc, violet, inquiet, frais, gras]).

is_word_type(TYPE, WORD) :- word_type(TYPE, LIST), member(WORD, LIST).
is_word_type(adjectif,  MOT) :- attr(DOMAIN, MOT), sub_atom(DOMAIN, 0, 4, _, adj_).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif_exception_list, MOT).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif_court, MOT).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, s).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, c).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, g).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, el).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, en).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, on).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, er).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, eur).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, f).
is_word_type(adjectif_exception, MOT) :- is_word_type(adjectif,  MOT), sub_atom(MOT, _, 1, 0, e).

is_word_type(nom_commun, MOT) :- attr(DOMAIN, MOT), not(sub_atom(DOMAIN, 0, 4, _, adj_)).

adj(court, [court, courts,  courte, courtes]).
adj(sec,   [sèc, sècs,  sèche, sèches]). 
adj(faux,  [faux, faux, fausse, fausses]).
adj(chanceux, [chanceux, chanceux, chanceuse, chanceuses]).
adj(doux,    [doux, doux, douce, douces]).
adj(public,  [public, publics, publique, publiques]).
adj(grec,    [grec, grecs, grecque, grecques]).
adj(franc,   [franc, francs, franche, franches]).
adj(violet,  [violet, violet, violette, violettes]).
adj(inquiet, [inquiet, inquiets, inquiète, inquiètes]).
adj(frais,   [frais, frais, fraîche, fraîches]).
adj(gras,    [gras, gras, grasse, grasses]).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), not(is_word_type(adjectif_exception, MOT)), 
  atomic_list_concat([MOT,s],'',NMP),
  atomic_list_concat([MOT,e],'',NFS),
  atomic_list_concat([MOT,es],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, _, 1, 0, c), 
  atomic_list_concat([MOT,s],'',NMP),
  atomic_list_concat([MOT,he],'',NFS),
  atomic_list_concat([MOT,hes],'',NFP).
  
adj(MOT,   [MOT, MOT, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, _, 1, 0, s),
  atomic_list_concat([MOT,se],'',NFS),
  atomic_list_concat([MOT,ses],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, _, 1, 0, g), 
  atomic_list_concat([MOT,s],  '',NMP),
  atomic_list_concat([MOT,ue], '',NFS),
  atomic_list_concat([MOT,ues],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :-
  is_word_type(adjectif, MOT), sub_atom(MOT, _, 2, 0, el), 
  atomic_list_concat([MOT,s],  '',NMP),
  atomic_list_concat([MOT,le], '',NFS),
  atomic_list_concat([MOT,les],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, _, 1, 0, en), 
  atomic_list_concat([MOT,s],  '',NMP),
  atomic_list_concat([MOT,ne], '',NFS),
  atomic_list_concat([MOT,nes],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, _, 1, 0, on), 
  atomic_list_concat([MOT,s],  '',NMP),
  atomic_list_concat([MOT,ne], '',NFS),
  atomic_list_concat([MOT,nes],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, POS, 1, 0, er),
  sub_atom(MOT, 0, POS, _, RACINE), 
  atomic_list_concat([RACINE,ers], '',NMP),
  atomic_list_concat([RACINE,ère], '',NFS),
  atomic_list_concat([RACINE,ères],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, POS, 1, 0, eur),
  sub_atom(MOT, 0, POS, _, RACINE), 
  atomic_list_concat([RACINE,eurs], '',NMP),
  atomic_list_concat([RACINE,euse], '',NFS),
  atomic_list_concat([RACINE,euses],'',NFP).

adj(MOT,   [MOT, NMP, NFS, NFP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, POS, 1, 0, f),
  sub_atom(MOT, 0, POS, _, RACINE), 
  atomic_list_concat([RACINE,fs], '',NMP),
  atomic_list_concat([RACINE,ve], '',NFS),
  atomic_list_concat([RACINE,ves],'',NFP).

adj(MOT,   [MOT, NP, MOT, NP]) :- 
  is_word_type(adjectif, MOT), sub_atom(MOT, _, 1, 0, e), 
  atomic_list_concat([MOT,s],'',NP).
  
not(X, V, V) :- not(X).
is_word_type(A, B, V, V) :- is_word_type(A, B).
domain(A, B, V, V) :- domain(A, B).

np(A, B, C, D, E) :- 
 np1(A, B, C, D, E);
 np2(A, B, C, D, E);
 np3(A, B, C, D, E);
 np4(A, B, C, D, E);
 np5(A, B, C, D, E);
 np6(A, B, C, D, E);
 np7(A, B, C, D, E).

np1(attr(ATTR_CLASS), DETERMINE, GENRE) --> 
  art(GENRE, DETERMINE),
  domain(ATTR_CLASS, _),
  n(ATTR_CLASS, NOM, GENRE),
  [NOM].

%% changer thing par les hypernimes
np2(attr(thing, ATTR_VALUE), DETERMINE, GENRE) --> 
  art(GENRE, DETERMINE),
  is_word_type(nom_commun,  ATTR_VALUE),
  n(ATTR_VALUE, NOM, GENRE),
  [NOM].
  
np3(attr(ATTR_CLASS, ATTR_VALUE), elipse, GENRE) --> 
  is_word_type(adjectif,  ATTR_VALUE),
  word(ATTR_VALUE, ADJ, GENRE),
  attr(ATTR_CLASS, ATTR_VALUE),
  [ADJ].

np3(attr(ATTR_CLASS, ATTR_VALUE), none, GENRE) --> 
  is_word_type(adjectif,  ATTR_VALUE),
  word(ATTR_VALUE, ADJ, GENRE),
  attr(ATTR_CLASS, ATTR_VALUE),
  [ADJ].
  
np4(attr(ATTR_CLASS, ATTR_VAL), DETERMINE, GENRE) --> 
  art(GENRE, DETERMINE), attr(ATTR_CLASS, ATTR_VAL),
  is_word_type(adjectif, ATTR_VAL),
  n(ATTR_CLASS, NOM, GENRE), word(ATTR_VAL, ADJ, GENRE),
  not((
    is_word_type(adjectif_court, ATTR_VAL),
    not(is_word_type(adjectif_couleur, ATTR_VAL))
  )),
  [NOM, ADJ].

np5(attr(ATTR_CLASS, ATTR_VAL), DETERMINE, GENRE) --> 
  art(GENRE, DETERMINE), attr(ATTR_CLASS, ATTR_VAL),
  is_word_type(adjectif, ATTR_VAL),
  n(ATTR_CLASS, NOM, GENRE), word(ATTR_VAL, ADJ, GENRE),
  is_word_type(adjectif_court, ATTR_VAL),
  not(is_word_type(adjectif_couleur, ATTR_VAL)),
  [ADJ, NOM].

np6(de(SUJET, MEMBRE), indef, GENRE_NOM) --> 
  art(GENRE_NOM, indef),
  n(MEMBRE, NOM_MEMBRE, GENRE_NOM),
  n(SUJET, NOM_SUJET , _),
  [NOM_MEMBRE, de, NOM_SUJET].

np7(de(SUJET, MEMBRE), DETERMINE, GENRE_NOM) --> 
  art(GENRE_NOM, DETERMINE),
  not((DETERMINE = indef)),
  [NOM_MEMBRE],
  n(MEMBRE, NOM_MEMBRE, GENRE_NOM),
  art(GENRE_SUJET, poss),
  n(SUJET, NOM_SUJET, GENRE_SUJET),
  [NOM_SUJET].
  
  
=(A,B, V, V) :- =(A, B).