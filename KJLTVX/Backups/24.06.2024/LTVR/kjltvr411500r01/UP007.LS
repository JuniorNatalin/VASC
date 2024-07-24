/PROG  UP007
/ATTR
OWNER		= AUROM;
COMMENT		= "Dejar en ST1520";
PROG_SIZE	= 9624;
CREATE		= DATE 96-03-29  TIME 12:44:40;
MODIFIED	= DATE 24-05-19  TIME 09:42:20;
FILE_NAME	= UP007;
VERSION		= 0;
LINE_COUNT	= 38;
MEMORY_SIZE	= 16860;
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
   4:  !Apagar Perfil Lib. 76 vs ST1520 ;
   5:  !Apagar Perfil Lib. 75 vs ST1520 ;
   6:  !Encender Anticol. 1 vs 1520R01 ;
   7:  !Encender Anticol. 3 vs 1550R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=ON ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=ON ;
     13:  DO[74]=OFF ;
     14:  DO[73]=OFF ;
     15:  DO[72]=OFF ;
     16:  DO[71]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[55]=ON ;
     23:  DO[56]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  WAIT (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[76] AND DI[75])    ;
     29:  DO[76]=OFF ;
     30:  DO[75]=OFF ;
     31:  !Encender Anticolisiones ;
     32:  DO[81]=ON ;
     33:  DO[83]=ON ;
     34:  CALL MAKRO020    ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marcas de Usuario: ;
     38:  !Marca 4 Estado de Garra ;
     39:  !Valulas 1,2&4 en V, 3,5&6 en R ;
     40:  !M[13] = M[32] AND M[34] ;
     41:  !AND M[35] AND M[38] AND M[39] AN ;
     42:  !Marca 9 ST1520 Vacia ;
     43:  !M[16] = (DI[57] AND !DI[58] AND ;
     44:  !DI[59] AND !DI[60] ;
     45:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[13] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[13] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[13] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[3]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[36])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  !Marca 5 Estado de Garra ;
      9:  !Valulas 1-4 en V, 5&6 en R ;
     10:  !M[14] = M[32] AND M[34] ;
     11:  !AND M[36] AND M[38] AND M[39] AN ;
     12:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion 1 ST1520 ;
  13:  !Dejar Pieza 1 en ST1520 ;
  14:  !Fin de Trabajo 4 ;
  15:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  DO[73]=ON ;
      5:  DO[74]=ON ;
      6:  CALL MAKRO004    ;
      7:  WAIT (DI[74])    ;
      8:  DO[73]=OFF ;
      9:  DO[74]=OFF ;
     10:  F[4]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[37])    ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  !Marca 6 Estado de Garra ;
     17:  !Valulas 1,2,3 en V, 4&5&6 en R ;
     18:  !M[15]=M[32] AND M[34] ;
     19:  !AND M[36] AND M[37] AND M[39] AN ;
     20:  !Marca 9 ST1520 C/Pieza 1 ;
     21:  !M[18] = (DI[57] AND !DI[58] AND ;
     22:  ! !DI[59] AND DI[60] ;
     23:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[7] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:  UTOOL_NUM=1 ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:  !En Posicion 2 ST1520 ;
  26:  !Dejar Pieza 2 en ST1520 ;
  27:  !Fin de Trabajo 5 ;
  28:L P[14] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      4:  DO[71]=ON ;
      5:  DO[72]=ON ;
      6:  CALL MAKRO005    ;
      7:  WAIT (DI[72])    ;
      8:  DO[72]=OFF ;
      9:  DO[71]=OFF ;
     10:  F[1]=(ON) ;
     11:  F[2]=(ON) ;
     12:  CALL MAKRO342    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[31] AND M[33])    ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  !Marca 7 Estado de Garra ;
     18:  !Valula 3 en V, 1,2,4,5&6 en R ;
     19:  !M[11] = M[31] AND M[33] ;
     20:  !AND M[36] AND M[37] AND M[39] AN ;
     21:  !Marca 10 ST1520 Llena ;
     22:  !M[18]=(!DI[57] AND DI[58] ;
     23:  ! AND !DI[59] AND DI[60]) ;
     24:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[76] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:  PAYLOAD[1] ;
  30:L P[15] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[76] AND M[2] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[76] AND M[2] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:  !Encender Perfil Lib 75 vs ST1520 ;
  33:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[75]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[43] AND DI[76] AND M[2] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[76] AND M[2] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  35:  !Encender Perfil Lib 76 vs ST1520 ;
  36:  !Apagar Anticol. 1 vs 1520R01 ;
  37:  !Apagar Anticol. 3 vs 1550R01 ;
  38:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[35])    ;
      8:  DO[76]=ON ;
      9:  DO[41]=ON ;
     10:  DO[43]=ON ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  !Marca 1 Estado de Garra ;
     14:  !Valulas 1-5&6 en R ;
     15:  !M[10] = M[31] AND M[33] ;
     16:  !AND M[35] AND M[37] AND M[39] AN ;
     17:  TC_ONLINE (M[2] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1915.116  mm,	Y =   507.879  mm,	Z =  1815.450  mm,
	W =    99.570 deg,	P =   -53.195 deg,	R =    -5.907 deg
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  2226.582  mm,	Y =   479.625  mm,	Z =   519.187  mm,
	W =    90.001 deg,	P =    41.040 deg,	R =  -114.998 deg
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  3131.735  mm,	Y =   573.400  mm,	Z =   138.314  mm,
	W =    89.655 deg,	P =    39.786 deg,	R =  -103.590 deg
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  3087.720  mm,	Y =   577.500  mm,	Z =  -312.497  mm,
	W =    89.658 deg,	P =    39.787 deg,	R =  -103.588 deg
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  3077.043  mm,	Y =   554.502  mm,	Z =  -330.925  mm,
	W =    89.698 deg,	P =    39.740 deg,	R =  -102.488 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  3081.748  mm,	Y =   552.763  mm,	Z =  -284.052  mm,
	W =    89.658 deg,	P =    39.787 deg,	R =  -103.588 deg
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  3131.735  mm,	Y =   573.400  mm,	Z =   138.314  mm,
	W =    89.655 deg,	P =    39.786 deg,	R =  -103.590 deg
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =  3159.846  mm,	Y =   710.075  mm,	Z =   226.184  mm,
	W =    90.939 deg,	P =    40.362 deg,	R =  -102.777 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2674.206  mm,	Y =   -34.416  mm,	Z =   985.767  mm,
	W =  -152.396 deg,	P =    34.591 deg,	R =   -38.738 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2674.205  mm,	Y =   -34.413  mm,	Z =   985.767  mm,
	W =   165.855 deg,	P =    28.009 deg,	R =   -33.153 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2845.375  mm,	Y =  -416.457  mm,	Z =   359.469  mm,
	W =   135.787 deg,	P =    79.056 deg,	R =   -55.064 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2806.568  mm,	Y =  -274.409  mm,	Z =   -33.291  mm,
	W =   -31.116 deg,	P =    89.077 deg,	R =   136.106 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.900  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2810.348  mm,	Y =  -277.501  mm,	Z =  -406.923  mm,
	W =   -41.179 deg,	P =    89.602 deg,	R =   125.755 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2806.242  mm,	Y =  -276.531  mm,	Z =  -494.305  mm,
	W =   -35.881 deg,	P =    89.303 deg,	R =   131.009 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2803.894  mm,	Y =  -276.826  mm,	Z =  -441.468  mm,
	W =    -7.240 deg,	P =    88.789 deg,	R =   160.022 deg
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
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2810.462  mm,	Y =  -271.948  mm,	Z =  -356.387  mm,
	W =   -33.411 deg,	P =    88.977 deg,	R =   133.922 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2810.462  mm,	Y =  -271.948  mm,	Z =    10.402  mm,
	W =   -33.413 deg,	P =    88.977 deg,	R =   133.920 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2462.261  mm,	Y =  -347.580  mm,	Z =  2055.563  mm,
	W =  -159.406 deg,	P =     3.874 deg,	R =   -12.648 deg
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
	X =  1105.511  mm,	Y =   969.352  mm,	Z =  2451.034  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
