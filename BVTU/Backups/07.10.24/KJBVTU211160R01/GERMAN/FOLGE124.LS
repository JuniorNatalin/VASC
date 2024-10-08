/PROG  FOLGE124
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mantenimiento";
PROG_GRÖßE	= 3200;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 22-10-15  ZEIT 11:29:44;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 24;
SPEICHERGR.	= 5388;
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
   4:   ;
   5:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12]=AN),AUFRUF MAKRO998 ;
      2:  A[15]=AN ;
      3:  A[16]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9])    ;
       ------ ;
   6:  !Fresado antes de Mant. ;
   7:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
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
     13:  F[298]=(AUS) ;
     14:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     15:  WARTE    .10(sec) ;
     16:  F[79]=((E[786] [&] !E[788]) [+] F[298] [+] (!E[786] [&] !E[788] [&] A[11]) [+] (!E[788] [&] E[130])) ;
     17:  F[78]=(E[788] [&] !F[79]) ;
     18:  WARTE (E[23])    ;
     19:  A[23]=AN ;
     20:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   8:  LABEL[1] ;
   9:  WENN (F[78] [+] F[79] [+] F[298]),AUFRUF UP101 ;
  10:  WENN (F[298]),SPRUNG LABEL[1] ;
  11:  !Pos. de Mantenimiento ;
  12:  !UP112 Mant. SP1 ;
  13:  !UP201 Cambio Herramienta SP1 ;
  14:  !UP206 TCP Check ;
  15:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[20] [+] E[21] [+] (E[132] [+] E[777] [+] E[801]))    ;
      4:  F[940]=(!E[20] [&] !E[21] [&] (E[132] [+] E[777] [+] E[801])) ;
      5:  F[941]=(E[20] [&] !E[21]) ;
      6:  F[942]=(!E[20] [&] E[21]) ;
      7:  WARTE (F[940] [+] F[941] [+] F[942])    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
  16:  WENN (F[940]),AUFRUF UP112 ;
  17:  WENN (F[941]),AUFRUF UP201 ;
  18:  WENN (F[942]),AUFRUF UP206 ;
  19:  !Fresado despues de Mant. ;
  20:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  F[298]=(AUS) ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      5:  WARTE    .10(sec) ;
      6:  F[79]=((E[786] [&] !E[788]) [+] F[298] [+] (!E[786] [&] !E[788] [&] A[11]) [+] (!E[788] [&] E[130])) ;
      7:  F[78]=(E[788] [&] !F[79]) ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
  21:  LABEL[2] ;
  22:  WENN (F[78] [+] F[79] [+] F[298]),AUFRUF UP101 ;
  23:  WENN (F[298]),SPRUNG LABEL[2] ;
  24:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[14]=AN ;
      3:  A[15]=AN ;
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
P[4]{
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
