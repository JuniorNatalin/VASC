/PROG  UP112
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mantenimiento";
PROG_GRÖßE	= 2618;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 23-12-23  ZEIT 09:19:20;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 9;
SPEICHERGR.	= 4830;
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
      4:  !lib. de Herramientas ;
      5:  A[80]=AN ;
      6:  !Lib. de Anticolisiones ;
      7:  A[41]=AN ;
      8:  A[42]=AN ;
      9:  A[45]=AN ;
     10:  A[46]=AN ;
     11:  !Apagar Posicion Base ;
     12:  A[15]=AUS ;
     13:  WARTE (E[23])    ;
     14:  A[23]=AN ;
     15:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   6:  !Posicion de Mantenimiento ;
   7:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  F[281]=(AN) ;
      4:  F[64]=(AN) ;
      5:  F[65]=(AUS) ;
      6:  F[66]=(AUS) ;
      7:  F[67]=(AUS) ;
      8:  AUFRUF MAKRO089    ;
      9:  A[17]=AN ;
     10:  gA[19]=(11) ;
     11:  WARTE (E[17])    ;
     12:  WENN (E[132] [&] !E[133] [&] !E[134] [&] !E[135]),AUFRUF MAKRO081 ;
     13:  LABEL[1] ;
     14:  WARTE (!F[85] [+] E[26])    ;
     15:  WENN (F[85]),AUFRUF MAKRO081 ;
     16:  WENN (F[85]),SPRUNG LABEL[1] ;
     17:  A[17]=AUS ;
     18:  gA[19]=(0) ;
     19:  F[281]=(AUS) ;
     20:  WARTE (!E[132] [&] !E[133] [&] !E[134] [&] !E[135])    ;
     21:  WARTE (E[23])    ;
     22:  A[23]=AN ;
     23:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   9:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
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
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =   537.687  mm,	Y =  1581.167  mm,	Z =  -274.929  mm,
	W =  -178.477 deg,	P =    16.515 deg,	R =  -100.139 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   298.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =   565.355  mm,	Y =  1605.108  mm,	Z =  -794.731  mm,
	W =  -178.346 deg,	P =    17.185 deg,	R =  -100.743 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   298.216  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =   576.832  mm,	Y =  1610.082  mm,	Z =  -204.716  mm,
	W =  -178.298 deg,	P =    17.394 deg,	R =  -101.042 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   298.224  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
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
