/PROG  UP025
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1470";
PROG_SIZE	= 6080;
CREATE		= DATE 96-03-29  TIME 12:43:56;
MODIFIED	= DATE 24-03-23  TIME 11:39:36;
FILE_NAME	= UP025;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 11152;
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
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil Lib. 78 vs ST1470 ;
   5:  !Encender Anticol. 15 vs 1450R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=ON ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=ON ;
     13:  DO[74]=OFF ;
     14:  DO[73]=OFF ;
     15:  DO[72]=OFF ;
     16:  DO[71]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[55]=ON ;
     23:  DO[56]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  WAIT (!DI[61] AND DI[62] AND DI[78] AND M[3])    ;
     29:  DO[78]=OFF ;
     30:  !Encender Anticolisiones ;
     31:  DO[95]=ON ;
     32:  CALL MAKRO020    ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  !Marcas de Usuario : ;
     36:  !Marca 3 Estado de Garra ;
     37:  !Valula 4 en V, 1,2,3,5 en R ;
     38:  !M[12] = M[31] AND M[33] ;
     39:  !AND M[35] AND M[38] AND M[39] ;
     40:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion ST1470 ;
  13:  !Tomar Pieza en ST1470 ;
  14:  !Fin de Trabajo 2 ;
  15:L P[7] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[32] AND M[34])    ;
      8:  DO[77]=ON ;
      9:  CALL MAKRO002    ;
     10:  WAIT (DI[77])    ;
     11:  DO[77]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  !Marca 4 Estado de Garra ;
     15:  !Valulas 1,2&4 en V, 3&5 en R ;
     16:  !M[13] = M[32] AND M[34] ;
     17:  !AND M[35] AND M[38] AND M[39] ;
     18:  TC_ONLINE (DI[55] AND DI[77] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[8] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:  !Encender Perfil Lib 78 vs ST1470 ;
  23:  !Apagar Anticol. 15 vs 1450R01 ;
  24:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[78]=ON ;
      5:  DO[55]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1105.511  mm,	Y =   969.352  mm,	Z =  2451.034  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =   991.794  mm,	Y =  1747.018  mm,	Z =  1819.521  mm,
	W =  -143.509 deg,	P =    23.531 deg,	R =   100.717 deg
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
	X =    96.044  mm,	Y =  2100.386  mm,	Z =   981.261  mm,
	W =   -63.738 deg,	P =    39.671 deg,	R =   116.965 deg
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
	X =   208.046  mm,	Y =  2320.795  mm,	Z =   153.363  mm,
	W =   -93.548 deg,	P =    73.425 deg,	R =    95.086 deg
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
	X =    49.872  mm,	Y =  2569.052  mm,	Z =  -583.320  mm,
	W =  -161.661 deg,	P =    89.057 deg,	R =    29.793 deg
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
	X =    51.980  mm,	Y =  2560.075  mm,	Z =  -603.754  mm,
	W =  -162.373 deg,	P =    89.061 deg,	R =    29.074 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.961  mm
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
	X =    51.158  mm,	Y =  2567.888  mm,	Z =  -761.132  mm,
	W =  -165.454 deg,	P =    89.074 deg,	R =    26.195 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.728  mm
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
	X =    49.872  mm,	Y =  2569.052  mm,	Z =  -696.996  mm,
	W =  -161.659 deg,	P =    89.057 deg,	R =    29.795 deg
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
	X =    49.872  mm,	Y =  2569.052  mm,	Z =  -610.597  mm,
	W =  -161.659 deg,	P =    89.057 deg,	R =    29.795 deg
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
	X =   208.015  mm,	Y =  2320.809  mm,	Z =   153.369  mm,
	W =   -93.545 deg,	P =    73.425 deg,	R =    95.089 deg
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
	X =    96.034  mm,	Y =  2100.394  mm,	Z =   981.257  mm,
	W =   -63.738 deg,	P =    39.671 deg,	R =   116.965 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   991.804  mm,	Y =  1747.018  mm,	Z =  1819.523  mm,
	W =  -143.509 deg,	P =    23.531 deg,	R =   100.716 deg
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
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1105.511  mm,	Y =   969.352  mm,	Z =  2451.034  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
