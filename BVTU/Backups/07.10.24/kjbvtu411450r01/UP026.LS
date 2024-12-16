/PROG  UP026
/ATTR
OWNER		= AUROM;
COMMENT		= "Toma ST1460";
PROG_SIZE	= 7928;
CREATE		= DATE 96-03-24  TIME 10:20:46;
MODIFIED	= DATE 24-08-31  TIME 23:43:32;
FILE_NAME	= UP026;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 15556;
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
   4:  ! Esperar Lib. Tomar de ST1460 ;
   5:  ! Ingresar Pieza ;
   6:  ! Apagar Perfil Libre ST1460 ;
   7:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  ! Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  ! Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  ! Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  ! Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[72] AND DI[62] AND !DI[61] AND M[2] AND M[31] AND M[33] AND M[35])    ;
     21:  DO[72]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[72] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:  ! En Pos. de Tomar de ST1460 ;
  17:  ! Fin de Trabajo 6 ;
  18:  ! Extraccion vs ST1460 ;
  19:L P[10] 150mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[1]=(ON) ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32] AND M[34] AND M[35])    ;
      7:  DO[70]=ON ;
      8:  CALL MAKRO006    ;
      9:  WAIT (DI[71])    ;
     10:  DO[70]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[71] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:  PAYLOAD[2] ;
  21:L P[11] 300mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  30:  ! Encender Perfil Libre vs ST1460 ;
  31:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[72]=ON ;
      4:  TIMER[6]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
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
	X =  1240.270  mm,	Y =  -291.128  mm,	Z =   607.266  mm,
	W =  -127.108 deg,	P =    48.902 deg,	R =   -33.550 deg
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
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1135.569  mm,	Y =   255.803  mm,	Z =   797.376  mm,
	W =   -60.371 deg,	P =    59.288 deg,	R =    29.242 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   986.102  mm,	Y =   292.459  mm,	Z =   795.163  mm,
	W =   -33.815 deg,	P =    67.076 deg,	R =    58.800 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   289.879  mm,	Y =   986.895  mm,	Z =   795.112  mm,
	W =   -33.806 deg,	P =    67.077 deg,	R =   115.921 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.630  mm,	Y =  1518.290  mm,	Z =   668.207  mm,
	W =    17.558 deg,	P =    67.104 deg,	R =   141.053 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   976.637  mm,	Y =  2000.622  mm,	Z =   433.559  mm,
	W =    53.947 deg,	P =    80.671 deg,	R =   125.700 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1113.056  mm,	Y =  2231.761  mm,	Z =   121.479  mm,
	W =    88.439 deg,	P =    89.365 deg,	R =    88.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.100  mm
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
	X =  1083.142  mm,	Y =  2238.870  mm,	Z =  -195.402  mm,
	W =    62.379 deg,	P =    89.552 deg,	R =    62.754 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.600  mm
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
	X =  1085.866  mm,	Y =  2240.438  mm,	Z =  -420.702  mm,
	W =   107.036 deg,	P =    89.494 deg,	R =   107.505 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.900  mm
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
	X =  1083.852  mm,	Y =  2240.258  mm,	Z =  -394.978  mm,
	W =    62.453 deg,	P =    89.552 deg,	R =    62.828 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.600  mm
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
	X =  1082.510  mm,	Y =  2237.630  mm,	Z =   -18.070  mm,
	W =    62.476 deg,	P =    89.552 deg,	R =    62.850 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.600  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1113.056  mm,	Y =  2231.762  mm,	Z =   121.479  mm,
	W =    88.439 deg,	P =    89.365 deg,	R =    88.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.100  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   976.637  mm,	Y =  2000.622  mm,	Z =   433.559  mm,
	W =    53.947 deg,	P =    80.671 deg,	R =   125.701 deg
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
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.630  mm,	Y =  1518.290  mm,	Z =   668.207  mm,
	W =    17.558 deg,	P =    67.104 deg,	R =   141.053 deg
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
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   289.879  mm,	Y =   986.895  mm,	Z =   795.112  mm,
	W =   -33.806 deg,	P =    67.077 deg,	R =   115.921 deg
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
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   986.102  mm,	Y =   292.459  mm,	Z =   795.163  mm,
	W =   -33.815 deg,	P =    67.076 deg,	R =    58.800 deg
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
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1135.570  mm,	Y =   255.803  mm,	Z =   797.376  mm,
	W =   -60.371 deg,	P =    59.288 deg,	R =    29.242 deg
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
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1240.270  mm,	Y =  -291.128  mm,	Z =   607.266  mm,
	W =  -127.108 deg,	P =    48.902 deg,	R =   -33.550 deg
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
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
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
