/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar Banda 1300";
PROG_SIZE	= 5556;
CREATE		= DATE 23-12-24  TIME 07:27:38;
MODIFIED	= DATE 24-04-26  TIME 18:12:20;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 10564;
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
   2:  UTOOL_NUM=1 ;
   3:  UFRAME_NUM=0 ;
   4:  ! Esperar Lib. Tomar de 1300 ;
   5:  ! Apagar Perfil Libre vs 1300 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[80] AND DI[64] AND !DI[63])    ;
     19:  DO[80]=OFF ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:  ! Posicion de Toma ;
  11:  ! Tomar de Banda 1300 ;
  12:  ! Fin de Trabajo 1 ;
  13:L P[5] 600mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[1]=(ON) ;
      4:  IF (ON),CALL MAKRO343 ;
      5:  WAIT (M[1] AND M[32])    ;
      6:  DO[78]=ON ;
      7:  CALL MAKRO001    ;
      8:  WAIT (DI[79])    ;
      9:  DO[78]=OFF ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 600mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:L P[7] 600mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:L P[8] 600mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  22:  ! Encender Perfil Libre vs 1300 ;
  23:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[80]=ON ;
      4:  TIMER[3]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -984.988  mm,	Y =   742.257  mm,	Z =  2624.660  mm,
	W =    -2.686 deg,	P =   -15.318 deg,	R =   135.165 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
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
	X = -1642.882  mm,	Y =   291.815  mm,	Z =  2602.325  mm,
	W =     1.082 deg,	P =     4.553 deg,	R =   152.794 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
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
	X = -2236.682  mm,	Y =   491.327  mm,	Z =  2460.793  mm,
	W =     -.234 deg,	P =     8.375 deg,	R =   131.004 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
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
	X = -2377.192  mm,	Y =   635.972  mm,	Z =  2429.164  mm,
	W =     -.390 deg,	P =     8.762 deg,	R =   131.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
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
	X = -2515.507  mm,	Y =   794.626  mm,	Z =  2396.530  mm,
	W =     -.495 deg,	P =     8.977 deg,	R =   131.152 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.600  mm
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
	X = -2515.121  mm,	Y =   800.478  mm,	Z =  2422.813  mm,
	W =     -.495 deg,	P =     8.977 deg,	R =   131.152 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.600  mm
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
	X = -2490.681  mm,	Y =   768.561  mm,	Z =  2438.215  mm,
	W =     -.725 deg,	P =    15.280 deg,	R =   130.885 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.500  mm
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
	X = -2467.594  mm,	Y =   757.454  mm,	Z =  2297.308  mm,
	W =     -.053 deg,	P =    16.500 deg,	R =   131.632 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
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
	X = -2387.657  mm,	Y =   667.984  mm,	Z =  1989.349  mm,
	W =     -.054 deg,	P =    16.500 deg,	R =   131.632 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
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
	X = -2170.089  mm,	Y =   480.814  mm,	Z =  2177.019  mm,
	W =     2.450 deg,	P =    16.323 deg,	R =   140.476 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1566.534  mm,	Y =   373.336  mm,	Z =  2314.433  mm,
	W =     1.551 deg,	P =     8.916 deg,	R =   146.042 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1304.702  mm,	Y =   399.810  mm,	Z =  2080.409  mm,
	W =     1.551 deg,	P =     8.916 deg,	R =   144.778 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -984.988  mm,	Y =   742.257  mm,	Z =  2624.660  mm,
	W =    -2.686 deg,	P =   -15.318 deg,	R =   135.165 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
