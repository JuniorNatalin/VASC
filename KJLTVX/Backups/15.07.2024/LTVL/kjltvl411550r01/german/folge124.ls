/PROG  FOLGE124
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mantenimiento";
PROG_GRÖßE	= 2862;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 23-03-18  ZEIT 14:40:58;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 12;
SPEICHERGR.	= 4638;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  WKZ_NUM=1 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12]=AN),AUFRUF MAKRO998 ;
      2:  A[15]=AN ;
      3:  A[16]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  A[80]=AN ;
      6:  A[79]=AN ;
      7:  A[78]=AUS ;
      8:  A[77]=AUS ;
      9:  A[76]=AN ;
     10:  A[75]=AUS ;
     11:  A[74]=AUS ;
     12:  A[73]=AN ;
     13:  A[72]=AN ;
     14:  A[70]=AUS ;
     15:  A[69]=AUS ;
     16:  A[68]=AUS ;
     17:  A[67]=AUS ;
     18:  !Lib. de Anticolisiones ;
     19:  A[41]=AN ;
     20:  A[42]=AN ;
     21:  A[43]=AN ;
     22:  A[44]=AN ;
     23:  A[45]=AN ;
     24:  A[46]=AN ;
     25:  A[47]=AN ;
     26:  A[48]=AN ;
     27:  !Apagar Posicion Base ;
     28:  A[15]=AUS ;
     29:  WARTE (M[2])    ;
     30:  F[1]=(AN) ;
     31:  F[2]=(AN) ;
     32:  F[3]=(AN) ;
     33:  F[4]=(AN) ;
     34:  F[5]=(AN) ;
     35:  F[6]=(AN) ;
     36:  F[7]=(AN) ;
     37:  WENN (M[2]),AUFRUF MAKRO342 ;
     38:  AUFRUF MAKRO340    ;
     39:  WARTE (M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43])    ;
     40:  WARTE (E[23])    ;
     41:  A[23]=AN ;
     42:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
   6:  !Pos. de Mantenimiento ;
   7:  !UP112 Mantenimiento G1 ;
   8:  !UP201 Cambio Herramienta G1 ;
   9:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  F[940]=(AUS) ;
      4:  F[941]=(AUS) ;
      5:  WARTE ((E[20] [+] E[21] [&] (E[121] [+] E[132])) [+] E[121] [+] (E[132] [+] E[777] [+] E[801]))    ;
      6:  !Mantenimiento G1 ;
      7:  F[940]=(!E[20] [&] !E[21] [&] E[121]) ;
      8:  !Cambio de Herramienta G1 ;
      9:  F[941]=(E[20] [&] !E[21] [&] E[121] [&] !E[132]) ;
     10:  WARTE (F[940])    ;
     11:  WARTE (E[23])    ;
     12:  A[23]=AN ;
     13:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
  10:  WENN (F[940]),AUFRUF UP112 ;
  11:  WENN (F[941]),AUFRUF UP201 ;
  12:J P[4] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[15]=AN ;
      3:  A[14]=AN ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.609  mm,	Y =   564.274  mm,	Z =  2983.011  mm,
	W =  -122.361 deg,	P =   -18.828 deg,	R =    50.372 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.609  mm,	Y =   564.274  mm,	Z =  2983.011  mm,
	W =  -122.361 deg,	P =   -18.828 deg,	R =    50.372 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.609  mm,	Y =   564.274  mm,	Z =  2983.011  mm,
	W =  -122.361 deg,	P =   -18.828 deg,	R =    50.372 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.609  mm,	Y =   564.274  mm,	Z =  2983.011  mm,
	W =  -122.361 deg,	P =   -18.828 deg,	R =    50.372 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
