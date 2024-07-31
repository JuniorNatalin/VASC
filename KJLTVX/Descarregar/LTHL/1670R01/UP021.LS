/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1640";
PROG_SIZE	= 4644;
CREATE		= DATE 23-12-22  TIME 09:04:02;
MODIFIED	= DATE 24-06-15  TIME 19:33:08;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 8536;
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
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[72]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
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
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   9:L P[4] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[80] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  10:  !En Posicion ST1640 ;
  11:  !Tomar Pieza en ST1640 ;
  12:  !Fin de Trabajo 1 ;
  13:L P[5] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  GO[21]=2 ;
     10:  WAIT (DI[79])    ;
     11:  DO[78]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[43] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 800mm/sec CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  16:   ;
  17:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  18:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  19:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  20:  !Encender Perfil Lib 80 vs ST1640 ;
  21:  !Apagar Anticol. 3 vs 1630R01 ;
  22:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  DO[43]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -919.115  mm,	Y = -4098.798  mm,	Z = -1000.505  mm,
	W =     2.923 deg,	P =    89.725 deg,	R =  -177.167 deg,
	E1= -1660.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1201.772  mm,	Y = -4097.062  mm,	Z = -1010.671  mm,
	W =     2.919 deg,	P =    89.725 deg,	R =  -177.171 deg,
	E1= -1660.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1222.705  mm,	Y = -4097.134  mm,	Z = -1277.378  mm,
	W =      .278 deg,	P =    89.728 deg,	R =  -179.790 deg,
	E1= -1660.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1223.632  mm,	Y = -4103.722  mm,	Z = -1322.137  mm,
	W =   -55.277 deg,	P =    89.764 deg,	R =   124.799 deg,
	E1= -1659.993  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1224.316  mm,	Y = -4104.993  mm,	Z = -1250.058  mm,
	W =     2.934 deg,	P =    89.725 deg,	R =  -177.155 deg,
	E1= -1660.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1223.624  mm,	Y = -4104.979  mm,	Z = -1094.489  mm,
	W =     2.934 deg,	P =    89.725 deg,	R =  -177.156 deg,
	E1= -1660.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1234.685  mm,	Y = -4097.019  mm,	Z = -1010.514  mm,
	W =     2.916 deg,	P =    89.725 deg,	R =  -177.174 deg,
	E1= -1660.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -919.115  mm,	Y = -4098.798  mm,	Z = -1000.505  mm,
	W =     2.922 deg,	P =    89.725 deg,	R =  -177.168 deg,
	E1= -1660.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
