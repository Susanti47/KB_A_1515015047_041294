PREDICATES
putra(STRING,STRING)
saudara_perempuan(STRING,STRING)
saudara_laki(STRING,STRING)
menikah(STRING,STRING)
ayah(STRING ayah,STRING putra)
kakek(STRING kakek,STRING cucu)
nondeterm ipar_perempuan(STRING,STRING)
CLAUSES
putra("Ikhsan","Bentang"). %Ikhsan putra dari Bentang.

saudara_perempuan("Dini","Dina"). %Dini saudara_perempuan Dina. 
saudara_laki("Adi","Lintang"). %Adi saudara_laki Lintang.

menikah("Ikhsan","Dini"). %Ikhsan menikah dengan Dini. 
menikah("Lintang","Surga"). %Lintang menikah dengan Surga.

ayah(A,B):-putra(B,A).
kakek(A,B):-ayah(A,C), ayah(C,B).

ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B).
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).
GOAL
ipar_perempuan("Ikhsan",X). %dapat di artikan ipar_perempuan Ikhsan adalah = Dina. 