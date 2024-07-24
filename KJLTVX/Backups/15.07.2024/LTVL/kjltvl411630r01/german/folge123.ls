/PROG  FOLGE123
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Pos. de Ajuste";
PROG_GRÖßE	= 1878;
ERSTELL		= TAG 03-15-00  ZEIT 13:36:58;
GEÄNDERT	= TAG 17-02-10  ZEIT 15:34:18;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 8;
SPEICHERGR.	= 3670;
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
   1:  WKZ_NUM=24 ;
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
      4:  A[15]=AUS ;
      5:  WARTE (E[23])    ;
      6:  A[23]=AN ;
      7:  FB-PSPS (M[30]) ;
       ------ ;
   6:  !Posicion de Ajuste Ejes 1-6 ;
   7:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  A[17]=AN ;
      4:  WARTE (E[17])    ;
      5:  A[17]=AUS ;
      6:  WARTE (E[23])    ;
      7:  A[23]=AN ;
      8:  FB-PSPS (M[30]) ;
       ------ ;
   8:J P[4] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[14]=AN ;
      3:  A[15]=AN ;
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
P[3]{
   GP1:
	UF : 0, UT : 24,	
	J1=     0.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
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
