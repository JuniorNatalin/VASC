/PROG  UP112
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mant. G1";
PROG_GRÖßE	= 2514;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 16-11-30  ZEIT 02:42:34;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 9;
SPEICHERGR.	= 4610;
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
      6:  A[78]=AUS ;
      7:  A[77]=AN ;
      8:  A[75]=AUS ;
      9:  !Lib. de Anticolisiones ;
     10:  A[41]=AN ;
     11:  A[42]=AN ;
     12:  A[43]=AN ;
     13:  A[44]=AN ;
     14:  !Apagar Pos. Base ;
     15:  A[15]=AUS ;
     16:  !Robot en Trayectoria ;
     17:  A[16]=AN ;
     18:  WARTE (E[23])    ;
     19:  A[23]=AN ;
     20:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
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
     10:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   9:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
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
	X =   402.296  mm,	Y =  -975.599  mm,	Z =   190.236  mm,
	W =   174.939 deg,	P =    88.746 deg,	R =   -98.733 deg
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
	X =   383.318  mm,	Y = -1254.406  mm,	Z =  -368.604  mm,
	W =   174.938 deg,	P =    88.746 deg,	R =   -98.733 deg
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
	X =   402.296  mm,	Y =  -975.599  mm,	Z =   190.236  mm,
	W =   174.939 deg,	P =    88.746 deg,	R =   -98.733 deg
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
