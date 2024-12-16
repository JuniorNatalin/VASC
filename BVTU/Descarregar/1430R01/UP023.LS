/PROG  UP023
/ATTR
OWNER		= AUROM;
COMMENT		= "Deposito ST1440";
PROG_SIZE	= 5420;
CREATE		= DATE 16-07-23  TIME 08:36:04;
MODIFIED	= DATE 23-07-09  TIME 15:02:56;
FILE_NAME	= UP445;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 9644;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
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
   4:  !Esperar Lib. de Deposito ST1440 ;
   5:  !Apagar Perfil Libre vs ST1440 ;
   6:  !Encender Anticol. 3 vs R1450R01 ;
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
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (M[1] AND M[32] AND M[34] AND M[35] AND DI[76] AND !DI[62] AND DI[61])    ;
     21:  DO[76]=OFF ;
     22:  !Solicitar Anticolisiones ;
     23:  DO[83]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion de Deposito ST1440 ;
  13:  !Fin de Trabajo 3 ;
  14:  !Deposito en ST1440 ;
  15:L P[6] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[74]=ON ;
      4:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      5:  F[1]=(ON) ;
      6:  F[2]=(ON) ;
      7:  CALL MAKRO342    ;
      8:  CALL MAKRO340    ;
      9:  WAIT (M[31] AND M[33])    ;
     10:  F[3]=(ON) ;
     11:  CALL MAKRO343    ;
     12:  WAIT (M[36])    ;
     13:  DO[74]=ON ;
     14:  CALL MAKRO003    ;
     15:  WAIT (DI[75])    ;
     16:  DO[74]=OFF ;
     17:  WAIT (DI[23])    ;
     18:  DO[23]=ON ;
     19:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  16:  PAYLOAD[1] ;
  17:L P[7] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[2] AND !DI[61] AND DI[62])    ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[35])    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[8] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  21:  !Encender Perfil Libre ST1440 ;
  22:  !Apagar Anticol. 3 vs R1450R01 ;
  23:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[43]=ON ;
      4:  DO[76]=ON ;
      5:  TIMER[5]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1472.939  mm,	Y =  -267.063  mm,	Z =  2166.730  mm,
	W =    83.502 deg,	P =     9.510 deg,	R =     1.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   231.654  mm,	Y =  1418.885  mm,	Z =   696.466  mm,
	W =    64.691 deg,	P =    69.448 deg,	R =    96.914 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.754  mm
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
	X =  -632.126  mm,	Y =  1319.382  mm,	Z =   553.544  mm,
	W =    59.303 deg,	P =    78.806 deg,	R =   114.378 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.638  mm
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
	X = -1313.608  mm,	Y =  1689.566  mm,	Z =    -9.731  mm,
	W =   -29.296 deg,	P =    89.759 deg,	R =    60.936 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.500  mm
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
	X = -1313.343  mm,	Y =  1693.122  mm,	Z =   -64.894  mm,
	W =   -13.659 deg,	P =    89.924 deg,	R =    76.390 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.200  mm
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
	X = -1314.485  mm,	Y =  1696.333  mm,	Z =  -118.131  mm,
	W =    12.250 deg,	P =    89.511 deg,	R =   102.298 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.200  mm
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
	X = -1313.341  mm,	Y =  1694.943  mm,	Z =   -74.291  mm,
	W =   -13.715 deg,	P =    89.924 deg,	R =    76.335 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.200  mm
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
	X = -1313.607  mm,	Y =  1679.487  mm,	Z =   153.469  mm,
	W =   -29.296 deg,	P =    89.759 deg,	R =    60.936 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.500  mm
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
	X =  -604.049  mm,	Y =  1484.204  mm,	Z =   462.103  mm,
	W =    53.146 deg,	P =    81.338 deg,	R =   119.023 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.607  mm
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
	X =   231.654  mm,	Y =  1418.885  mm,	Z =   696.467  mm,
	W =    64.691 deg,	P =    69.448 deg,	R =    96.914 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.754  mm
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
	X =  1472.939  mm,	Y =  -267.063  mm,	Z =  2166.730  mm,
	W =    83.502 deg,	P =     9.510 deg,	R =     1.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
