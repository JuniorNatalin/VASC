/PROG  FOLGE125
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Pos. de Inicio";
PROG_GRÖßE	= 1132;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 17-02-10  ZEIT 15:37:40;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 6;
SPEICHERGR.	= 2220;
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
   4:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12]=AN),AUFRUF MAKRO998 ;
      2:  A[15]=AN ;
      3:  A[16]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9])    ;
       ------ ;
   5:  !Posicion de Inicio ;
   6:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[15]=AUS ;
      3:  A[14]=AN ;
      4:  A[15]=AN ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=    25.000 deg,	J2=   -50.000 deg,	J3=    60.000 deg,
	J4=   -35.000 deg,	J5=   -45.000 deg,	J6=    50.000 deg
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
	UF : 0, UT : 1,	
	J1=    25.000 deg,	J2=   -50.000 deg,	J3=    60.000 deg,
	J4=   -35.000 deg,	J5=   -45.000 deg,	J6=    50.000 deg
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
