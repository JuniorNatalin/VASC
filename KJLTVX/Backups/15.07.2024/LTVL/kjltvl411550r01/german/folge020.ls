/PROG  FOLGE020
/ATTR
EIGN.		= GME;
KOMMENTAR	= "VW336";
PROG_GRÖßE	= 3514;
ERSTELL		= TAG 03-02-02  ZEIT 15:37:32;
GEÄNDERT	= TAG 23-07-09  ZEIT 16:43:38;
DATEI_NAME	= FOLGE020;
VERSION		= 0;
ZEILEN		= 22;
SPEICHERGR.	= 5994;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/APPL
/MN
   1:  BENUTZER_NUM=0 ;
   2:  WKZ_NUM=1 ;
   3:  TRAGLST[1] ;
   4:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12]),AUFRUF MAKRO998 ;
      2:  A[15]=AN ;
      3:  A[16]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  A[79]=AN ;
      9:  A[78]=AUS ;
     10:  A[77]=AUS ;
     11:  A[76]=AN ;
     12:  A[75]=AUS ;
     13:  A[74]=AUS ;
     14:  A[73]=AN ;
     15:  A[72]=AN ;
     16:  A[70]=AUS ;
     17:  A[69]=AUS ;
     18:  A[68]=AUS ;
     19:  A[67]=AUS ;
     20:  !Lib. de Anticolisiones ;
     21:  A[41]=AN ;
     22:  A[42]=AN ;
     23:  A[43]=AN ;
     24:  A[44]=AN ;
     25:  A[45]=AN ;
     26:  A[46]=AN ;
     27:  A[47]=AN ;
     28:  A[48]=AN ;
     29:  !Apagar Posicion Base ;
     30:  A[15]=AUS ;
     31:  !Garra a Base si no hay pieza ;
     32:  WARTE (M[2])    ;
     33:  F[1]=(AN) ;
     34:  F[2]=(AN) ;
     35:  F[3]=(AN) ;
     36:  F[4]=(AN) ;
     37:  F[5]=(AN) ;
     38:  F[6]=(AN) ;
     39:  WENN (M[2]),AUFRUF MAKRO342 ;
     40:  AUFRUF MAKRO340    ;
     41:  WARTE (M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41])    ;
     42:  WARTE (E[23])    ;
     43:  A[23]=AN ;
     44:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
   6:  ! Llamar UP021 ;
   7:  !Tomar de la Estacion ST1520 ;
   8:  AUFRUF UP021    ;
   9:  BENUTZER_NUM=0 ;
  10:  WKZ_NUM=1 ;
  11:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[3] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  12:  ! Llamar UP022 ;
  13:  !Tomar de la Estacion ST1540 ;
  14:  AUFRUF UP022    ;
  15:  ! UP023 VW336 DROP TAYRON ;
  16:  AUFRUF UP023    ;
  17:  BENUTZER_NUM=0 ;
  18:  WKZ_NUM=1 ;
  19:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  20:  !Fin de Trabajo Total ;
  21:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO015    ;
      4:  WARTE (E[23])    ;
      5:  A[23]=AN ;
      6:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  22:J P[6] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[14]=AN ;
      3:  A[15]=AN ;
      4:  TIMER[1]=STOPP ;
      5:  TIMER[2]=(TIMER[1]) ;
      6:  TIMER[2]=STOPP ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
/END
