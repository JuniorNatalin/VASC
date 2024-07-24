/PROG  UP112
/ATTR
OWNER		= AUROM;
COMMENT		= "Mant. G1";
PROG_SIZE	= 5728;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 24-03-14  TIME 03:42:40;
FILE_NAME	= UP112;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 11132;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1] ;
   4:   ;
   5:   ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=OFF ;
      7:  DO[78]=ON ;
      8:  DO[77]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[75]=ON ;
     11:  DO[74]=OFF ;
     12:  DO[73]=OFF ;
     13:  DO[72]=OFF ;
     14:  DO[71]=OFF ;
     15:  !Lib. de Anticolisiones ;
     16:  DO[41]=ON ;
     17:  DO[42]=ON ;
     18:  DO[43]=ON ;
     19:  DO[44]=ON ;
     20:  DO[55]=ON ;
     21:  DO[56]=ON ;
     22:  !Apagar Pos. Base ;
     23:  DO[15]=OFF ;
     24:  !Robot en Trayectoria ;
     25:  DO[16]=ON ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  13:  !Pos. de Mantenimiento ;
  14:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[17]=ON ;
      4:  GO[19]=1 ;
      5:  WAIT (DI[17])    ;
      6:  DO[17]=OFF ;
      7:  GO[19]=0 ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1105.490  mm,	Y =   969.349  mm,	Z =  2451.019  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =  1461.637  mm,	Y =  -908.764  mm,	Z =  2056.109  mm,
	W =  -104.981 deg,	P =    -5.716 deg,	R =    23.661 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1244.726  mm,	Y =  -560.011  mm,	Z =  2369.420  mm,
	W =  -118.371 deg,	P =    -7.463 deg,	R =    25.205 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1222.501  mm,	Y = -1409.566  mm,	Z =  1135.203  mm,
	W =    -1.593 deg,	P =     5.279 deg,	R =   -84.067 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1266.223  mm,	Y = -1569.589  mm,	Z =   355.389  mm,
	W =    -1.168 deg,	P =     1.176 deg,	R =   -81.700 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1385.509  mm,	Y = -1435.927  mm,	Z =  -121.991  mm,
	W =    -1.168 deg,	P =     1.176 deg,	R =   -81.700 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1392.969  mm,	Y = -1469.731  mm,	Z =  -454.607  mm,
	W =    -1.168 deg,	P =     1.176 deg,	R =   -81.700 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1317.114  mm,	Y = -1463.948  mm,	Z =  -744.474  mm,
	W =    -1.168 deg,	P =     1.176 deg,	R =   -81.700 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1392.969  mm,	Y = -1469.731  mm,	Z =  -454.607  mm,
	W =    -1.168 deg,	P =     1.176 deg,	R =   -81.700 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1385.509  mm,	Y = -1435.927  mm,	Z =  -121.992  mm,
	W =    -1.168 deg,	P =     1.176 deg,	R =   -81.700 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1266.223  mm,	Y = -1569.589  mm,	Z =   355.389  mm,
	W =    -1.168 deg,	P =     1.176 deg,	R =   -81.700 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1222.502  mm,	Y = -1409.566  mm,	Z =  1135.203  mm,
	W =    -1.593 deg,	P =     5.279 deg,	R =   -84.067 deg
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
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1244.726  mm,	Y =  -560.011  mm,	Z =  2369.420  mm,
	W =  -118.371 deg,	P =    -7.463 deg,	R =    25.205 deg
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1105.490  mm,	Y =   969.349  mm,	Z =  2451.019  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
