/PROG  UP206
/ATTR
EIGN.		= SHIFT;
KOMMENTAR	= "TCP Check EZ1";
PROG_GRÖßE	= 3882;
ERSTELL		= TAG 17-05-06  ZEIT 11:16:34;
GEÄNDERT	= TAG 17-05-06  ZEIT 11:16:34;
DATEI_NAME	= UP209;
VERSION		= 0;
ZEILEN		= 21;
SPEICHERGR.	= 7846;
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
      7:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95] [&] A[11] [&] A[11]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
   8:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
   9:  !Posicion de TCP Check ;
  10:  !EZ1 ;
  11:  !X =  1344.972 ;
  12:  !Y =  1366.215 ;
  13:  !Z =  -813.501 ;
  14:  !W =  -168.063 ;
  15:  !P =      .308 ;
  16:  !R =  -104.216 ;
  17:L P[6] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[17])    ;
      4:  WARTE (E[23])    ;
      5:  A[23]=AN ;
      6:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
  18:L P[7] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
  21:J P[10] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95] [&] A[11]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =   979.598  mm,	Y =      .602  mm,	Z =   818.440  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1304.354  mm,	Y =  1360.445  mm,	Z =   981.214  mm,
	W =  -168.561 deg,	P =     3.438 deg,	R =  -119.283 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1147.508  mm,	Y =  1506.407  mm,	Z =   804.258  mm,
	W =  -168.065 deg,	P =      .304 deg,	R =  -104.215 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1114.242  mm,	Y =  1515.575  mm,	Z =   669.060  mm,
	W =  -168.065 deg,	P =      .304 deg,	R =  -104.215 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1084.039  mm,	Y =  1480.167  mm,	Z =   523.454  mm,
	W =  -168.063 deg,	P =      .308 deg,	R =  -104.216 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1070.567  mm,	Y =  1426.991  mm,	Z =   523.158  mm,
	W =  -168.063 deg,	P =      .308 deg,	R =  -104.216 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1084.039  mm,	Y =  1480.167  mm,	Z =   523.454  mm,
	W =  -168.063 deg,	P =      .308 deg,	R =  -104.216 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1068.482  mm,	Y =  1527.247  mm,	Z =   649.757  mm,
	W =  -168.065 deg,	P =      .305 deg,	R =  -104.215 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =  1228.272  mm,	Y =  1435.145  mm,	Z =   962.034  mm,
	W =  -168.561 deg,	P =     3.438 deg,	R =  -119.283 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =   979.598  mm,	Y =      .602  mm,	Z =   818.440  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
