DOMAINS
nama = orang(symbol,symbol) /* (Pertama , Kedua) */
hari_lahir = tanggal_lahir(integer,symbol,integer) /* (Hari, Bulan, Tahun) */
telepon = symbol /* Nomor telepon */
PREDICATES
nondeterm daftar_telepon(nama,symbol,hari_lahir)
yang_ulang_tahun_bulan_ini
konversi_bulan(symbol,integer)
cek_bulan_ulang_tahun(integer,hari_lahir)
cetak_orang(nama)
CLAUSES
yang_ulang_tahun_bulan_ini:-
write("**** Daftar Orang Yang Ulang Tahun Bulan Ini ****"),nl,
write(" Nama Pertama\t\t Nama Kedua\n"),
write("******************************************************"),nl,
date(_, Bulan_ini, _), /* Ambil bulan pada sistem komputer */
daftar_telepon(Orang, _, Tanggal),%disini orang memiliki daftar telepon berupa tanggal.
cek_bulan_ulang_tahun(Bulan_ini, Tanggal),%bulan ini merupakan cek bulan ulang tahun dari tanggal.
cetak_orang(Orang),%orang merupakan variabel dari nama untuk cetak orang.
fail.
yang_ulang_tahun_bulan_ini:-%yang ulang tahun bulan ini hanya jika 
write("\n\n Tekan sembarang tombol..."),nl,
readchar(_).
cetak_orang(orang(Pertama,Kedua)):-
write(" ",Pertama,"\t\t\t ",Kedua),nl.
cek_bulan_ulang_tahun(Bul,tanggal_lahir(_,Bulan,_)):-
konversi_bulan(Bulan,Bulan1),%konversi bulan memiliki beberapa bulan salah satunya bulan1 dan
Bul = Bulan1.%bulan sama dengan bulan1
daftar_telepon(orang(erwin,effendy),"767-8463",tanggal_lahir(3,jan,1955)).%erwin effendy memiliki daftar telepon 7678463 dengan tanggal lahir 3 januari 1955.
daftar_telepon(orang(pramudya,kurniawan),"438-8400",tanggal_lahir(5,feb,1985)).
daftar_telepon(orang(kusdiar,prihatin),"555-5653",tanggal_lahir(3,mar, 1935)).
daftar_telepon(orang(ui,yansen),"767-2223",tanggal_lahir(29,apr,1951)).
daftar_telepon(orang(roland,hutagalung),"555-1212",tanggal_lahir(12,may,1962)).
daftar_telepon(orang(andi,nuruddin),"438-8400",tanggal_lahir(17,jun,1980)).%andi nuruddin memiliki daftar telepon 4388400 dengan tanggal lahir 17 juni 1980.
daftar_telepon(orang(syarif,musadek),"767-8463",tanggal_lahir(20,jun,1986)).
daftar_telepon(orang(lidya,widyawati),"555-5653",tanggal_lahir(16,jul,1981)).
daftar_telepon(orang(yusida,andriani),"767-2223",tanggal_lahir(10,aug,1981)).
daftar_telepon(orang(slamet,riyadi),"438-8400",tanggal_lahir(25,sep,1981)).
daftar_telepon(orang(nur,harjanto),"438-8400",tanggal_lahir(20,oct,1952)).
daftar_telepon(orang(dian,marlini),"555-1212",tanggal_lahir(9,nov,1984)).
daftar_telepon(orang(teguh,heni),"767-2223",tanggal_lahir(15,nov,1987)).
daftar_telepon(orang(eka,ardiyanti),"438-8400",tanggal_lahir(31,dec,1981)).
konversi_bulan(jan, 1).
konversi_bulan(feb, 2).
konversi_bulan(mar, 3).
konversi_bulan(apr, 4).
konversi_bulan(may, 5).%may merupakan konversi dari bulan 5
konversi_bulan(jun, 6).
konversi_bulan(jul, 7).
konversi_bulan(aug, 8).
konversi_bulan(sep, 9).
konversi_bulan(oct, 10).
konversi_bulan(nov, 11).
konversi_bulan(dec, 12).
GOAL
yang_ulang_tahun_bulan_ini. %menampilkan daftar telepon dengan data yang telah ditetapkan berupa nama dan bulan lahir yang ada pada komputer.  