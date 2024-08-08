/PROG  UP024
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sello Est.";
PROG_SIZE	= 9192;
CREATE		= DATE 23-07-09  TIME 15:12:00;
MODIFIED	= DATE 23-07-21  TIME 20:24:12;
FILE_NAME	= UP004;
VERSION		= 0;
LINE_COUNT	= 51;
MEMORY_SIZE	= 17748;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000001 00000000;
/APPL
/MN
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=2 ;
   3:  PAYLOAD[3] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  LBL[1] ;
      3:  DO[23]=OFF ;
      4:  TIMER[6]=RESET ;
      5:  TIMER[6]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[79]=ON ;
     10:  DO[78]=OFF ;
     11:  DO[77]=OFF ;
     12:  DO[76]=ON ;
     13:  DO[75]=OFF ;
     14:  DO[74]=OFF ;
     15:  DO[73]=ON ;
     16:  DO[72]=ON ;
     17:  DO[71]=OFF ;
     18:  DO[70]=OFF ;
     19:  DO[69]=OFF ;
     20:  DO[68]=OFF ;
     21:  DO[67]=OFF ;
     22:  !Anticolisiones Robot ;
     23:  DO[41]=ON ;
     24:  DO[42]=ON ;
     25:  DO[43]=ON ;
     26:  DO[44]=ON ;
     27:  DO[53]=ON ;
     28:  DO[54]=ON ;
     29:  DO[55]=ON ;
     30:  DO[56]=ON ;
     31:  !Apagar Posicion Base ;
     32:  DO[15]=OFF ;
     33:  !Robot en Trayectoria ;
     34:  DO[16]=ON ;
     35:  !Seleccionar Pistola 1 ;
     36:  DO[1521]=ON ;
     37:  DO[1522]=OFF ;
     38:  DO[1523]=OFF ;
     39:  !Confirmacion Pistola ;
     40:  WAIT (DI[1521] AND !DI[1522] AND !DI[1523])    ;
     41:  !Seleccionar Programa ;
     42:  GO[10]=20 ;
     43:  !Seleccionar Parametro ;
     44:  GO[11]=1 ;
     45:  !Purgar KL1 ;
     46:  IF (DI[1534] OR DI[163]),CALL MAKRO183 ;
     47:  IF (DI[15]),JMP LBL[2] ;
     48:  IF (DI[1534]),JMP LBL[1] ;
     49:  LBL[2] ;
     50:  !Parametrizar Analogico ;
     51:  !Material ;
     52:  AO[1]=(TCP_SPD[1]) ;
     53:  !Vel. TCP ;
     54:  AO[2]=(TCP_SPD[10]) ;
     55:  !Iniciar Sello ;
     56:  IF (!DI[15]),CALL MAKRO180 ;
     57:  WAIT (DI[23])    ;
     58:  DO[23]=ON ;
     59:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96] AND M[146]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:  !Entrada Cordon 2 ;
   8:L P[4] 2000mm/sec CNT100 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:L P[5] 1000mm/sec CNT100 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:  !Inicio Cordon 2 ;
  11:  !803_R_KF_0001 ;
  12:  !Abrir Pistola ;
  13:L P[6] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec DO[1544]=(!DI[15]) ;
      2:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:  !Parametro 2 ;
  15:L P[7] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(2) ;
      2:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:  !Parametro 3 ;
  17:L P[8] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(3) ;
      2:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Parametro 4 ;
  19:L P[9] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(4) ;
      2:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:  !Parametro 5 ;
  21:L P[10] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(5) ;
      2:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:  !Fin Cordon 2 ;
  23:  !803_R_KF_0001 ;
  24:  !Cerrar Pistola ;
  25:  !Prepara Parametro 6 ;
  26:L P[11] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS -20mm -0.05sec DO[1544]=OFF ;
      2:  PS +1mm -0.05sec GO[11]=(6) ;
      3:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:  !Salida Cordon 2 ;
  28:L P[12] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:  !Entrada Cordon 1 ;
  30:L P[13] 2000mm/sec CNT100 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:L P[14] 1000mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:  !Inicio Cordon 1 ;
  33:  !801_BJ_KF_0001 ;
  34:  !Abrir Pistola ;
  35:L P[15] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +5mm -0.05sec DO[1544]=(!DI[15]) ;
      2:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  36:  !Parametro 7 ;
  37:L P[16] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(7) ;
      2:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  38:  !Fin Cordon 1 ;
  39:  !801_BJ_KF_0001 ;
  40:  !Cerrar Pistola ;
  41:  !Reestablecer Parametro ;
  42:L P[17] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS -1mm -0.05sec DO[1544]=OFF ;
      2:  PS +1mm -0.05sec GO[11]=(1) ;
      3:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  43:L P[18] 200mm/sec CNT25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  44:   ;
  45:  !Salida Cordon 1 ;
  46:L P[19] 200mm/sec CNT25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  47:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  49:  !Fin de Trabajo 4: ;
  50:  !Sello Estacionario ;
  51:J P[22] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[15]),CALL MAKRO181 ;
      4:  IF (!F[343] AND !DI[161] AND !F[525]),CALL MAKRO004 ;
      5:  TIMER[6]=STOP ;
      6:  AO[1]=0 ;
      7:  AO[2]=0 ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   107.237  mm,	RY =  1486.991  mm,	RZ =   577.535  mm,
	RW =    77.576 deg,	RP =     2.173 deg,	RR =    69.763 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    16.643  mm,	RY =  1248.562  mm,	RZ =  -357.188  mm,
	RW =    52.810 deg,	RP =     6.084 deg,	RR =    67.953 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -291.066  mm,	RY =  -568.774  mm,	RZ =   -73.759  mm,
	RW =    53.144 deg,	RP =      .564 deg,	RR =    89.636 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -122.204  mm,	RY =  -542.747  mm,	RZ =   253.118  mm,
	RW =    38.509 deg,	RP =     0.000 deg,	RR =    90.000 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -109.026  mm,	RY =  -505.695  mm,	RZ =   289.442  mm,
	RW =    33.099 deg,	RP =    -8.572 deg,	RR =    97.546 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    99.200  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -93.486  mm,	RY =  -500.684  mm,	RZ =   288.626  mm,
	RW =    33.205 deg,	RP =    -5.161 deg,	RR =    96.886 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -54.806  mm,	RY =  -488.900  mm,	RZ =   285.239  mm,
	RW =    31.662 deg,	RP =    -5.161 deg,	RR =    96.886 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -14.885  mm,	RY =  -481.513  mm,	RZ =   270.739  mm,
	RW =    31.065 deg,	RP =    -5.161 deg,	RR =    96.886 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.008  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    19.486  mm,	RY =  -479.494  mm,	RZ =   253.535  mm,
	RW =    28.833 deg,	RP =    -8.087 deg,	RR =    90.177 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    56.140  mm,	RY =  -479.185  mm,	RZ =   232.846  mm,
	RW =    29.412 deg,	RP =    -8.969 deg,	RR =    85.653 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    91.924  mm,	RY =  -479.176  mm,	RZ =   215.265  mm,
	RW =    29.451 deg,	RP =    -9.392 deg,	RR =    85.411 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    98.344  mm,	RY =  -511.011  mm,	RZ =   206.070  mm,
	RW =    29.453 deg,	RP =    -9.411 deg,	RR =    85.400 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    87.547  mm,	RY =  -481.422  mm,	RZ =   108.461  mm,
	RW =    29.120 deg,	RP =    -4.566 deg,	RR =    88.137 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    63.803  mm,	RY =  -481.702  mm,	RZ =   121.632  mm,
	RW =    29.120 deg,	RP =    -4.566 deg,	RR =    88.137 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    29.649  mm,	RY =  -473.021  mm,	RZ =   133.883  mm,
	RW =    29.166 deg,	RP =      .800 deg,	RR =    82.662 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    10.125  mm,	RY =  -473.884  mm,	RZ =   144.447  mm,
	RW =    28.972 deg,	RP =     3.623 deg,	RR =    77.589 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -14.084  mm,	RY =  -473.762  mm,	RZ =   156.920  mm,
	RW =    28.839 deg,	RP =     4.639 deg,	RR =    75.745 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    99.731  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -31.797  mm,	RY =  -475.618  mm,	RZ =   164.788  mm,
	RW =    28.838 deg,	RP =     4.640 deg,	RR =    75.746 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    98.900  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -19.316  mm,	RY =  -500.737  mm,	RZ =   164.435  mm,
	RW =    28.946 deg,	RP =     3.845 deg,	RR =    77.187 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -17.236  mm,	RY =  -468.807  mm,	RZ =  -261.422  mm,
	RW =    41.435 deg,	RP =    -4.414 deg,	RR =    89.979 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    16.643  mm,	RY =  1248.562  mm,	RZ =  -357.188  mm,
	RW =    52.810 deg,	RP =     6.084 deg,	RR =    67.953 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   107.237  mm,	RY =  1486.991  mm,	RZ =   577.535  mm,
	RW =    77.576 deg,	RP =     2.173 deg,	RR =    69.763 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
/END
