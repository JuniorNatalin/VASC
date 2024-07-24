/PROG  UP206
/ATTR
OWNER		= SHIFT;
COMMENT		= "Prueba TCP SP1";
PROG_SIZE	= 3526;
CREATE		= DATE 16-10-11  TIME 00:53:46;
MODIFIED	= DATE 17-02-11  TIME 02:59:08;
FILE_NAME	= UP209;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 7134;
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
    :  UTOOL_NUM=24 ;
    :  UFRAME_NUM=0 ;
    :  PAYLOAD[1] ;
    :J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  WAIT (DO[11])    ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :  !Posicion Prueba TCP ;
    :  !SP1 ;
    :  !X=1264.506 Y=-943.087 Z=54.067 ;
    :  !W=179.991 P=-0.281 R=-0.092 ;
    :L P[5] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[17])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :L P[6] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[30] AND M[95]) ;
       ------ ;
    :J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	X =  1119.240  mm,	Y =  -530.960  mm,	Z =  1690.132  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1234.083  mm,	Y =  -919.868  mm,	Z =   638.894  mm,
	W =   179.273 deg,	P =     -.018 deg,	R =    -1.756 deg
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
	X =  1228.634  mm,	Y =  -943.001  mm,	Z =   218.893  mm,
	W =   179.991 deg,	P =     -.281 deg,	R =     -.092 deg
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
	X =  1229.445  mm,	Y =  -943.029  mm,	Z =    53.895  mm,
	W =   179.991 deg,	P =     -.281 deg,	R =     -.092 deg
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
	X =  1264.506  mm,	Y =  -943.087  mm,	Z =    54.067  mm,
	W =   179.991 deg,	P =     -.281 deg,	R =     -.092 deg
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
	X =  1229.445  mm,	Y =  -943.029  mm,	Z =    53.895  mm,
	W =   179.991 deg,	P =     -.281 deg,	R =     -.092 deg
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
	X =  1228.634  mm,	Y =  -943.001  mm,	Z =   218.893  mm,
	W =   179.991 deg,	P =     -.281 deg,	R =     -.092 deg
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
	X =  1234.083  mm,	Y =  -919.868  mm,	Z =   638.894  mm,
	W =   179.273 deg,	P =     -.018 deg,	R =    -1.756 deg
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
	X =  1119.240  mm,	Y =  -530.960  mm,	Z =  1690.132  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
