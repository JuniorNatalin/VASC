/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1410";
PROG_SIZE	= 4572;
CREATE		= DATE 23-07-08  TIME 22:50:28;
MODIFIED	= DATE 23-07-09  TIME 09:20:00;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 8092;
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
   1:  !Apagar Perfil Lib. 80 vs ST1410 ;
   2:  !Encender Anticol. 1 vs 1390R01 ;
   3:  UFRAME_NUM=0 ;
   4:  UTOOL_NUM=1 ;
   5:  PAYLOAD[1] ;
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
     21:  F[3]=(ON) ;
     22:  CALL MAKRO343    ;
     23:  WAIT (M[32] AND M[36])    ;
     24:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     25:  DO[80]=(OFF) ;
     26:  DO[81]=(ON) ;
     27:  CALL MAKRO020    ;
     28:  WAIT (DI[23])    ;
     29:  DO[23]=(ON) ;
     30:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[32] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1400 ;
  11:  !Tomar Pieza de ST1400 ;
  12:  !Fin de Trabajo 1 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[31] AND M[33])    ;
      9:  F[2]=(ON) ;
     10:  CALL MAKRO343    ;
     11:  WAIT (M[34])    ;
     12:  DO[78]=ON ;
     13:  CALL MAKRO001    ;
     14:  WAIT (DI[79])    ;
     15:  DO[78]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (DI[41] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 80 vs ST1400 ;
  19:  !Apagar Anticol. 1 vs 1390R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[80]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=(ON) ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[35] AND M[95] AND M[96]) ;
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
	X =  -367.380  mm,	Y =  -761.013  mm,	Z =  1568.223  mm,
	W =    36.673 deg,	P =    30.274 deg,	R =   -93.906 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.485  mm
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
	X = -1158.560  mm,	Y =    37.978  mm,	Z =   180.534  mm,
	W =   -21.274 deg,	P =    89.821 deg,	R =   109.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.300  mm
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
	X = -1160.386  mm,	Y =    38.116  mm,	Z =   -82.925  mm,
	W =   -21.757 deg,	P =    89.821 deg,	R =   109.326 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.973  mm
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
	X = -1157.218  mm,	Y =    39.086  mm,	Z =  -225.267  mm,
	W =   -21.966 deg,	P =    89.822 deg,	R =   109.084 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.800  mm
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
	X = -1156.613  mm,	Y =    33.788  mm,	Z =   -82.942  mm,
	W =   -21.776 deg,	P =    89.821 deg,	R =   109.307 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.973  mm
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
	X = -1158.560  mm,	Y =    37.978  mm,	Z =   180.534  mm,
	W =   -21.328 deg,	P =    89.821 deg,	R =   109.817 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.300  mm
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
	X =  -367.380  mm,	Y =  -761.013  mm,	Z =  1568.223  mm,
	W =    36.673 deg,	P =    30.274 deg,	R =   -93.906 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.485  mm
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
