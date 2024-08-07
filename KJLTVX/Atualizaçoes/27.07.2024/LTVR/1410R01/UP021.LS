/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1400";
PROG_SIZE	= 5496;
CREATE		= DATE 23-07-14  TIME 02:38:20;
MODIFIED	= DATE 23-07-14  TIME 02:49:58;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 10136;
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
   4:  !Apagar Perfil Lib. 80 vs ST1400 ;
   5:  !Encender Anticol. 1 vs 1390R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  F[1]=(ON) ;
     21:  CALL MAKRO343    ;
     22:  WAIT (M[32])    ;
     23:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     24:  DO[80]=(OFF) ;
     25:  !Encender Anticolisiones ;
     26:  DO[81]=(ON) ;
     27:  CALL MAKRO020    ;
     28:  WAIT (DI[23])    ;
     29:  DO[23]=(ON) ;
     30:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion ST1400 ;
  13:  !Tomar Pieza en ST1400 ;
  14:  !Fin de Trabajo 1 ;
  15:L P[7] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  F[2]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[34])    ;
     11:  DO[78]=ON ;
     12:  CALL MAKRO001    ;
     13:  WAIT (DI[79])    ;
     14:  DO[78]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (DI[41] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[8] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  21:  !Encender Perfil Lib 80 vs ST1400 ;
  22:  !Apagar Anticol. 1 vs 1390R01 ;
  23:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[80]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=(ON) ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1313.892  mm,	Y =   157.171  mm,	Z =  1484.741  mm,
	W =     0.000 deg,	P =    80.000 deg,	R =    -8.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   345.407  mm,	Y =  1277.198  mm,	Z =  1484.532  mm,
	W =     -.031 deg,	P =    80.000 deg,	R =    59.969 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   837.155  mm,	Y =  1920.422  mm,	Z =  1461.749  mm,
	W =    33.334 deg,	P =    57.705 deg,	R =    61.369 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2022.930  mm,	Y =  1774.980  mm,	Z =   272.899  mm,
	W =   142.947 deg,	P =    89.836 deg,	R =    89.134 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1994.244  mm,	Y =  1814.762  mm,	Z =    34.596  mm,
	W =   148.976 deg,	P =    89.843 deg,	R =    92.858 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1988.987  mm,	Y =  1820.680  mm,	Z =   -95.831  mm,
	W =   129.055 deg,	P =    89.686 deg,	R =    75.569 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1995.613  mm,	Y =  1809.696  mm,	Z =  -127.024  mm,
	W =   140.112 deg,	P =    89.741 deg,	R =    86.086 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1996.753  mm,	Y =  1811.522  mm,	Z =   -60.096  mm,
	W =   136.542 deg,	P =    89.727 deg,	R =    82.617 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1996.753  mm,	Y =  1811.522  mm,	Z =    45.504  mm,
	W =   136.542 deg,	P =    89.727 deg,	R =    82.617 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   837.156  mm,	Y =  1920.422  mm,	Z =  1461.748  mm,
	W =    33.334 deg,	P =    57.705 deg,	R =    61.369 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   345.407  mm,	Y =  1277.198  mm,	Z =  1484.532  mm,
	W =     -.031 deg,	P =    80.000 deg,	R =    59.969 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1313.892  mm,	Y =   157.171  mm,	Z =  1484.741  mm,
	W =     0.000 deg,	P =    80.000 deg,	R =    -8.000 deg
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
