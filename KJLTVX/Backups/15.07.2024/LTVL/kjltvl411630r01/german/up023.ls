/PROG  UP023
/ATTR
EIGN.		= GME;
KOMMENTAR	= "Marcado";
PROG_GRÖßE	= 4114;
ERSTELL		= TAG 03-01-30  ZEIT 14:47:46;
GEÄNDERT	= TAG 23-07-11  ZEIT 03:20:14;
DATEI_NAME	= UP023;
VERSION		= 0;
ZEILEN		= 15;
SPEICHERGR.	= 7698;
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
   3:  TRAGLST[2] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
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
     20:  WARTE (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[32] [&] M[33])    ;
     21:  WARTE (E[23])    ;
     22:  A[23]=AN ;
     23:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 WEG VOR    0.0mm,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 WEG VOR    0.0mm,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 WEG VOR    0.0mm,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   8:  !En Posicion de Marcado ;
   9:  !Marcado de Pieza ;
  10:  !Fin de Trabajo 3 ;
  11:J P[5] 100% CNT0 ACC100 WEG VOR    0.0mm,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  //WENN (!E[217]),AUFRUF MAKRO395 ;
      4:  //WARTE (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158])    ;
      5:  AUFRUF MAKRO003    ;
      6:  WARTE (E[23])    ;
      7:  A[23]=(AN) ;
      8:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  12:J P[6] 100% CNT100 ACC100 WEG VOR    0.0mm,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 WEG VOR    0.0mm,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 WEG VOR    0.0mm,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  15:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  TIMER[5]=STOPP ;
      4:  WARTE (E[23])    ;
      5:  A[23]=(AN) ;
      6:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
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
	X =  1062.044  mm,	Y = -1435.948  mm,	Z =   687.917  mm,
	W =   -64.245 deg,	P =    20.610 deg,	R =   -49.203 deg
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
	X =  1343.475  mm,	Y = -1430.791  mm,	Z =   756.576  mm,
	W =     8.905 deg,	P =    19.645 deg,	R =   -36.958 deg
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
	X =  1807.149  mm,	Y =  -775.675  mm,	Z =   615.792  mm,
	W =      .180 deg,	P =     1.545 deg,	R =    17.994 deg
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
	X =  1925.897  mm,	Y =  -737.106  mm,	Z =   612.424  mm,
	W =      .180 deg,	P =     1.545 deg,	R =    17.994 deg
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
	X =  1807.149  mm,	Y =  -775.675  mm,	Z =   615.792  mm,
	W =      .180 deg,	P =     1.545 deg,	R =    17.994 deg
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
	X =  1343.475  mm,	Y = -1430.791  mm,	Z =   756.576  mm,
	W =     8.905 deg,	P =    19.645 deg,	R =   -36.958 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1062.044  mm,	Y = -1435.948  mm,	Z =   687.917  mm,
	W =   -64.245 deg,	P =    20.610 deg,	R =   -49.203 deg
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
P[9]{
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
