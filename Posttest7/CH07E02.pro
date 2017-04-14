/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* %mendeklarasikan sebuah list yang berisi sekumpulan data bertipe data integer

predicates
  length_of(list,integer) - procedure (i,o) %isi dari length (panjang) adalah list dan data bertipe integer dengan prosedur input,output

clauses
  length_of([], 0). %akan dilakukan sebuah pencarian argumen yang sama dengan clauses ini. yakni [] (kurung kotak yang kosong sebagai ekor) dan perhitungan panjang akan dimulai dari 0
  length_of([_|T],L):-
	length_of(T,TailLength), %dilakukan memanggil kembali klausa kedua dengan list yang elemennya berkurang karena list berikutnya hanya akan memakai tail atau ekor dari list yang sebelumnya
	L = TailLength + 1. %menambahkan perhitungan panjang list setiap kali clauses ini berjalan

goal
  length_of([1,2,3],L).%goal-nya diberikan list 1,2,3 dan mencari nilai dari L yang merupakan nilai panjang dari sebuah list.