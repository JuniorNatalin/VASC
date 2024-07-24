/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "TOMA ST1125 TYRO";
PROG_SIZE	= 4150;
CREATE		= DATE 03-01-27  TIME 09:45:28;
MODIFIED	= DATE 24-04-23  TIME 23:55:16;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 6982;
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
   4:  !Apagar Perfil Lib. 80 vs ST1125 ;
   5:  !Encender Anticol. 1 vs 1120R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[71]=OFF ;
     14:  DO[70]=OFF ;
     15:  DO[69]=OFF ;
     16:  DO[68]=OFF ;
     17:  DO[67]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[45]=ON ;
     24:  DO[46]=ON ;
     25:  !Apagar Pos. Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  WAIT (DI[80] AND DI[66] AND !DI[65])    ;
     30:  DO[80]=OFF ;
     31:  !Encender Anticolisiones ;
     32:  DO[81]=ON ;
     33:  CALL MAKRO020    ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  !Marcas de Usuario: ;
     37:  !Marca 4 Estado de Garra ;
     38:  !Valvulas 1-7 en R ;
     39:  !M[20]=(M[31] AND M[35] AND M[37] ;
     40:  !AND M[39] AND M[41] AND M[43]) ;
     41:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[2] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[2] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:   ;
  10:  !En Posicion ST1125 ;
  11:  !Tomar Pieza en ST1125 ;
  12:  !Fin de Trabajo 1 ;
  13:L P[4] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  !Marca 5 Estado de Garra ;
     14:  !Valvula 1 en V, 2-7 en R ;
     15:  !M[21]=(M[32] AND M[35] AND M[37] ;
     16:  !AND M[39] AND M[41] AND M[43]) ;
     17:  TC_ONLINE (DI[41] AND DI[79] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:   ;
  15:  PAYLOAD[2] ;
  16:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 80 vs ST1125 ;
  19:  !Apagar Anticol. 1 vs 1120R01 ;
  20:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  DO[41]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   893.302  mm,	Y =   623.420  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =  -848.696  mm,	Y =  2391.383  mm,	Z =  -137.259  mm,
	W =    16.208 deg,	P =    83.330 deg,	R =   101.313 deg
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
	X =  -884.448  mm,	Y =  2357.701  mm,	Z =  -508.577  mm,
	W =    63.141 deg,	P =    87.146 deg,	R =   146.798 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   106.700  mm
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
	X =  -902.327  mm,	Y =  2359.141  mm,	Z =  -627.375  mm,
	W =    37.773 deg,	P =    88.186 deg,	R =   122.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   106.700  mm
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
	X =  -902.327  mm,	Y =  2359.140  mm,	Z =  -530.656  mm,
	W =    63.142 deg,	P =    87.146 deg,	R =   146.799 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   106.700  mm
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
	X =  -918.533  mm,	Y =  2391.383  mm,	Z =  -137.259  mm,
	W =    16.208 deg,	P =    83.330 deg,	R =   101.313 deg
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
	X =   893.302  mm,	Y =   623.420  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
