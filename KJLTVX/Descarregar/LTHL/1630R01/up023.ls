/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Marcado";
PROG_SIZE	= 4114;
CREATE		= DATE 03-01-30  TIME 14:47:46;
MODIFIED	= DATE 23-07-11  TIME 03:20:14;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 7698;
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
   5:J P[2] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:  !En Posicion de Marcado ;
   9:  !Marcado de Pieza ;
  10:  !Fin de Trabajo 3 ;
  11:J P[5] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  //IF (!DI[217]),CALL MAKRO395 ;
      4:  //WAIT (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158])    ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=(ON) ;
      8:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[6] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1062.044  mm,	Y = -1435.948  mm,	Z =   687.917  mm,
	W =   -64.245 deg,	P =    20.610 deg,	R =   -49.203 deg
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
	X =  1343.475  mm,	Y = -1430.791  mm,	Z =   756.576  mm,
	W =     8.905 deg,	P =    19.645 deg,	R =   -36.958 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.149  mm,	Y =  -775.675  mm,	Z =   615.792  mm,
	W =      .180 deg,	P =     1.545 deg,	R =    17.994 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1925.897  mm,	Y =  -737.106  mm,	Z =   612.424  mm,
	W =      .180 deg,	P =     1.545 deg,	R =    17.994 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.149  mm,	Y =  -775.675  mm,	Z =   615.792  mm,
	W =      .180 deg,	P =     1.545 deg,	R =    17.994 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1343.475  mm,	Y = -1430.791  mm,	Z =   756.576  mm,
	W =     8.905 deg,	P =    19.645 deg,	R =   -36.958 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1062.044  mm,	Y = -1435.948  mm,	Z =   687.917  mm,
	W =   -64.245 deg,	P =    20.610 deg,	R =   -49.203 deg
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
