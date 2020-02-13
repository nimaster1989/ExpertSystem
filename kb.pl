rule((path(Path):-
    (arrive(X),path(X,Path))),100).

rule((arrive(wwww_1):-
    (state(eeww_1),write('e e w w_1'))),100).
rule((arrive(wwww_2):-
    (state(eeww_2),write('e e w w_2'))),100).

rule((state(eeww_2):-
    (state(weww_2),write('w e w w_2'))),100).
rule((state(weww_2):-
    (state(eeww),write('e e w w'))),100).
rule((state(eeww):-
    (state(wwwe),write('w w w e'))),100).
rule((state(wwwe):-
    (state(ewee),not(branch1),write('e w w e'))),100).

rule((state(eeww_1):-
    (state(weww_1),write('farmer w e w w _1'))),100).
rule((state(weww_1):-
    (state(eeew),write('farmer take goat again: e e e w'))),100).
rule((state(eeew):-
    (state(wwew),branch1,write('farmer take cabbafe: w w e w'))),100).
rule((state(wwew):-
    (state(ewee),write('farmer go back alone: e w e e'))),100).
rule((state(ewee):-
    (state(wwee),write('farmer take goat: w w e e'))),100).
rule((state(wwee):-
    (state(eeee),write('initial state: e e e e'))),100).
rule((state(eeee):-
    (begin,write('begin now'))),100).
rule(path(wwww_1,'arrive:w w w w   path one is found'),100).
rule(path(wwww_2,'arrive:w w w w   path two is found'),100).

askable(begin,'do you want to start fgcw?').
askable(branch1,'you have two choice, y:farmer take wolf n:farmer take cabbage').
