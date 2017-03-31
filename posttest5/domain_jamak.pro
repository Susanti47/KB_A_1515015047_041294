DOMAINS
benda = buku(judul, pengarang) ;
kuda(nama) ; kapal ;%domain jamak
bukubank(saldo)
judul, pengarang, nama = symbol
saldo = real
PREDICATES
nondeterm milik(nama,benda)
CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).
milik(erwin, kuda(buraq)).%erwin memiliki sebuah kuda 
milik(erwin, kapal).%erwin memiliki sebuah kapal
milik(erwin, bukubank(1000)).%erwin memiliki buku bank sebesar 1000
GOAL
milik(erwin, Benda).%erwin memiliki benda berupa buku. kuda. kapal.bukubank.