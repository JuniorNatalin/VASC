/PROG  FOLGE123
/ATTR
OWNER		= AUROM;
COMMENT		= "Pos. de Ajuste";
PROG_SIZE	= 1878;
CREATE		= DATE 03-15-00  TIME 13:36:58;
MODIFIED	= DATE 17-02-11  TIME 03:08:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 3670;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  UTOOL_NUM=24 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]=ON),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  DO[15]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[30]) ;
       ------ ;
   6:  !Posicion de Ajuste Ejes 1-6 ;
   7:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[17]=ON ;
      4:  WAIT (DI[17])    ;
      5:  DO[17]=OFF ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[30]) ;
       ------ ;
   8:J P[4] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[14]=ON ;
      3:  DO[15]=ON ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 1',
	X =   919.379  mm,	Y =    60.188  mm,	Z =  1586.575  mm,
	W =  -170.243 deg,	P =    39.286 deg,	R =  -167.434 deg
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
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 1',
	X =   919.379  mm,	Y =    60.188  mm,	Z =  1586.575  mm,
	W =  -170.243 deg,	P =    39.286 deg,	R =  -167.434 deg
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
	UF : 0, UT : 24,	
	J1=     0.000 deg,	J2=     0.000 deg,	J3=     0.000 deg,
	J4=     0.000 deg,	J5=     0.000 deg,	J6=     0.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 1',
	X =   919.379  mm,	Y =    60.188  mm,	Z =  1586.575  mm,
	W =  -170.243 deg,	P =    39.286 deg,	R =  -167.434 deg
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
