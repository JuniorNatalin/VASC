/PROG  UP101
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Fresado";
PROG_GRÖßE	= 4694;
ERSTELL		= TAG 96-03-15  ZEIT 09:24:00;
GEÄNDERT	= TAG 24-02-17  ZEIT 20:49:14;
DATEI_NAME	= UP101;
VERSION		= 0;
ZEILEN		= 17;
SPEICHERGR.	= 8582;
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
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  A[80]=AN ;
      6:  !Lib. de Anticolisiones ;
      7:  A[41]=AN ;
      8:  A[42]=AN ;
      9:  A[45]=AN ;
     10:  A[46]=AN ;
     11:  !Apagar Pos. Base ;
     12:  A[15]=AUS ;
     13:  !Robot en Trayectoria ;
     14:  A[16]=AN ;
     15:  !Ap. Med. Ant/Dsp. Fresar ;
     16:  A[756]=AUS ;
     17:  A[757]=AUS ;
     18:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     19:  WARTE    .10(sec) ;
     20:  !Fresado Normal ;
     21:  F[79]=((E[786] [&] !E[788]) [+] F[298] [+] (!E[786] [&] !E[788] [&] A[11]) [+] (!E[788] [&] E[130])) ;
     22:  !Fresado Inicial ;
     23:  F[78]=(E[788] [&] !F[79]) ;
     24:  WARTE (E[23])    ;
     25:  A[23]=AN ;
     26:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   8:J P[5] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
   9:  !Posicion de Fresado ;
  10:L P[6] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      4:  !Sel. de Pistola ;
      5:  F[64]=(AN) ;
      6:  F[65]=(AUS) ;
      7:  F[66]=(AUS) ;
      8:  F[67]=(AUS) ;
      9:  A[130]=AN ;
     10:  gA[2]=(i[197]+5) ;
     11:  WENN (F[78] [+] F[79]),AUFRUF MAKRO082 ;
     12:  A[130]=AUS ;
     13:  WARTE (E[23])    ;
     14:  A[23]=AN ;
     15:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
  11:L P[7] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
  12:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
  13:  !Inic. Med ;
  14:J P[9] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[715]=AN ;
      3:  A[757]=AN ;
      4:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
  15:  !Fin de Med. ;
  16:  !Posicion Base ;
  17:J P[10] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  AUFRUF MAKRO083    ;
      4:  WENN (F[78] [&] !F[79] [&] F[335]),AUFRUF MAKRO087 ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=41, , ,S-Punkt=41, ,EIN/AUS=F[78]) ;
      6:  AUFRUF VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=51, , ,S-Punkt=51, ,EIN/AUS=F[79]) ;
      7:  WENN (!F[85] [&] !F[86]),AUFRUF MAKRO080 ;
      8:  WARTE (!F[298] [+] (E[777] [&] F[298]) [+] E[26] [+] (F[298] [&] F[749]))    ;
      9:  WARTE (E[23])    ;
     10:  A[23]=AN ;
     11:  FB-PSPS (M[30] [&] M[95]) ;
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
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =  1410.895  mm,	Y =   981.283  mm,	Z =  -288.515  mm,
	W =  -177.088 deg,	P =    23.628 deg,	R =  -136.890 deg
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
	X =  1039.188  mm,	Y =  1388.976  mm,	Z =  -408.346  mm,
	W =  -175.069 deg,	P =    -4.076 deg,	R =   -97.958 deg
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
	X =  1045.938  mm,	Y =  1387.062  mm,	Z =  -532.895  mm,
	W =  -174.849 deg,	P =      .087 deg,	R =  -103.259 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1034.548  mm,	Y =  1335.085  mm,	Z =  -531.894  mm,
	W =  -174.852 deg,	P =     -.136 deg,	R =  -103.274 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1045.938  mm,	Y =  1387.062  mm,	Z =  -532.895  mm,
	W =  -174.849 deg,	P =      .087 deg,	R =  -103.259 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1027.718  mm,	Y =  1401.677  mm,	Z =  -275.586  mm,
	W =  -174.866 deg,	P =    -3.854 deg,	R =  -102.137 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1354.178  mm,	Y =   383.442  mm,	Z =  -272.385  mm,
	W =  -173.140 deg,	P =     1.045 deg,	R =  -131.740 deg
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
P[10]{
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
