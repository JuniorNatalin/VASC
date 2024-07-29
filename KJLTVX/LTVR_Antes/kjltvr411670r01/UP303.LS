/PROG  UP303
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "bandaantesnousar";
PROG_SIZE	= 7702;
CREATE		= DATE 21-01-30  TIME 16:36:42;
MODIFIED	= DATE 21-01-30  TIME 16:36:42;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 15026;
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
   4:  !Apagar Perfil Lib. 74 vs banda ;
   5:  !Prender Anticol. vs 1630R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[43]=ON ;
      8:  DO[44]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[80]=ON ;
     11:  DO[78]=OFF ;
     12:  DO[77]=ON ;
     13:  DO[75]=OFF ;
     14:  DO[74]=ON ;
     15:  DO[72]=OFF ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[59] AND !DI[60] AND DI[74] AND M[1] AND DI[2163] AND !DI[2164])    ;
     21:  DO[74]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  12:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  13:J P[8] 100% CNT100 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  14:J P[9] 50% CNT100 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  15:J P[10] 10% CNT10 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  16:   ;
  17:  !En Posicion en Banda ;
  18:  !Dejar Pieza en SB151405 ;
  19:  !Fin de Trabajo 3 ;
  20:L P[11] 100mm/sec CNT0 ACC90 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[72]=ON ;
      4:  WAIT (!DI[59] AND DI[60])    ;
      5:  F[1]=(ON) ;
      6:  DO[577]=ON ;
      7:  DO[581]=ON ;
      8:  WAIT (DI[589])    ;
      9:  DO[581]=OFF ;
     10:  CALL MAKRO342    ;
     11:  CALL MAKRO340    ;
     12:  WAIT (M[31])    ;
     13:  CALL MAKRO003    ;
     14:  TIMER[14]=(TIMER[13]) ;
     15:  TIMER[14]=STOP ;
     16:  TIMER[13]=RESET ;
     17:  TIMER[13]=START ;
     18:  WAIT (DI[73])    ;
     19:  DO[72]=OFF ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[30] AND M[31] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  21:   ;
  22:  PAYLOAD[1] ;
  23:L P[12] 150mm/sec CNT30 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[30] AND M[31] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  24:J P[13] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[30] AND M[31] AND M[2] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  25:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[30] AND M[31] AND M[2] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  26:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  27:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  28:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  29:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  30:   ;
  31:  !Encender Perfil Lib 77 vs SB1514 ;
  32:  !Apagar Anticol. 3 vs 1630R01 ;
  33:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[577]=ON ;
      3:  DO[582]=ON ;
      4:  WAIT (M[33])    ;
      5:  DO[582]=OFF ;
      6:   ;
      7:  DO[23]=OFF ;
      8:  TIMER[6]=STOP ;
      9:  DO[74]=ON ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (M[2] AND M[30] AND M[31] AND DI[2163] AND !DI[2164]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.978  mm,	Y =  4426.811  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =      .001 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   604.666  mm,	Y =  5196.820  mm,	Z =   561.096  mm,
	W =    64.564 deg,	P =     0.000 deg,	R =   160.442 deg,
	E1=  2500.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   628.677  mm,	Y =  5455.742  mm,	Z =   196.216  mm,
	W =    57.091 deg,	P =      .981 deg,	R =   179.556 deg,
	E1=  2853.281  mm
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
	X =  1159.649  mm,	Y =  5776.803  mm,	Z =   457.723  mm,
	W =    36.011 deg,	P =   -34.561 deg,	R =   153.657 deg,
	E1=  3519.141  mm
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
	X =  1707.541  mm,	Y =  5649.391  mm,	Z =   655.731  mm,
	W =   -15.025 deg,	P =   -87.552 deg,	R =  -165.899 deg,
	E1=  3559.842  mm
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
	X =  2232.014  mm,	Y =  5638.992  mm,	Z =   842.641  mm,
	W =   -15.024 deg,	P =   -87.552 deg,	R =  -165.900 deg,
	E1=  4266.065  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1927.417  mm,	Y =  5624.169  mm,	Z =   959.757  mm,
	W =      .044 deg,	P =      .114 deg,	R =  -179.721 deg,
	E1=  4266.055  mm
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
	X =  1927.269  mm,	Y =  5624.233  mm,	Z =  1309.218  mm,
	W =      .044 deg,	P =      .114 deg,	R =  -179.721 deg,
	E1=  4266.065  mm
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
	X =  1761.162  mm,	Y =  5651.984  mm,	Z =  1247.489  mm,
	W =      .028 deg,	P =      .531 deg,	R =  -179.828 deg,
	E1=  4266.019  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1641.637  mm,	Y =  5647.724  mm,	Z =  1224.633  mm,
	W =      .046 deg,	P =      .180 deg,	R =  -179.881 deg,
	E1=  4266.009  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1641.245  mm,	Y =  5648.051  mm,	Z =  1191.471  mm,
	W =      .201 deg,	P =      .351 deg,	R =   178.957 deg,
	E1=  4265.983  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1738.043  mm,	Y =  5646.691  mm,	Z =  1188.192  mm,
	W =      .050 deg,	P =      .261 deg,	R =  -179.966 deg,
	E1=  4266.007  mm
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
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1877.434  mm,	Y =  5625.355  mm,	Z =  1197.361  mm,
	W =      .044 deg,	P =      .114 deg,	R =  -179.721 deg,
	E1=  4266.065  mm
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2194.484  mm,	Y =  5633.972  mm,	Z =   937.874  mm,
	W =   -11.030 deg,	P =   -86.683 deg,	R =  -169.898 deg,
	E1=  4266.065  mm
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
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1707.541  mm,	Y =  5649.391  mm,	Z =   655.731  mm,
	W =   -15.025 deg,	P =   -87.552 deg,	R =  -165.899 deg,
	E1=  3559.842  mm
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
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1159.649  mm,	Y =  5776.803  mm,	Z =   457.723  mm,
	W =    36.011 deg,	P =   -34.561 deg,	R =   153.657 deg,
	E1=  3519.141  mm
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
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   628.677  mm,	Y =  5455.742  mm,	Z =   196.217  mm,
	W =    57.091 deg,	P =      .981 deg,	R =   179.556 deg,
	E1=  2853.281  mm
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
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   604.666  mm,	Y =  5196.820  mm,	Z =   561.096  mm,
	W =    64.564 deg,	P =     0.000 deg,	R =   160.442 deg,
	E1=  2500.000  mm
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
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.978  mm,	Y =  4426.811  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =      .001 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
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
