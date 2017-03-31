DOMAINS
orang = orang(nama,alamat)%data objek dengan nama orang memiliki funtor namanya orang dan alamat disini sebagai parameter.
nama = nama(pertama,kedua)%data objek dengan nama nama memiliki funtor namanya nama, pertama dan kedua merupakan argumen.
alamat = alamat(jalan,kota_kab,propinsi)%data objek dengan nama alamat memiliki funtor namanya alamat. jalan,kota_kab,propinsi disini sebagai argumen.
jalan = jalan(nama_jalan,nomor)%data objek dengan nama jalan memiliki funtor namanya jalan. nama_jalan,nomor disini sebagai argumen.
kota_kab,propinsi,nama_jalan = string%data ini hanya memberi type data.
pertama,kedua = symbol%data ini hanya memberi type data.
nomor = integer%data ini hanya memberi type data.
GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),
P1 = orang(nama(_,fatihah),Alamat), 
P2 = orang(nama(nur,fatihah),Alamat),%pada goal ini menampilkan data yang ada dari p1 sampai p2  
write("P1=",P1),nl,
write("P2=",P2),nl.