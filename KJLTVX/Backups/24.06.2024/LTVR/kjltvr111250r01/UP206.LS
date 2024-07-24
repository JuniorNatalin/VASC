/PROG  UP206
/ATTR
OWNER		= AUROM;
COMMENT		= "Prueba TCP SP1";
PROG_SIZE	= 3530;
CREATE		= DATE 16-10-14  TIME 22:56:22;
MODIFIED	= DATE 17-02-24  TIME 04:46:28;
FILE_NAME	= UP209;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 7138;
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
      7:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
   7:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
   8:  !Posicion Prueba TCP ;
   9:  !SP1 ;
  10:  !X=-763.980 Y=-897.536 Z=-187.591 ;
  11:  !W=-75.851 P=-88.939 R=53.589 ;
  12:L P[5] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[17])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
  13:L P[6] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
  16:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   841.044  mm,	Y =  -284.319  mm,	Z =  1563.091  mm,
	W =  -172.162 deg,	P =   -29.440 deg,	R =   -25.722 deg
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
	X =    88.025  mm,	Y =  -883.431  mm,	Z =  1563.088  mm,
	W =  -172.162 deg,	P =   -29.440 deg,	R =   -91.354 deg
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
	X =  -454.414  mm,	Y = -1024.993  mm,	Z =  -223.931  mm,
	W =   -75.856 deg,	P =   -88.939 deg,	R =    53.594 deg
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
	X =  -764.441  mm,	Y =  -898.066  mm,	Z =  -222.415  mm,
	W =   -75.858 deg,	P =   -88.939 deg,	R =    53.596 deg
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
	X =  -763.980  mm,	Y =  -897.356  mm,	Z =  -187.591  mm,
	W =   -75.851 deg,	P =   -88.939 deg,	R =    53.589 deg
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
	X =  -764.441  mm,	Y =  -898.066  mm,	Z =  -222.415  mm,
	W =   -75.858 deg,	P =   -88.939 deg,	R =    53.596 deg
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
	X =  -454.414  mm,	Y = -1024.993  mm,	Z =  -223.931  mm,
	W =   -75.856 deg,	P =   -88.939 deg,	R =    53.594 deg
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
	X =    88.025  mm,	Y =  -883.431  mm,	Z =  1563.088  mm,
	W =  -172.162 deg,	P =   -29.440 deg,	R =   -91.354 deg
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
	X =   841.044  mm,	Y =  -284.319  mm,	Z =  1563.091  mm,
	W =  -172.162 deg,	P =   -29.440 deg,	R =   -25.722 deg
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
