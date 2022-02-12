:- use_module(library(clpfd)).
createListe(L,NbLst,NbElt):-
    length(L,NbLst), createList(L,NbElt).
createList([],_).
createList([L1|R],NbElt) :-
    length(L1,NbElt), createList(R,NbElt).

%ordre [color , nationality , animal , drink , cigarette]

enigma(L) :-
    createList(L,5,5),
    member([_,_,_,water,_],L),
    member([_,_,zebra,_,_],L),
    nth1(1,L,[_,norwegian,_,_,_]),
    nth1(2,L,[blue,_,_,_,_]),
    nth1(3,L,[_,_,_,milk,_]),
    member([red,english,_,_,_],L),
    member([green,_,_,coffee,_],L),
    member([yellow,_,_,_,kool],L),
    nth1(Igreen,L,[green,_,_,_,_]),
    nth1(Iwhite,L,[white,_,_,_,_]),
    Iwhite #= Igreen+1,
    member([_,spanish,dog,_,_],L),
    member([_,ukrainian,_,tea,_],L),
    member([_,japanese,_,_,craven],L),
    member([_,_,snail,_,oldgold],L),
    member([_,_,_,wine,gitane],L),
    nth1(Ichester,L,[_,_,_,_,chesterfield]),
    nth1(Ifox,L,[_,_,fox,_,_]),
    abs(Ichester - Ifox) #= 1,
    nth1(Ikool,L,[_,_,_,_,kool]),
    nth1(Ihorse,L,[_,_,horse,_,_]),
    abs(Ihorse-Ikool) #= 1.

sup0(X) :-
    X >0.




