/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Dejar en ST1420";
PROG_SIZE	= 5262;
CREATE		= DATE 23-07-08  TIME 22:51:08;
MODIFIED	= DATE 23-07-09  TIME 09:39:34;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 9534;
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
   1:  !Apagar Perfil Lib. 77 vs ST1420 ;
   2:  !Encender Anticol. 3 vs 1450R01 ;
   3:  UFRAME_NUM=0 ;
   4:  UTOOL_NUM=1 ;
   5:  PAYLOAD[2] ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
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
     20:  WAIT (DI[61] AND !DI[62] AND DI[77])    ;
     21:  DO[77]=(OFF) ;
     22:  DO[83]=(ON) ;
     23:  CALL MAKRO020    ;
     24:  WAIT (DI[23])    ;
     25:  DO[23]=(ON) ;
     26:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[43] AND DI[43] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:  !En Posicion ST1420 ;
  12:  !Dejar Pieza en ST1420 ;
  13:  !Fin de Trabajo 3 ;
  14:L P[6] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  DO[75]=ON ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[76])    ;
      7:  DO[75]=OFF ;
      8:  F[1]=(ON) ;
      9:  F[3]=(ON) ;
     10:  CALL MAKRO343    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[32] AND M[36])    ;
     11:  F[2]=(ON) ;
     12:  CALL MAKRO342    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[33])    ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  15:  PAYLOAD[1] ;
  16:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  20:  !Encender Perfil Lib 77 vs ST1420 ;
  21:  !Apagar Anticol. 3 vs 1450R01 ;
  22:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[5]=STOP ;
      4:  F[1]=(ON) ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[31] AND M[35])    ;
      9:  DO[43]=ON ;
     10:  DO[77]=ON ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=(ON) ;
     13:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   250.095  mm,	Y =  -795.286  mm,	Z =  1589.717  mm,
	W =     0.000 deg,	P =    45.000 deg,	R =   -55.000 deg
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
	X =   777.638  mm,	Y =  -643.267  mm,	Z =   976.856  mm,
	W =    14.477 deg,	P =    69.416 deg,	R =   -30.911 deg
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
	X =   991.015  mm,	Y =  -348.702  mm,	Z =   610.945  mm,
	W =   -17.054 deg,	P =    83.569 deg,	R =   -55.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1960.438  mm,	Y =   747.104  mm,	Z =    99.998  mm,
	W =   114.596 deg,	P =    89.620 deg,	R =    96.908 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1960.433  mm,	Y =   747.205  mm,	Z =  -175.878  mm,
	W =   113.924 deg,	P =    89.618 deg,	R =    96.238 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1960.397  mm,	Y =   747.545  mm,	Z =  -226.109  mm,
	W =   113.903 deg,	P =    89.618 deg,	R =    96.217 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1961.917  mm,	Y =   748.416  mm,	Z =  -169.958  mm,
	W =   118.398 deg,	P =    89.672 deg,	R =   100.530 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1949.654  mm,	Y =   750.461  mm,	Z =    26.065  mm,
	W =   116.561 deg,	P =    89.672 deg,	R =   100.509 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   991.015  mm,	Y =  -348.702  mm,	Z =   610.945  mm,
	W =   -17.054 deg,	P =    83.569 deg,	R =   -55.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   764.633  mm,	Y =  -597.321  mm,	Z =   941.149  mm,
	W =    14.575 deg,	P =    70.308 deg,	R =   -30.421 deg
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
	X =   250.095  mm,	Y =  -795.286  mm,	Z =  1589.717  mm,
	W =     0.000 deg,	P =    45.000 deg,	R =   -55.000 deg
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
