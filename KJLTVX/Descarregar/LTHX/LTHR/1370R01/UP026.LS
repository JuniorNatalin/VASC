/PROG  UP026
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Dejar en ST1380";
PROG_SIZE	= 8228;
CREATE		= DATE 23-07-14  TIME 01:15:28;
MODIFIED	= DATE 23-07-14  TIME 01:15:30;
FILE_NAME	= UP005;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 13956;
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
   4:  !Apagar Perfil Lib. 74 vs ST1380 ;
   5:  !Apagar Perfil Lib. 73 vs ST1380 ;
   6:  !Encender Anticol. 1 vs 1380R01 ;
   7:  !Encender Anticol. 3 vs 1390R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[13]=RESET ;
      4:  TIMER[13]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[76]=OFF ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  DO[68]=OFF ;
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
     30:  WAIT (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[74] AND DI[73])    ;
     31:  DO[74]=OFF ;
     32:  DO[73]=OFF ;
     33:  DO[81]=ON ;
     34:  DO[83]=ON ;
     35:  CALL MAKRO020    ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=(ON) ;
     38:  !Marca Usuario Suma Antocol. ;
     39:  !M[22] = (DI[41] AND DI[43]) ;
     40:  !Marca Usuario ST1380 Vacia ;
     41:  !M[19] = (DI[59] AND !DI[60] ;
     42:  !     AND DI[57] AND !DI[58]) ;
     43:  !Marca de Usuario Estado de Garra ;
     44:  !M[23] = (M[36] AND M[38]) ;
     45:  !Marca de Usuario Estado de Garra ;
     46:  !M[25] = (M[31] AND M[34]) ;
     47:  TC_ONLINE (DI[41] AND DI[43] AND DI[73] AND DI[74] AND M[1] AND M[14] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[73] AND DI[74] AND M[1] AND M[14] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[73] AND DI[74] AND M[1] AND M[14] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[5]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[40])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  !Marca Usuario ST1380 S/Pieza 1&2 ;
      9:  !M[17] = DI[57] AND !DI[58] ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[73] AND DI[74] AND M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:   ;
  13:  !En Posicion 1 ST1380 ;
  14:  !Dejar Piezas 1&2 en ST1380 ;
  15:  !Fin de Trabajo 5 ;
  16:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  DO[71]=ON ;
      5:  DO[72]=ON ;
      6:  CALL MAKRO005    ;
      7:  WAIT (DI[72])    ;
      8:  DO[72]=OFF ;
      9:  DO[71]=OFF ;
     10:  F[3]=(ON) ;
     11:  F[4]=(ON) ;
     12:  CALL MAKRO342    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[35] AND M[37])    ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  !Marca Usuario ST1380 C/Pieza 1&2 ;
     18:  !M[20] = (!DI[59] AND DI[60] ;
     19:  !     AND DI[57] AND !DI[58]) ;
     20:  !Marca de Usuario Estado de Garra ;
     21:  !M[24] = (M[35] AND M[37]) ;
     22:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[74] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:   ;
  18:  PAYLOAD[2] ;
  19:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[74] AND M[3] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[74] AND M[3] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[74] AND M[3] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:  UTOOL_NUM=3 ;
  23:  UTOOL_NUM=1 ;
  24:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[74] AND M[3] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[70]=ON ;
      4:  WAIT (DI[70])    ;
      5:  DO[70]=OFF ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  !Marca Usuario ST1380 S/Pieza 3 ;
      9:  !M[14] = !DI[59] AND DI[60] ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[70] AND DI[74] AND M[3] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:   ;
  27:  !En Posicion 2 ST1380 ;
  28:  !Dejar Pieza 3 en ST1380 ;
  29:  !Fin de Trabajo 6 ;
  30:L P[11] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      4:  DO[68]=ON ;
      5:  DO[69]=ON ;
      6:  CALL MAKRO006    ;
      7:  WAIT (DI[69])    ;
      8:  DO[68]=OFF ;
      9:  DO[69]=OFF ;
     10:  F[2]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[33])    ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  !Marca Usuario ST1380 Llena ;
     17:  !M[18] = (!DI[59] AND DI[60] ;
     18:  !     AND !DI[57] AND DI[58]) ;
     19:  TC_ONLINE (DI[41] AND DI[43] AND DI[69] AND DI[74] AND M[16] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:   ;
  32:  PAYLOAD[1] ;
  33:L P[12] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[69] AND DI[74] AND M[2] AND M[16] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:  !Encender Perfil Lib 73 vs ST1380 ;
  35:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[73]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND M[2] AND M[16] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND M[2] AND M[16] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  37:  !Encender Perfil Lib 74 vs ST1380 ;
  38:  !Apagar Anticol. 1 vs 1380R01 ;
  39:  !Apagar Anticol. 3 vs 1390R01 ;
  40:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[13]=STOP ;
      4:  DO[74]=ON ;
      5:  DO[41]=ON ;
      6:  DO[43]=ON ;
      7:  F[5]=(ON) ;
      8:  CALL MAKRO342    ;
      9:  CALL MAKRO340    ;
     10:  WAIT (M[39])    ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (M[2] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	X =  -510.500  mm,	Y = -1560.695  mm,	Z =  1807.628  mm,
	W =    87.550 deg,	P =   -60.000 deg,	R =    90.000 deg
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
	X =    10.435  mm,	Y =   969.230  mm,	Z =  1197.355  mm,
	W =     4.011 deg,	P =   -12.345 deg,	R =   -67.734 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1105.439  mm,	Y =  2408.974  mm,	Z =   201.488  mm,
	W =    -1.989 deg,	P =    -4.058 deg,	R =   -58.294 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1129.985  mm,	Y =  2294.430  mm,	Z =  -305.134  mm,
	W =    -3.254 deg,	P =    -1.307 deg,	R =   -64.915 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1110.688  mm,	Y =  2292.204  mm,	Z =  -306.239  mm,
	W =    -2.358 deg,	P =     -.990 deg,	R =   -64.989 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    64.300  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1107.623  mm,	Y =  2298.967  mm,	Z =  -221.532  mm,
	W =    -2.912 deg,	P =    -1.315 deg,	R =   -64.911 deg
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
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1118.667  mm,	Y =  2341.899  mm,	Z =   -61.257  mm,
	W =    -2.912 deg,	P =    -1.315 deg,	R =   -64.911 deg
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
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	X = -1208.106  mm,	Y =  2420.050  mm,	Z =   236.439  mm,
	W =    -2.455 deg,	P =     0.000 deg,	R =   -65.003 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X = -1955.733  mm,	Y =  2221.577  mm,	Z =  -287.356  mm,
	W =   177.192 deg,	P =    88.375 deg,	R =   -68.105 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X = -1958.259  mm,	Y =  2224.075  mm,	Z =  -464.261  mm,
	W =   168.855 deg,	P =    88.340 deg,	R =   -76.530 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X = -1957.404  mm,	Y =  2221.426  mm,	Z =  -561.463  mm,
	W =   168.785 deg,	P =    88.340 deg,	R =   -76.510 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X = -1958.259  mm,	Y =  2224.075  mm,	Z =  -464.261  mm,
	W =   168.855 deg,	P =    88.340 deg,	R =   -76.530 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X = -1955.733  mm,	Y =  2221.577  mm,	Z =   -30.656  mm,
	W =   177.191 deg,	P =    88.375 deg,	R =   -68.106 deg
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
	X =  -163.005  mm,	Y =  1377.994  mm,	Z =  2491.346  mm,
	W =   152.446 deg,	P =   -76.053 deg,	R =   140.545 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
