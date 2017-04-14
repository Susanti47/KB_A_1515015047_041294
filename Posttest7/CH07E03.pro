/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* Pendeklarasian list dengan tipe data integer */

predicates
  length_of(list,integer,integer) - procedure (i,o,i)/*pendeklarasian sebuah predikat length_of dengan  maskan list dan tipe data integer,integer yang merupakan 
  procedure dengan tipe masukan,keluaran dan keluaran*/

clauses
  length_of([], Result, Result)./*pencarian argumen yang sama pada clauses ini. yaitu [] (kurung kotak yang kosong sebagai ekor) */
  length_of([_|T],Result,Counter):-
	NewCounter = Counter + 1,/*menambahkan nilai perhitungan */
	length_of(T, Result, NewCounter)./*ini merupakan rekursi untuk memanggil kembali clauses yang kedua, yang berbeda adalah list ini hanya akan diambil dari tail list sebelumnya
					    sehingga saat rekursi jumlah elemen list akan semakin berkurang*/

goal
  length_of([1,2,3],L,0). /* goal-nya mencari panjang list dengan perhitungan dimuali dari angka nol */