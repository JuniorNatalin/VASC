/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1320";
PROG_SIZE	= 4154;
CREATE		= DATE 96-04-05  TIME 13:30:52;
MODIFIED	= DATE 23-07-06  TIME 03:35:08;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 7402;
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
   4:  !Apagar Perfil Lib. vs ST1320 ;
   5:  !Encender Anticol. 1 vs 1310R01 ;
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
     10:  DO[76]=OFF ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[55]=ON ;
     24:  DO[56]=ON ;
     25:  !Apagar Posicion Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  WAIT (DI[80] AND !DI[65] AND DI[66] AND M[10])    ;
     30:  DO[80]=OFF ;
     31:  !Encender Anticolisiones ;
     32:  DO[81]=ON ;
     33:  CALL MAKRO020    ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:  !En Posicion ST1320 ;
  10:  !Tomar Pieza en ST1320 ;
  11:  !Fin de Trabajo 1 ;
  12:L P[4] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[3])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[41] AND DI[79] AND M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:  PAYLOAD[2] ;
  14:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:  !Encender Perfil Lib 80 vs ST1320 ;
  18:  !Apagar Anticolision 1 vs 1310R01 ;
  19:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[80]=ON ;
      5:  TIMER[3]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =  1651.706  mm,	Y =   187.219  mm,	Z =  1273.147  mm,
	W =   122.768 deg,	P =    42.735 deg,	R =    19.899 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =  -328.907  mm,	Y =  1184.229  mm,	Z =   476.615  mm,
	W =   170.825 deg,	P =    78.636 deg,	R =   122.882 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, -1',
	X =  -788.195  mm,	Y =  1308.947  mm,	Z =  -315.339  mm,
	W =    12.010 deg,	P =    89.162 deg,	R =   -32.922 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, -1',
	X =  -787.183  mm,	Y =  1309.756  mm,	Z =  -477.439  mm,
	W =    10.971 deg,	P =    89.124 deg,	R =   -34.031 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, -1',
	X =  -785.845  mm,	Y =  1306.547  mm,	Z =  -389.209  mm,
	W =    12.020 deg,	P =    89.162 deg,	R =   -32.912 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, -1',
	X =  -781.179  mm,	Y =  1301.065  mm,	Z =  -196.354  mm,
	W =    12.023 deg,	P =    89.162 deg,	R =   -32.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =  -328.907  mm,	Y =  1184.229  mm,	Z =   476.615  mm,
	W =   170.825 deg,	P =    78.636 deg,	R =   122.882 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =  1651.706  mm,	Y =   187.219  mm,	Z =  1273.147  mm,
	W =   122.768 deg,	P =    42.735 deg,	R =    19.899 deg
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
