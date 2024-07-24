/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1540";
PROG_SIZE	= 7800;
CREATE		= DATE 96-03-17  TIME 19:31:52;
MODIFIED	= DATE 23-07-11  TIME 03:06:50;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 14728;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=2 ;
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 76 vs ST1540 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  DO[73]=ON ;
     15:  DO[72]=ON ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  DO[68]=OFF ;
     19:  DO[67]=OFF ;
     20:  !Lib. de Anticolisiones ;
     21:  DO[41]=ON ;
     22:  DO[42]=ON ;
     23:  DO[43]=ON ;
     24:  DO[44]=ON ;
     25:  DO[45]=ON ;
     26:  DO[46]=ON ;
     27:  DO[47]=ON ;
     28:  DO[48]=ON ;
     29:  !Apagar Posicion Base ;
     30:  DO[15]=OFF ;
     31:  !Robot en Trayectoria ;
     32:  DO[16]=ON ;
     33:  WAIT (DI[61] AND !DI[62] AND !DI[63] AND DI[64] AND DI[76])    ;
     34:  DO[76]=OFF ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marca Usuario ST1540 C/Pieza 1 ;
     38:  !M[14] = (!DI[63] AND DI[64]) ;
     39:  !Marca Usuario ST1540 C/Pieza 2 ;
     40:  !M[17] = (DI[61] AND !DI[62]) ;
     41:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  10:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  11:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  12:   ;
  13:  UTOOL_NUM=1 ;
  14:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  16:  !En Posicion ST1540-2 ;
  17:  !Tomar Pieza 1 en ST1540 ;
  18:  !Fin de Trabajo 3 ;
  19:L P[10] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[6])    ;
      4:  F[4]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[38])    ;
      7:  DO[74]=ON ;
      8:  CALL MAKRO003    ;
      9:  WAIT (DI[76])    ;
     10:  DO[74]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=(ON) ;
     13:  TC_ONLINE (DI[76] AND M[6] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  20:  PAYLOAD[3] ;
  21:L P[11] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 2 ;
      2:  !M[15] = (DI[61] AND !DI[62]) ;
      3:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  22:L P[12] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 2 ;
      2:  !M[15] = (DI[61] AND !DI[62]) ;
      3:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  23:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  27:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  28:  !Encender Perfil Lib 76 vs ST1540 ;
  29:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[76]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[6] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
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
