PREDICATES
nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
suka(symbol, symbol)
dijual(symbol)

CLAUSES
dapat_membeli(X,Y):-
orang(X), mobil(Y), suka(X,Y), dijual(Y).

orang(nur).	
orang(yudi).	
orang(dian).	
orang(heni).

mobil(atoz).	
mobil(kijang).

suka(dian, atoz).	
suka(yudi, pecel).
suka(heri, buku).	
suka(nur, komputer).

dijual(kijang).		
dijual(atoz).	
dijual(buku).

GOAL
dapat_membeli(Siapa,Apa). %Yang ditampilkan yaitu Siapa=dian, Apa=atoz, dan dapat_membeli(symbol, symbol) dalam hal ini 
			%yang dimaksud adalah orang dan mobil, dalam hal ini dian menyukai mobil atoz/ suka(dian, atoz).

%suka(_,Apa). %Semuanya yang menjadi kesukaan dari X akan ditampilkan.
%suka(Siapa,_). %Semuanya orang yang mempunyai kesukaan dari Y akan ditampilkan
%dapat_membeli(_,Apa). %Dalam hal ini dapat_membeli(X,Y):- x adalah orang dan y adalah mobil sehingga semua yang dapat dibeli(Y) akan ditampilkan. 
%dapat membeli(Siapa,_). %Dalam hal ini dapat_membeli(X,Y):- x adalah orang dan y adalah mobil sehingga semua yang menyukai mobil(X) akan ditampilkan. 