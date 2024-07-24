/PROG  UP003	  Job
/ATTR
OWNER		= AUROM;
COMMENT		= "Marcado";
PROG_SIZE	= 4112;
CREATE		= DATE 16-09-03  TIME 22:49:46;
MODIFIED	= DATE 17-04-01  TIME 16:47:12;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 7696;
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
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[32] AND M[33])    ;
     21:  WAIT (DI[23])    ;
     22:  DO[23]=ON ;
     23:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:  !En Posicion de Marcado ;
   9:  !Marcado de Pieza ;
  10:  !Fin de Trabajo 3 ;
  11:L P[5] 400mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  IF (!DI[217]),CALL MAKRO395 ;
      4:  WAIT (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158])    ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=(ON) ;
      8:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:L P[6] 400mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=(ON) ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -464.787  mm,	Y =  -676.745  mm,	Z =  1035.419  mm,
	W =   142.550 deg,	P =    72.302 deg,	R =  -130.575 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   251.425  mm,	Y = -1616.783  mm,	Z =  1760.852  mm,
	W =    77.329 deg,	P =    13.513 deg,	R =   -77.927 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   958.570  mm,	Y = -1726.264  mm,	Z =   525.178  mm,
	W =    -3.936 deg,	P =     1.012 deg,	R =   -70.931 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   963.652  mm,	Y = -1779.282  mm,	Z =   326.673  mm,
	W =    -2.147 deg,	P =     1.016 deg,	R =   -70.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   966.514  mm,	Y = -1787.743  mm,	Z =   326.601  mm,
	W =    -2.147 deg,	P =     1.012 deg,	R =   -70.932 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   963.652  mm,	Y = -1779.282  mm,	Z =   326.673  mm,
	W =    -2.147 deg,	P =     1.016 deg,	R =   -70.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   958.570  mm,	Y = -1726.264  mm,	Z =   525.178  mm,
	W =    -3.936 deg,	P =     1.012 deg,	R =   -70.931 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   251.425  mm,	Y = -1616.783  mm,	Z =  1760.852  mm,
	W =    77.329 deg,	P =    13.513 deg,	R =   -77.927 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -464.787  mm,	Y =  -676.745  mm,	Z =  1035.419  mm,
	W =   142.550 deg,	P =    72.302 deg,	R =  -130.575 deg
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
