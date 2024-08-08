/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Dejar SB174005";
PROG_SIZE	= 5666;
CREATE		= DATE 23-12-22  TIME 09:04:54;
MODIFIED	= DATE 24-06-29  TIME 22:01:16;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 10650;
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
   1:  //OVERRIDE=100% ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:  PAYLOAD[2] ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[72]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[59] AND !DI[60] AND DI[74] AND M[1] AND DI[2163] AND !DI[2164])    ;
     21:  DO[74]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[74] AND M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  10:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  11:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  12:  !Dejar pieza en Banda ;
  13:  !Fin de Trabajo 3 ;
  14:L P[8] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[60] AND !DI[59]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[72]=ON ;
      9:  CALL MAKRO003    ;
     10:  TIMER[14]=(TIMER[13]) ;
     11:  TIMER[14]=STOP ;
     12:  TIMER[13]=RESET ;
     13:  TIMER[13]=START ;
     14:  WAIT (DI[73])    ;
     15:  DO[72]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[30] AND M[31] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  15:  PAYLOAD[1] ;
  16:L P[9] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[2])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  18:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  19:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[73] AND M[2] AND M[30] AND M[31] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  20:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[74]=ON ;
      4:  TIMER[6]=STOP ;
      5:  F[933]=(ON) ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  21:  OVERRIDE=100% ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   280.460  mm,	Y = -4439.163  mm,	Z =   164.301  mm,
	W =   114.065 deg,	P =   -61.153 deg,	R =    23.484 deg,
	E1= -1733.940  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =     -.917  mm,	Y = -4503.205  mm,	Z =   188.494  mm,
	W =   -34.979 deg,	P =   -34.321 deg,	R =   159.329 deg,
	E1= -1976.165  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   940.289  mm,	Y = -4881.491  mm,	Z =   375.241  mm,
	W =   -29.229 deg,	P =   -25.160 deg,	R =   173.450 deg,
	E1= -2526.564  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   841.814  mm,	Y = -4969.310  mm,	Z =  1326.502  mm,
	W =     -.562 deg,	P =    -8.775 deg,	R =   162.172 deg,
	E1= -2526.563  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   595.482  mm,	Y = -4919.139  mm,	Z =  1244.785  mm,
	W =    -2.055 deg,	P =    -3.268 deg,	R =   160.127 deg,
	E1= -2526.564  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   544.952  mm,	Y = -4820.772  mm,	Z =  1206.556  mm,
	W =      .529 deg,	P =     3.472 deg,	R =   159.240 deg,
	E1= -2526.527  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   546.655  mm,	Y = -4821.729  mm,	Z =  1174.706  mm,
	W =      .529 deg,	P =     3.472 deg,	R =   159.240 deg,
	E1= -2526.527  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   696.243  mm,	Y = -4891.489  mm,	Z =  1192.909  mm,
	W =     -.718 deg,	P =    -3.292 deg,	R =   160.304 deg,
	E1= -2526.554  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   703.858  mm,	Y = -4910.149  mm,	Z =   666.251  mm,
	W =   -15.818 deg,	P =   -16.151 deg,	R =   162.884 deg,
	E1= -2526.554  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -97.568  mm,	Y = -4420.632  mm,	Z =   201.633  mm,
	W =   -31.580 deg,	P =   -26.354 deg,	R =   151.218 deg,
	E1= -1976.165  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   280.460  mm,	Y = -4439.163  mm,	Z =   164.301  mm,
	W =   114.065 deg,	P =   -61.153 deg,	R =    23.484 deg,
	E1= -1733.940  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
