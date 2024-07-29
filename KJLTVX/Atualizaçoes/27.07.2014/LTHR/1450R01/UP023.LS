/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1470";
PROG_SIZE	= 4752;
CREATE		= DATE 96-03-28  TIME 16:50:34;
MODIFIED	= DATE 23-07-09  TIME 17:28:32;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 8248;
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
   4:  !Apagar Perfil Lib. 77 vs ST1470 ;
   5:  !Encender Anticol. 15 vs 1500R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  DO[55]=ON ;
     15:  DO[56]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[61] AND !DI[62] AND DI[77])    ;
     21:  DO[77]=OFF ;
     22:  !Encender Anticolisiones ;
     23:  DO[95]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100    ;
   9:   ;
  10:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  11:   ;
  12:L P[5] 1000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  13:  !En Posicion ST1470 ;
  14:  !Dejar Pieza en ST1470 ;
  15:  !Fin de Trabajo 1 ;
  16:L P[6] 500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  DO[75]=ON ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[76])    ;
      7:  DO[75]=OFF ;
      8:  F[2]=(ON) ;
      9:  F[3]=(ON) ;
     10:  CALL MAKRO342    ;
     11:  CALL MAKRO340    ;
     12:  WAIT (M[33] AND M[35])    ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[76] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  17:  PAYLOAD[1] ;
  18:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[9] 100% CNT100    ;
  21:   ;
  22:  !Encender Perfil Lib 77 vs ST1470 ;
  23:  !Apagar Anticol. 15 vs 1500R01 ;
  24:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[55]=ON ;
      3:  DO[77]=ON ;
      4:  TC_ONLINE (DI[55] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  25:  !Encender Perfil Lib 77 vs ST1470 ;
  26:  !Apagar Anticol. 15 vs 1500R01 ;
  27:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.071  mm,	Y =   360.200  mm,	Z =  1430.545  mm,
	W =   -89.999 deg,	P =    75.000 deg,	R =     0.000 deg
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
	X =  -397.843  mm,	Y =  1837.717  mm,	Z =  1253.791  mm,
	W =   -89.999 deg,	P =    75.000 deg,	R =    91.171 deg
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
	X =  -503.916  mm,	Y =  3301.899  mm,	Z =   351.752  mm,
	W =   -80.708 deg,	P =    79.163 deg,	R =    95.924 deg
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
	X =  -682.099  mm,	Y =  3295.609  mm,	Z =  -436.712  mm,
	W =   -15.770 deg,	P =    88.583 deg,	R =   163.762 deg
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
	X =  -679.785  mm,	Y =  3300.459  mm,	Z =  -699.302  mm,
	W =   -21.631 deg,	P =    88.534 deg,	R =   157.901 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.900  mm
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
	X =  -679.784  mm,	Y =  3300.458  mm,	Z =  -726.421  mm,
	W =   -21.631 deg,	P =    88.534 deg,	R =   157.900 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.900  mm
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
	X =  -678.834  mm,	Y =  3295.435  mm,	Z =  -663.934  mm,
	W =   -14.882 deg,	P =    88.588 deg,	R =   164.601 deg
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
	X =  -656.958  mm,	Y =  3295.610  mm,	Z =  -368.792  mm,
	W =   -15.770 deg,	P =    88.583 deg,	R =   163.762 deg
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
	X =  -503.916  mm,	Y =  3301.899  mm,	Z =   351.752  mm,
	W =   -80.708 deg,	P =    79.163 deg,	R =    95.924 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -397.843  mm,	Y =  1837.717  mm,	Z =  1253.790  mm,
	W =   -89.999 deg,	P =    75.000 deg,	R =    91.171 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.071  mm,	Y =   360.200  mm,	Z =  1430.545  mm,
	W =   -89.999 deg,	P =    75.000 deg,	R =     0.000 deg
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
