/PROG  UP024
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sello Est.";
PROG_SIZE	= 14664;
CREATE		= DATE 23-12-22  TIME 09:09:50;
MODIFIED	= DATE 23-12-22  TIME 09:09:50;
FILE_NAME	= UP004;
VERSION		= 0;
LINE_COUNT	= 76;
MEMORY_SIZE	= 30000;
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
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  LBL[1] ;
      3:  DO[23]=OFF ;
      4:  TIMER[6]=RESET ;
      5:  TIMER[6]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=ON ;
     11:  DO[76]=OFF ;
     12:  DO[75]=OFF ;
     13:  DO[74]=ON ;
     14:  DO[73]=ON ;
     15:  DO[72]=OFF ;
     16:  DO[71]=OFF ;
     17:  DO[70]=OFF ;
     18:  DO[69]=OFF ;
     19:  DO[68]=OFF ;
     20:  !Lib. de Anticolisiones ;
     21:  DO[41]=ON ;
     22:  DO[42]=ON ;
     23:  DO[43]=ON ;
     24:  DO[44]=ON ;
     25:  DO[45]=ON ;
     26:  DO[46]=ON ;
     27:  !Apagar Posicion Base ;
     28:  DO[15]=OFF ;
     29:  !Robot en Trayectoria ;
     30:  DO[16]=ON ;
     31:  !Seleccionar Pistola 1 ;
     32:  DO[1521]=ON ;
     33:  DO[1522]=OFF ;
     34:  DO[1523]=OFF ;
     35:  !Confirmacion Pistola ;
     36:  WAIT (DI[1521] AND !DI[1522] AND !DI[1523])    ;
     37:  !Seleccionar Programa ;
     38:  GO[10]=(1) ;
     39:  !Seleccionar Parametro ;
     40:  GO[11]=1 ;
     41:  !Purgar KL1 ;
     42:  IF (DI[1534] OR DI[163]),CALL MAKRO183 ;
     43:  IF (DI[15]),JMP LBL[2] ;
     44:  IF (DI[1534]),JMP LBL[1] ;
     45:  LBL[2] ;
     46:  !Parametrizar Analogico ;
     47:  !Material ;
     48:  AO[1]=(TCP_SPD[3]) ;
     49:  !Vel. TCP ;
     50:  AO[2]=(TCP_SPD[10]) ;
     51:  !Iniciar Sello ;
     52:  IF (!DI[15]),CALL MAKRO180 ;
     53:  WAIT (DI[23])    ;
     54:  DO[23]=ON ;
     55:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[146]) ;
       ------ ;
   5:J P[2] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
   6:J P[3] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
   8:  !Entrada Cordon 1 ;
   9:L P[5] 200mm/sec CD5 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  10:  !Inicio Cordon 1 ;
  11:  !802_BK_KF_0001 ;
  12:  !Abrir Pistola ;
  13:L P[6] 200mm/sec CD5 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS -3mm -0.05sec DO[1544]=(!DI[15]) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  14:  !Parametro 2 ;
  15:L P[7] 200mm/sec CD5 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(2) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  16:  !Fin Cordon 1 ;
  17:  !802_BK_KF_0001 ;
  18:  !Cerrar Pistola ;
  19:  !Prepara Parametro 3 ;
  20:L P[8] 200mm/sec CD5 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS -13mm -0.05sec DO[1544]=OFF ;
      2:  PS +1mm -0.05sec GO[11]=(3) ;
      3:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  21:  !Salida Cordon 1 ;
  22:L P[9] 100mm/sec CD0 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  23:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  24:  !Entrada Cordon 2 ;
  25:L P[11] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  26:  !Inicio Cordon 2 ;
  27:  !806_S_KF_0001 ;
  28:  !Abrir Pistola ;
  29:L P[12] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec DO[1544]=(!DI[15]) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  30:  !Parametro 4 ;
  31:L P[13] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(4) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  32:L P[14] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  33:  !Parametro 5 ;
  34:L P[15] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(5) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  35:L P[16] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  36:  !Parametro 6 ;
  37:L P[17] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(6) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  38:L P[18] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  39:  !Parametro 7 ;
  40:L P[19] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(7) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  41:L P[20] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  42:  !Parametro 8 ;
  43:L P[21] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(8) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  44:  !Parametro 9 ;
  45:L P[22] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(9) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  46:  !Parametro 10 ;
  47:L P[23] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(10) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  48:  !Parametro 11 ;
  49:L P[24] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(11) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  50:  !Parametro 12 ;
  51:L P[25] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(12) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  52:  !Parametro 13 ;
  53:L P[26] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(13) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  54:L P[27] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  55:L P[28] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  56:  !Parametro 14 ;
  57:L P[29] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(14) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  58:L P[30] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  59:  !Parametro 15 ;
  60:L P[31] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec GO[11]=(15) ;
      2:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  61:L P[32] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  62:  !Fin Cordon 2 ;
  63:  !806_S_KF_0001 ;
  64:  !Cerrar Pistola ;
  65:  !Reestablecer Parametro ;
  66:L P[33] 200mm/sec CD25 ACC100 DB    0.0mm,P-SPS RTCP    ;
      1:  PS +1mm -0.05sec DO[1544]=OFF ;
      2:  PS +1mm -0.05sec GO[11]=(1) ;
      3:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  67:  !Salida Cordon 2 ;
  68:L P[34] 250mm/sec CNT25 ACC100 TB   0.00sec,P-SPS RTCP    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  69:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  70:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  71:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  72:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  73:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
  74:  !Fin de Trabajo 4: ;
  75:  !Sello Estacionario ;
  76:J P[40] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[15]),CALL MAKRO181 ;
      4:  IF (!F[343] AND !DI[161] AND !F[525]),CALL MAKRO004 ;
      5:  TIMER[6]=STOP ;
      6:  AO[1]=(TCP_SPD[1]) ;
      7:  AO[2]=(TCP_SPD[10]) ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[20] AND M[30]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -497.625  mm,	RY = -1077.746  mm,	RZ =  -220.957  mm,
	RW =    28.980 deg,	RP =      .000 deg,	RR =  -120.000 deg
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
	RX =  -995.901  mm,	RY =   894.376  mm,	RZ =   888.208  mm,
	RW =   -70.292 deg,	RP =   -19.018 deg,	RR =  -114.367 deg
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
	RX =  -319.818  mm,	RY =   703.058  mm,	RZ =   264.611  mm,
	RW =   -62.964 deg,	RP =   -14.453 deg,	RR =  -106.506 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -142.707  mm,	RY =   539.805  mm,	RZ =   204.543  mm,
	RW =   -73.831 deg,	RP =      .735 deg,	RR =   -87.521 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -47.987  mm,	RY =   482.812  mm,	RZ =   182.878  mm,
	RW =   -65.918 deg,	RP =    -2.829 deg,	RR =   -99.292 deg
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
P[6]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -36.086  mm,	RY =   478.746  mm,	RZ =   173.814  mm,
	RW =   -65.919 deg,	RP =    -2.829 deg,	RR =   -99.291 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =     2.576  mm,	RY =   475.949  mm,	RZ =   155.362  mm,
	RW =   -65.944 deg,	RP =     1.146 deg,	RR =   -97.517 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    39.394  mm,	RY =   474.325  mm,	RZ =   128.669  mm,
	RW =   -65.945 deg,	RP =     1.150 deg,	RR =   -97.521 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.100  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    59.155  mm,	RY =   477.238  mm,	RZ =   112.679  mm,
	RW =   -65.944 deg,	RP =     1.147 deg,	RR =   -97.516 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    45.989  mm,	RY =   479.487  mm,	RZ =   209.530  mm,
	RW =   -48.251 deg,	RP =    -7.310 deg,	RR =   -89.823 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    46.098  mm,	RY =   479.237  mm,	RZ =   241.268  mm,
	RW =   -39.465 deg,	RP =   -12.189 deg,	RR =   -87.460 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    34.009  mm,	RY =   475.261  mm,	RZ =   254.900  mm,
	RW =   -38.426 deg,	RP =   -13.189 deg,	RR =   -86.641 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    -9.063  mm,	RY =   476.832  mm,	RZ =   276.248  mm,
	RW =   -38.426 deg,	RP =   -13.194 deg,	RR =   -86.639 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -27.538  mm,	RY =   478.455  mm,	RZ =   283.581  mm,
	RW =   -37.701 deg,	RP =   -15.413 deg,	RR =   -89.564 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    99.900  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -51.413  mm,	RY =   484.304  mm,	RZ =   289.730  mm,
	RW =   -36.267 deg,	RP =   -18.909 deg,	RR =   -94.423 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -69.220  mm,	RY =   489.803  mm,	RZ =   290.979  mm,
	RW =   -35.173 deg,	RP =   -21.072 deg,	RR =   -97.621 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -86.947  mm,	RY =   495.668  mm,	RZ =   291.274  mm,
	RW =   -34.291 deg,	RP =   -21.328 deg,	RR =  -100.048 deg
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
P[18]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -112.485  mm,	RY =   503.613  mm,	RZ =   292.919  mm,
	RW =   -34.292 deg,	RP =   -21.328 deg,	RR =  -100.048 deg
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
P[19]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -135.876  mm,	RY =   509.971  mm,	RZ =   293.878  mm,
	RW =   -34.050 deg,	RP =   -18.802 deg,	RR =   -99.796 deg
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
	RX =  -158.702  mm,	RY =   514.121  mm,	RZ =   294.803  mm,
	RW =   -34.997 deg,	RP =   -16.770 deg,	RR =   -96.697 deg
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
	RX =  -182.628  mm,	RY =   517.675  mm,	RZ =   295.577  mm,
	RW =   -35.518 deg,	RP =   -14.255 deg,	RR =   -94.663 deg
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
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -230.745  mm,	RY =   520.363  mm,	RZ =   296.495  mm,
	RW =   -35.665 deg,	RP =   -13.829 deg,	RR =   -94.053 deg
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
P[23]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -278.202  mm,	RY =   519.721  mm,	RZ =   295.850  mm,
	RW =   -35.665 deg,	RP =   -13.828 deg,	RR =   -94.053 deg
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
P[24]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -312.349  mm,	RY =   519.897  mm,	RZ =   296.114  mm,
	RW =   -33.392 deg,	RP =   -12.317 deg,	RR =   -93.516 deg
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
P[25]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -346.254  mm,	RY =   521.182  mm,	RZ =   298.143  mm,
	RW =   -33.501 deg,	RP =   -11.302 deg,	RR =   -92.963 deg
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
P[26]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -358.472  mm,	RY =   518.835  mm,	RZ =   295.885  mm,
	RW =   -34.073 deg,	RP =    -9.185 deg,	RR =   -89.749 deg
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
P[27]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -366.919  mm,	RY =   515.951  mm,	RZ =   296.234  mm,
	RW =   -34.073 deg,	RP =    -9.184 deg,	RR =   -89.749 deg
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
P[28]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -381.363  mm,	RY =   519.383  mm,	RZ =   297.260  mm,
	RW =   -33.843 deg,	RP =   -10.110 deg,	RR =   -91.143 deg
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
P[29]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -403.445  mm,	RY =   522.219  mm,	RZ =   297.696  mm,
	RW =   -33.187 deg,	RP =    -8.128 deg,	RR =   -94.966 deg
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
P[30]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -416.956  mm,	RY =   522.096  mm,	RZ =   296.846  mm,
	RW =   -33.329 deg,	RP =    -5.870 deg,	RR =   -92.964 deg
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
P[31]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -450.223  mm,	RY =   522.352  mm,	RZ =   297.701  mm,
	RW =   -32.976 deg,	RP =    -1.889 deg,	RR =   -93.691 deg
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
P[32]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -478.230  mm,	RY =   522.452  mm,	RZ =   297.185  mm,
	RW =   -32.667 deg,	RP =     -.891 deg,	RR =   -94.861 deg
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
P[33]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -506.277  mm,	RY =   522.034  mm,	RZ =   297.611  mm,
	RW =   -32.662 deg,	RP =     -.886 deg,	RR =   -94.860 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    99.600  mm
   GP3:
	UF : 2, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -559.344  mm,	RY =   529.495  mm,	RZ =   299.300  mm,
	RW =   -32.509 deg,	RP =    -6.712 deg,	RR =   -97.729 deg
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
P[35]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -571.712  mm,	RY =   528.193  mm,	RZ =   289.274  mm,
	RW =   -32.509 deg,	RP =    -6.712 deg,	RR =   -97.729 deg
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
P[36]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -449.486  mm,	RY =   732.575  mm,	RZ =   203.316  mm,
	RW =   -21.275 deg,	RP =     7.412 deg,	RR =  -106.689 deg
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
P[37]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -645.590  mm,	RY =   802.344  mm,	RZ =   175.693  mm,
	RW =   -20.773 deg,	RP =     8.517 deg,	RR =  -118.774 deg
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
P[38]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1478.405  mm,	RY =   371.088  mm,	RZ =   534.409  mm,
	RW =   -29.712 deg,	RP =   -14.661 deg,	RR =  -129.767 deg
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
P[39]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1669.761  mm,	RY =   -10.953  mm,	RZ =   299.905  mm,
	RW =     5.216 deg,	RP =   -18.257 deg,	RR =  -147.183 deg
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
P[40]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -497.625  mm,	RY = -1077.746  mm,	RZ =  -220.957  mm,
	RW =    28.980 deg,	RP =      .000 deg,	RR =  -120.000 deg
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
