/PROG  UP006
/ATTR
OWNER		= AUROM;
COMMENT		= "Dejar en ST1250";
PROG_SIZE	= 7976;
CREATE		= DATE 96-03-31  TIME 20:31:12;
MODIFIED	= DATE 23-06-17  TIME 22:26:40;
FILE_NAME	= UP006;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 14584;
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
   2:  UTOOL_NUM=3 ;
   3:  PAYLOAD[3] ;
   4:  !Apagar Perfil Lib. 74 vs ST1250 ;
   5:  !Apagar Perfil Lib. 73 vs ST1250 ;
   6:  !Encender Anticol. 1 vs 1250R01 ;
   7:  !Encender Anticol. 5 vs 1270R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[72]=OFF ;
     14:  DO[71]=OFF ;
     15:  DO[69]=OFF ;
     16:  !Lib. de Anticolisiones ;
     17:  DO[41]=ON ;
     18:  DO[42]=ON ;
     19:  DO[43]=ON ;
     20:  DO[44]=ON ;
     21:  DO[45]=ON ;
     22:  DO[46]=ON ;
     23:  !Apagar Pos. Base ;
     24:  DO[15]=OFF ;
     25:  !Robot en Trayectoria ;
     26:  DO[16]=ON ;
     27:  WAIT (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[73] AND DI[74])    ;
     28:  DO[73]=OFF ;
     29:  DO[74]=OFF ;
     30:  !Encender Anticolisiones ;
     31:  DO[81]=ON ;
     32:  DO[85]=ON ;
     33:  CALL MAKRO020    ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  TC_ONLINE (DI[41] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[13] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[13] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[13] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[13] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:   ;
  14:  !En Posicion ST1250 ;
  15:  !Dejar Piezas 1&2 en ST1250 ;
  16:  !Fin de Trabajo 4 ;
  17:L P[6] 350mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  DO[71]=ON ;
      5:  DO[72]=ON ;
      6:  CALL MAKRO004    ;
      7:  WAIT (DI[72])    ;
      8:  DO[72]=OFF ;
      9:  DO[71]=OFF ;
     10:  F[3]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[35])    ;
     14:  F[2]=(ON) ;
     15:  CALL MAKRO343    ;
     16:  WAIT (M[34])    ;
     17:  WAIT (DI[23])    ;
     18:  DO[23]=ON ;
     19:  TC_ONLINE (DI[41] AND DI[45] AND DI[72] AND DI[74] AND M[12] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:   ;
  19:  PAYLOAD[2] ;
  20:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[72] AND DI[74] AND M[3] AND M[12] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[72] AND DI[74] AND M[3] AND M[12] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[72] AND DI[74] AND M[3] AND M[12] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[72] AND DI[74] AND M[3] AND M[12] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:  UTOOL_NUM=1 ;
  25:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[72] AND DI[74] AND M[3] AND M[12] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[4]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[38])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[41] AND DI[45] AND DI[72] AND DI[74] AND M[3] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:   ;
  28:  !En Posicion ST1250 ;
  29:  !Dejar Pieza 3 en ST1250 ;
  30:  !Fin de Trabajo 5 ;
  31:L P[13] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[69]=ON ;
      4:  WAIT (!DI[57] AND DI[58])    ;
      5:  F[1]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[31])    ;
      9:  CALL MAKRO005    ;
     10:  WAIT (DI[70])    ;
     11:  DO[69]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[41] AND DI[45] AND DI[70] AND DI[74] AND M[15] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:  PAYLOAD[1] ;
  33:L P[14] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[70] AND DI[74] AND M[2] AND M[15] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[70] AND DI[74] AND M[2] AND M[15] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[70] AND DI[74] AND M[2] AND M[15] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  36:  !Encender Perfil Lib 74 vs ST1250 ;
  37:  !Encender Perfil Lib 73 vs ST1250 ;
  38:  !Apagar Anticol. 1 vs 1250R01 ;
  39:  !Apagar Anticol. 5 vs 1270R01 ;
  40:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[45]=ON ;
      6:  DO[73]=ON ;
      7:  DO[74]=ON ;
      8:  F[2]=(ON) ;
      9:  F[4]=(ON) ;
     10:  CALL MAKRO342    ;
     11:  CALL MAKRO340    ;
     12:  WAIT (M[33] AND M[37])    ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (M[2] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -549.947  mm,	Y =  1084.355  mm,	Z =   982.284  mm,
	W =   149.673 deg,	P =    -1.812 deg,	R =   171.832 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.291  mm,	Y =  1087.203  mm,	Z =   635.351  mm,
	W =   151.006 deg,	P =    27.160 deg,	R =   120.035 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2101.101  mm,	Y =    86.630  mm,	Z =   456.350  mm,
	W =    44.999 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2098.378  mm,	Y =    81.716  mm,	Z =   188.050  mm,
	W =   111.920 deg,	P =    87.837 deg,	R =    68.212 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2100.089  mm,	Y =    94.348  mm,	Z =  -194.118  mm,
	W =    87.862 deg,	P =    87.678 deg,	R =    43.701 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.900  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2102.875  mm,	Y =    96.941  mm,	Z =  -286.460  mm,
	W =    87.798 deg,	P =    87.673 deg,	R =    43.637 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.198  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2107.324  mm,	Y =   101.026  mm,	Z =  -244.264  mm,
	W =    48.173 deg,	P =    89.575 deg,	R =     5.115 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2132.454  mm,	Y =    76.358  mm,	Z =  -240.715  mm,
	W =    22.867 deg,	P =    88.811 deg,	R =   -20.396 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.222  mm,	Y =    81.238  mm,	Z =   -66.236  mm,
	W =    22.869 deg,	P =    88.811 deg,	R =   -20.394 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  2101.101  mm,	Y =    86.630  mm,	Z =   456.350  mm,
	W =    44.999 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1920.368  mm,	Y =  -196.783  mm,	Z =   -48.398  mm,
	W =   101.767 deg,	P =    89.536 deg,	R =   -33.666 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1916.968  mm,	Y =  -190.917  mm,	Z =  -438.723  mm,
	W =   -92.988 deg,	P =    88.308 deg,	R =   132.449 deg
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
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1916.029  mm,	Y =  -189.901  mm,	Z =  -485.420  mm,
	W =   -92.971 deg,	P =    88.308 deg,	R =   132.465 deg
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1915.957  mm,	Y =  -192.760  mm,	Z =  -437.124  mm,
	W =   -92.594 deg,	P =    88.308 deg,	R =   132.561 deg
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
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1910.708  mm,	Y =  -188.043  mm,	Z =  -171.052  mm,
	W =   -92.593 deg,	P =    88.308 deg,	R =   132.563 deg
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
	X =  1059.614  mm,	Y =   470.574  mm,	Z =  1084.240  mm,
	W =    -9.311 deg,	P =    56.980 deg,	R =    -8.764 deg
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
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1051.147  mm,	Y =  1345.707  mm,	Z =  1234.776  mm,
	W =   -49.346 deg,	P =    39.227 deg,	R =    19.277 deg
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
