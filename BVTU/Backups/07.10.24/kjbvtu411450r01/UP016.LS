/PROG  UP016
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Toma ST1460";
PROG_SIZE	= 7934;
CREATE		= DATE 20-01-02  TIME 12:06:26;
MODIFIED	= DATE 20-01-02  TIME 12:06:28;
FILE_NAME	= UP006;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 15562;
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
  19:L P[10] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     13:  TC_ONLINE (DI[71] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:  PAYLOAD[2] ;
  21:L P[11] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
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
	X =  1099.251  mm,	Y =   670.862  mm,	Z =   864.268  mm,
	W =   -78.719 deg,	P =    36.325 deg,	R =    39.909 deg
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
	X =   951.569  mm,	Y =  1091.281  mm,	Z =  1154.832  mm,
	W =   -35.190 deg,	P =    36.338 deg,	R =    63.568 deg
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
	X =   382.881  mm,	Y =  1405.714  mm,	Z =  1412.495  mm,
	W =   -20.408 deg,	P =    31.937 deg,	R =    90.394 deg
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
	X =   794.895  mm,	Y =  1818.326  mm,	Z =  1092.420  mm,
	W =    86.150 deg,	P =    39.952 deg,	R =   111.834 deg
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
	X =  1083.662  mm,	Y =  2240.494  mm,	Z =   120.176  mm,
	W =    66.062 deg,	P =    89.306 deg,	R =    66.247 deg
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
	X =  1083.662  mm,	Y =  2240.494  mm,	Z =  -260.704  mm,
	W =    66.061 deg,	P =    89.306 deg,	R =    66.247 deg
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
	X =  1083.662  mm,	Y =  2240.493  mm,	Z =  -422.585  mm,
	W =    66.061 deg,	P =    89.306 deg,	R =    66.247 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1083.662  mm,	Y =  2240.494  mm,	Z =  -259.266  mm,
	W =    66.063 deg,	P =    89.306 deg,	R =    66.248 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1083.662  mm,	Y =  2240.494  mm,	Z =   -17.825  mm,
	W =    66.063 deg,	P =    89.306 deg,	R =    66.248 deg
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
P[13]{
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   794.895  mm,	Y =  1818.326  mm,	Z =  1092.420  mm,
	W =    86.150 deg,	P =    39.952 deg,	R =   111.834 deg
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
	X =   382.881  mm,	Y =  1405.714  mm,	Z =  1412.496  mm,
	W =   -20.408 deg,	P =    31.937 deg,	R =    90.394 deg
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
	X =   859.426  mm,	Y =  1116.142  mm,	Z =  1193.819  mm,
	W =   -37.787 deg,	P =    36.467 deg,	R =    66.655 deg
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
	X =   976.016  mm,	Y =   613.923  mm,	Z =   868.999  mm,
	W =   -64.343 deg,	P =    46.877 deg,	R =    52.153 deg
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
P[19]{
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
