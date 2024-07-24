/PROG  UP106
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Calibracion SP1";
PROG_GRÖßE	= 2448;
ERSTELL		= TAG 96-03-15  ZEIT 09:24:00;
GEÄNDERT	= TAG 17-02-10  ZEIT 15:34:22;
DATEI_NAME	= UP101;
VERSION		= 0;
ZEILEN		= 8;
SPEICHERGR.	= 3752;
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
   1:  WKZ_NUM=1 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:  !F[293] - Calibracion Fuerza ;
   5:  !F[294] - Calibracion Corriente ;
   6:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
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
     18:  WENN (!E[705] [&] !E[714]),AUFRUF MAKRO086 ;
     19:  WARTE (F[293] [+] F[294])    ;
     20:  WARTE (E[23])    ;
     21:  A[23]=AN ;
     22:  FB-PSPS (M[30] [&] M[95] [&] M[96]) ;
       ------ ;
   7:J P[2] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  !Calibracion de Fuerza ;
      3:  gA[2]=(0) ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=1, , ,S-Punkt=1, ,EIN/AUS=F[293]) ;
      5:  WARTE (E[3986] [+] F[294])    ;
      6:  A[715]=(F[293]) ;
      7:  A[718]=(F[293]) ;
      8:  TIMER[10]=((-3)) ;
      9:  WARTE (F[294] [+] (TIMER[10]>=0))    ;
     10:  A[718]=AUS ;
     11:  A[717]=AN ;
     12:  WARTE (E[717] [&] !E[718] [&] E[719])    ;
     13:  A[717]=AUS ;
     14:  A[715]=AUS ;
     15:  WARTE (E[3986] [+] F[294])    ;
     16:  !Calibracion de Corriente ;
     17:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=11, , ,S-Punkt=11, ,EIN/AUS=F[294]) ;
     18:  WARTE (E[3986] [+] F[293])    ;
     19:  !Medicion de Campo Magnetico ;
     20:  WENN (F[294]),AUFRUF MAKRO080 ;
     21:  !Lectura del Valor 1 ;
     22:  WARTE (E[3986] [+] F[293])    ;
     23:  !Medicion de Campo Magnetico ;
     24:  WENN (F[294]),AUFRUF MAKRO080 ;
     25:  FB-PSPS (M[30] [&] M[95] [&] M[96]) ;
       ------ ;
   8:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95] [&] M[96]) ;
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
	X =  -464.787  mm,	Y =  -676.745  mm,	Z =  1035.419  mm,
	W =   142.550 deg,	P =    72.302 deg,	R =  -130.575 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000  mm
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
