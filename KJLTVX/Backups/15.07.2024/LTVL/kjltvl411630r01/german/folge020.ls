/PROG  FOLGE020
/ATTR
EIGN.		= GME;
KOMMENTAR	= "VW336";
PROG_GRÖßE	= 5838;
ERSTELL		= TAG 17-07-04  ZEIT 12:42:02;
GEÄNDERT	= TAG 23-07-09  ZEIT 08:45:40;
DATEI_NAME	= FOLGE020;
VERSION		= 0;
ZEILEN		= 35;
SPEICHERGR.	= 9690;
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
   1:  BENUTZER_NUM=0 ;
   2:  WKZ_NUM=1 ;
   3:  TRAGLST[1] ;
   4:J P[1] 10% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  WENN (A[12]),AUFRUF MAKRO998 ;
      2:  A[15]=AN ;
      3:  A[16]=AN ;
      4:  AUFRUF MAKRO000    ;
      5:  WARTE (E[9])    ;
       ------ ;
   5:  !Fresado Estacionario ;
   6:J P[2] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  A[78]=AUS ;
      9:  A[77]=AN ;
     10:  A[75]=AUS ;
     11:  !Lib. de Anticolisiones ;
     12:  A[41]=AN ;
     13:  A[42]=AN ;
     14:  A[43]=AN ;
     15:  A[44]=AN ;
     16:  !Apagar Posicion Base ;
     17:  A[15]=AUS ;
     18:  !Garra a Base si no hay pieza ;
     19:  WARTE (M[2])    ;
     20:  F[1]=(AN) ;
     21:  F[2]=(AN) ;
     22:  WENN (M[2]),AUFRUF MAKRO342 ;
     23:  AUFRUF MAKRO340    ;
     24:  WARTE (M[31] [&] M[33])    ;
     25:  !Fresado SZ1 ;
     26:  F[298]=(AUS) ;
     27:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
     28:  WARTE    .10(sec) ;
     29:  F[79]=((E[786] [&] !E[788]) [+] (!E[788] [&] E[130])) ;
     30:  F[78]=(E[788] [&] !F[79]) ;
     31:  gA[2]=(i[197]+0) ;
     32:  WENN (F[78] [+] F[79]),AUFRUF MAKRO085 ;
     33:  WENN (F[78] [+] F[79]),AUFRUF MAKRO084 ;
     34:  WARTE (M[96])    ;
     35:  WARTE (E[23])    ;
     36:  A[23]=AN ;
     37:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:  !Llamar a UP021 ;
   8:  !Tomar de la Estacion ST1620 ;
   9:  AUFRUF UP021    ;
  10:  BENUTZER_NUM=0 ;
  11:  WKZ_NUM=1 ;
  12:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  13:  !Llamar a UP022 ;
  14:  !Soldadura Est. ;
  15:  AUFRUF UP022    ;
  16:  BENUTZER_NUM=0 ;
  17:  WKZ_NUM=1 ;
  18:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  19:  !Llamar a UP023 ;
  20:  !Marcado ;
  21:  AUFRUF UP023    ;
  22:  BENUTZER_NUM=0 ;
  23:  WKZ_NUM=1 ;
  24:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  25:  !En Area de Mantenimiento ;
  26:  !Llamar a UP024 ;
  27:  !Dejar en ST1640 ;
  28:J P[6] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  LABEL[1] ;
      4:  A[18]=(AN) ;
      5:  WARTE ((E[77] [&] !E[62] [&] E[61] [&] !E[18]) [+] E[19])    ;
      6:  WENN (E[19]),SPRUNG LABEL[3] ;
      7:  WENN (E[77] [&] !E[62] [&] E[61]),SPRUNG LABEL[2] ;
      8:  LABEL[3] ;
      9:  WENN (F[78] [+] F[79]),AUFRUF MAKRO084 ;
     10:  AUFRUF MAKRO089    ;
     11:  A[17]=(AN) ;
     12:  gA[19]=(11) ;
     13:  F[281]=(AN) ;
     14:  WARTE (E[17])    ;
     15:  F[64]=(AN) ;
     16:  F[65]=(AUS) ;
     17:  F[66]=(AUS) ;
     18:  F[67]=(AUS) ;
     19:  LABEL[4] ;
     20:  WENN (E[132] [&] !E[133] [&] !E[134] [&] !E[135] [&] E[17]),AUFRUF MAKRO081 ;
     21:  WENN (F[85]),SPRUNG LABEL[4] ;
     22:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     23:  F[79]=((!E[788] [&] E[130]) [+] (E[786] [&] !E[788])) ;
     24:  F[78]=(E[788] [&] !F[79]) ;
     25:  gA[2]=(i[197]+0) ;
     26:  WENN (F[78] [+] F[79]),AUFRUF MAKRO085 ;
     27:  WENN (F[78] [+] F[79]),AUFRUF MAKRO084 ;
     28:  WARTE (M[96] [&] !E[132])    ;
     29:  A[17]=(AUS) ;
     30:  gA[19]=(0) ;
     31:  WARTE (!E[19])    ;
     32:  SPRUNG LABEL[1] ;
     33:  LABEL[2] ;
     34:  A[18]=(AUS) ;
     35:  F[281]=(AUS) ;
     36:  WARTE (E[23])    ;
     37:  A[23]=AN ;
     38:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  29:  AUFRUF UP024    ;
  30:  BENUTZER_NUM=0 ;
  31:  WKZ_NUM=1 ;
  32:J P[7] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  F[298]=(AUS) ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=AN) ;
      5:  WARTE    .10(sec) ;
      6:  F[79]=((E[786] [&] !E[788]) [+] (!E[788] [&] E[130])) ;
      7:  F[78]=(E[788] [&] !F[79]) ;
      8:  gA[2]=(i[197]+0) ;
      9:  WENN (F[78] [+] F[79]),AUFRUF MAKRO085 ;
     10:  WENN (F[78] [+] F[79]),AUFRUF MAKRO084 ;
     11:  WARTE (M[96])    ;
     12:  WARTE (E[23])    ;
     13:  A[23]=AN ;
     14:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  33:  !Fin de Trabajo Total ;
  34:J P[8] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO015    ;
      4:  WARTE (E[23])    ;
      5:  A[23]=AN ;
      6:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  35:J P[9] 100% CNT0 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
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
P[6]{
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
P[7]{
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
P[8]{
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
P[9]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -464.777  mm,	Y =  -676.782  mm,	Z =  1035.351  mm,
	W =   142.539 deg,	P =    72.306 deg,	R =  -130.585 deg
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
