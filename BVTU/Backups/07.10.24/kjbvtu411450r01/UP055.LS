/PROG  UP055
/ATTR
OWNER		= engenhar;
COMMENT		= "Deposito ST1460";
PROG_SIZE	= 8476;
CREATE		= DATE 04-05-26  TIME 15:46:54;
MODIFIED	= DATE 24-07-13  TIME 22:36:44;
FILE_NAME	= UP055;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 16588;
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
   1:  PAYLOAD[2] ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:  ! Esperar Lib. Depos. ST1460 ;
   5:  ! Extraccion Pieza ;
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
     20:  WAIT (DI[72] AND DI[70] AND !DI[62] AND DI[61] AND M[1] AND M[32] AND M[34] AND M[35])    ;
     21:  DO[72]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[70] AND DI[72] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  17:  ! En Pos. de Deposito en ST1460 ;
  18:  ! Fin de Trabajo 5 ;
  19:  ! Extraccion vs ST1460 ;
  20:L P[11] 250mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[31] AND M[33] AND M[35])    ;
      9:  DO[70]=ON ;
     10:  CALL MAKRO005    ;
     11:  WAIT (DI[71])    ;
     12:  DO[70]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  21:  PAYLOAD[1] ;
  22:L P[12] 300mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[70] AND DI[71] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  31:  ! Encender Perfil Libre vs ST1460 ;
  32:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[72]=ON ;
      4:  TIMER[6]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
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
	X =  1128.451  mm,	Y =   494.591  mm,	Z =   731.513  mm,
	W =   -87.389 deg,	P =    46.063 deg,	R =    29.188 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   739.639  mm,	Y =   803.736  mm,	Z =   760.982  mm,
	W =   -46.254 deg,	P =    53.969 deg,	R =    84.069 deg
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
	X =   686.180  mm,	Y =  1018.897  mm,	Z =   674.444  mm,
	W =   -45.492 deg,	P =    53.311 deg,	R =    85.563 deg
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
	X =   516.193  mm,	Y =  1502.156  mm,	Z =   847.502  mm,
	W =   -27.592 deg,	P =    49.966 deg,	R =    81.795 deg
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
	X =   786.367  mm,	Y =  1799.145  mm,	Z =   540.707  mm,
	W =   101.416 deg,	P =    48.794 deg,	R =   122.574 deg
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
	X =  1113.141  mm,	Y =  2235.017  mm,	Z =  -172.503  mm,
	W =    88.438 deg,	P =    89.365 deg,	R =    88.501 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1083.136  mm,	Y =  2238.863  mm,	Z =  -193.729  mm,
	W =    62.428 deg,	P =    89.552 deg,	R =    62.802 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1083.969  mm,	Y =  2240.449  mm,	Z =  -424.263  mm,
	W =    62.321 deg,	P =    89.552 deg,	R =    62.695 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.400  mm
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
	X =  1083.165  mm,	Y =  2238.914  mm,	Z =  -202.076  mm,
	W =    62.467 deg,	P =    89.552 deg,	R =    62.842 deg
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
	X =  1083.327  mm,	Y =  2235.526  mm,	Z =   -79.132  mm,
	W =    88.474 deg,	P =    89.365 deg,	R =    88.536 deg
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
	X =  1083.327  mm,	Y =  2235.526  mm,	Z =   191.108  mm,
	W =    88.474 deg,	P =    89.365 deg,	R =    88.536 deg
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
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   786.367  mm,	Y =  1799.145  mm,	Z =   540.707  mm,
	W =   101.416 deg,	P =    48.794 deg,	R =   122.574 deg
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
	X =   516.193  mm,	Y =  1502.156  mm,	Z =   847.502  mm,
	W =   -27.592 deg,	P =    49.966 deg,	R =    81.795 deg
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
	X =   686.180  mm,	Y =  1018.897  mm,	Z =   674.444  mm,
	W =   -45.492 deg,	P =    53.311 deg,	R =    85.563 deg
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
	X =   739.639  mm,	Y =   803.736  mm,	Z =   760.982  mm,
	W =   -46.254 deg,	P =    53.969 deg,	R =    84.069 deg
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
	X =  1111.251  mm,	Y =   351.273  mm,	Z =   691.328  mm,
	W =   -79.694 deg,	P =    57.600 deg,	R =    27.769 deg
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
	X =  1225.895  mm,	Y =  -283.547  mm,	Z =   538.026  mm,
	W =  -129.244 deg,	P =    52.603 deg,	R =   -35.313 deg
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
P[21]{
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
