/PROG  UP207
/ATTR
OWNER		= SHIFT;
COMMENT		= "Prueba TCP SP2";
PROG_SIZE	= 3796;
CREATE		= DATE 16-10-11  TIME 01:31:08;
MODIFIED	= DATE 17-02-11  TIME 03:01:30;
FILE_NAME	= UP210;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 7404;
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
      7:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   8:  !Posicion Prueba TCP ;
   9:  !SP2 ;
  10:  !X=59.636 Y=1764.095 Z=486.186 ;
  11:  !W=172.107 P=-44.315 R=179.335 ;
  12:L P[5] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[17])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  13:L P[6] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  16:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DO[11] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   903.191  mm,	Y =    58.538  mm,	Z =  1574.102  mm,
	W =   145.319 deg,	P =     7.190 deg,	R =    96.617 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =    95.612  mm,	Y =   900.021  mm,	Z =  1574.102  mm,
	W =   145.319 deg,	P =     7.190 deg,	R =   176.845 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   370.589  mm,	Y =  1701.406  mm,	Z =   771.497  mm,
	W =   172.097 deg,	P =   -43.689 deg,	R =   179.342 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =    81.753  mm,	Y =  1764.095  mm,	Z =   464.069  mm,
	W =   172.107 deg,	P =   -44.315 deg,	R =   179.335 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =    59.636  mm,	Y =  1764.095  mm,	Z =   486.186  mm,
	W =   172.107 deg,	P =   -44.315 deg,	R =   179.335 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =    81.753  mm,	Y =  1764.095  mm,	Z =   464.069  mm,
	W =   172.107 deg,	P =   -44.315 deg,	R =   179.335 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   370.580  mm,	Y =  1701.406  mm,	Z =   771.500  mm,
	W =   172.097 deg,	P =   -43.688 deg,	R =   179.342 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =    95.612  mm,	Y =   900.021  mm,	Z =  1574.102  mm,
	W =   145.319 deg,	P =     7.190 deg,	R =   176.845 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   903.191  mm,	Y =    58.538  mm,	Z =  1574.102  mm,
	W =   145.319 deg,	P =     7.190 deg,	R =    96.617 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
