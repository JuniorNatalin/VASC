/PROG  UP113
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mant. SP1";
PROG_GRÖßE	= 2604;
ERSTELL		= TAG 17-07-04  ZEIT 12:40:56;
GEÄNDERT	= TAG 17-07-04  ZEIT 12:40:56;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 8;
SPEICHERGR.	= 4020;
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
     18:  WARTE (E[23])    ;
     19:  A[23]=AN ;
     20:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   5:  !Pos. de Mantenimiento ;
   6:J P[2] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  F[281]=(AN) ;
      4:  F[64]=(AN) ;
      5:  F[65]=(AUS) ;
      6:  F[66]=(AUS) ;
      7:  F[67]=(AUS) ;
      8:  WENN (E[132]),SPRUNG LABEL[1] ;
      9:  WENN (A[12]),AUFRUF MAKRO073 ;
     10:  AUFRUF MAKRO089    ;
     11:  A[17]=AN ;
     12:  WARTE (E[17])    ;
     13:  A[17]=AUS ;
     14:  WENN (A[12]),AUFRUF MAKRO072 ;
     15:  LABEL[1] ;
     16:  gA[19]=11 ;
     17:  AUFRUF MAKRO089    ;
     18:  A[17]=AN ;
     19:  WARTE (E[17])    ;
     20:  WENN (E[132] [&] !E[133] [&] !E[134] [&] !E[135]),AUFRUF MAKRO081 ;
     21:  LABEL[2] ;
     22:  WARTE (!F[85] [+] E[26])    ;
     23:  WENN (F[85]),AUFRUF MAKRO081 ;
     24:  WENN (F[85]),SPRUNG LABEL[2] ;
     25:  A[17]=AUS ;
     26:  gA[19]=0 ;
     27:  F[281]=(AUS) ;
     28:  WARTE (!E[132] [&] !E[133] [&] !E[134] [&] !E[135])    ;
     29:  WARTE (E[23])    ;
     30:  A[23]=AN ;
     31:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
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
      8:  gA[2]=(i[197]+0) ;
      9:  WENN (F[78] [+] F[79]),AUFRUF MAKRO085 ;
     10:  WENN (F[78] [+] F[79]),AUFRUF MAKRO084 ;
     11:  WARTE (M[96])    ;
     12:  WARTE (E[23])    ;
     13:  A[23]=AN ;
     14:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
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
/END
