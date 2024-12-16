/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Deposito ST1320";
PROG_SIZE	= 6646;
CREATE		= DATE 23-12-23  TIME 18:58:08;
MODIFIED	= DATE 24-04-26  TIME 22:28:08;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 11950;
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
   3:  PAYLOAD[2] ;
   4:  !Espera Lib. Deposito vs ST1120 ;
   5:  !Apagar Perfil libre vs ST1320 ;
   6:  !Encender Anticol. 1 vs R1340R01 ;
   7:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
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
     18:  WAIT (M[1] AND M[32] AND M[33] AND DI[76] AND !DI[62] AND DI[61])    ;
     19:  DO[76]=OFF ;
     20:  !Encender Anticolisiones ;
     21:  DO[81]=ON ;
     22:  CALL MAKRO020    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Pos. Deposito ST1320 ;
  13:  !Fin de Trabajo 3 ;
  14:  !Deposito en ST1320 ;
  15:L P[6] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  F[2]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[34])    ;
     11:  DO[74]=ON ;
     12:  CALL MAKRO003    ;
     13:  WAIT (DI[75])    ;
     14:  DO[74]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:   ;
  17:L P[7] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  F[2]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[34])    ;
     11:  DO[74]=ON ;
     12:  CALL MAKRO003    ;
     13:  WAIT (DI[75])    ;
     14:  DO[74]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:  PAYLOAD[1] ;
  19:L P[8] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[2] AND !DI[61] AND DI[62])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  25:  !Encender Perfil libre vs ST1320 ;
  26:  !Apagar Anticol. 1 vs R1340R01 ;
  27:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[76]=ON ;
      5:  TIMER[5]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -526.921  mm,	Y =  -789.946  mm,	Z =  2627.082  mm,
	W =    -2.686 deg,	P =   -15.319 deg,	R =  -122.125 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -518.237  mm,	Y = -1396.349  mm,	Z =   379.987  mm,
	W =    37.161 deg,	P =    90.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -472.160  mm,	Y = -1563.561  mm,	Z =  -498.623  mm,
	W =    33.000 deg,	P =    90.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -519.466  mm,	Y = -1850.661  mm,	Z =  -984.442  mm,
	W =    -9.033 deg,	P =    89.726 deg,	R =   -48.401 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.006  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -516.522  mm,	Y = -1850.158  mm,	Z = -1107.935  mm,
	W =   -38.882 deg,	P =    89.502 deg,	R =   -78.267 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   213.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -516.514  mm,	Y = -1850.344  mm,	Z = -1140.338  mm,
	W =   -46.298 deg,	P =    89.570 deg,	R =   -85.685 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -516.600  mm,	Y = -1849.198  mm,	Z =  -986.983  mm,
	W =   -46.304 deg,	P =    89.570 deg,	R =   -85.691 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -519.465  mm,	Y = -1850.661  mm,	Z =  -984.442  mm,
	W =    -9.036 deg,	P =    89.726 deg,	R =   -48.404 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.006  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -518.501  mm,	Y = -1833.711  mm,	Z =  -807.262  mm,
	W =    -8.828 deg,	P =    89.727 deg,	R =   -47.539 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -343.539  mm,	Y = -1519.750  mm,	Z =  -465.965  mm,
	W =    -8.827 deg,	P =    89.727 deg,	R =   -47.537 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -518.237  mm,	Y = -1396.349  mm,	Z =   379.987  mm,
	W =    37.161 deg,	P =    90.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =  -526.921  mm,	Y =  -789.947  mm,	Z =  2627.082  mm,
	W =    -2.686 deg,	P =   -15.319 deg,	R =  -122.125 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 1',
	X =   752.468  mm,	Y =   579.183  mm,	Z =  2627.082  mm,
	W =    -2.686 deg,	P =   -15.319 deg,	R =    39.165 deg
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -984.963  mm,	Y =   742.259  mm,	Z =  2624.665  mm,
	W =    -2.686 deg,	P =   -15.319 deg,	R =   135.164 deg
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
