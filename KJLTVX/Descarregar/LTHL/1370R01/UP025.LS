/PROG  UP025
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1380";
PROG_SIZE	= 8542;
CREATE		= DATE 96-03-24  TIME 14:17:28;
MODIFIED	= DATE 23-07-08  TIME 21:09:54;
FILE_NAME	= UP025;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 13802;
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
   2:  UTOOL_NUM=3 ;
   3:  PAYLOAD[3] ;
   4:  !Apagar Perfil Lib. 73 vs ST1380 ;
   5:  !Apagar Perfil Lib. 72 vs ST1380 ;
   6:  !Encender Anticol. 1 vs 1380R01 ;
   7:  !Encender Anticol. 3 vs 1390R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[13]=RESET ;
      4:  TIMER[13]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  DO[73]=ON ;
     15:  DO[72]=ON ;
     16:  DO[71]=OFF ;
     17:  DO[70]=OFF ;
     18:  DO[69]=OFF ;
     19:  DO[68]=OFF ;
     20:  DO[67]=OFF ;
     21:  !Lib. de Anticolisiones ;
     22:  DO[41]=ON ;
     23:  DO[42]=ON ;
     24:  DO[43]=ON ;
     25:  DO[44]=ON ;
     26:  DO[53]=ON ;
     27:  DO[54]=ON ;
     28:  DO[55]=ON ;
     29:  DO[56]=ON ;
     30:  !Apagar Pos. Base ;
     31:  DO[15]=OFF ;
     32:  !Robot en Trayectoria ;
     33:  DO[16]=ON ;
     34:  WAIT (DI[72] AND DI[73])    ;
     35:  DO[73]=OFF ;
     36:  DO[72]=OFF ;
     37:  !Encender Anticolisiones ;
     38:  DO[81]=ON ;
     39:  DO[83]=ON ;
     40:  CALL MAKRO020    ;
     41:  WAIT (DI[23])    ;
     42:  DO[23]=(ON) ;
     43:  !Marcas de Usuario: ;
     44:  !Marca 5 ST1380 Vacia ;
     45:  !M[14]=(DI[59] AND !DI[60] ;
     46:  !AND DI[57] AND !DI[58]) ;
     47:  !Marca 12 Estado de Garra ;
     48:  !Valvulas 2-4 en V, 1&5 en R ;
     49:  !M[21]=(M[31] AND M[34] AND M[36] ;
     50:  !AND M[38] AND M[39]) ;
     51:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[73] AND M[1] AND M[14] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[73] AND M[1] AND M[14] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[73] AND M[1] AND M[14] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[73] AND M[1] AND M[14] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[5]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[40])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  !Marcas de Usuario: ;
      9:  !Marca 13 Estado de Garra ;
     10:  !Valvulas 2-5 en V, 1 en R ;
     11:  !M[22]=(M[31] AND M[34] AND M[36] ;
     12:  !AND M[38] AND M[40]) ;
     13:  TC_ONLINE (DI[41] AND DI[43] AND DI[72] AND DI[73] AND M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:  !En Posicion ST1380 ;
  14:  !Dejar Pieza 1&2 en ST1380 ;
  15:  !Fin de Trabajo 5 ;
  16:L P[6] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  DO[70]=ON ;
      5:  DO[71]=ON ;
      6:  CALL MAKRO005    ;
      7:  WAIT (DI[71])    ;
      8:  DO[71]=OFF ;
      9:  DO[70]=OFF ;
     10:  F[3]=(ON) ;
     11:  F[4]=(ON) ;
     12:  CALL MAKRO342    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[35] AND M[37])    ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  !Marcas de Usuario: ;
     18:  !Marca 6 ST1380 C/Pieza 1&2 ;
     19:  !M[15]=(!DI[59] AND DI[60] ;
     20:  !AND DI[57] AND !DI[58]) ;
     21:  !Marca 14 Estado de Garra ;
     22:  !Valvulas 2&5 en V, 1,3&4 en R ;
     23:  !M[23]=(M[31] AND M[34] AND M[35] ;
     24:  !AND M[37] AND M[40]) ;
     25:  TC_ONLINE (DI[41] AND DI[43] AND DI[71] AND DI[73] AND M[15] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:  PAYLOAD[2] ;
  18:L P[7] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[41] AND DI[43] AND DI[71] AND DI[73] AND M[3] AND M[15] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[71] AND DI[73] AND M[3] AND M[15] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:  UFRAME_NUM=0 ;
  21:  UTOOL_NUM=1 ;
  22:  !Activar Valvula 22 en ST1380 ;
  23:  !Retraer Pernos ;
  24:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[69]=ON ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (DI[69] AND M[32])    ;
      7:  DO[69]=OFF ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  !Marcas de Usuario: ;
     11:  !Marca 15 Estado de Garra ;
     12:  !Valvulas 1,2&5 en V, 3&4 en R ;
     13:  !M[24]=(M[32] AND M[34] AND M[35] ;
     14:  !AND M[37] AND M[40]) ;
     15:  TC_ONLINE (DI[41] AND DI[43] AND DI[69] AND DI[73] AND M[3] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[69] AND DI[73] AND M[3] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:  !En Posicion 2 ST1380 ;
  27:  !Dejar Pieza 3 en ST1380 ;
  28:  !Fin de Trabajo 6 ;
  29:L P[11] 250mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      4:  DO[67]=ON ;
      5:  DO[68]=ON ;
      6:  CALL MAKRO006    ;
      7:  WAIT (DI[68])    ;
      8:  DO[68]=OFF ;
      9:  DO[67]=OFF ;
     10:  F[2]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[33])    ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  !Marcas de Usuario: ;
     17:  !Marca 16 Estado de Garra ;
     18:  !Valvulas 1&5 en V, 2-4 en R ;
     19:  !M[25]=(M[32] AND M[33] AND M[35] ;
     20:  !AND M[37] AND M[40]) ;
     21:  TC_ONLINE (DI[41] AND DI[43] AND DI[68] AND DI[73] AND M[16] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:  PAYLOAD[1] ;
  31:L P[12] 250mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[68] AND DI[73] AND M[2] AND M[16] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:  !Encender Perfil Lib 72 vs ST1380 ;
  33:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[72]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[43] AND DI[73] AND M[2] AND M[16] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:  !Encender Perfil Lib 73 vs ST1380 ;
  35:  !Apagar Anticol. 1 vs 1380R01 ;
  36:  !Apagar Anticol. 3 vs 1390R01 ;
  37:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[13]=STOP ;
      4:  DO[73]=ON ;
      5:  DO[41]=ON ;
      6:  DO[43]=ON ;
      7:  F[1]=(ON) ;
      8:  F[5]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  CALL MAKRO340    ;
     11:  WAIT (M[31] AND M[39])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  !Marcas de Usuario: ;
     15:  !Marca 8 Estado de Garra ;
     16:  !Valvulas 1-5 en R ;
     17:  !M[17]=(M[31] AND M[33] AND M[35] ;
     18:  !AND M[37] AND M[39]) ;
     19:  TC_ONLINE (M[2] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, -1',
	X =   102.001  mm,	Y = -1201.470  mm,	Z =  1543.318  mm,
	W =   -90.000 deg,	P =   -60.000 deg,	R =   120.000 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -376.870  mm,	Y = -1846.214  mm,	Z =  1743.875  mm,
	W =   -50.145 deg,	P =    -9.315 deg,	R =    81.966 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1184.323  mm,	Y = -2059.964  mm,	Z =   128.132  mm,
	W =   179.947 deg,	P =      .655 deg,	R =   -10.194 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1217.528  mm,	Y = -2284.791  mm,	Z =  -300.031  mm,
	W =  -179.900 deg,	P =     -.920 deg,	R =    -1.893 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1223.236  mm,	Y = -2302.900  mm,	Z =  -545.055  mm,
	W =  -179.900 deg,	P =     -.920 deg,	R =    -1.893 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1210.759  mm,	Y = -2305.742  mm,	Z =  -555.355  mm,
	W =  -179.894 deg,	P =     -.924 deg,	R =    -1.716 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    98.400  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1211.030  mm,	Y = -2308.406  mm,	Z =  -432.017  mm,
	W =  -179.900 deg,	P =     -.920 deg,	R =    -1.893 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -1211.029  mm,	Y = -2308.406  mm,	Z =  -214.988  mm,
	W =  -179.900 deg,	P =     -.920 deg,	R =    -1.893 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1501.413  mm,	Y = -1312.137  mm,	Z =  -393.603  mm,
	W =     1.005 deg,	P =    90.000 deg,	R =     0.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1467.783  mm,	Y = -1303.671  mm,	Z =  -697.971  mm,
	W =    78.267 deg,	P =    89.623 deg,	R =    76.794 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1466.508  mm,	Y = -1305.751  mm,	Z =  -852.849  mm,
	W =    78.668 deg,	P =    89.625 deg,	R =    76.995 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1467.783  mm,	Y = -1303.671  mm,	Z =  -697.971  mm,
	W =    78.267 deg,	P =    89.623 deg,	R =    76.794 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1320.872  mm,	Y = -1378.242  mm,	Z =  -101.826  mm,
	W =     1.001 deg,	P =    90.000 deg,	R =     0.000 deg
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1190.730  mm,	Y =  -289.205  mm,	Z =  1231.848  mm,
	W =   -30.000 deg,	P =     0.000 deg,	R =    30.000 deg
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
