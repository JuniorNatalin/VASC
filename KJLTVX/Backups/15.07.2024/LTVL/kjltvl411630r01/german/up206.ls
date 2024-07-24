/PROG  UP206
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Prueba TCP SP1";
PROG_GRÖßE	= 3710;
ERSTELL		= TAG 16-09-18  ZEIT 01:54:12;
GEÄNDERT	= TAG 17-02-10  ZEIT 15:34:24;
DATEI_NAME	= UP207;
VERSION		= 0;
ZEILEN		= 16;
SPEICHERGR.	= 7318;
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
   1:  WKZ_NUM=24 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO050    ;
      4:  WARTE (A[11])    ;
      5:  WARTE (E[23])    ;
      6:  A[23]=AN ;
      7:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   8:  !Posicion Prueba TCP ;
   9:  !SP1 ;
  10:  !X=566.831 Y=-1966.117 Z=1178.817 ;
  11:  !W=179.378 P=-45.853 R=-42.894 ;
  12:L P[5] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[17])    ;
      4:  WARTE (E[23])    ;
      5:  A[23]=AN ;
      6:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  13:L P[6] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  16:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (A[11] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   -46.468  mm,	Y =  -827.851  mm,	Z =  1594.398  mm,
	W =   165.784 deg,	P =    10.653 deg,	R =    -4.457 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   377.660  mm,	Y = -1781.765  mm,	Z =  1702.956  mm,
	W =   179.377 deg,	P =   -45.853 deg,	R =   -42.892 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   683.604  mm,	Y = -2074.774  mm,	Z =  1291.815  mm,
	W =   179.378 deg,	P =   -45.853 deg,	R =   -42.894 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   585.544  mm,	Y = -1983.677  mm,	Z =  1153.923  mm,
	W =   179.378 deg,	P =   -45.853 deg,	R =   -42.894 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   566.831  mm,	Y = -1966.117  mm,	Z =  1178.817  mm,
	W =   179.378 deg,	P =   -45.853 deg,	R =   -42.894 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   585.544  mm,	Y = -1983.677  mm,	Z =  1153.923  mm,
	W =   179.378 deg,	P =   -45.853 deg,	R =   -42.894 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   683.604  mm,	Y = -2074.774  mm,	Z =  1291.815  mm,
	W =   179.378 deg,	P =   -45.853 deg,	R =   -42.894 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   377.660  mm,	Y = -1781.765  mm,	Z =  1702.956  mm,
	W =   179.377 deg,	P =   -45.853 deg,	R =   -42.892 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   -46.468  mm,	Y =  -827.851  mm,	Z =  1594.398  mm,
	W =   165.784 deg,	P =    10.653 deg,	R =    -4.457 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
