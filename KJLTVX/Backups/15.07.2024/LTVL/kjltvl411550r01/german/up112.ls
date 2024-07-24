/PROG  UP112
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mant. G1";
PROG_GRÖßE	= 2766;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 23-03-18  ZEIT 14:41:04;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 9;
SPEICHERGR.	= 4938;
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
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
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
     27:  !Apagar Pos. Base ;
     28:  A[15]=AUS ;
     29:  !Robot en Trayectoria ;
     30:  A[16]=AN ;
     31:  WARTE (E[23])    ;
     32:  A[23]=AN ;
     33:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
   6:  !Pos. de Mantenimiento ;
   7:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  A[17]=AN ;
      4:  gA[19]=1 ;
      5:  WARTE (E[17])    ;
      6:  A[17]=AUS ;
      7:  gA[19]=0 ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
   9:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
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
	X =   529.102  mm,	Y =  1982.732  mm,	Z =    20.310  mm,
	W =   124.967 deg,	P =    89.351 deg,	R =   -56.181 deg
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
	X =   531.372  mm,	Y =  1979.344  mm,	Z =  -339.667  mm,
	W =   124.964 deg,	P =    89.351 deg,	R =   -56.183 deg
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
	X =   529.102  mm,	Y =  1982.732  mm,	Z =    20.310  mm,
	W =   124.967 deg,	P =    89.351 deg,	R =   -56.181 deg
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
P[5]{
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
