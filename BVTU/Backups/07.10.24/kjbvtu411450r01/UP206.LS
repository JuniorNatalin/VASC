/PROG  UP206
/ATTR
OWNER		= SHIFT;
COMMENT		= "TCP Check EZ1";
PROG_SIZE	= 3128;
CREATE		= DATE 17-04-24  TIME 18:03:00;
MODIFIED	= DATE 17-04-25  TIME 15:06:32;
FILE_NAME	= UP203;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 5992;
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
      7:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96] AND DO[11]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96] AND DO[11]) ;
       ------ ;
   6:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96] AND DO[11]) ;
       ------ ;
   7:  !Posicion de TCP Check ;
   8:  !EZ1 ;
   9:  !X=617.550 Y=-1669.920 Z=279.403 ;
  10:  !W=30.902 P=-60.788 R=-53.436 ;
  11:L P[4] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[17])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96] AND DO[11]) ;
       ------ ;
  12:L P[5] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96] AND DO[11]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96] AND DO[11]) ;
       ------ ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96] AND DO[11]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   157.725  mm,	Y = -1147.716  mm,	Z =  1386.621  mm,
	W =   135.853 deg,	P =    26.939 deg,	R =    29.386 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   200.000  mm
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
	X =   120.417  mm,	Y = -1720.141  mm,	Z =  1356.497  mm,
	W =   160.239 deg,	P =   -50.064 deg,	R =   -63.806 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   200.000  mm
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
	X =   555.122  mm,	Y = -2050.554  mm,	Z =  1019.293  mm,
	W =    90.217 deg,	P =   -60.049 deg,	R =   -50.497 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   199.300  mm
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
	X =   538.552  mm,	Y = -2030.456  mm,	Z =   974.086  mm,
	W =    90.217 deg,	P =   -60.049 deg,	R =   -50.497 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   199.300  mm
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
	X =   555.122  mm,	Y = -2050.554  mm,	Z =  1019.293  mm,
	W =    90.217 deg,	P =   -60.049 deg,	R =   -50.497 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   199.300  mm
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
	X =   120.417  mm,	Y = -1720.141  mm,	Z =  1356.497  mm,
	W =   160.239 deg,	P =   -50.064 deg,	R =   -63.806 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   200.000  mm
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
	X =   157.725  mm,	Y = -1147.716  mm,	Z =  1386.621  mm,
	W =   135.853 deg,	P =    26.939 deg,	R =    29.386 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
