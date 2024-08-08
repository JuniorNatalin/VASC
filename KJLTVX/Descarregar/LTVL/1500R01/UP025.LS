/PROG  UP025
/ATTR
OWNER		= GME;
COMMENT		= "Tomar de ST1470";
PROG_SIZE	= 4872;
CREATE		= DATE 96-03-23  TIME 08:53:48;
MODIFIED	= DATE 23-07-09  TIME 10:50:32;
FILE_NAME	= UP025;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 8456;
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
   2:  UTOOL_NUM=2 ;
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
     28:  WAIT (!DI[61] AND DI[62] AND DI[78])    ;
     29:  DO[78]=OFF ;
     30:  !Encender Anticolisiones ;
     31:  DO[95]=ON ;
     32:  CALL MAKRO020    ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  !V6 Estado de Garra ;
     36:  F[6]=(ON) ;
     37:  IF (M[3]),CALL MAKRO343 ;
     33:  WAIT (M[42])    ;
     38:  CALL MAKRO340    ;
     39:  !Marcas de Usuario : ;
     40:  !Marca 3 Estado de Garra ;
     41:  !Valula 4 en V, 1,2,3,5 en R ;
     42:  !M[12] = M[31] AND M[33] ;
     43:  !AND M[35] AND M[38] AND M[39] ;
     44:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[3] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND !DI[61] AND DI[62] AND DI[78] AND M[16] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1470 ;
  11:  !Tomar Pieza en ST1470 ;
  12:  !Fin de Trabajo 2 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     18:  TC_ONLINE (DI[55] AND DI[77] AND M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[55] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 78 vs ST1470 ;
  19:  !Apagar Anticol. 15 vs 1450R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[78]=ON ;
      5:  DO[55]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X =  1009.379  mm,	Y =   762.583  mm,	Z =  2252.020  mm,
	W =   -53.140 deg,	P =   -28.625 deg,	R =    62.814 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	X = -1725.561  mm,	Y =  2090.333  mm,	Z =   840.898  mm,
	W =  -169.549 deg,	P =    49.459 deg,	R =   139.559 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X = -2134.558  mm,	Y =  2437.931  mm,	Z =  -266.111  mm,
	W =  -160.265 deg,	P =    89.499 deg,	R =   146.169 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X = -2134.557  mm,	Y =  2437.933  mm,	Z =  -710.206  mm,
	W =  -159.797 deg,	P =    89.499 deg,	R =   146.193 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X = -2135.358  mm,	Y =  2437.315  mm,	Z =  -764.903  mm,
	W =  -162.133 deg,	P =    89.509 deg,	R =   144.164 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.700  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X = -2134.225  mm,	Y =  2437.706  mm,	Z =  -655.324  mm,
	W =  -160.253 deg,	P =    89.499 deg,	R =   146.182 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X = -2128.655  mm,	Y =  2429.929  mm,	Z =  -266.193  mm,
	W =  -160.262 deg,	P =    89.499 deg,	R =   146.173 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    99.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X = -1342.058  mm,	Y =   596.097  mm,	Z =  2141.704  mm,
	W =   -90.000 deg,	P =     0.000 deg,	R =  -159.000 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	X =  1009.379  mm,	Y =   762.583  mm,	Z =  2252.020  mm,
	W =   -53.140 deg,	P =   -28.625 deg,	R =    62.814 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
/END
