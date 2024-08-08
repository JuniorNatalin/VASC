/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1600";
PROG_SIZE	= 4956;
CREATE		= DATE 22-06-16  TIME 02:09:38;
MODIFIED	= DATE 23-07-15  TIME 18:58:30;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 8536;
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
   1:  !Apagar Perfil Lib. 80 vs ST1600 ;
   2:  !Apagar Perfil Lib. 79 vs ST1600 ;
   3:  !Encender Anticol. 3 vs 1600R01 ;
   4:  !Encender Anticol. 7 vs 1550R01 ;
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
     18:  DO[47]=ON ;
     19:  DO[48]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  WAIT (DI[80] AND DI[79] AND DI[64] AND !DI[63])    ;
     25:  DO[80]=OFF ;
     26:  DO[79]=OFF ;
     27:  F[1]=(ON) ;
     28:  CALL MAKRO343    ;
     29:  WAIT (M[32])    ;
     30:  !Encencer Anticolisiones ;
     31:  DO[83]=ON ;
     32:  DO[87]=ON ;
     33:  CALL MAKRO020    ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC80 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion ST1600 ;
  13:  !Tomar Pieza en ST1600 ;
  14:  !Fin de Trabajo 1 ;
  15:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  DO[78]=ON ;
      5:  DO[77]=ON ;
      6:  CALL MAKRO001    ;
      7:  WAIT (DI[78])    ;
      8:  DO[78]=OFF ;
      9:  DO[77]=OFF ;
     10:  F[1]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[31])    ;
     14:  F[2]=(ON) ;
     15:  CALL MAKRO343    ;
     16:  WAIT (M[34])    ;
     17:  WAIT (DI[23])    ;
     18:  DO[23]=ON ;
     19:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[6] 1200mm/sec CNT100 ACC60 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[7] 100% CNT100 ACC80 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  19:  !Encender Perfil Lib 80 vs ST1600 ;
  20:  !Encender Perfil Lib 79 vs ST1600 ;
  21:  !Apagar Anticol. 3 vs 1600R01 ;
  22:  !Apagar Anticol. 7 vs 1550R01 ;
  23:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[43]=ON ;
      3:  DO[47]=ON ;
      4:  DO[80]=ON ;
      5:  DO[79]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  24:  !Encender Perfil Lib 80 vs ST1600 ;
  25:  !Apagar Anticol. 3 vs 1600R01 ;
  26:  !Apagar Anticol. 7 vs 1550R01 ;
  27:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   554.386  mm,	Y =   714.944  mm,	Z =  1327.417  mm,
	W =   171.209 deg,	P =    10.262 deg,	R =  -131.540 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   -89.491  mm,	Y =  -546.294  mm,	Z =  1171.162  mm,
	W =   171.577 deg,	P =    16.112 deg,	R =    72.406 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1609.222  mm,	Y = -2860.692  mm,	Z =   231.038  mm,
	W =  -145.461 deg,	P =    89.753 deg,	R =    79.572 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1609.223  mm,	Y = -2860.692  mm,	Z =  -155.098  mm,
	W =  -145.450 deg,	P =    89.753 deg,	R =    79.582 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1608.112  mm,	Y = -2859.969  mm,	Z =  -197.997  mm,
	W =  -145.689 deg,	P =    89.753 deg,	R =    79.409 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1609.223  mm,	Y = -2860.692  mm,	Z =  -138.298  mm,
	W =  -145.463 deg,	P =    89.753 deg,	R =    79.569 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.199  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1609.222  mm,	Y = -2860.692  mm,	Z =   231.038  mm,
	W =  -145.461 deg,	P =    89.753 deg,	R =    79.572 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   -89.491  mm,	Y =  -546.294  mm,	Z =  1171.162  mm,
	W =   171.577 deg,	P =    16.112 deg,	R =    72.406 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   554.386  mm,	Y =   714.944  mm,	Z =  1327.417  mm,
	W =   171.209 deg,	P =    10.262 deg,	R =  -131.540 deg
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
