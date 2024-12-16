/PROG  UP022
/ATTR
OWNER		= AUROM;
COMMENT		= "Toma B2S2 NEW";
PROG_SIZE	= 4686;
CREATE		= DATE 21-06-19  TIME 21:08:36;
MODIFIED	= DATE 24-05-24  TIME 21:56:46;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 9350;
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
   4:   ;
   5:J P[1] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  ! Lib. de herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[75]=ON ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  DO[72]=ON ;
     14:  DO[70]=OFF ;
     15:  DO[68]=OFF ;
     16:  ! Lib. de anticolisiones ;
     17:  ! Apagar Pos. base ;
     18:  DO[15]=OFF ;
     19:  ! Robot en Trayectoria ;
     20:  DO[16]=ON ;
     21:   ;
     22:   ;
     23:   ;
     24:  WAIT (DI[75])    ;
     25:  DO[75]=OFF ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (DI[75] AND M[2] AND M[31] AND M[30]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[75] AND M[2] AND M[31] AND M[30]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[75] AND M[2] AND M[31] AND M[30]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[75] AND M[2] AND M[31] AND M[30]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[75] AND M[2] AND M[31] AND M[30]) ;
       ------ ;
  10:L P[6] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[75] AND M[31] AND M[30]) ;
       ------ ;
  11:   ;
  12:  ! Buscar pieza B2-S1 ;
  13:  CALL SUCHL023    ;
  14:   ;
  15:L P[7] 100mm/sec CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[1] AND M[32] AND M[30]) ;
       ------ ;
  16:J P[8] 50% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[1] AND M[32] AND M[30]) ;
       ------ ;
  17:J P[9] 50% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[1] AND M[32] AND M[30]) ;
       ------ ;
  18:J P[10] 50% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[1] AND M[32] AND M[30]) ;
       ------ ;
  19:J P[11] 50% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[74] AND M[1] AND M[32] AND M[30]) ;
       ------ ;
  20:   ;
  21:  !lib perfil ;
  22:J P[12] 50% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[75]=ON ;
      4:  TIMER[3]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[32] AND M[30]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.882  mm,	Z =  1457.542  mm,
	W =   110.932 deg,	P =   -12.248 deg,	R =    70.119 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   637.413  mm,	Y =   457.250  mm,	Z =  1504.372  mm,
	W =   114.819 deg,	P =   -28.341 deg,	R =    97.534 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   719.824  mm,	Y =   981.151  mm,	Z =  1163.512  mm,
	W =   144.538 deg,	P =   -33.702 deg,	R =    86.511 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1380.517  mm,	Y =  1501.591  mm,	Z =   666.148  mm,
	W =  -179.465 deg,	P =   -18.622 deg,	R =    12.452 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1911.024  mm,	Y =  1451.937  mm,	Z =   360.370  mm,
	W =   179.398 deg,	P =      .768 deg,	R =    -7.351 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2490.305  mm,	Y =  1376.066  mm,	Z =   290.915  mm,
	W =   179.398 deg,	P =      .769 deg,	R =    -7.351 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2488.462  mm,	Y =  1374.883  mm,	Z =   379.404  mm,
	W =   179.616 deg,	P =     1.052 deg,	R =    -7.351 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1791.133  mm,	Y =  1460.918  mm,	Z =   472.182  mm,
	W =   177.939 deg,	P =    -5.278 deg,	R =     1.667 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1380.517  mm,	Y =  1501.591  mm,	Z =   666.148  mm,
	W =  -179.465 deg,	P =   -18.622 deg,	R =    12.452 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   719.825  mm,	Y =   981.150  mm,	Z =  1163.512  mm,
	W =   144.538 deg,	P =   -33.702 deg,	R =    86.511 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   637.413  mm,	Y =   457.250  mm,	Z =  1504.372  mm,
	W =   114.819 deg,	P =   -28.341 deg,	R =    97.534 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.882  mm,	Z =  1457.541  mm,
	W =   110.932 deg,	P =   -12.248 deg,	R =    70.119 deg
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
