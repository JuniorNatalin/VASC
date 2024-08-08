/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1300";
PROG_SIZE	= 4840;
CREATE		= DATE 17-04-05  TIME 09:26:36;
MODIFIED	= DATE 23-07-23  TIME 17:40:34;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 9092;
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
   4:  !Apagar Perfil Lib. 76 vs ST1300 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[16]=(ON) ;
      4:  TIMER[3]=RESET ;
      5:  TIMER[3]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[79]=ON ;
     10:  DO[78]=OFF ;
     11:  DO[77]=OFF ;
     12:  DO[76]=ON ;
     13:  DO[74]=OFF ;
     14:  !Lib. de Anticolisiones ;
     15:  DO[43]=ON ;
     16:  DO[44]=ON ;
     17:  DO[45]=ON ;
     18:  DO[46]=ON ;
     19:  DO[47]=ON ;
     20:  DO[48]=ON ;
     21:  !Apagar Pos. Base ;
     22:  DO[15]=OFF ;
     23:  !Robot en Trayectoria ;
     24:  DO[16]=ON ;
     25:  WAIT (DI[76] AND !DI[62] AND DI[61])    ;
     26:  DO[76]=OFF ;
     27:  WAIT (DI[23])    ;
     28:  DO[23]=ON ;
     29:  TC_ONLINE (DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  10:  !En Posicion ST1300 ;
  11:  !Dejar en ST1300 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[6] 1000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[62] AND !DI[61]) OR DI[15])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  DO[74]=ON ;
      9:  CALL MAKRO003    ;
     10:  WAIT (DI[75])    ;
     11:  DO[74]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[75] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[7] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (DI[75] AND DI[62] AND !DI[61] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  16:  !Encender Perfil Lib 76 vs ST1300 ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[76]=ON ;
      3:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  20:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -201.461  mm,	Y =  1353.436  mm,	Z =   725.940  mm,
	W =    12.214 deg,	P =    57.195 deg,	R =  -155.598 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -139.657  mm,	Y =   408.051  mm,	Z =  1816.323  mm,
	W =   -78.993 deg,	P =    38.407 deg,	R =   120.640 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   361.224  mm,	Y =  -235.641  mm,	Z =  1816.323  mm,
	W =   -78.993 deg,	P =    38.407 deg,	R =   -21.371 deg
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
	X =   137.702  mm,	Y = -1537.387  mm,	Z =   832.210  mm,
	W =    10.739 deg,	P =    57.540 deg,	R =    20.592 deg
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
	X =     -.268  mm,	Y = -2380.583  mm,	Z =   -89.361  mm,
	W =   -87.034 deg,	P =    79.285 deg,	R =     3.448 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.900  mm
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
	X =    28.701  mm,	Y = -2379.032  mm,	Z =  -280.867  mm,
	W =   -84.827 deg,	P =    79.417 deg,	R =     5.666 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.900  mm
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
	X =     -.268  mm,	Y = -2380.583  mm,	Z =  -124.641  mm,
	W =   -87.034 deg,	P =    79.285 deg,	R =     3.448 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.900  mm
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
	X =   137.702  mm,	Y = -1537.387  mm,	Z =   832.210  mm,
	W =    10.739 deg,	P =    57.540 deg,	R =    20.592 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   361.224  mm,	Y =  -235.641  mm,	Z =  1816.323  mm,
	W =   -78.993 deg,	P =    38.407 deg,	R =   -21.371 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  -139.657  mm,	Y =   408.051  mm,	Z =  1816.323  mm,
	W =   -78.993 deg,	P =    38.407 deg,	R =   120.640 deg
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
	X =  -201.461  mm,	Y =  1353.436  mm,	Z =   725.940  mm,
	W =    12.214 deg,	P =    57.195 deg,	R =  -155.598 deg
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
