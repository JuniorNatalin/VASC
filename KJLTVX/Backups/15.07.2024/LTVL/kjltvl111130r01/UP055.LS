/PROG  UP055
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depositar ST1150";
PROG_SIZE	= 11530;
CREATE		= DATE 21-05-15  TIME 08:25:46;
MODIFIED	= DATE 21-05-15  TIME 08:25:48;
FILE_NAME	= UP005;
VERSION		= 0;
LINE_COUNT	= 39;
MEMORY_SIZE	= 20238;
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
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[76]=OFF ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[71]=OFF ;
     15:  DO[70]=OFF ;
     16:  DO[69]=OFF ;
     17:  DO[68]=OFF ;
     18:  DO[67]=OFF ;
     19:  !Lib. de Anticolisiones ;
     20:  DO[41]=ON ;
     21:  DO[42]=ON ;
     22:  DO[43]=ON ;
     23:  DO[44]=ON ;
     24:  DO[45]=ON ;
     25:  DO[46]=ON ;
     26:  !Apagar Pos. Base ;
     27:  DO[15]=OFF ;
     28:  !Robot en Trayectoria ;
     29:  DO[16]=ON ;
     30:  WAIT (DI[74] AND DI[73] AND M[10])    ;
     31:  DO[74]=OFF ;
     32:  DO[73]=OFF ;
     33:  !Encender Anticolisiones ;
     34:  DO[83]=ON ;
     35:  DO[85]=ON ;
     36:  CALL MAKRO020    ;
     37:  WAIT (DI[23])    ;
     38:  DO[23]=ON ;
     39:  !Marcas de Usuario ;
     40:  !Marca 1 ST1150 Vacia ;
     41:  !M[10]=(!DI[60] AND DI[59] AND ;
     42:  !!DI[58] AND DI[57] ;
     43:  !Marca 6 Estado de Garra ;
     44:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     45:  !M[22]=(M[32] AND M[36] AND M[37] ;
     46:  !M[40] AND M[41] AND M[43] AND ;
     47:  !M[63] ;
     48:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[6]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[42])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  !Marca 7 Estado de Garra ;
      9:  !Valvula 1,2,3,5&6 en V, 4&7 en R ;
     10:  !M[23]=(M[32] AND M[36] AND M[37] ;
     11:  !M[40] AND M[42] AND M[43] AND ;
     12:  ! M[63] ;
     13:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:  !En Posicion ST1150 ;
  12:  !Depositar Pieza 1 en ST1150 ;
  13:  !Fin de Trabajo 4 ;
  14:L P[8] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[71]=ON ;
      9:  CALL MAKRO004    ;
     10:  WAIT (DI[72])    ;
     11:  DO[71]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  !Marca 2 ST1150 C/Pieza 1 ;
     15:  !M[11]=(DI[60] AND !DI[59] ;
     16:  !AND !DI[58] AND DI[57]) ;
     17:  !Marca 8 Estado de Garra ;
     18:  !Valvula 2,3,5&6 en V, 1,4&7 en R ;
     19:  !M[24]=(M[31] AND M[36] AND M[37] ;
     20:  !M[40] AND M[42] AND M[43] AND ;
     21:  ! M[63] ;
     22:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[11] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:  PAYLOAD[1] ;
  16:L P[9] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[5])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[5] AND M[11] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[5] AND M[11] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Piloteo 70. ;
  19:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[70]=ON ;
      4:  WAIT (DI[70])    ;
      5:  DO[70]=OFF ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[11] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[11] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:L P[14] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:   ;
  24:  !Depositar Pieza 2 ST1150 ;
  25:  !Fin de Trabajo 5 ;
  26:L P[15] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      4:  F[7]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[44])    ;
      7:  DO[68]=ON ;
      8:  DO[69]=ON ;
      9:  CALL MAKRO005    ;
     10:  WAIT (DI[69])    ;
     11:  DO[68]=OFF ;
     12:  DO[69]=OFF ;
     13:  F[3]=(ON) ;
     14:  F[5]=(ON) ;
     15:  CALL MAKRO342    ;
     16:  CALL MAKRO340    ;
     17:  WAIT (M[35] AND M[39])    ;
     18:  F[4]=(ON) ;
     19:  CALL MAKRO343    ;
     20:  WAIT (M[38])    ;
     21:  DO[67]=ON ;
     22:  WAIT (DI[67])    ;
     23:  IF (!DI[15]),F[17]=(ON) ;
     24:  IF (!DI[15]),CALL MAKRO342 ;
     25:  CALL MAKRO340    ;
     26:  DO[67]=OFF ;
     27:  WAIT (DI[23])    ;
     28:  DO[23]=ON ;
     29:  !Marca 3 ST1150 Llena ;
     30:  !M[12]=(!DI[57] AND DI[58] AND ;
     31:  !!DI[59] AND DI[60] ;
     32:  !Marca 9 Estado de Garra ;
     33:  !Valvula 4,6&7 en V, 1,2,3&5 en R ;
     34:  !M[25]=(M[31] AND M[35] AND M[38] ;
     35:  !M[39] AND M[42] AND M[44] ;
     36:  TC_ONLINE (DI[43] AND DI[45] AND DI[67] AND DI[74] AND M[12] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:   ;
  28:L P[16] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  F[7]=(ON) ;
      4:  CALL MAKRO342    ;
      5:  CALL MAKRO340    ;
      6:  WAIT (M[43])    ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=(ON) ;
      9:  !Marca 10 Estado de Garra ;
     10:  !Valvula 4&6 en V, 1,2,3,5&7 en R ;
     11:  !M[26]=(M[31] AND M[35] AND M[38] ;
     12:  !M[39] AND M[42] AND M[43] ;
     13:  TC_ONLINE (DI[43] AND DI[45] AND DI[67] AND DI[74] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[67] AND DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:  !Encender Perfil Lib 73 vs ST1150 ;
  31:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[73]=ON ;
      3:  TC_ONLINE (DI[43] AND DI[45] AND DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:  !Lib de Anticolision 3 vs 1150R01 ;
  33:  !Lib de Anticolision 5 vs 1180R01 ;
  34:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[43]=ON ;
      3:  DO[45]=ON ;
      4:  TC_ONLINE (DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  38:  !Encender Perfil Lib 74 vs ST1150 ;
  39:J P[23] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  DO[74]=ON ;
      5:  F[4]=(ON) ;
      6:  F[6]=(ON) ;
      7:  CALL MAKRO342    ;
      8:  CALL MAKRO340    ;
      9:  WAIT (M[37] AND M[41])    ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  !Marca 4 Estado de Garra ;
     13:  !Valvulas 1-7 en R ;
     14:  !M[20]=(M[31] AND M[35] AND M[37] ;
     15:  !M[39] AND M[41] AND M[43] ;
     16:  TC_ONLINE (M[2] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1502.063  mm,	Y =   490.837  mm,	Z =  1119.244  mm,
	W =    -8.695 deg,	P =    50.167 deg,	R =     1.303 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1154.969  mm,	Y =  -223.294  mm,	Z =  2248.184  mm,
	W =    90.000 deg,	P =    -2.573 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   431.905  mm,	Y =  1146.691  mm,	Z =  2248.187  mm,
	W =    90.000 deg,	P =    -2.573 deg,	R =    75.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1172.229  mm,	Y =   709.720  mm,	Z =  2163.178  mm,
	W =    90.000 deg,	P =    -2.573 deg,	R =   160.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2700.231  mm,	Y =  1145.649  mm,	Z =   414.668  mm,
	W =    90.362 deg,	P =    75.427 deg,	R =   160.360 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2714.913  mm,	Y =  1176.686  mm,	Z =  -131.066  mm,
	W =    87.808 deg,	P =    87.087 deg,	R =   157.774 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2719.811  mm,	Y =  1161.595  mm,	Z =  -270.464  mm,
	W =    87.721 deg,	P =    86.971 deg,	R =   157.798 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2722.454  mm,	Y =  1160.860  mm,	Z =  -311.084  mm,
	W =    87.771 deg,	P =    86.971 deg,	R =   157.829 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2721.151  mm,	Y =  1162.007  mm,	Z =  -271.038  mm,
	W =    88.050 deg,	P =    86.971 deg,	R =   157.859 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2687.622  mm,	Y =  1148.181  mm,	Z =  -131.921  mm,
	W =    83.016 deg,	P =    88.753 deg,	R =   152.982 deg
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
	X = -2636.505  mm,	Y =  1135.373  mm,	Z =   630.599  mm,
	W =    91.612 deg,	P =    66.325 deg,	R =   161.091 deg
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
	X = -2077.646  mm,	Y =  1689.690  mm,	Z =   661.430  mm,
	W =    74.632 deg,	P =    68.346 deg,	R =   144.765 deg
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
	X = -2136.498  mm,	Y =  1733.206  mm,	Z =  -155.128  mm,
	W =    87.089 deg,	P =    87.501 deg,	R =   157.074 deg
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
	X = -2136.436  mm,	Y =  1737.483  mm,	Z =  -449.038  mm,
	W =    87.118 deg,	P =    87.501 deg,	R =   157.103 deg
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
	X = -2125.928  mm,	Y =  1797.774  mm,	Z =  -440.466  mm,
	W =    88.800 deg,	P =    87.787 deg,	R =   158.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    96.400  mm
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
	X = -2123.795  mm,	Y =  1800.673  mm,	Z =  -413.307  mm,
	W =    87.092 deg,	P =    87.504 deg,	R =   157.075 deg
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
	X = -2124.949  mm,	Y =  1808.752  mm,	Z =  -184.877  mm,
	W =    87.446 deg,	P =    87.052 deg,	R =   157.444 deg
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
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2127.354  mm,	Y =  1812.723  mm,	Z =   560.152  mm,
	W =    72.861 deg,	P =    70.477 deg,	R =   142.956 deg
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
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1172.229  mm,	Y =   709.720  mm,	Z =  2163.178  mm,
	W =    90.000 deg,	P =    -2.573 deg,	R =   160.000 deg
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
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1172.229  mm,	Y =   709.720  mm,	Z =  2163.178  mm,
	W =    90.000 deg,	P =    -2.573 deg,	R =   160.000 deg
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
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   431.905  mm,	Y =  1146.691  mm,	Z =  2248.187  mm,
	W =    90.000 deg,	P =    -2.573 deg,	R =    75.000 deg
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
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1154.969  mm,	Y =  -223.294  mm,	Z =  2248.184  mm,
	W =    90.000 deg,	P =    -2.573 deg,	R =     0.000 deg
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
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1502.063  mm,	Y =   490.837  mm,	Z =  1119.244  mm,
	W =    -8.695 deg,	P =    50.167 deg,	R =     1.303 deg
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
