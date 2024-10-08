/PROG  FOLGE123
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Posicion de Ajus";
PROG_GRÖßE	= 2542;
ERSTELL		= TAG 03-15-00  ZEIT 13:36:58;
GEÄNDERT	= TAG 24-02-18  ZEIT 07:17:10;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 10;
SPEICHERGR.	= 5046;
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
   6:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30]) ;
       ------ ;
   7:  !Posicion de Ajuste Ejes 1-6 ;
   8:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  A[17]=AN ;
      4:  WARTE (E[17])    ;
      5:  A[17]=AUS ;
      6:  WARTE (E[23])    ;
      7:  A[23]=AN ;
      8:  FB-PSPS (M[30]) ;
       ------ ;
   9:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30]) ;
       ------ ;
  10:J P[6] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[14]=AN ;
      3:  A[15]=AN ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'F U T, 0, 1, 0',
	X =   979.595  mm,	Y =      .604  mm,	Z =   818.437  mm,
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
	X =   979.595  mm,	Y =      .603  mm,	Z =   818.437  mm,
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
P[3]{
   GP1:
	UF : 0, UT : 24,	
	J1=    35.130 deg,	J2=   -43.479 deg,	J3=      .384 deg,
	J4=   180.033 deg,	J5=    57.088 deg,	J6=     5.946 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   296.600  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,	
	J1=    35.135 deg,	J2=    50.149 deg,	J3=    -8.298 deg,
	J4=   180.030 deg,	J5=    71.314 deg,	J6=     5.949 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   295.200  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,	
	J1=    35.130 deg,	J2=   -43.479 deg,	J3=      .384 deg,
	J4=   180.033 deg,	J5=    57.088 deg,	J6=     5.946 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   296.600  mm
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
	X =   979.595  mm,	Y =      .604  mm,	Z =   818.437  mm,
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
