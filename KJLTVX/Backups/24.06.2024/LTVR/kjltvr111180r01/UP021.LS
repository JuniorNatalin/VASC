/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1150";
PROG_SIZE	= 5756;
CREATE		= DATE 03-01-27  TIME 08:21:24;
MODIFIED	= DATE 23-10-07  TIME 08:51:06;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 10060;
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
   1:  !Apagar Perfil Lib. 80 vs ST1150 ;
   2:  !Apagar Perfil Lib. 79 vs ST1150 ;
   3:  !Encender Anticol. 1 vs 1150R01 ;
   4:  !Encender Anticol. 5 vs 1130R01 ;
   5:  UFRAME_NUM=0 ;
   6:  UTOOL_NUM=1 ;
   7:  PAYLOAD[1] ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[45]=ON ;
     19:  DO[46]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  WAIT (!DI[63] AND DI[64] AND DI[79] AND DI[80])    ;
     25:  DO[79]=OFF ;
     26:  DO[80]=OFF ;
     27:  !Encender Anticolisiones ;
     28:  DO[81]=ON ;
     29:  DO[85]=ON ;
     30:  CALL MAKRO020    ;
     31:  WAIT (DI[23])    ;
     32:  DO[23]=ON ;
     33:  !Marca Usuario Suma Anticol. ;
     34:  !M[10]=(DI[41] AND DI[45]) ;
     35:  !Marca Usuario ST1150 C/Pieza ;
     36:  !M[11]=(!DI[63] AND DI[64]) ;
     37:  !Marca de Usuario Estado Garra ;
     38:  !M[13]=(M[31] AND M[33]) ;
     39:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[10] AND M[11] AND M[13] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  12:  !En Posicion ST1150 ;
  13:  !Tomar Pieza en ST1150 ;
  14:  !Fin de Trabajo 1 ;
  15:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[34])    ;
      7:  DO[77]=ON ;
      8:  DO[78]=ON ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[78])    ;
     11:  DO[78]=OFF ;
     12:  DO[77]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  !Marca de Usuario Estado Garra ;
     16:  !M[15]=(M[31] AND M[34]) ;
     17:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[10] AND M[15] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[6] 2000mm/sec CNT10 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1150 S/Pieza ;
      2:  !M[12]=(DI[63] AND !DI[64]) ;
      3:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[10] AND M[12] AND M[15] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  18:J P[7] 100% CNT10 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[10] AND M[12] AND M[15] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[10] AND M[12] AND M[15] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[10] AND M[12] AND M[15] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[10] AND M[12] AND M[15] AND M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  22:  !Encender Perfil Lib 80 vs ST1150 ;
  23:  !Encender Perfil Lib 79 vs ST1150 ;
  24:  !Apagar Anticol. 1 vs 1150R01 ;
  25:  !Apagar Anticol. 5 vs 1130R01 ;
  26:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[79]=ON ;
      5:  DO[80]=ON ;
      6:  DO[41]=ON ;
      7:  DO[45]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
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
	X =  -166.535  mm,	Y = -2136.410  mm,	Z =   368.642  mm,
	W =  -109.546 deg,	P =    88.025 deg,	R =    15.998 deg
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
	X =  -178.981  mm,	Y = -2109.425  mm,	Z =   197.333  mm,
	W =  -109.541 deg,	P =    88.025 deg,	R =    16.003 deg
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
	X =  -162.084  mm,	Y = -2102.643  mm,	Z =  -208.591  mm,
	W =  -125.238 deg,	P =    89.066 deg,	R =     -.068 deg
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
	X =  -158.603  mm,	Y = -2106.939  mm,	Z =  -328.450  mm,
	W =  -135.046 deg,	P =    88.966 deg,	R =    -9.942 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.370  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     -.056  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -159.522  mm,	Y = -2110.018  mm,	Z =  -248.950  mm,
	W =  -126.560 deg,	P =    89.089 deg,	R =    -1.501 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.900  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     -.200  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -163.401  mm,	Y = -2114.473  mm,	Z =  -105.188  mm,
	W =  -103.880 deg,	P =    88.025 deg,	R =    16.068 deg
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
	X =  -217.597  mm,	Y = -2142.851  mm,	Z =    -6.263  mm,
	W =   -96.472 deg,	P =    88.105 deg,	R =    19.515 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     -.096  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -254.358  mm,	Y = -2160.731  mm,	Z =    41.389  mm,
	W =   -91.809 deg,	P =    88.075 deg,	R =    24.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     -.086  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -265.949  mm,	Y = -2165.902  mm,	Z =   418.868  mm,
	W =   -91.814 deg,	P =    88.075 deg,	R =    23.998 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     -.200  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
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
