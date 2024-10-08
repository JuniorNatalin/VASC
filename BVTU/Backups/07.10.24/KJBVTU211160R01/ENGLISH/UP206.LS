/PROG  UP206
/ATTR
OWNER		= SHIFT;
COMMENT		= "TCP Check EZ1";
PROG_SIZE	= 3882;
CREATE		= DATE 17-05-06  TIME 11:16:34;
MODIFIED	= DATE 17-05-06  TIME 11:16:34;
FILE_NAME	= UP209;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 7846;
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
      7:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95] AND DO[11] AND DO[11]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
   8:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
   9:  !Posicion de TCP Check ;
  10:  !EZ1 ;
  11:  !X =  1344.972 ;
  12:  !Y =  1366.215 ;
  13:  !Z =  -813.501 ;
  14:  !W =  -168.063 ;
  15:  !P =      .308 ;
  16:  !R =  -104.216 ;
  17:L P[6] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[17])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
  18:L P[7] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
  21:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95] AND DO[11]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =   979.598  mm,	Y =      .602  mm,	Z =   818.440  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1304.354  mm,	Y =  1360.445  mm,	Z =   981.214  mm,
	W =  -168.561 deg,	P =     3.438 deg,	R =  -119.283 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1147.508  mm,	Y =  1506.407  mm,	Z =   804.258  mm,
	W =  -168.065 deg,	P =      .304 deg,	R =  -104.215 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1114.242  mm,	Y =  1515.575  mm,	Z =   669.060  mm,
	W =  -168.065 deg,	P =      .304 deg,	R =  -104.215 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1084.039  mm,	Y =  1480.167  mm,	Z =   523.454  mm,
	W =  -168.063 deg,	P =      .308 deg,	R =  -104.216 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1070.567  mm,	Y =  1426.991  mm,	Z =   523.158  mm,
	W =  -168.063 deg,	P =      .308 deg,	R =  -104.216 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1084.039  mm,	Y =  1480.167  mm,	Z =   523.454  mm,
	W =  -168.063 deg,	P =      .308 deg,	R =  -104.216 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1068.482  mm,	Y =  1527.247  mm,	Z =   649.757  mm,
	W =  -168.065 deg,	P =      .305 deg,	R =  -104.215 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =  1228.272  mm,	Y =  1435.145  mm,	Z =   962.034  mm,
	W =  -168.561 deg,	P =     3.438 deg,	R =  -119.283 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 1, 0',
	X =   979.598  mm,	Y =      .602  mm,	Z =   818.440  mm,
	W =  -176.060 deg,	P =    33.147 deg,	R =  -172.829 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   300.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
