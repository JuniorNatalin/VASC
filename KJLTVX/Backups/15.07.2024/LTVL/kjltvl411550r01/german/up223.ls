/PROG  UP223
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Dejar en ST1600";
PROG_GRÖßE	= 9152;
ERSTELL		= TAG 23-07-09  ZEIT 16:00:56;
GEÄNDERT	= TAG 23-07-09  ZEIT 16:00:58;
DATEI_NAME	= UP023;
VERSION		= 0;
ZEILEN		= 35;
SPEICHERGR.	= 15604;
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
   2:  WKZ_NUM=2 ;
   3:  TRAGLST[3] ;
   4:  !Apagar Perfil Lib. 73 vs ST1600 ;
   5:  !Apagar Perfil Lib. 72 vs ST1600 ;
   6:  !Encender Anticol. 1 vs 1600R01 ;
   7:  !Encender Anticol. 7 vs 1610R01 ;
   8:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  A[79]=AN ;
      9:  A[78]=AUS ;
     10:  A[77]=AUS ;
     11:  A[76]=AN ;
     12:  A[75]=AUS ;
     13:  A[74]=AUS ;
     14:  A[73]=AN ;
     15:  A[72]=AN ;
     16:  A[70]=AUS ;
     17:  A[69]=AUS ;
     18:  A[68]=AUS ;
     19:  A[67]=AUS ;
     20:  !Lib. de Anticolisiones ;
     21:  A[41]=AN ;
     22:  A[42]=AN ;
     23:  A[43]=AN ;
     24:  A[44]=AN ;
     25:  A[45]=AN ;
     26:  A[46]=AN ;
     27:  A[47]=AN ;
     28:  A[48]=AN ;
     29:  !Apagar Posicion Base ;
     30:  A[15]=AUS ;
     31:  !Roboter en Trayectoria ;
     32:  A[16]=AN ;
     33:  WARTE (E[57] [&] !E[58] [&] E[59] [&] !E[60] [&] E[73] [&] E[72])    ;
     34:  A[73]=AUS ;
     35:  A[72]=AUS ;
     36:  A[81]=AN ;
     37:  A[87]=AN ;
     38:  AUFRUF MAKRO020    ;
     39:  WARTE (E[23])    ;
     40:  A[23]=AN ;
     41:  !Marca Usuario ST1600 S/Pieza 1 ;
     42:  !M[19] = (DI[59] AND !DI[60]) ;
     43:  !Marca Usuario ST1600 S/Pieza 2 ;
     44:  !M[21] = (DI[57] AND !DI[58]) ;
     45:  !Marca de Usuario Suma de Anticol ;
     46:  !M[22] = (DI[41] AND DI[47]) ;
     47:  !Marca de Usuario Estado de Garra ;
     48:  !M[23] = (M[32] AND M[38]]) ;
     49:  !Marca de Usuario Estado de Garra ;
     50:  !M[26] = (M[39] AND M[41] AND M[4 ;
     51:  FB-PSPS (E[72] [&] E[73] [&] M[1] [&] M[19] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[33] [&] M[36]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[72] [&] E[73] [&] M[1] [&] M[19] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[33] [&] M[36]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[72] [&] E[73] [&] M[1] [&] M[19] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[33] [&] M[36]) ;
       ------ ;
  11:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  F[2]=(AN) ;
      4:  AUFRUF MAKRO343    ;
      5:  WARTE (M[34])    ;
      6:  WARTE (E[23])    ;
      7:  A[23]=(AN) ;
      8:  FB-PSPS (E[72] [&] E[73] [&] M[1] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[34] [&] M[36]) ;
       ------ ;
  12:  !En Posicion ST1600 ;
  13:  !Dejar Pieza 1 en ST1600 ;
  14:  !Fin de Trabajo 4 ;
  15:L P[5] 1500mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE ((!E[59] [&] E[60]) [+] E[15])    ;
      4:  A[70]=AN ;
      5:  AUFRUF MAKRO004    ;
      6:  WARTE (E[71])    ;
      7:  A[70]=AUS ;
      8:  F[3]=(AN) ;
      9:  AUFRUF MAKRO342    ;
     10:  AUFRUF MAKRO340    ;
     11:  WARTE (M[35])    ;
     12:  WARTE (E[23])    ;
     13:  A[23]=(AN) ;
     14:  !Marca Usuario ST1600 C/Pieza 1 ;
     15:  !M[18] = (!DI[59] AND DI[60]) ;
     16:  FB-PSPS (E[71] [&] E[73] [&] M[18] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  16:L P[6] 2000mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  WARTE (!E[59] [&] E[60] [&] M[5])    ;
      4:  WARTE (E[23])    ;
      5:  A[23]=(AN) ;
      6:  FB-PSPS (E[71] [&] E[73] [&] M[5] [&] M[18] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  17:  WKZ_NUM=1 ;
  18:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[71] [&] E[73] [&] M[5] [&] M[18] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  19:J P[8] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  A[69]=(AN) ;
      4:  WARTE (E[69])    ;
      5:  A[69]=(AUS) ;
      6:  WARTE (E[23])    ;
      7:  A[23]=(AN) ;
      8:  FB-PSPS (E[69] [&] E[73] [&] M[5] [&] M[18] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[69] [&] E[73] [&] M[5] [&] M[18] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[69] [&] E[73] [&] M[5] [&] M[18] [&] M[21] [&] M[22] [&] M[23] [&] M[26] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  22:J P[11] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  F[5]=(AN) ;
      4:  F[6]=(AN) ;
      5:  F[7]=(AN) ;
      6:  AUFRUF MAKRO343    ;
      7:  WARTE (M[40] [&] M[42] [&] M[44])    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=(AN) ;
     10:  !Marca de Usuario Estado de Garra ;
     11:  !M[25] = (M[40] AND M[42] AND M[4 ;
     12:  FB-PSPS (E[69] [&] E[73] [&] M[5] [&] M[18] [&] M[22] [&] M[23] [&] M[25] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  23:  !En Posicion ST1600 ;
  24:  !Dejar Pieza 2 en ST1600 ;
  25:  !Fin de Trabajo 5 ;
  26:L P[12] 1500mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE ((!E[57] [&] E[58]) [+] E[15])    ;
      4:  A[67]=AN ;
      5:  A[68]=AN ;
      6:  AUFRUF MAKRO005    ;
      7:  WARTE (E[68])    ;
      8:  A[68]=AUS ;
      9:  A[67]=AUS ;
     10:  F[1]=(AN) ;
     11:  F[4]=(AN) ;
     12:  AUFRUF MAKRO342    ;
     13:  AUFRUF MAKRO340    ;
     14:  WARTE (M[31] [&] M[37])    ;
     15:  WARTE (E[23])    ;
     16:  A[23]=(AN) ;
     17:  !Marca de Usuario Estado de Garra ;
     18:  !M[24] = (M[31] AND M[37]) ;
     19:  !Marca Usuario ST1600 C/Pieza 2 ;
     20:  !M[20] = (!DI[57] AND DI[58]) ;
     21:  FB-PSPS (E[68] [&] E[73] [&] M[18] [&] M[20] [&] M[22] [&] M[24] [&] M[25] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  27:L P[13] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[68] [&] E[73] [&] M[2] [&] M[18] [&] M[20] [&] M[22] [&] M[24] [&] M[25] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  28:J P[14] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[68] [&] E[73] [&] M[2] [&] M[18] [&] M[20] [&] M[22] [&] M[24] [&] M[25] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  29:J P[15] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[68] [&] E[73] [&] M[2] [&] M[18] [&] M[20] [&] M[22] [&] M[24] [&] M[25] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  30:J P[16] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[68] [&] E[73] [&] M[2] [&] M[18] [&] M[20] [&] M[22] [&] M[24] [&] M[25] [&] M[30] [&] M[34] [&] M[35]) ;
       ------ ;
  31:  !Encender Perfil Lib 73 vs ST1600 ;
  32:  !Encender Perfil Lib 72 vs ST1600 ;
  33:  !Apagar Anticol. 1 vs 1600R01 ;
  34:  !Apagar Anticol. 7 vs 1610R01 ;
  35:J P[17] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[5]=STOPP ;
      4:  F[2]=(AN) ;
      5:  F[5]=(AN) ;
      6:  F[6]=(AN) ;
      7:  F[7]=(AN) ;
      8:  AUFRUF MAKRO342    ;
      9:  AUFRUF MAKRO340    ;
     10:  WARTE (M[33] [&] M[39] [&] M[41] [&] M[43])    ;
     11:  A[41]=AN ;
     12:  A[47]=AN ;
     13:  A[73]=AN ;
     14:  A[72]=AN ;
     15:  WARTE (E[23])    ;
     16:  A[23]=AN ;
     17:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1111.865  mm,	Y =   118.787  mm,	Z =  1806.347  mm,
	W =   -70.737 deg,	P =    11.951 deg,	R =   -35.487 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1492.784  mm,	Y =   791.366  mm,	Z =  2136.380  mm,
	W =   -74.744 deg,	P =    11.683 deg,	R =   -19.804 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X = -1267.629  mm,	Y =  2484.028  mm,	Z =   793.110  mm,
	W =    90.000 deg,	P =    55.000 deg,	R =   143.543 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X = -1364.414  mm,	Y =  3123.377  mm,	Z =    -2.798  mm,
	W =    59.389 deg,	P =    89.796 deg,	R =   105.320 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X = -1364.461  mm,	Y =  3123.562  mm,	Z =   -57.299  mm,
	W =    59.392 deg,	P =    89.796 deg,	R =   105.323 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X = -1363.757  mm,	Y =  3125.704  mm,	Z =   -27.132  mm,
	W =    59.233 deg,	P =    89.796 deg,	R =   105.164 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -657.589  mm,	Y =  2442.038  mm,	Z =  1402.206  mm,
	W =   -44.819 deg,	P =      .153 deg,	R =    45.932 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    19.353  mm,	Y =  1526.865  mm,	Z =  1419.539  mm,
	W =   -10.000 deg,	P =     0.000 deg,	R =    53.543 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -541.428  mm,	Y =  1819.070  mm,	Z =  2360.446  mm,
	W =   -81.330 deg,	P =    -5.106 deg,	R =    53.050 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X = -1205.386  mm,	Y =  3072.959  mm,	Z =   348.202  mm,
	W =  -133.491 deg,	P =    89.681 deg,	R =    92.122 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X = -1204.866  mm,	Y =  3071.746  mm,	Z =    25.723  mm,
	W =  -172.540 deg,	P =    88.689 deg,	R =    52.786 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X = -1204.905  mm,	Y =  3071.697  mm,	Z =  -138.503  mm,
	W =  -167.717 deg,	P =    88.670 deg,	R =    57.610 deg
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
P[13]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X = -1204.866  mm,	Y =  3071.746  mm,	Z =    25.723  mm,
	W =  -172.540 deg,	P =    88.689 deg,	R =    52.786 deg
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
P[14]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X = -1204.417  mm,	Y =  3072.711  mm,	Z =   441.462  mm,
	W =   -38.476 deg,	P =    89.769 deg,	R =  -172.579 deg
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
P[15]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -541.433  mm,	Y =  1819.071  mm,	Z =  2360.436  mm,
	W =   -81.330 deg,	P =    -5.106 deg,	R =    53.050 deg
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
P[16]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   260.814  mm,	Y =   962.826  mm,	Z =  3327.073  mm,
	W =  -122.903 deg,	P =   -14.932 deg,	R =    67.034 deg
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
P[17]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.679  mm,	Y =   564.245  mm,	Z =  2983.021  mm,
	W =  -122.362 deg,	P =   -18.830 deg,	R =    50.373 deg
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
