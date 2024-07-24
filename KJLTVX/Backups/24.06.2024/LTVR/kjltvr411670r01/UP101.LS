/PROG  UP101
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1640";
PROG_SIZE	= 4650;
CREATE		= DATE 18-12-30  TIME 12:27:20;
MODIFIED	= DATE 18-12-30  TIME 12:27:20;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 8550;
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
   1:  PAYLOAD[1] ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:  !Apagar Perfil Lib. 80 vs ST1640 ;
   5:  !Encender Anticol. 3 vs 1630R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[43]=ON ;
      8:  DO[44]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[80]=ON ;
     11:  DO[78]=OFF ;
     12:  DO[77]=ON ;
     13:  DO[75]=OFF ;
     14:  DO[74]=ON ;
     15:  DO[72]=OFF ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     21:  DO[80]=OFF ;
     22:  !Encender Anticolisiones ;
     23:  DO[83]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   7:J P[2] 80% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   8:J P[3] 80% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  10:  !En Posicion ST1640 ;
  11:  !Tomar Pieza en ST1640 ;
  12:  !Fin de Trabajo 1 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[43] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  19:  !Encender Perfil Lib 80 vs ST1640 ;
  20:  !Apagar Anticol. 3 vs 1630R01 ;
  21:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[80]=ON ;
      4:  DO[43]=ON ;
      5:  TIMER[3]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.978  mm,	Y =  4426.811  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =      .001 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
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
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1443.795  mm,	Y =  6320.012  mm,	Z =  -270.390  mm,
	W =    50.943 deg,	P =    65.934 deg,	R =    74.642 deg,
	E1=  3827.669  mm
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
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1069.435  mm,	Y =  6065.940  mm,	Z =  -714.612  mm,
	W =     5.211 deg,	P =    88.804 deg,	R =    60.374 deg,
	E1=  3827.669  mm
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    93.462  mm,	Y =  6737.710  mm,	Z = -1045.604  mm,
	W =    10.297 deg,	P =    88.096 deg,	R =    65.202 deg,
	E1=  4299.980  mm
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    92.565  mm,	Y =  6738.514  mm,	Z = -1322.700  mm,
	W =     8.743 deg,	P =    88.111 deg,	R =    63.592 deg,
	E1=  4299.974  mm
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    93.404  mm,	Y =  6737.592  mm,	Z = -1203.932  mm,
	W =    10.134 deg,	P =    88.101 deg,	R =    65.038 deg,
	E1=  4299.980  mm
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   211.297  mm,	Y =  6857.209  mm,	Z = -1153.925  mm,
	W =    -8.665 deg,	P =    88.809 deg,	R =    55.505 deg,
	E1=  4258.392  mm
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1065.003  mm,	Y =  6443.934  mm,	Z = -1150.958  mm,
	W =    -8.668 deg,	P =    88.810 deg,	R =    55.503 deg,
	E1=  3827.669  mm
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1443.795  mm,	Y =  6320.012  mm,	Z =  -270.390  mm,
	W =    50.943 deg,	P =    65.934 deg,	R =    74.642 deg,
	E1=  3827.669  mm
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.978  mm,	Y =  4426.811  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =      .000 deg,	R =   180.000 deg,
	E1=  2500.000  mm
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
