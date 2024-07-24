/PROG  UP003	  Job
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Marcado";
PROG_GRÖßE	= 4112;
ERSTELL		= TAG 16-09-03  ZEIT 22:49:46;
GEÄNDERT	= TAG 17-04-01  ZEIT 16:47:12;
DATEI_NAME	= UP002;
VERSION		= 0;
ZEILEN		= 15;
SPEICHERGR.	= 7696;
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
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   8:  !En Posicion de Marcado ;
   9:  !Marcado de Pieza ;
  10:  !Fin de Trabajo 3 ;
  11:L P[5] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  WENN (!E[217]),AUFRUF MAKRO395 ;
      4:  WARTE (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158])    ;
      5:  AUFRUF MAKRO003    ;
      6:  WARTE (E[23])    ;
      7:  A[23]=(AN) ;
      8:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  12:L P[6] 400mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[2155] [&] !E[2156] [&] E[2157] [&] !E[2158] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
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
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 1',
	X =   251.425  mm,	Y = -1616.783  mm,	Z =  1760.852  mm,
	W =    77.329 deg,	P =    13.513 deg,	R =   -77.927 deg
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
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 1',
	X =   958.570  mm,	Y = -1726.264  mm,	Z =   525.178  mm,
	W =    -3.936 deg,	P =     1.012 deg,	R =   -70.931 deg
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
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 1',
	X =   963.652  mm,	Y = -1779.282  mm,	Z =   326.673  mm,
	W =    -2.147 deg,	P =     1.016 deg,	R =   -70.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 1',
	X =   966.514  mm,	Y = -1787.743  mm,	Z =   326.601  mm,
	W =    -2.147 deg,	P =     1.012 deg,	R =   -70.932 deg
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
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 1',
	X =   963.652  mm,	Y = -1779.282  mm,	Z =   326.673  mm,
	W =    -2.147 deg,	P =     1.016 deg,	R =   -70.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 1',
	X =   958.570  mm,	Y = -1726.264  mm,	Z =   525.178  mm,
	W =    -3.936 deg,	P =     1.012 deg,	R =   -70.931 deg
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
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 1',
	X =   251.425  mm,	Y = -1616.783  mm,	Z =  1760.852  mm,
	W =    77.329 deg,	P =    13.513 deg,	R =   -77.927 deg
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
