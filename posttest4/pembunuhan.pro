DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol
umur=integer

PREDICATES
nondeterm orang(nama, umur, jender, pekerjaan)
nondeterm selingkuh(nama, nama)
terbunuh_dengan(nama, benda)
terbunuh(nama)
nondeterm pembunuh(nama)
motif(alasan)
ternodai(nama, zat)
milik(nama, benda)
nondeterm cara_kerja_mirip(benda, benda)
nondeterm kemungkinan_milik(nama, benda)
nondeterm dicurigai(nama)
/* * * Fakta-fakta tentang pembunuhan * * */

CLAUSES
orang(budi,55,m,tukang_kayu).%budi seorang lakilaki berumur 55 bekerja sebagai tukang kayu
orang(aldi,25,m,pemain_sepak_bola).%aldi seorang lakilaki berumur 25 bekerja sebagai pemain sepak bola
orang(aldi,25,m,tukang_jagal).%aldi seorang lakilaki berumur 25 bekerja sebagai tukang jagal
orang(joni,25,m,pencopet).%joni seorang lakilaki berumur 25 bekerja sebagai pencopet
selingkuh(ina,joni).%ina selingkuh dengan joni
selingkuh(ina,budi).%ina selingkuh juga dengan budi
selingkuh(siti,joni).%siti seligkuh dengan joni
terbunuh_dengan(siti,pentungan).%siti terbunuh dengan pentungan
terbunuh(siti).%siti terbunuh
motif(uang).%uang bisa menjadi motifnya
motif(cemburu).%cemburu bisa menjadi motifnya
motif(dendam).%dendam juga bisa menjadi motifnya
ternodai(budi, darah).%budi ternodai dengan darah
ternodai(siti, darah).%siti ternodai dengan darah
ternodai(aldi, lumpur).%aldi ternodai dengan lumpur
ternodai(joni, coklat).%joni ternodai dengan coklat
ternodai(ina, coklat).%ina ternodai dengan coklat
milik(budi,kaki_palsu).%budi memiliki kaki palsu
milik(joni,pistol).%joni memiliki pistol
/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan).%kaki palsu cara kejanya mirip dengan pentungan
cara_kerja_mirip(balok, pentungan).%balok cara kerjanya mirip dengan pentungan 
cara_kerja_mirip(gunting, pisau).%gunting cara kerjanya mirip dengan pisau
cara_kerja_mirip(sepatu_bola, pentungan).%sepatu bola cara kerjanya mirip pentungan
kemungkinan_milik(X,sepatu_bola):- %X kemungkinan memiliki sepatu bola jika hanya
kemungkinan_milik(X,gunting):- %X kemungkinan memiliki gunting jika hanya
orang(X,_,_,pekerja_salon). %X seorang pekerja sebuah salon
kemungkinan_milik(X,Benda):- %X kemungkinan memiliki benda jika hanya
milik(X,Benda). %X memiliki benda
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- %X dicurigai jika hanya
terbunuh_dengan(siti,Senjata) , cara_kerja_mirip(Benda,Senjata) ,
kemungkinan_milik(X,Benda).%siti terbunuh dengan senjata dan benda tersebut cara kerjanya mirip senjata dan X kemungkinan memiliki sebuah benda
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- %X dicurigai jika hanya
motif(cemburu),
orang(X,_,m,_),
selingkuh(siti,X). %cemburu menjadi motifnya dan X orang yang gender m
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- %X dicurigai jika hanya
motif(cemburu),
orang(X,_,f,_),
selingkuh(X,Lakilaki),
selingkuh(siti,Lakilaki).%cemburu menjadi motifnya dan X orang yang gender f dan X selingkih dengan lakilaki dan siti selingkuh dengan lakilaki 
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- 
motif(uang),
orang(X,_,_,pencopet).%X dicurigai jika hanya uang yang menjadi motifnya dan X seorang pencopet 
pembunuh(Pembunuh):-
orang(Pembunuh,_,_,_),
terbunuh(Terbunuh),
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),
ternodai(Pembunuh,Zat),
ternodai(Terbunuh,Zat).%pembunuh dicurigai dan pembunuh ternodai zat dan terbunuh ternodai oleh zat juga 

GOAL
pembunuh(X).%kemungkinan X adalah budi karena budi ternodai darah dan siti juga ternodai oleh darah.
