/PROG  UP106
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "EZ1 Cal de Corr.";
PROG_GRÖßE	= 2374;
ERSTELL		= TAG 96-03-15  ZEIT 09:24:00;
GEÄNDERT	= TAG 17-02-07  ZEIT 05:05:28;
DATEI_NAME	= UP101;
VERSION		= 0;
ZEILEN		= 8;
SPEICHERGR.	= 3686;
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
   4:  !F[293] - Cal. de Fuerza ;
   5:  !F[294] - Cal. de Corr. ;
   6:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO050    ;
      4:  M[95]=(AN) ;
      5:  !Lib. de Herramientas ;
      6:  A[80]=AN ;
      7:  !Lib. de Anticolisiones ;
      8:  A[41]=AN ;
      9:  A[42]=AN ;
     10:  A[45]=AN ;
     11:  A[46]=AN ;
     12:  !Apagar Posicion Base ;
     13:  A[15]=AUS ;
     14:  !Robot en Trayectoria ;
     15:  A[16]=AN ;
     16:  WENN (!E[705] [&] !E[714]),AUFRUF MAKRO086 ;
     17:  WARTE (F[293] [+] F[294])    ;
     18:  WARTE (E[23])    ;
     19:  A[23]=AN ;
     20:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   7:J P[2] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  ! Cal. de Fuerza ;
      3:  gA[2]=(0) ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=11, ,EIN/AUS=F[293]) ;
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
     16:  ! Cal. de Corriente ;
     17:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=11, , ,S-Punkt=11, ,EIN/AUS=F[294]) ;
     18:  WARTE (E[3986] [+] F[293])    ;
     19:  ! Calibrador en Pos. ;
     20:  WENN (F[294]),AUFRUF MAKRO080 ;
     21:  ! Introd. Lectura 1 ;
     22:  WARTE (E[3986] [+] F[293])    ;
     23:  ! Calibrador en Pos. ;
     24:  WENN (F[294]),AUFRUF MAKRO080 ;
     25:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   8:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1731.500  mm,	Y =     2.242  mm,	Z =  -321.863  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  2891.677  mm,	Y =   287.281  mm,	Z =  -407.327  mm,
	W =   -86.486 deg,	P =     -.011 deg,	R =   -84.069 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    31.798  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1731.500  mm,	Y =     2.242  mm,	Z =  -321.863  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
