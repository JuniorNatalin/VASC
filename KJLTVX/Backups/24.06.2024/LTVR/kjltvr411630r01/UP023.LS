/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Marcado";
PROG_SIZE	= 4808;
CREATE		= DATE 17-04-02  TIME 12:47:58;
MODIFIED	= DATE 23-07-13  TIME 03:43:30;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 9132;
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
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
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
     20:  !Marcador en Posicion de Reposo ;
     21:  WAIT (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[32] AND M[33])    ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
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
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:  !En Posicion de Marcado ;
  10:  !Marcado de Pieza ;
  11:  !Fin de Trabajo 3 ;
  12:L P[6] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  //DO[23]=(OFF) ;
      3:  //IF (!DI[217]),CALL MAKRO395 ;
      4:  //WAIT (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158])    ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[23])    ;
      7:  //DO[23]=(ON) ;
      8:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:L P[7] 1500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[2155] AND !DI[2156] AND DI[2157] AND !DI[2158] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=(ON) ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   317.191  mm,	Y =   894.705  mm,	Z =  2184.774  mm,
	W =     0.000 deg,	P =    15.000 deg,	R =    90.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   442.074  mm,	Y =   608.302  mm,	Z =  1193.502  mm,
	W =    28.279 deg,	P =    68.356 deg,	R =    87.077 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.106  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   750.753  mm,	Y =    42.795  mm,	Z =  1193.503  mm,
	W =    28.279 deg,	P =    68.356 deg,	R =    36.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.106  mm
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
	X =   898.204  mm,	Y =  -407.388  mm,	Z =   961.620  mm,
	W =   -16.348 deg,	P =    74.870 deg,	R =   -10.193 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
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
	X =   749.662  mm,	Y =  -837.434  mm,	Z =   260.722  mm,
	W =   149.928 deg,	P =    87.442 deg,	R =   137.612 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   747.220  mm,	Y =  -836.212  mm,	Z =   170.783  mm,
	W =  -142.926 deg,	P =    88.886 deg,	R =  -155.242 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
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
	X =   749.662  mm,	Y =  -837.434  mm,	Z =   260.722  mm,
	W =   149.928 deg,	P =    87.442 deg,	R =   137.612 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
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
	X =   898.204  mm,	Y =  -407.388  mm,	Z =   961.620  mm,
	W =   -16.348 deg,	P =    74.870 deg,	R =   -10.193 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
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
	X =   750.753  mm,	Y =    42.795  mm,	Z =  1193.503  mm,
	W =    28.279 deg,	P =    68.356 deg,	R =    36.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.106  mm
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
	X =   442.074  mm,	Y =   608.302  mm,	Z =  1193.502  mm,
	W =    28.279 deg,	P =    68.356 deg,	R =    87.077 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.106  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   317.191  mm,	Y =   894.705  mm,	Z =  2184.774  mm,
	W =     0.000 deg,	P =    15.000 deg,	R =    90.000 deg
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
