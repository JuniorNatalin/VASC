/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Toma en ST1125";
PROG_SIZE	= 4054;
CREATE		= DATE 96-06-02  TIME 17:15:06;
MODIFIED	= DATE 23-06-29  TIME 01:55:48;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 6886;
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
   4:   ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[76]=OFF ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[71]=OFF ;
     15:  DO[70]=OFF ;
     16:  DO[69]=OFF ;
     17:  DO[68]=OFF ;
     18:  DO[67]=OFF ;
     19:  !Lib. de Anticolisiones ;
     20:  DO[41]=ON ;
     21:  DO[42]=ON ;
     22:  DO[43]=ON ;
     23:  DO[44]=ON ;
     24:  DO[45]=ON ;
     25:  DO[46]=ON ;
     26:  !Apagar Posicion Base ;
     27:  DO[15]=OFF ;
     28:  !Robot en Trayectoria ;
     29:  DO[16]=ON ;
     30:  WAIT (DI[80] AND DI[66] AND !DI[65])    ;
     31:  DO[80]=OFF ;
     32:  !Encender Anticolisiones ;
     33:  DO[81]=ON ;
     34:  CALL MAKRO020    ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marcas de Usuario: ;
     38:  !Marca 4 Estado de Garra ;
     39:  !Valvulas 1-7 en R ;
     40:  !M[20]=(M[31] AND M[35] AND M[37] ;
     41:  !AND M[39] AND M[41] AND M[43] ;
     42:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[2] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[2] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[65] AND DI[66] AND DI[80] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:   ;
   9:  !En Posicion ST1125 ;
  10:  !Toma en ST1125 ;
  11:  !Fin de Trabajo 1 ;
  12:L P[4] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[3])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=ON ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  !Marca 5 Estado de Garra ;
     14:  !Valvula 1 en V, 2-7 en R ;
     15:  !M[21]=(M[32] AND M[35] AND M[37] ;
     16:  TC_ONLINE (DI[41] AND DI[79] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:   ;
  14:  PAYLOAD[2] ;
  15:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[65] AND !DI[66] AND DI[79] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:   ;
  18:  !Encender Perfil Libre vs ST1125 ;
  19:  !Apagar Anticol. vs 1120R01 ;
  20:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[80]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1502.063  mm,	Y =   490.837  mm,	Z =  1119.244  mm,
	W =    -8.695 deg,	P =    50.167 deg,	R =     1.303 deg
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
	X =  -973.515  mm,	Y = -2442.449  mm,	Z =   -66.346  mm,
	W =    72.277 deg,	P =    81.347 deg,	R =  -102.909 deg
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
	X =  -991.637  mm,	Y = -2498.490  mm,	Z =  -545.420  mm,
	W =    93.790 deg,	P =    87.259 deg,	R =   -81.191 deg
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
	X =  -990.861  mm,	Y = -2497.025  mm,	Z =  -593.604  mm,
	W =    93.728 deg,	P =    87.268 deg,	R =   -81.080 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.900  mm
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
	X =  -991.637  mm,	Y = -2498.490  mm,	Z =  -545.420  mm,
	W =    93.790 deg,	P =    87.259 deg,	R =   -81.191 deg
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
	X =  -973.515  mm,	Y = -2442.449  mm,	Z =   -66.346  mm,
	W =    72.277 deg,	P =    81.347 deg,	R =  -102.909 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1502.063  mm,	Y =   490.837  mm,	Z =  1119.244  mm,
	W =    -8.695 deg,	P =    50.167 deg,	R =     1.303 deg
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
