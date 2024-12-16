/PROG  UP023
/ATTR
OWNER		= AUROM;
COMMENT		= "Depositar ST1180";
PROG_SIZE	= 5368;
CREATE		= DATE 96-03-17  TIME 08:40:12;
MODIFIED	= DATE 23-07-08  TIME 14:39:36;
FILE_NAME	= R_1170R0;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 9624;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Libre vs ST1180 ;
   5:  !Encender Anticol. 1 vs R1210R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=OFF ;
     10:  DO[76]=ON ;
     11:  DO[74]=OFF ;
     12:  !Lib. de Anticolisiones ;
     13:  DO[41]=ON ;
     14:  DO[42]=ON ;
     15:  DO[43]=ON ;
     16:  DO[44]=ON ;
     17:  DO[45]=ON ;
     18:  DO[46]=ON ;
     19:  !Apagar Posicion Base ;
     20:  DO[15]=OFF ;
     21:  !Robot en Trayectoria ;
     22:  DO[16]=ON ;
     23:  WAIT (M[1] AND M[32] AND M[34] AND M[35] AND DI[76] AND !DI[62] AND DI[61])    ;
     24:  DO[76]=OFF ;
     25:  !Solicitar Anticolisiones ;
     26:  DO[81]=ON ;
     27:  CALL MAKRO020    ;
     28:  WAIT (DI[23])    ;
     29:  DO[23]=ON ;
     30:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:  !En Posicion de Deposito ST1180 ;
  12:  !Fin de trabajo 3 ;
  13:  !Depositar en ST1180 ;
  14:L P[6] 500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[31] AND M[33])    ;
      9:  F[3]=(ON) ;
     10:  CALL MAKRO343    ;
     11:  WAIT (M[36])    ;
     12:  DO[74]=ON ;
     13:  CALL MAKRO003    ;
     14:  WAIT (DI[75] AND DI[62] AND !DI[61])    ;
     15:  DO[74]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  15:  PAYLOAD[1] ;
  16:L P[7] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  20:  !Encender Perfil libre vs ST1180 ;
  21:  !Apagar Anticol. 1 vs R1210R01 ;
  22:J P[11] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[76]=ON ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[35])    ;
      9:  TIMER[5]=STOP ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   285.425  mm,	Y = -1267.578  mm,	Z =  1666.567  mm,
	W =   -82.560 deg,	P =    30.138 deg,	R =   -75.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N D T, 0, 0, 0',
	X =   713.260  mm,	Y =   248.379  mm,	Z =  3195.494  mm,
	W =  -128.702 deg,	P =   -36.692 deg,	R =    -4.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1463.062  mm,	Y =   472.185  mm,	Z =    28.884  mm,
	W =  -179.998 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1456.695  mm,	Y =   470.011  mm,	Z =  -363.262  mm,
	W =  -105.868 deg,	P =    88.876 deg,	R =    74.077 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1467.916  mm,	Y =   472.333  mm,	Z =  -470.520  mm,
	W =   -96.555 deg,	P =    89.075 deg,	R =    83.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1467.917  mm,	Y =   472.333  mm,	Z =  -561.001  mm,
	W =   -96.525 deg,	P =    89.075 deg,	R =    83.340 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1467.917  mm,	Y =   472.333  mm,	Z =  -447.602  mm,
	W =   -96.541 deg,	P =    89.075 deg,	R =    83.324 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1468.595  mm,	Y =   468.501  mm,	Z =  -366.215  mm,
	W =  -108.118 deg,	P =    88.537 deg,	R =    71.575 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1463.062  mm,	Y =   472.185  mm,	Z =    28.884  mm,
	W =  -179.998 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N D T, 0, 0, 0',
	X =   713.260  mm,	Y =   248.379  mm,	Z =  3195.494  mm,
	W =  -128.702 deg,	P =   -36.692 deg,	R =    -4.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =   285.425  mm,	Y = -1267.578  mm,	Z =  1666.567  mm,
	W =   -82.560 deg,	P =    30.138 deg,	R =   -75.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
