/PROG  UP024
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1350";
PROG_SIZE	= 7158;
CREATE		= DATE 19-04-08  TIME 19:30:06;
MODIFIED	= DATE 23-08-17  TIME 11:03:56;
FILE_NAME	= UP024;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 12590;
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
   1:  !Apagar Perfil Lib. 74 vs ST1350 ;
   2:  !Encender Anticol. 3 vs 1350R01 ;
   3:  !Encender Anticol. 15 vs 1370R01 ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=2 ;
   6:  PAYLOAD[2] ;
   7:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[55]=ON ;
     24:  DO[56]=ON ;
     25:  !Apagar Pos. Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  WAIT (DI[73] AND DI[74] AND M[14] AND M[26])    ;
     30:  DO[73]=OFF ;
     31:  DO[74]=OFF ;
     32:  !Encender Anticolisiones ;
     33:  DO[83]=ON ;
     34:  DO[95]=ON ;
     35:  CALL MAKRO020    ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=ON ;
     38:  TC_ONLINE (DI[43] AND DI[55] AND DI[73] AND DI[74] AND M[1] AND M[14] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[55] AND DI[73] AND DI[74] AND M[1] AND M[14] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[55] AND DI[73] AND DI[74] AND M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:   ;
  11:  !En Posicion ST1350 ;
  12:  !Dejar Pieza 1 & 2 en ST1350 ;
  13:  !Fin de Trabajo 5 ;
  14:L P[4] 1000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     11:  F[5]=(ON) ;
     12:  CALL MAKRO342    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[35] AND M[39])    ;
     15:  F[2]=(ON) ;
     16:  F[4]=(ON) ;
     17:  CALL MAKRO343    ;
     18:  WAIT (M[38] AND M[34])    ;
     19:  WAIT (DI[23])    ;
     20:  DO[23]=ON ;
     21:  TC_ONLINE (DI[43] AND DI[55] AND DI[72] AND DI[74] AND M[12] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:   ;
  16:L P[5] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[70]=(ON) ;
      4:  WAIT (DI[70])    ;
      5:  DO[70]=(OFF) ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=(ON) ;
      8:  TC_ONLINE (DI[43] AND DI[55] AND DI[70] AND DI[74] AND M[12] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[55] AND DI[70] AND DI[74] AND M[3] AND M[12] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  UTOOL_NUM=1 ;
  19:  UFRAME_NUM=0 ;
  20:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[55] AND DI[70] AND DI[74] AND M[3] AND M[12] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[55] AND DI[70] AND DI[74] AND M[3] AND M[12] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[55] AND DI[70] AND DI[74] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:  !En Posicion ST1350 ;
  24:  !Dejar Pieza 3 en ST1350 ;
  25:  !Fin de Trabajo 6 ;
  26:L P[10] 1000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      4:  DO[68]=ON ;
      5:  DO[69]=ON ;
      6:  CALL MAKRO006    ;
      7:  WAIT (DI[69])    ;
      8:  //DO[68]=OFF ;
      9:  DO[69]=OFF ;
     10:  F[1]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[31])    ;
     14:  F[6]=(ON) ;
     15:  F[7]=(ON) ;
     16:  CALL MAKRO343    ;
     17:  WAIT (M[42] AND M[44])    ;
     18:  WAIT (DI[23])    ;
     19:  DO[23]=ON ;
     20:  TC_ONLINE (DI[43] AND DI[55] AND DI[69] AND DI[74] AND M[15] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:  PAYLOAD[1] ;
  28:L P[11] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[2])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=(ON) ;
      6:  TC_ONLINE (DI[43] AND DI[55] AND DI[69] AND DI[74] AND M[2] AND M[15] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[55] AND DI[69] AND DI[74] AND M[2] AND M[15] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[43]=ON ;
      3:  DO[55]=ON ;
      4:  DO[73]=ON ;
      5:  TC_ONLINE (DI[74] AND M[2] AND M[15] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:  !Encender Perfil Lib 74 vs ST1350 ;
  32:  !Apagar Anticol. 3 vs 1350R01 ;
  33:  !Apagar Anticol. 15 vs 1370R01 ;
  34:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[74]=ON ;
      4:  TIMER[6]=STOP ;
      5:  F[2]=(ON) ;
      6:  F[4]=(ON) ;
      7:  F[6]=(ON) ;
      8:  F[7]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  CALL MAKRO340    ;
     11:  WAIT (M[10])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	X =   921.993  mm,	Y =   572.013  mm,	Z =  1031.129  mm,
	W =   122.768 deg,	P =    42.735 deg,	R =    19.899 deg
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
	X = -2106.763  mm,	Y = -1312.728  mm,	Z =   262.659  mm,
	W =    89.504 deg,	P =     -.629 deg,	R =  -111.911 deg
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
	X = -2106.764  mm,	Y = -1312.728  mm,	Z =    46.899  mm,
	W =    89.504 deg,	P =     -.629 deg,	R =  -111.911 deg
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
	X = -2103.313  mm,	Y = -1317.847  mm,	Z =   -36.900  mm,
	W =    88.931 deg,	P =     -.029 deg,	R =  -112.031 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    97.700  mm
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
	X = -2105.641  mm,	Y = -1314.442  mm,	Z =    34.335  mm,
	W =    89.741 deg,	P =     -.620 deg,	R =  -111.960 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.046  mm
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
	X = -2122.858  mm,	Y = -1313.596  mm,	Z =   194.027  mm,
	W =    90.000 deg,	P =     0.000 deg,	R =  -109.999 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1915.149  mm,	Y = -1810.261  mm,	Z =   457.014  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =  -110.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1918.280  mm,	Y = -1806.756  mm,	Z =   269.306  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =  -110.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1913.452  mm,	Y = -1799.923  mm,	Z =   124.726  mm,
	W =   179.854 deg,	P =     -.066 deg,	R =  -111.402 deg
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
	X = -1913.102  mm,	Y = -1808.802  mm,	Z =   -23.076  mm,
	W =   179.820 deg,	P =     -.077 deg,	R =  -111.439 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    91.700  mm
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
	X = -1872.173  mm,	Y = -1703.002  mm,	Z =   -25.167  mm,
	W =   179.854 deg,	P =     -.066 deg,	R =  -111.402 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1794.535  mm,	Y = -1504.912  mm,	Z =    20.907  mm,
	W =   179.854 deg,	P =     -.066 deg,	R =  -111.402 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -547.118  mm,	Y = -2220.906  mm,	Z =   368.219  mm,
	W =   172.965 deg,	P =      .632 deg,	R =   -61.557 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =  1651.706  mm,	Y =   187.219  mm,	Z =  1273.147  mm,
	W =   122.768 deg,	P =    42.735 deg,	R =    19.899 deg
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
