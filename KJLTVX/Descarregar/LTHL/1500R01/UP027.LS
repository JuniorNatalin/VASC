/PROG  UP027
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1520";
PROG_SIZE	= 11350;
CREATE		= DATE 17-07-04  TIME 13:12:38;
MODIFIED	= DATE 23-07-11  TIME 02:47:00;
FILE_NAME	= UP027;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 20438;
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
     28:  !ST1520 Vacia ;
     29:  WAIT (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[76] AND DI[75])    ;
     30:  DO[76]=OFF ;
     31:  DO[75]=OFF ;
     32:  !Encender Anticolisiones ;
     33:  DO[81]=ON ;
     34:  DO[83]=ON ;
     35:  CALL MAKRO020    ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=ON ;
     38:  !Marcas de Usuario: ;
     39:  !Marca 4 Estado de Garra ;
     40:  !Valulas 1,2&4 en V, 3&5 en R ;
     41:  !M[13] = M[32] AND M[34] ;
     42:  !AND M[35] AND M[38] AND M[39] ;
     43:  !Marca 9 ST1520 Vacia ;
     44:  !M[18] = (DI[57] AND !DI[58] AND ;
     45:  !DI[59] AND !DI[60] ;
     46:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
      2:  !original ;
      3:  //TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[13] AND M[18] AND M[30] AND M[95] AND M[96]) ;
      4:   ;
       ------ ;
  16:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[36])    ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  !Marca 5 Estado de Garra ;
     10:  !Valulas 1-4 en V, 5 en R ;
     11:  !M[14] = M[32] AND M[34] ;
     12:  !AND M[36] AND M[38] AND M[39] ;
     13:  TC_ONLINE (DI[41] AND DI[43] AND DI[75] AND DI[76] AND M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:  !En Posicion ST1520 ;
  18:  !Dejar Pieza 1 en ST1520 ;
  19:  !Fin de Trabajo 4 ;
  20:L P[10] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     17:  !Valulas 1,2,3 en V, 4&5 en R ;
     18:  !M[15]=M[32] AND M[34] ;
     19:  !AND M[36] AND M[37] AND M[39] ;
     20:  !Marca 10 ST1520 C/Pieza 1 ;
     21:  !M[19] = (DI[57] AND !DI[58] AND ;
     22:  ! !DI[59] AND DI[60] ;
     23:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:L P[11] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:  UTOOL_NUM=2 ;
  25:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[19] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[74] AND DI[76] AND M[5] AND M[15] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:  !En Posicion ST1520 ;
  29:  !Dejar Pieza 2 en ST1520 ;
  30:  !Fin de Trabajo 5 ;
  31:L P[17] 1000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      5:  DO[71]=ON ;
      6:  DO[72]=ON ;
      7:  CALL MAKRO005    ;
      8:  WAIT (DI[72])    ;
      9:  DO[72]=OFF ;
     10:  DO[71]=OFF ;
     11:  F[1]=(ON) ;
     12:  F[2]=(ON) ;
     13:  CALL MAKRO342    ;
     14:  CALL MAKRO340    ;
     15:  WAIT (M[31] AND M[33])    ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  !Marca 7 Estado de Garra ;
     19:  !Valvulas 3 en V, 1,2,4&5 en R ;
     20:  !M[11] = M[31] AND M[33] ;
     21:  !AND M[36] AND M[37] AND M[40] ;
     22:  !Marca 11 ST1520 Llena ;
     23:  !M[20]=(!DI[57] AND DI[58] ;
     24:  ! AND !DI[59] AND DI[60]) ;
     25:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[76] AND M[11] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:  PAYLOAD[1] ;
  33:L P[18] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[76] AND M[2] AND M[11] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:L P[19] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[76] AND M[2] AND M[11] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[76] AND M[2] AND M[11] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[76] AND M[2] AND M[11] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  37:  !Encender Perfil Lib 75 vs ST1520 ;
  38:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[75]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[43] AND DI[76] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  39:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[76] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  40:  !Encender Perfil Lib 76 vs ST1520 ;
  41:  !Apagar Anticol. 1 vs 1520R01 ;
  42:  !Apagar Anticol. 3 vs 1550R01 ;
  43:J P[24] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     14:  !Valulas 1-5 en R ;
     15:  !M[10] = M[31] AND M[33] ;
     16:  !AND M[35] AND M[37] AND M[39] ;
     17:  TC_ONLINE (M[2] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =   528.171  mm,	Y =   -53.836  mm,	Z =  2806.257  mm,
	W =   -61.311 deg,	P =    -3.669 deg,	R =   -29.191 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =   371.476  mm,	Y =   839.560  mm,	Z =  1711.912  mm,
	W =    90.000 deg,	P =   -48.964 deg,	R =   118.610 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   269.218  mm,	Y = -1286.815  mm,	Z =  1711.913  mm,
	W =    90.000 deg,	P =   -48.964 deg,	R =   -47.390 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2087.011  mm,	Y = -1887.100  mm,	Z =   248.197  mm,
	W =    91.055 deg,	P =    40.004 deg,	R =   -29.050 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2057.055  mm,	Y = -1898.875  mm,	Z =   -81.513  mm,
	W =    91.055 deg,	P =    40.003 deg,	R =   -29.050 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2031.851  mm,	Y = -1873.705  mm,	Z =  -200.487  mm,
	W =    91.056 deg,	P =    40.001 deg,	R =   -29.050 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2039.085  mm,	Y = -1869.240  mm,	Z =  -221.030  mm,
	W =    91.055 deg,	P =    40.001 deg,	R =   -29.050 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2047.774  mm,	Y = -1863.830  mm,	Z =  -253.792  mm,
	W =    91.029 deg,	P =    38.515 deg,	R =   -29.084 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2057.501  mm,	Y = -1873.699  mm,	Z =  -252.286  mm,
	W =    91.024 deg,	P =    40.735 deg,	R =   -29.091 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2049.320  mm,	Y = -1873.806  mm,	Z =  -287.869  mm,
	W =    90.554 deg,	P =    40.281 deg,	R =   -30.516 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2057.472  mm,	Y = -1873.663  mm,	Z =  -198.727  mm,
	W =    91.029 deg,	P =    40.735 deg,	R =   -29.088 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2063.911  mm,	Y = -1904.130  mm,	Z =     6.081  mm,
	W =    89.451 deg,	P =    40.282 deg,	R =   -29.688 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X = -2068.798  mm,	Y = -1897.896  mm,	Z =   265.763  mm,
	W =    87.138 deg,	P =    40.707 deg,	R =   -30.794 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X = -1477.854  mm,	Y = -2402.906  mm,	Z =   906.730  mm,
	W =   174.135 deg,	P =    45.000 deg,	R =  -130.255 deg
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
P[15]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X = -1298.719  mm,	Y = -2260.219  mm,	Z =   -56.632  mm,
	W =    -7.341 deg,	P =    88.897 deg,	R =    50.439 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.300  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X = -1300.778  mm,	Y = -2262.943  mm,	Z =  -296.221  mm,
	W =    -7.366 deg,	P =    88.897 deg,	R =    50.414 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.300  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X = -1298.478  mm,	Y = -2260.157  mm,	Z =  -483.901  mm,
	W =    -7.362 deg,	P =    88.897 deg,	R =    50.418 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.300  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X = -1296.108  mm,	Y = -2264.417  mm,	Z =  -457.702  mm,
	W =    -7.207 deg,	P =    88.897 deg,	R =    50.402 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.300  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X = -1300.778  mm,	Y = -2262.944  mm,	Z =  -296.221  mm,
	W =    -7.368 deg,	P =    88.898 deg,	R =    50.413 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.300  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X = -1298.176  mm,	Y = -2259.545  mm,	Z =  -101.748  mm,
	W =    -7.341 deg,	P =    88.896 deg,	R =    50.439 deg
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
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X = -1627.721  mm,	Y = -2505.843  mm,	Z =   926.305  mm,
	W =  -174.777 deg,	P =    45.000 deg,	R =  -130.255 deg
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
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X = -1013.933  mm,	Y = -1343.139  mm,	Z =  1768.082  mm,
	W =   -96.168 deg,	P =    17.913 deg,	R =  -110.625 deg
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
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X =  1398.874  mm,	Y =  -385.842  mm,	Z =  1973.625  mm,
	W =   -73.385 deg,	P =     0.000 deg,	R =    11.570 deg
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
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X =  1009.379  mm,	Y =   762.583  mm,	Z =  2252.020  mm,
	W =   -53.140 deg,	P =   -28.625 deg,	R =    62.814 deg
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
/END
