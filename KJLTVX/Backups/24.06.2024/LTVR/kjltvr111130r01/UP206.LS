/PROG  UP206
/ATTR
OWNER		= AUROM;
COMMENT		= "Prueba TCP SP1";
PROG_SIZE	= 3886;
CREATE		= DATE 16-11-19  TIME 02:11:22;
MODIFIED	= DATE 17-02-24  TIME 04:42:28;
FILE_NAME	= UP209;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 7494;
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
   1:  UTOOL_NUM=24 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  WAIT (DO[11])    ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
   8:  !Posicion Prueba TCP ;
   9:  !SP1 ;
  10:  !X=2071.094 Y=-336.590 Z=102.812 ;
  11:  !W=134.753 P=-0.286 R=83.416 ;
  12:L P[5] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[17])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
  13:L P[6] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  1542.529  mm,	Y =  1241.884  mm,	Z =   777.942  mm,
	W =  -174.910 deg,	P =     8.442 deg,	R =   162.116 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  1979.311  mm,	Y =    63.172  mm,	Z =   777.942  mm,
	W =  -174.910 deg,	P =     8.442 deg,	R =   125.107 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.607  mm,	Y =  -139.989  mm,	Z =   108.230  mm,
	W =   134.753 deg,	P =     -.286 deg,	R =    86.870 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  2114.823  mm,	Y =  -342.373  mm,	Z =    59.291  mm,
	W =   134.753 deg,	P =     -.286 deg,	R =    83.416 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.094  mm,	Y =  -336.590  mm,	Z =   102.812  mm,
	W =   134.753 deg,	P =     -.286 deg,	R =    83.416 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  2114.823  mm,	Y =  -342.373  mm,	Z =    59.291  mm,
	W =   134.753 deg,	P =     -.286 deg,	R =    83.416 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.607  mm,	Y =  -139.989  mm,	Z =   108.230  mm,
	W =   134.753 deg,	P =     -.286 deg,	R =    86.870 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  1979.311  mm,	Y =    63.172  mm,	Z =   777.942  mm,
	W =  -174.910 deg,	P =     8.442 deg,	R =   125.107 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =  1542.529  mm,	Y =  1241.884  mm,	Z =   777.942  mm,
	W =  -174.910 deg,	P =     8.442 deg,	R =   162.116 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
