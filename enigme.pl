:- use_module(library(clpfd)).
createListe(L,NbLst,NbElt):-
    length(L,NbLst), createListe(L,NbElt).
createListe([],_).
createListe([L1|R],NbElt) :-
    length(L1,NbElt), createListe(R,NbElt).

%ordre [couleur , nationalite , animal , boisson , cigarette]

enigme(L) :-
    createListe(L,5,5),
    member([_,_,_,eau,_],L),
    member([_,_,zebre,_,_],L),
    nth1(1,L,[_,norvegien,_,_,_]),
    nth1(2,L,[bleue,_,_,_,_]),
    nth1(3,L,[_,_,_,lait,_]),
    member([rouge,anglais,_,_,_],L),
    member([verte,_,_,café,_],L),
    member([jaune,_,_,_,kool],L),
    nth1(Iverte,L,[verte,_,_,_,_]),
    nth1(Iblanche,L,[blanche,_,_,_,_]),
    Iblanche #= Iverte+1,
    member([_,espagnol,chien,_,_],L),
    member([_,ukrainien,_,the,_],L),
    member([_,japonais,_,_,craven],L),
    member([_,_,escargot,_,oldgold],L),
    member([_,_,_,vin,gitane],L),
    nth1(Ichester,L,[_,_,_,_,chesterfield]),
    nth1(Irenard,L,[_,_,renard,_,_]),
    abs(Ichester - Irenard) #= 1,
    nth1(Ikool,L,[_,_,_,_,kool]),
    nth1(Icheval,L,[_,_,cheval,_,_]),
    abs(Icheval-Ikool) #= 1.

sup0(X) :-
    X >0.




