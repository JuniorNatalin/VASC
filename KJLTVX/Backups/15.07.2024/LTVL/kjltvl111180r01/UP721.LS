/PROG  UP721
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar de ST1150";
PROG_SIZE	= 6378;
CREATE		= DATE 23-12-11  TIME 11:35:48;
MODIFIED	= DATE 23-12-11  TIME 11:35:50;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 11794;
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
   3:  PAYLOAD[1] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[45]=ON ;
     19:  DO[46]=ON ;
     20:  DO[47]=ON ;
     21:  DO[48]=ON ;
     22:  !Apagar Pos. Base ;
     23:  DO[15]=OFF ;
     24:  !Robot en Trayectoria ;
     25:  DO[16]=ON ;
     26:  WAIT (DI[80] AND DI[79] AND DI[64] AND !DI[63])    ;
     27:  DO[80]=OFF ;
     28:  DO[79]=OFF ;
     29:  !Encender Anticolisiones ;
     30:  DO[81]=ON ;
     31:  DO[85]=ON ;
     32:  CALL MAKRO020    ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  10:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  11:   ;
  12:   ;
  13:  !Tomar en ST1150 ;
  14:  !Fin de Trabajo 1 ;
  15:L P[8] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[1] AND M[34])    ;
      7:  DO[78]=ON ;
      8:  DO[77]=ON ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[78])    ;
     11:  DO[78]=OFF ;
     12:  DO[77]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[78] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  16:  //L P[9] 1000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[1] AND M[34])    ;
      7:  DO[78]=ON ;
      8:  DO[77]=ON ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[78])    ;
     11:  DO[78]=OFF ;
     12:  DO[77]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[78] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  17:  PAYLOAD[2] ;
  18:L P[10] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND DI[78] AND !DI[64] AND DI[63] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  19:  !Encender Perfil Lib 79 vs ST1150 ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[79]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND !DI[64] AND DI[63] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND !DI[64] AND DI[63] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  22:  !Lib. Anticolision 1 vs 1150R01 ;
  23:  !Lib. Anticolision 5 vs 1130R01 ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[41]=ON ;
      3:  DO[45]=ON ;
      4:  TC_ONLINE (DI[80] AND !DI[64] AND DI[63] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  25:  !Encender Perfil Lib 80 vs ST1150 ;
  26:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1133.486  mm,	Y =  -300.532  mm,	Z =   798.365  mm,
	W =   142.976 deg,	P =    38.151 deg,	R =    54.651 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   988.812  mm,	Y = -1204.003  mm,	Z =   614.830  mm,
	W =   130.712 deg,	P =    65.029 deg,	R =    24.199 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   719.643  mm,	Y = -2117.305  mm,	Z =    59.829  mm,
	W =  -151.797 deg,	P =    87.233 deg,	R =    89.744 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   737.684  mm,	Y = -2108.214  mm,	Z =  -301.508  mm,
	W =  -169.872 deg,	P =    87.231 deg,	R =    74.992 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   736.733  mm,	Y = -2096.079  mm,	Z =  -309.103  mm,
	W =  -174.394 deg,	P =    87.156 deg,	R =    70.739 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   101.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   738.535  mm,	Y = -2101.234  mm,	Z =  -340.791  mm,
	W =  -168.653 deg,	P =    87.557 deg,	R =    75.978 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.300  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   748.440  mm,	Y = -2103.680  mm,	Z =  -356.418  mm,
	W =  -175.180 deg,	P =    87.555 deg,	R =    70.074 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.269  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.895  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   737.654  mm,	Y = -2107.252  mm,	Z =  -330.206  mm,
	W =  -171.362 deg,	P =    86.938 deg,	R =    73.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   748.440  mm,	Y = -2103.679  mm,	Z =  -271.555  mm,
	W =  -175.180 deg,	P =    87.555 deg,	R =    70.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.269  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.895  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   737.762  mm,	Y = -2107.933  mm,	Z =   -82.130  mm,
	W =  -170.504 deg,	P =    87.231 deg,	R =    74.742 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   670.075  mm,	Y = -1996.983  mm,	Z =    99.297  mm,
	W =   180.000 deg,	P =    87.427 deg,	R =    65.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1145.239  mm,	Y =  -958.365  mm,	Z =   493.345  mm,
	W =   144.024 deg,	P =    56.330 deg,	R =    40.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
