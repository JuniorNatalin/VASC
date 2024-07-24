/PROG  FOLGE124
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mantenimiento";
PROG_GRÖßE	= 3650;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 21-04-18  ZEIT 11:06:52;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 22;
SPEICHERGR.	= 5666;
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
   6:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
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
     14:  !Apagar Posicion Base ;
     15:  A[15]=AUS ;
     16:  WARTE (M[2])    ;
     17:  F[1]=(AN) ;
     18:  F[2]=(AN) ;
     19:  WENN (M[2]),AUFRUF MAKRO342 ;
     20:  AUFRUF MAKRO340    ;
     21:  WARTE (M[31] [&] M[33])    ;
     22:  WARTE (E[23])    ;
     23:  A[23]=AN ;
     24:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:  !Fresado en Mantenimiento ;
   8:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  F[298]=(AUS) ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      5:  WARTE    .10(sec) ;
      6:  F[79]=((E[786] [&] !E[788]) [+] (!E[788] [&] E[130])) ;
      7:  F[78]=(E[788] [&] !F[79]) ;
      8:  gA[2]=(i[197]+5) ;
      9:  WENN (F[78] [+] F[79]),AUFRUF MAKRO085 ;
     10:  WENN (F[78] [+] F[79]),AUFRUF MAKRO084 ;
     11:  WARTE (M[96])    ;
     12:  WARTE (E[23])    ;
     13:  A[23]=AN ;
     14:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   9:  !Pos. de Mantenimiento ;
  10:  !UP112 Mant. G1 ;
  11:  !UP113 Mant. SP1 ;
  12:  !UP201 Cambio Herramienta G1 ;
  13:  !UP202 Cambio Herramienta SP1 ;
  14:  !UP206 TCP Check SP1 ;
  15:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  F[940]=(AUS) ;
      4:  F[941]=(AUS) ;
      5:  F[942]=(AUS) ;
      6:  F[943]=(AUS) ;
      7:  F[944]=(AUS) ;
      8:  WARTE (((E[20] [+] E[21]) [&] (E[121] [+] E[132])) [+] E[121] [+] (E[132] [+] E[777] [+] E[801]))    ;
      9:  !Mantenimiento G1 ;
     10:  F[940]=(!E[20] [&] !E[21] [&] E[121] [&] !(E[132] [+] E[777] [+] E[801])) ;
     11:  !Mantenimiento SP1 ;
     12:  F[941]=(!E[20] [&] !E[21] [&] !E[121] [&] (E[132] [+] E[777] [+] E[801])) ;
     13:  !Cambio de Herramienta G1 ;
     14:  F[942]=(E[20] [&] !E[21] [&] E[121] [&] !E[132]) ;
     15:  !Cambio de Herramienta SP1 ;
     16:  F[943]=(E[20] [&] !E[21] [&] !E[121] [&] E[132]) ;
     17:  !TCP Check SP1 ;
     18:  F[944]=(!E[20] [&] E[21] [&] !E[121] [&] E[132]) ;
     19:  WARTE (F[940] [+] F[941] [+] F[942] [+] F[943] [+] F[944])    ;
     20:  WARTE (E[23])    ;
     21:  A[23]=AN ;
     22:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  16:  WENN (F[940]),AUFRUF UP112 ;
  17:  WENN (F[941]),AUFRUF UP113 ;
  18:  WENN (F[942]),AUFRUF UP201 ;
  19:  WENN (F[943]),AUFRUF UP202 ;
  20:  WENN (F[944]),AUFRUF UP206 ;
  21:  WKZ_NUM=1 ;
  22:J P[5] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[15]=AN ;
      3:  A[14]=AN ;
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
P[4]{
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
