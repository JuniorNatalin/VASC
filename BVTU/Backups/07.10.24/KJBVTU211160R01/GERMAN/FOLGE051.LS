/PROG  FOLGE051
/ATTR
EIGN.		= GME;
KOMMENTAR	= "VW371";
PROG_GR��E	= 3276;
ERSTELL		= TAG 04-05-30  ZEIT 18:59:02;
GE�NDERT	= TAG 24-07-13  ZEIT 22:55:10;
DATEI_NAME	= FOLGE050;
VERSION		= 0;
ZEILEN		= 20;
SPEICHERGR.	= 5820;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GR��E	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/APPL
/MN
   1:  WKZ_NUM=1 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12]),AUFRUF MAKRO998 ;
      2:  A[15]=AN ;
      3:  A[16]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  !Lib. de Anticolisiones ;
      9:  A[41]=AN ;
     10:  A[42]=AN ;
     11:  A[45]=AN ;
     12:  A[46]=AN ;
     13:  !Apagar Posicion Base ;
     14:  A[15]=AUS ;
     15:  !Fresado EZ1 ;
     16:  F[298]=(AUS) ;
     17:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     18:  WARTE    .10(sec) ;
     19:  F[79]=((E[786] [&] !E[788]) [+] (!E[788] [&] E[130])) ;
     20:  F[78]=(E[788] [&] !F[79]) ;
     21:  WARTE (E[23])    ;
     22:  A[23]=AN ;
     23:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   6:  LABEL[1] ;
   7:  WENN (F[78] [+] F[79] [+] F[298]),AUFRUF UP101 ;
   8:  WENN (F[298]),SPRUNG LABEL[1] ;
   9:  ! Llamar a UP051 ;
  10:  !Soldar en estacion de Geometria ;
  11:  ! ST1160 ;
  12:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
  13:  AUFRUF UP051    ;
  14:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  !Fresado EZ1 ;
      4:  F[298]=(AUS) ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  WARTE    .10(sec) ;
      7:  F[79]=((E[786] [&] !E[788]) [+] (!E[788] [&] E[130])) ;
      8:  F[78]=(E[788] [&] !F[79]) ;
      9:  WARTE (E[23])    ;
     10:  A[23]=AN ;
     11:  FB-PSPS (M[30]) ;
       ------ ;
  15:  LABEL[2] ;
  16:  WENN (F[78] [+] F[79] [+] F[298]),AUFRUF UP101 ;
  17:  WENN (F[298]),SPRUNG LABEL[2] ;
  18:  !Fin de Trabajo Total ;
  19:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO015    ;
      4:  WARTE (E[23])    ;
      5:  A[23]=AN ;
      6:  FB-PSPS (M[30]) ;
       ------ ;
  20:J P[6] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[14]=AN ;
      3:  A[15]=AN ;
      4:  TIMER[1]=STOPP ;
      5:  TIMER[2]=(TIMER[1]) ;
      6:  TIMER[2]=STOPP ;
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
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1731.500  mm,	Y =     2.242  mm,	Z =  -321.863  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   300.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1731.500  mm,	Y =     2.242  mm,	Z =  -321.863  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   300.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1731.500  mm,	Y =     2.242  mm,	Z =  -321.863  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   300.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1731.500  mm,	Y =     2.242  mm,	Z =  -321.863  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   300.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1731.500  mm,	Y =     2.242  mm,	Z =  -321.863  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   300.000  mm
};
/END
