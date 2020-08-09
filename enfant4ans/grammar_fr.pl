show(LIST, STRING) :- 
  atomics_to_string([' '|LIST], ' ', PRE_OUT), 
  re_replace(' l(e|a) (e|i|a|o|ho)'/g, ' l`$2', PRE_OUT, PRE_OUTa),
  re_replace(' de (e|i|a|o|ho)'/g, ' d`$1', PRE_OUTa, PRE_OUTb),
  re_replace(' de les '/g, ' des ', PRE_OUTb, PRE_OUT1),
  re_replace(' de le '/g,  ' du ', PRE_OUT1, PRE_OUT2),
  re_replace('(.)$', "$1'", PRE_OUT2, PRE_OUT3),
  re_replace('^ *', "'", PRE_OUT3, STRING).

look(STRING, LIST) :- 
  re_replace("^([^ ])", " $1", STRING, STRING1),
  re_replace(" d'(e|i|a|o|ho)"/g, ' de $1', STRING1, STRING2),
  re_replace(' des '/g, ' de les ', STRING2, STRING3),
  re_replace(' du '/g, ' de le ', STRING3, STRING4),
  ( re_match(" l'(e|i|a|o|ho)", STRING4) -> (
    re_replace(" l'(e|i|a|o|ho)"/g, ' le $1', STRING4, STRING5) ; 
    re_replace(" l'(e|i|a|o|ho)"/g, ' la $1', STRING4, STRING5)
    ) ; 
    re_replace("", '', STRING4, STRING5)
  ),
  atomic_list_concat([_|LIST], " ", STRING5).


p_sujet_verbe_cod_coi(S, V, O, I) --> 
  (S, V, O, I) ;
  (I, S, V, O) ;
  (S, V, I, O).

question(fact(M, OBJECT, FACT_STEP), VAR_NAME, VAR_VALUE) --> 
  M=attr(VAR_NAME, VAR_VALUE),
  fact(attr(VAR_NAME, VAR_VALUE), OBJECT, FACT_STEP), 
  [quel], 
  verbe(etre, PERS, present), gn(attr(VAR_NAME), GENDER), nbr_v(PERS, GENDER),
  step(FACT_STEP).

question(fact(M, OBJECT, FACT_STEP), VAR_NAME, VAR_VALUE) --> 
  M=attr(VAR_NAME, VAR_VALUE),
  fact(attr(VAR_NAME, VAR_VALUE), OBJECT, FACT_STEP), 
  [quel], 
  verbe(etre, PERS, present), gn(attr(VAR_NAME), GENDER), nbr_v(PERS, GENDER)
  .
des(S, M) :- de(S, M, -1).
de(S, M) :- de(S, M, 1).
de(S, M, V, V) :- de(S, M).

p(A, B, C, D, E) :-
  p(_, A, B, C, D, E).

p(existe_sujet, fact(existe, SUJET, _), WHEN, probable) -->
  [il,y],
  verbe(avoir, p3ms, WHEN),
  np(SUJET, indef, _).

p(existe_membre, fact(existe, de(SUJET,MEMBRE), _), WHEN, probable) -->
  np(SUJET, def, GENDER_SUJET),
  nbr(PERS, GENDER_SUJET),
  verbe(avoir, PERS, WHEN),
  np(MEMBRE, indef, _).

p(existe_membre, fact(existe, de(SUJET,MEMBRE, COUNT), _), WHEN, probable) -->
  np(SUJET, def, GENDER_SUJET),
  nbr(PERS, GENDER_SUJET),
  verbe(avoir, PERS, WHEN),
  [COUNT],
  np(MEMBRE, none, _).


p(a1, fact(attr(ATTR_CLASS), de(SUJET, MEMBRE, 1), _ ), WHEN, probable) -->
  is_word_type(nom_commun, MEMBRE), 
  np(de(SUJET, MEMBRE), SUJET_DETERMINE, GENDER),
  nbr(PERS, GENDER),
  verbe(avoir, PERS, WHEN),
  np(attr(ATTR_CLASS), SUJET_DETERMINE, GENDER).

