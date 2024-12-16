/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar de ST1330";
PROG_SIZE	= 6700;
CREATE		= DATE 24-06-30  TIME 22:51:06;
MODIFIED	= DATE 24-07-01  TIME 09:52:22;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 12572;
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
   1:  !M[1] >Ambas Garras con Piezas ;
   2:  !M[3] >Solo Garra Tunel con Pieza ;
   3:  !M[22]>Solo Garra Tunel Cerrada ;
   4:  !M[24]>Garras Cerrada Completas ;
   5:   ;
   6:  UFRAME_NUM=0 ;
   7:  UTOOL_NUM=2 ;
   8:   ;
   9:  PAYLOAD[2] ;
  10:   ;
  11:  !Tomar Refuerzos de ST1330 ;
  12:  !Espera Lib. Tomar de ST1330 ;
  13:  !Apagar Perfil Libre vs ST1330 ;
  14:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  DO[72]=ON ;
     12:  DO[71]=ON ;
     13:  DO[70]=OFF ;
     14:  DO[69]=OFF ;
     15:  !Lib. de Anticolisiones ;
     16:  DO[41]=ON ;
     17:  DO[42]=ON ;
     18:  DO[43]=ON ;
     19:  DO[44]=ON ;
     20:  DO[47]=ON ;
     21:  DO[48]=ON ;
     22:  DO[49]=ON ;
     23:  DO[50]=ON ;
     24:  DO[51]=ON ;
     25:  DO[52]=ON ;
     26:  DO[53]=ON ;
     27:  DO[54]=ON ;
     28:  !Apagar Posicion Base ;
     29:  DO[15]=OFF ;
     30:  !Robot en Trayectoria ;
     31:  DO[16]=ON ;
     32:  !Espera Liberacion ;
     33:  WAIT (DI[76] AND DI[62] AND !DI[61] AND M[3] AND M[22])    ;
     34:  DO[76]=OFF ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  15:   ;
  16:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  17:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  18:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  19:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  20:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  21:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[22] AND M[30]) ;
       ------ ;
  22:   ;
  23:  !Cerrar Garra 2 Grupos 1 y 2 ;
  24:  !En Pos. de Toma de ST1330 ;
  25:  !Fin de Trabajo 3: ;
  26:  !Tomar de ST1330 ;
  27:  !Espera Lib. Salir de ST1330 ;
  28:L P[8] 500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[11]=(ON) ;
      5:  F[12]=(ON) ;
      6:  F[15]=(ON) ;
      7:  CALL MAKRO343    ;
      8:  WAIT (M[23])    ;
      9:  DO[74]=ON ;
     10:  CALL MAKRO003    ;
     11:  WAIT (DI[75])    ;
     12:  DO[74]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (DI[75] AND M[1] AND M[23] AND M[30]) ;
       ------ ;
  29:   ;
  30:  PAYLOAD[3] ;
  31:L P[9] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (((DI[61] AND !DI[62]) OR DI[15]) AND M[1])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[23] AND M[30]) ;
       ------ ;
  32:   ;
  33:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[23] AND M[30]) ;
       ------ ;
  34:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[23] AND M[30]) ;
       ------ ;
  35:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[23] AND M[30]) ;
       ------ ;
  36:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[23] AND M[30]) ;
       ------ ;
  37:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[23] AND M[30]) ;
       ------ ;
  38:   ;
  39:  !Encender Perfil Libre vs ST1330 ;
  40:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[76]=ON ;
      4:  TIMER[4]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[23] AND M[30]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.868  mm,	Y =  1840.802  mm,	Z =   676.917  mm,
	W =   -89.020 deg,	P =    70.452 deg,	R =    85.754 deg,
	E1=  -345.000  mm
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
	X =  1939.220  mm,	Y =  -465.759  mm,	Z =   332.801  mm,
	W =   -63.350 deg,	P =    83.148 deg,	R =    -7.484 deg,
	E1=  -274.280  mm
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
	X =  1959.824  mm,	Y =  -641.704  mm,	Z =   344.426  mm,
	W =  -152.114 deg,	P =    85.650 deg,	R =  -101.109 deg,
	E1=  -215.446  mm
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
	X =  2160.755  mm,	Y =  -705.548  mm,	Z =   259.338  mm,
	W =  -169.645 deg,	P =    79.611 deg,	R =  -136.381 deg,
	E1=  -160.128  mm
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
	X =  2342.825  mm,	Y =  -820.670  mm,	Z =   253.434  mm,
	W =  -113.832 deg,	P =    79.263 deg,	R =   -92.596 deg,
	E1=  -123.789  mm
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
	X =  2528.288  mm,	Y =  -918.555  mm,	Z =  -370.831  mm,
	W =      .280 deg,	P =    75.101 deg,	R =    27.058 deg,
	E1=     8.720  mm
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
	X =  2558.193  mm,	Y =  -919.476  mm,	Z =  -433.228  mm,
	W =    -1.061 deg,	P =    74.731 deg,	R =    26.827 deg,
	E1=     8.720  mm
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
	X =  2573.102  mm,	Y =  -911.935  mm,	Z =  -494.440  mm,
	W =     -.907 deg,	P =    74.731 deg,	R =    26.827 deg,
	E1=     8.720  mm
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
	X =  2553.531  mm,	Y =  -921.835  mm,	Z =  -414.088  mm,
	W =    -1.061 deg,	P =    74.731 deg,	R =    26.827 deg,
	E1=     8.720  mm
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
	X =  2528.288  mm,	Y =  -918.555  mm,	Z =  -370.832  mm,
	W =      .280 deg,	P =    75.101 deg,	R =    27.058 deg,
	E1=     8.720  mm
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
	X =  2342.825  mm,	Y =  -820.670  mm,	Z =   253.434  mm,
	W =  -113.832 deg,	P =    79.263 deg,	R =   -92.596 deg,
	E1=  -123.789  mm
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
	X =  2160.755  mm,	Y =  -705.548  mm,	Z =   259.338  mm,
	W =  -169.645 deg,	P =    79.611 deg,	R =  -136.381 deg,
	E1=  -160.128  mm
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
	X =  1959.824  mm,	Y =  -641.704  mm,	Z =   344.426  mm,
	W =  -152.114 deg,	P =    85.650 deg,	R =  -101.109 deg,
	E1=  -215.446  mm
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
	X =  1939.220  mm,	Y =  -465.759  mm,	Z =   332.801  mm,
	W =   -63.350 deg,	P =    83.148 deg,	R =    -7.484 deg,
	E1=  -274.280  mm
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
	X =   428.868  mm,	Y =  1840.802  mm,	Z =   676.917  mm,
	W =   -89.020 deg,	P =    70.452 deg,	R =    85.754 deg,
	E1=  -345.000  mm
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
/END
