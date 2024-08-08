/PROG  UP026
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1250";
PROG_SIZE	= 8278;
CREATE		= DATE 16-12-15  TIME 07:00:46;
MODIFIED	= DATE 23-06-29  TIME 01:59:46;
FILE_NAME	= UP026;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 14286;
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
   3:  PAYLOAD[3] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[16]=(ON) ;
      4:  TIMER[6]=RESET ;
      5:  TIMER[6]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=ON ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[69]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[45]=ON ;
     23:  DO[46]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  WAIT (DI[74] AND DI[73] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57])    ;
     29:  DO[74]=OFF ;
     30:  DO[73]=OFF ;
     31:  !Encender Anticolisiones ;
     32:  DO[81]=ON ;
     33:  DO[85]=ON ;
     34:  CALL MAKRO020    ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marca de Usuario Estado de Garra ;
     38:  !M[25]=(M[36] AND M[38] AND M[40] ;
     39:  !Marca de Usuario Suma de Anticol ;
     40:  !M[26]=(DI[41] AND DI[45] ;
     41:  !Marca de Usuario Estacion Vacia ;
     42:  !M[27]=(!DI[60] AND DI[59] AND !D ;
     43:  TC_ONLINE (DI[74] AND DI[73] AND M[1] AND M[26] AND M[27] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND DI[73] AND M[1] AND M[26] AND M[27] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND DI[73] AND M[1] AND M[26] AND M[27] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND DI[73] AND M[1] AND M[26] AND M[27] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND DI[73] AND M[1] AND M[26] AND M[27] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
   9:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[74] AND DI[73] AND M[1] AND M[26] AND M[30] AND M[32] AND M[33] AND M[25] AND M[41]) ;
       ------ ;
  10:  !En Pos. Descarga Pzas 1&2 ST1250 ;
  11:  !Fin de Trabajo 4 ;
  12:L P[7] 1000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[60] AND !DI[59]) OR DI[15])    ;
      4:  F[4]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[37])    ;
      8:  DO[71]=ON ;
      9:  DO[72]=ON ;
     10:  CALL MAKRO004    ;
     11:  WAIT (DI[72])    ;
     12:  DO[71]=OFF ;
     13:  DO[72]=OFF ;
     14:  F[3]=(ON) ;
     15:  F[5]=(ON) ;
     16:  CALL MAKRO342    ;
     17:  CALL MAKRO340    ;
     18:  WAIT (M[35] AND M[39])    ;
     19:  F[2]=(ON) ;
     20:  CALL MAKRO343    ;
     21:  WAIT (M[34])    ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  !Marca de Usuario Estado de Garra ;
     25:  !M[24]=(M[35] AND M[37] AND M[39] ;
     26:  !Marca de Usuario Mesa C/Pzas 1&2 ;
     27:  !M[28]=(DI[60] AND !DI[59] AND !D ;
     28:  TC_ONLINE (DI[74] AND DI[72] AND M[26] AND M[28] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
  13:  PAYLOAD[2] ;
  14:L P[8] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[3])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=(ON) ;
      6:  TC_ONLINE (DI[74] AND DI[72] AND M[3] AND M[26] AND M[28] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND DI[72] AND M[3] AND M[26] AND M[28] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
  16:  UTOOL_NUM=1 ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND DI[72] AND M[3] AND M[26] AND M[28] AND M[30] AND M[32] AND M[34] AND M[24] AND M[41]) ;
       ------ ;
  18:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[6]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[42])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[74] AND DI[72] AND M[3] AND M[26] AND M[30] AND M[32] AND M[34] AND M[24] AND M[42]) ;
       ------ ;
  19:  !En Pos. Descarga ST1250 Pza. 3 ;
  20:  !Dejar Pza. 3 en ST1250 ;
  21:  !Fin de Trabajo 5 ;
  22:L P[12] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[58] AND !DI[57]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[69]=ON ;
      9:  CALL MAKRO005    ;
     10:  WAIT (DI[70])    ;
     11:  DO[69]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  !Marca de Usuario Estacion Llena ;
     15:  !M[29]=(DI[60] AND !DI[59] AND DI ;
     16:  TC_ONLINE (DI[74] AND DI[70] AND M[26] AND M[29] AND M[30] AND M[31] AND M[34] AND M[24] AND M[42]) ;
       ------ ;
  23:  PAYLOAD[1] ;
  24:L P[13] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[2])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[74] AND DI[70] AND M[2] AND M[26] AND M[29] AND M[30] AND M[31] AND M[34] AND M[24] AND M[42]) ;
       ------ ;
  25:  !Encender Perfil Lib 73 vs ST1250 ;
  26:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[73]=ON ;
      3:  TC_ONLINE (DI[74] AND M[2] AND M[26] AND M[29] AND M[30] AND M[31] AND M[34] AND M[24] AND M[42]) ;
       ------ ;
  27:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[2] AND M[26] AND M[29] AND M[30] AND M[31] AND M[34] AND M[24] AND M[42]) ;
       ------ ;
  28:  !Encender Perfil Lib 74 vs ST1250 ;
  29:  !Lib. Anticolision 1 vs 1250R01 ;
  30:  !Lib. Anticolision 5 vs 1270R01 ;
  31:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[45]=ON ;
      6:  DO[74]=ON ;
      7:  F[2]=(ON) ;
      8:  F[6]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  CALL MAKRO340    ;
     11:  WAIT (M[33] AND M[41])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1386.241  mm,	Y =   181.427  mm,	Z =   995.718  mm,
	W =   120.000 deg,	P =     0.000 deg,	R =   -60.000 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =   -68.431  mm,	Y =  1204.727  mm,	Z =   786.063  mm,
	W =    74.143 deg,	P =    52.420 deg,	R =  -108.643 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
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
	X = -1115.965  mm,	Y =  2104.691  mm,	Z =    98.337  mm,
	W =    84.883 deg,	P =    87.725 deg,	R =   -30.723 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
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
	X = -1155.183  mm,	Y =  2128.550  mm,	Z =    53.907  mm,
	W =    83.816 deg,	P =    88.113 deg,	R =   -31.789 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
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
	X = -1156.151  mm,	Y =  2132.293  mm,	Z =   -45.556  mm,
	W =  -175.902 deg,	P =    89.915 deg,	R =    68.194 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
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
	X = -1145.230  mm,	Y =  2136.810  mm,	Z =   -93.065  mm,
	W =  -175.847 deg,	P =    89.913 deg,	R =    68.421 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
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
	X = -1145.203  mm,	Y =  2136.889  mm,	Z =  -139.968  mm,
	W =  -175.853 deg,	P =    89.913 deg,	R =    68.415 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1143.886  mm,	Y =  2141.158  mm,	Z =   -75.410  mm,
	W =   -69.188 deg,	P =    89.728 deg,	R =   174.911 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1151.659  mm,	Y =  2147.449  mm,	Z =   304.645  mm,
	W =    83.757 deg,	P =    88.111 deg,	R =   -31.848 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1111.613  mm,	Y =  1657.105  mm,	Z =   244.215  mm,
	W =  -159.690 deg,	P =    73.395 deg,	R =   171.536 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1292.866  mm,	Y =  1526.480  mm,	Z =   -88.643  mm,
	W =   -93.010 deg,	P =    87.355 deg,	R =  -118.704 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
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
	X = -1294.029  mm,	Y =  1527.247  mm,	Z =  -483.779  mm,
	W =  -101.747 deg,	P =    87.301 deg,	R =  -127.769 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
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
	X = -1292.866  mm,	Y =  1526.479  mm,	Z =  -446.123  mm,
	W =   -93.012 deg,	P =    87.355 deg,	R =  -118.706 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
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
	X = -1292.867  mm,	Y =  1526.479  mm,	Z =  -122.723  mm,
	W =   -93.012 deg,	P =    87.355 deg,	R =  -118.706 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
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
	X = -1267.476  mm,	Y =  1545.570  mm,	Z =   120.285  mm,
	W =  -119.687 deg,	P =    87.078 deg,	R =  -144.780 deg
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
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