p(a2, fact(attr(ATTR_CLASS, ATTR_VALUE), de(SUJET, MEMBRE, 1), _ ), WHEN, probable) -->
  is_word_type(nom_commun, MEMBRE),
  attr_v(ATTR_CLASS, ATTR_VALUE),
  (np(de(SUJET, MEMBRE), def, GENDER); np(de(SUJET, MEMBRE), undef, GENDER)),
  nbr(PERS, GENDER),
  verbe(avoir, PERS, WHEN),
  np(attr(ATTR_CLASS, ATTR_VALUE), def, GENDER).

% être explicite
p(e1, fact(attr(ATTR_CLASS, ATTR_VALUE), SUJET, _ ), WHEN, probable) -->
  is_word_type(nom_commun, SUJET),
  attr_v(ATTR_CLASS, ATTR_VALUE),
  is_word_type(adjectif,  ATTR_VALUE),
  np(attr(ATTR_CLASS), def, GENDER_ATTR),
  np(SUJET, poss, _),
  nbr(PERS, GENDER_ATTR),
  verbe(etre, PERS, WHEN),
  word(ATTR_VALUE, M, GENDER_ATTR), [M].

% être explicite
p(e1, fact(attr(ATTR_CLASS, ATTR_VALUE), de(SUJET, MEMBRE, 1), _ ), WHEN, probable) -->
  is_word_type(nom_commun, MEMBRE),
  attr_v(ATTR_CLASS, ATTR_VALUE),
  is_word_type(adjectif,  ATTR_VALUE),
  np(attr(ATTR_CLASS), def, GENDER_ATTR),
  np(de(SUJET, MEMBRE), poss, _),
  nbr(PERS, GENDER_ATTR),
  verbe(etre, PERS, WHEN),
  word(ATTR_VALUE, M, GENDER_ATTR), [M].

% être implicite
p(e2, fact(attr(ATTR_CLASS, ATTR_VALUE), de(SUJET, MEMBRE, 1), _ ), WHEN, probable) -->
  is_word_type(nom_commun, MEMBRE),
  (np(de(SUJET, MEMBRE), def, GENDER); np(de(SUJET, MEMBRE), undef, GENDER)),
  nbr(PERS, GENDER),
  verbe(etre, PERS, WHEN),
  np(attr(ATTR_CLASS, ATTR_VALUE), elipse, GENDER),
  attr_v(ATTR_CLASS, ATTR_VALUE).

% être 
p(e2, fact(attr(ATTR_CLASS, ATTR_VALUE), SUJET, _ ), WHEN, probable) -->
  np(SUJET, def, GENDER),
  nbr(PERS, GENDER),
  verbe(etre, PERS, WHEN),
  np(attr(ATTR_CLASS, ATTR_VALUE), elipse, GENDER),
  is_word_type(nom_commun, SUJET),
  attr_v(ATTR_CLASS, ATTR_VALUE).

sentence(fact(VAR, OBJECT, FACT_STEP)) --> 
  fact(VAR, OBJECT, FACT_STEP), 
  p_sujet_verbe_cod_coi(sujet(OBJECT, PERS), verbe(avoir, PERS, present), gn(VAR,_), step(FACT_STEP)).
    
  
sentence(assume(VAR, OBJECT, FACT_STEP)) --> 
  p_sujet_verbe_cod_coi(sujet(OBJECT, PERS), verbe(avoir, PERS, present), gn(VAR,_), step(FACT_STEP)),
  number(FACT_STEP).
  
sentence(assume(VAR, OBJECT, FACT_STEP, TENSE)) --> 
  p_sujet_verbe_cod_coi(sujet(OBJECT, PERS), verbe(avoir, PERS, TENSE), gn(VAR,_), step(FACT_STEP)),
  number(FACT_STEP).

%sentence(fact(coul_cheveux(V), OBJECT, FACT_STEP)) --> 
%  sujet(OBJECT, PERS), verbe(etre, PERS, present), gn(V,GENDER), step(FACT_STEP), nbr(PERS, GENDER).
