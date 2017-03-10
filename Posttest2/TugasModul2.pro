PREDICATES
    nondeterm anak (symbol,symbol)
    nondeterm istri (symbol,symbol)
    nondeterm pria (symbol)
    nondeterm wanita (symbol)
    nondeterm usia (symbol,integer)
    nondeterm cucu (symbol,symbol)
    nondeterm adik (symbol,symbol)
    nondeterm ibu (symbol,symbol)
    nondeterm kakek (symbol,symbol)
  
CLAUSES
   ibu(X,Y):-
   anak(Y,Z),
   wanita(X),
   pria(Z),
   istri(X,Z).
 ibu(X,Y):-
        anak(Y,X),
        wanita(X).
  
   cucu (X,Y):-
        anak (X,W),
        istri (W,Z),
        anak (Z,Y).

   adik(X,Y):-
        usia(X,10),
        usia(Y,13). 
          
   kakek(X,Y):-
        anak(Z,X),
        anak(Y,Z).
  
   anak (jhon, james).
   anak (james, peter).
   anak (andi, peter).
   anak (sue, ann).

   istri (mary, peter).
   istri (ann, james).

   pria (jhon).
   pria (james).
   pria (peter).
   pria (andi).

   wanita (mary).
   wanita (sue).
   wanita (ann).

   usia (john,10).
   usia (sue,13).
  
GOAL
   cucu (X,Y); 
   adik (X,Y);
   kakek (X,Y);
   ibu(Siapa,Ibunya).