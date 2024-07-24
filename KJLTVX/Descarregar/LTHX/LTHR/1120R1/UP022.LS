/PROG  UP022
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1120";
PROG_SIZE	= 5632;
CREATE		= DATE 23-02-12  TIME 07:53:50;
MODIFIED	= DATE 24-04-06  TIME 13:02:32;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 10652;
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
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil Lib. 79 vs ST1120 ;
   5:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=OFF ;
      8:  DO[79]=OFF ;
      9:  DO[78]=ON ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[78] AND DI[64] AND !DI[63])    ;
     21:  DO[78]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (!DI[63] AND DI[64] AND DI[78] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[78] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[78] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   8:  !En Posicion ST1120 ;
   9:  !Tomar Pieza en ST1120 ;
  10:  !Fin de Trabajo 2 ;
  11:L P[4] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[77]=ON ;
      8:  CALL MAKRO002    ;
      9:  WAIT (DI[77])    ;
     10:  DO[77]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[77] AND DI[80] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  12:  PAYLOAD[2] ;
  13:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[77] AND DI[80] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  14:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[77] AND DI[80] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  15:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[77] AND DI[80] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  16:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[77] AND DI[80] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  17:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[77] AND DI[80] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  18:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[77] AND DI[80] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  19:  !Encender Perfil Lib 80 vs ST1120 ;
  20:  !Encender Perfil Lib 79 vs ST1120 ;
  21:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[79]=ON ;
      3:  DO[80]=ON ;
      4:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  22:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  23:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =  -783.239  mm,	Y =  2977.969  mm,	Z =   197.215  mm,
	W =   -78.290 deg,	P =    68.446 deg,	R =   -60.958 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -667.514  mm,	Y =  2443.177  mm,	Z =  -384.103  mm,
	W =   -89.487 deg,	P =    40.414 deg,	R =   -73.443 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -669.596  mm,	Y =  2407.068  mm,	Z =  -416.517  mm,
	W =   -89.566 deg,	P =    39.377 deg,	R =   -73.143 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.700  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   101.600  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -662.127  mm,	Y =  2380.471  mm,	Z =  -430.655  mm,
	W =   -89.302 deg,	P =    39.408 deg,	R =   -72.621 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    97.300  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   102.200  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -667.962  mm,	Y =  2441.312  mm,	Z =  -371.409  mm,
	W =   -88.915 deg,	P =    39.836 deg,	R =   -73.396 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   101.900  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -714.810  mm,	Y =  2605.813  mm,	Z =  -174.471  mm,
	W =   -89.541 deg,	P =    40.392 deg,	R =   -73.422 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	X =  -710.500  mm,	Y =  2574.383  mm,	Z =    52.322  mm,
	W =   -89.542 deg,	P =    40.392 deg,	R =   -73.422 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -617.517  mm,	Y =  2009.382  mm,	Z =   554.870  mm,
	W =   -89.917 deg,	P =    36.887 deg,	R =   -77.976 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1014.211  mm,	Y =  1700.244  mm,	Z =   648.413  mm,
	W =  -122.061 deg,	P =    24.966 deg,	R =  -140.245 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   465.568  mm,	Y =  2192.711  mm,	Z =  1031.089  mm,
	W =  -127.277 deg,	P =     1.265 deg,	R =   136.842 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1710.765  mm,	Y =  1087.273  mm,	Z =   925.617  mm,
	W =  -110.367 deg,	P =     3.575 deg,	R =    82.324 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.800  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  2122.131  mm,	Y =  -246.306  mm,	Z =  1314.937  mm,
	W =  -120.202 deg,	P =    -9.698 deg,	R =    32.907 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1463.108  mm,	Y = -1445.457  mm,	Z =  1908.051  mm,
	W =  -115.008 deg,	P =   -27.392 deg,	R =   -22.470 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
/END
