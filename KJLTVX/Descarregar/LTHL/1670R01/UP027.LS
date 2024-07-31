/PROG  UP027
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar ST1680 p R";
PROG_SIZE	= 5566;
CREATE		= DATE 24-06-16  TIME 16:36:22;
MODIFIED	= DATE 24-06-29  TIME 20:12:54;
FILE_NAME	= UP007;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 10554;
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
   4:  !Apagar Perfil Lib. 77 vs ST1680 ;
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
     20:  WAIT (!DI[61] AND DI[62] AND DI[77] AND M[2])    ;
     21:  DO[77]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[33]) ;
      2:  WAIT (DI[101])    ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  10:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  11:  !En Posicion ST1680 ;
  12:  !Dejar Pieza en ST1680 ;
  13:  !Fin de Trabajo 3 ;
  14:L P[7] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[75]=ON ;
      4:  WAIT (M[1])    ;
      5:  F[1]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[32])    ;
      8:  CALL MAKRO003    ;
      9:  GO[21]=1 ;
     10:  WAIT (DI[76])    ;
     11:  DO[75]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  15:  PAYLOAD[1] ;
  16:L P[8] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[61] AND !DI[62])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  17:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  18:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  19:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  20:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  21:  !Apagar Perfil Lib. 77 vs ST1680 ;
  22:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[77]=ON ;
      4:  TIMER[6]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.038  mm,	Z =   462.270  mm,
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   252.746  mm,	Y = -2556.254  mm,	Z =   484.121  mm,
	W =   164.923 deg,	P =     4.633 deg,	R =    -5.895 deg,
	E1=     -.493  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1903.913  mm,	Y =  -661.263  mm,	Z =  1008.525  mm,
	W =   100.709 deg,	P =    -1.785 deg,	R =     7.483 deg,
	E1=     -.799  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1244.577  mm,	Y =  1910.698  mm,	Z =   855.492  mm,
	W =   102.986 deg,	P =   -13.157 deg,	R =    77.763 deg,
	E1=     -.799  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   967.150  mm,	Y =  2577.850  mm,	Z =  -358.345  mm,
	W =    86.088 deg,	P =    12.733 deg,	R =    87.383 deg,
	E1=     -.799  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1045.414  mm,	Y =  2836.650  mm,	Z =  -498.762  mm,
	W =    90.891 deg,	P =    14.905 deg,	R =    91.325 deg,
	E1=    -1.050  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1042.134  mm,	Y =  2978.553  mm,	Z =  -536.542  mm,
	W =    90.891 deg,	P =    14.905 deg,	R =    91.325 deg,
	E1=    -1.050  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1054.788  mm,	Y =  2771.884  mm,	Z =  -478.044  mm,
	W =    90.647 deg,	P =    15.136 deg,	R =    90.085 deg,
	E1=    -1.048  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   967.150  mm,	Y =  2577.850  mm,	Z =  -358.345  mm,
	W =    86.088 deg,	P =    12.733 deg,	R =    87.383 deg,
	E1=     -.799  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1244.577  mm,	Y =  1910.698  mm,	Z =   855.492  mm,
	W =   102.986 deg,	P =   -13.157 deg,	R =    77.763 deg,
	E1=     -.799  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1903.913  mm,	Y =  -661.263  mm,	Z =  1008.525  mm,
	W =   100.709 deg,	P =    -1.785 deg,	R =     7.483 deg,
	E1=     -.799  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   252.746  mm,	Y = -2556.254  mm,	Z =   484.121  mm,
	W =   164.923 deg,	P =     4.633 deg,	R =    -5.895 deg,
	E1=     -.493  mm
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
	X =   249.913  mm,	Y = -3587.038  mm,	Z =   462.270  mm,
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
