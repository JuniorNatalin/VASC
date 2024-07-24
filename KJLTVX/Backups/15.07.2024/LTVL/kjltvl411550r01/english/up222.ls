/PROG  UP222
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1540";
PROG_SIZE	= 10534;
CREATE		= DATE 23-07-09  TIME 16:00:48;
MODIFIED	= DATE 23-07-09  TIME 16:00:50;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 38;
MEMORY_SIZE	= 20118;
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
     33:  WAIT (!DI[61] AND DI[62] AND !DI[63] AND DI[64] AND DI[76])    ;
     34:  DO[76]=OFF ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marca Usuario ST1540 C/Pieza 1 ;
     38:  !M[14] = (!DI[63] AND DI[64]) ;
     39:  !Marca Usuario ST1540 C/Pieza 2 ;
     40:  !M[16] = (!DI[61] AND DI[62]) ;
     41:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  10:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  11:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  12:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  13:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  14:J P[10] 100% CNT30 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  15:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (DI[76] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  16:  !En Posicion ST1540-1 ;
  17:  !Tomar Pieza 1 en ST1540 ;
  18:  !Fin de Trabajo 2 ;
  19:L P[12] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[4])    ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[36])    ;
      8:  DO[75]=ON ;
      9:  CALL MAKRO002    ;
     10:  WAIT (DI[76])    ;
     11:  DO[75]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=(ON) ;
     14:  TC_ONLINE (DI[76] AND M[4] AND M[14] AND M[30] AND M[32] AND M[33] AND M[36] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  20:L P[13] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[61] AND !DI[62])    ;
      4:  DO[75]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=(ON) ;
      7:  !Marca Usuario ST1540 S/Pieza 1 ;
      8:  !M[17] = (DI[61] AND !DI[62]) ;
      9:  TC_ONLINE (DI[76] AND M[4] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  21:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[4] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  22:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[4] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  23:  UTOOL_NUM=1 ;
  24:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[4] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  25:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  26:  !En Posicion ST1540-2 ;
  27:  !Tomar Pieza 1 en ST1540 ;
  28:  !Fin de Trabajo 3 ;
  29:L P[18] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[4]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[38])    ;
      7:  DO[74]=ON ;
      8:  CALL MAKRO003    ;
      9:  WAIT (DI[76])    ;
     10:  DO[74]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=(ON) ;
     13:  TC_ONLINE (DI[76] AND M[1] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  30:  PAYLOAD[3] ;
  31:L P[19] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 2 ;
      2:  !M[15] = (DI[61] AND !DI[62]) ;
      3:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  32:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  33:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  34:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  35:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  36:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
  37:  !Encender Perfil Lib 76 vs ST1540 ;
  38:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[76]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[39] AND M[41]) ;
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
	X =  -543.067  mm,	Y =   704.446  mm,	Z =  1615.666  mm,
	W =   134.588 deg,	P =    26.632 deg,	R =  -170.957 deg
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
	X =   208.111  mm,	Y =   713.115  mm,	Z =   998.563  mm,
	W =   168.240 deg,	P =     1.243 deg,	R =   163.437 deg
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
	X =   529.224  mm,	Y =   321.977  mm,	Z =   847.224  mm,
	W =   156.938 deg,	P =    24.202 deg,	R =   150.234 deg
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
	X =  1061.941  mm,	Y =  -715.511  mm,	Z =   315.352  mm,
	W =   123.262 deg,	P =    56.760 deg,	R =    93.607 deg
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
	X =   490.849  mm,	Y = -1738.497  mm,	Z =    26.705  mm,
	W =  -110.558 deg,	P =    56.816 deg,	R =  -134.278 deg
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
	X =   392.984  mm,	Y = -1838.859  mm,	Z =  -187.641  mm,
	W =  -110.559 deg,	P =    56.816 deg,	R =  -134.278 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   376.334  mm,	Y = -1863.838  mm,	Z =  -174.243  mm,
	W =   -99.774 deg,	P =    56.816 deg,	R =  -134.280 deg
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
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   361.558  mm,	Y = -1868.079  mm,	Z =  -211.686  mm,
	W =   -86.968 deg,	P =    62.119 deg,	R =  -132.734 deg
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
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   346.504  mm,	Y = -1886.370  mm,	Z =  -311.152  mm,
	W =   -92.445 deg,	P =    62.148 deg,	R =  -133.993 deg
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
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   348.660  mm,	Y = -1882.693  mm,	Z =  -327.124  mm,
	W =   -88.479 deg,	P =    62.149 deg,	R =  -133.125 deg
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
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   344.990  mm,	Y = -1889.465  mm,	Z =  -357.235  mm,
	W =   -86.967 deg,	P =    62.119 deg,	R =  -132.732 deg
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
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   379.752  mm,	Y = -1851.839  mm,	Z =  -260.407  mm,
	W =   -86.969 deg,	P =    62.119 deg,	R =  -132.735 deg
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
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   457.223  mm,	Y = -1777.645  mm,	Z =   -82.469  mm,
	W =   -95.252 deg,	P =    60.530 deg,	R =  -133.799 deg
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
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   437.734  mm,	Y = -1506.520  mm,	Z =   -78.448  mm,
	W =  -154.639 deg,	P =    49.814 deg,	R =   129.987 deg
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
P[16]{
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
P[17]{
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
P[18]{
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
P[19]{
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
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -25.813  mm,	Y = -1899.654  mm,	Z =  1288.484  mm,
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
P[21]{
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
P[22]{
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
P[23]{
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
P[24]{
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
P[25]{
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
