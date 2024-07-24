/PROG  UP021
/ATTR
EIGN.		= GME;
KOMMENTAR	= "Tomar en ST1620";
PROG_GRÖßE	= 3730;
ERSTELL		= TAG 96-03-22  ZEIT 17:22:14;
GEÄNDERT	= TAG 23-09-23  ZEIT 10:32:14;
DATEI_NAME	= UP001;
VERSION		= 0;
ZEILEN		= 18;
SPEICHERGR.	= 6514;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000000 00000000;
/APPL
/MN
   1:  BENUTZER_NUM=0 ;
   2:  WKZ_NUM=1 ;
   3:  TRAGLST[1] ;
   4:  !Apagar Perfil Lib. 77 vs ST1620 ;
   5:  !Encender Anticol. 1 vs 1610R01 ;
   6:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  A[78]=AUS ;
      9:  A[77]=AN ;
     10:  A[75]=AUS ;
     11:  !Lib. de Anticolisiones ;
     12:  A[41]=AN ;
     13:  A[42]=AN ;
     14:  A[43]=AN ;
     15:  A[44]=AN ;
     16:  !Apagar Pos. Base ;
     17:  A[15]=AUS ;
     18:  !Robot en Trayectoria ;
     19:  A[16]=AN ;
     20:  WARTE (E[64] [&] !E[63] [&] E[80])    ;
     21:  A[80]=AUS ;
     22:  !Encender Anticolisiones ;
     23:  A[81]=AN ;
     24:  AUFRUF MAKRO020    ;
     25:  WARTE (E[23])    ;
     26:  A[23]=AN ;
     27:  FB-PSPS (E[41] [&] !E[63] [&] E[64] [&] E[80] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] !E[63] [&] E[64] [&] E[80] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] !E[63] [&] E[64] [&] E[80] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   9:  !En Posicion ST1620 ;
  10:  !Tomar Pieza de ST1620 ;
  11:  !Fin de Trabajo 1 ;
  12:L P[4] 1500mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  WARTE (M[1])    ;
      4:  A[78]=AN ;
      5:  AUFRUF MAKRO001    ;
      6:  WARTE (E[79])    ;
      7:  A[78]=(AUS) ;
      8:  F[1]=(AN) ;
      9:  AUFRUF MAKRO343    ;
     10:  WARTE (M[32])    ;
     11:  WARTE (E[23])    ;
     12:  A[23]=AN ;
     13:  FB-PSPS (E[41] [&] E[79] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  13:  TRAGLST[2] ;
  14:L P[5] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[63] [&] !E[64] [&] E[79] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  15:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[63] [&] !E[64] [&] E[79] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  16:  !Encender Perfil Lib 77 vs ST1620 ;
  17:  !Apagar Anticol. 1 vs 1610R01 ;
  18:J P[7] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[3]=STOPP ;
      4:  A[41]=AN ;
      5:  A[80]=AN ;
      6:  WARTE (E[23])    ;
      7:  A[23]=AN ;
      8:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -464.787  mm,	Y =  -676.745  mm,	Z =  1035.419  mm,
	W =   142.550 deg,	P =    72.302 deg,	R =  -130.575 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X = -1353.050  mm,	Y =  -636.499  mm,	Z =  -200.158  mm,
	W =   -90.106 deg,	P =    89.566 deg,	R =  -103.620 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X = -1351.656  mm,	Y =  -634.999  mm,	Z =  -336.022  mm,
	W =   -90.497 deg,	P =    89.609 deg,	R =  -104.018 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X = -1353.049  mm,	Y =  -636.498  mm,	Z =  -526.812  mm,
	W =   -90.138 deg,	P =    89.566 deg,	R =  -103.813 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X = -1353.050  mm,	Y =  -636.499  mm,	Z =  -478.558  mm,
	W =   -90.105 deg,	P =    89.566 deg,	R =  -103.619 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X = -1353.050  mm,	Y =  -636.499  mm,	Z =  -200.158  mm,
	W =   -90.106 deg,	P =    89.566 deg,	R =  -103.620 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -464.787  mm,	Y =  -676.745  mm,	Z =  1035.419  mm,
	W =   142.550 deg,	P =    72.302 deg,	R =  -130.575 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
