/PROG  UP022
/ATTR
EIGN.		= GME;
KOMMENTAR	= "Tomar en ST1540";
PROG_GRÖßE	= 7800;
ERSTELL		= TAG 96-03-17  ZEIT 19:31:52;
GEÄNDERT	= TAG 23-07-11  ZEIT 03:06:50;
DATEI_NAME	= UP022;
VERSION		= 0;
ZEILEN		= 29;
SPEICHERGR.	= 14728;
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
   3:  TRAGLST[2] ;
   4:  !Apagar Perfil Lib. 76 vs ST1540 ;
   5:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
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
     31:  !Robot en Trayectoria ;
     32:  A[16]=AN ;
     33:  WARTE (E[61] [&] !E[62] [&] !E[63] [&] E[64] [&] E[76])    ;
     34:  A[76]=AUS ;
     35:  WARTE (E[23])    ;
     36:  A[23]=AN ;
     37:  !Marca Usuario ST1540 C/Pieza 1 ;
     38:  !M[14] = (!DI[63] AND DI[64]) ;
     39:  !Marca Usuario ST1540 C/Pieza 2 ;
     40:  !M[17] = (DI[61] AND !DI[62]) ;
     41:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  10:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  11:L P[7] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  12:   ;
  13:  WKZ_NUM=1 ;
  14:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[3] [&] M[14] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41]) ;
       ------ ;
  16:  !En Posicion ST1540-2 ;
  17:  !Tomar Pieza 1 en ST1540 ;
  18:  !Fin de Trabajo 3 ;
  19:L P[10] 1500mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (M[6])    ;
      4:  F[4]=(AN) ;
      5:  AUFRUF MAKRO343    ;
      6:  WARTE (M[38])    ;
      7:  A[74]=AN ;
      8:  AUFRUF MAKRO003    ;
      9:  WARTE (E[76])    ;
     10:  A[74]=AUS ;
     11:  WARTE (E[23])    ;
     12:  A[23]=(AN) ;
     13:  FB-PSPS (E[76] [&] M[6] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  20:  TRAGLST[3] ;
  21:L P[11] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 2 ;
      2:  !M[15] = (DI[61] AND !DI[62]) ;
      3:  FB-PSPS (E[76] [&] M[6] [&] M[15] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  22:L P[12] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 2 ;
      2:  !M[15] = (DI[61] AND !DI[62]) ;
      3:  FB-PSPS (E[76] [&] M[6] [&] M[15] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  23:J P[13] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[6] [&] M[15] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[6] [&] M[15] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[6] [&] M[15] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[6] [&] M[15] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  27:J P[17] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[76] [&] M[6] [&] M[15] [&] M[17] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
       ------ ;
  28:  !Encender Perfil Lib 76 vs ST1540 ;
  29:J P[18] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[4]=STOPP ;
      4:  A[76]=AN ;
      5:  WARTE (E[23])    ;
      6:  A[23]=AN ;
      7:  FB-PSPS (M[6] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[38] [&] M[39] [&] M[41]) ;
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
	X =   340.811  mm,	Y =    97.381  mm,	Z =   952.272  mm,
	W =  -122.539 deg,	P =    51.174 deg,	R =   -81.460 deg
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
	X =   229.313  mm,	Y =  1040.046  mm,	Z =  1032.351  mm,
	W =   162.474 deg,	P =    11.577 deg,	R =   160.466 deg
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
	X =   482.441  mm,	Y =  -217.948  mm,	Z =   429.457  mm,
	W =  -158.359 deg,	P =    25.819 deg,	R =   163.960 deg
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
	X =   880.626  mm,	Y =  -875.205  mm,	Z =   339.265  mm,
	W =  -149.839 deg,	P =    32.332 deg,	R =   100.769 deg
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
	X =   428.480  mm,	Y = -1099.762  mm,	Z =  -163.335  mm,
	W =  -132.537 deg,	P =    39.880 deg,	R =   107.121 deg
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
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =   240.072  mm,	Y = -1189.968  mm,	Z =  -536.374  mm,
	W =  -119.481 deg,	P =    40.882 deg,	R =   116.870 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =     5.917  mm,	Y = -1933.203  mm,	Z =  1079.418  mm,
	W =   -90.384 deg,	P =    21.903 deg,	R =  -133.410 deg
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
	X =    11.508  mm,	Y = -1914.594  mm,	Z =  1002.081  mm,
	W =   -89.899 deg,	P =    21.481 deg,	R =  -132.867 deg
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
	X =   -89.958  mm,	Y = -2023.915  mm,	Z =   943.387  mm,
	W =   -89.899 deg,	P =    21.481 deg,	R =  -132.867 deg
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
	X =    49.166  mm,	Y = -1874.813  mm,	Z =  1023.707  mm,
	W =   -90.046 deg,	P =    21.480 deg,	R =  -133.512 deg
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
	X =    49.193  mm,	Y = -1874.855  mm,	Z =  1284.529  mm,
	W =   -90.050 deg,	P =    21.483 deg,	R =  -133.513 deg
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
	X =   -25.813  mm,	Y = -1899.654  mm,	Z =  1525.482  mm,
	W =   -86.341 deg,	P =    30.783 deg,	R =  -133.860 deg
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
	X =   233.566  mm,	Y = -1963.313  mm,	Z =  1511.281  mm,
	W =   -83.538 deg,	P =    46.768 deg,	R =  -127.568 deg
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
	X =  1310.436  mm,	Y = -1401.385  mm,	Z =  1358.850  mm,
	W =   -82.710 deg,	P =    57.191 deg,	R =   -59.893 deg
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
	X =  1283.848  mm,	Y =  -322.297  mm,	Z =  1024.465  mm,
	W =    12.331 deg,	P =    70.020 deg,	R =    38.056 deg
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
	X =   807.052  mm,	Y =   437.852  mm,	Z =  2572.268  mm,
	W =   -79.009 deg,	P =    19.840 deg,	R =    34.894 deg
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
P[18]{
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
