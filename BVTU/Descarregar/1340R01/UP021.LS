/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar de ST1320";
PROG_SIZE	= 6024;
CREATE		= DATE 24-06-30  TIME 22:44:14;
MODIFIED	= DATE 24-07-01  TIME 09:51:40;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 10752;
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
   1:  !M[2] >Ambas Garras sin Piezas ;
   2:  !M[3] >Solo Garra Tunel con Pieza ;
   3:  !M[21]>Garras Abiertas Completas ;
   4:  !.    >Pines Avanzados ;
   5:  !M[22]>Solo Garra Tunel Cerrada ;
   6:   ;
   7:  UFRAME_NUM=0 ;
   8:  UTOOL_NUM=1 ;
   9:   ;
  10:  PAYLOAD[1] ;
  11:   ;
  12:  !Tomar Tunel de ST1320 ;
  13:  !Espera Lib. Tomar de ST1320 ;
  14:  !Apagar Perfil Libre vs ST1320 ;
  15:  !Encender Anticol. 1 vs R1310R01 ;
  16:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  DO[72]=ON ;
     12:  DO[71]=ON ;
     13:  DO[70]=OFF ;
     14:  DO[69]=OFF ;
     15:  !Lib. de Anticolisiones ;
     16:  DO[41]=ON ;
     17:  DO[42]=ON ;
     18:  DO[43]=ON ;
     19:  DO[44]=ON ;
     20:  DO[47]=ON ;
     21:  DO[48]=ON ;
     22:  DO[49]=ON ;
     23:  DO[50]=ON ;
     24:  DO[51]=ON ;
     25:  DO[52]=ON ;
     26:  DO[53]=ON ;
     27:  DO[54]=ON ;
     28:  !Apagar Posicion Base ;
     29:  DO[15]=OFF ;
     30:  !Robot en Trayectoria ;
     31:  DO[16]=ON ;
     32:  !Espera Liberacion ;
     33:  WAIT (DI[80] AND DI[64] AND !DI[63] AND M[2] AND M[21])    ;
     34:  DO[80]=OFF ;
     35:  !Solicitar Anticolisiones ;
     36:  DO[81]=ON ;
     37:  CALL MAKRO020    ;
     38:  WAIT (DI[23])    ;
     39:  DO[23]=ON ;
     40:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[21] AND M[30]) ;
       ------ ;
  17:   ;
  18:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[21] AND M[30]) ;
       ------ ;
  19:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[21] AND M[30]) ;
       ------ ;
  20:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[21] AND M[30]) ;
       ------ ;
  21:J P[5] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[21] AND M[30]) ;
       ------ ;
  22:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[21] AND M[30]) ;
       ------ ;
  23:   ;
  24:  !Cerrar Garra 1 Grupo 1 ;
  25:  !En Pos. de Toma de ST1320 ;
  26:  !Fin de Trabajo 1: ;
  27:  !Tomar de ST1320 ;
  28:  !Espera Lib. Salir de ST1320 ;
  29:L P[7] 350mm/sec CNT0 ACC80 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[22])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[41] AND DI[79] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  30:   ;
  31:  PAYLOAD[2] ;
  32:L P[8] 350mm/sec CNT0 ACC80 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (((DI[63] AND !DI[64]) OR DI[15]) AND M[3])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  33:   ;
  34:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  35:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  36:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[22] AND M[30]) ;
       ------ ;
  37:   ;
  38:  !Apagar Anticol. 1 vs R1310R01 ;
  39:  !Encender Perfil Libre vs ST1320 ;
  40:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[80]=ON ;
      5:  TIMER[3]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[3] AND M[22] AND M[30]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1557.414  mm,	Y =   708.081  mm,	Z =   678.115  mm,
	W =   145.386 deg,	P =     9.675 deg,	R =  -131.834 deg,
	E1=  -345.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2161.746  mm,	Y =   890.580  mm,	Z =    53.622  mm,
	W =    56.337 deg,	P =    80.101 deg,	R =   152.640 deg,
	E1=  -345.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2365.461  mm,	Y =  1006.835  mm,	Z =  -274.452  mm,
	W =   -70.448 deg,	P =    89.985 deg,	R =    26.864 deg,
	E1=  -344.989  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2355.180  mm,	Y =  1014.450  mm,	Z =  -368.213  mm,
	W =    65.134 deg,	P =    89.368 deg,	R =   160.792 deg,
	E1=  -345.012  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2359.275  mm,	Y =  1024.307  mm,	Z =  -436.431  mm,
	W =    48.176 deg,	P =    89.617 deg,	R =   143.569 deg,
	E1=  -345.012  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2359.571  mm,	Y =  1024.523  mm,	Z =  -491.059  mm,
	W =    48.172 deg,	P =    89.617 deg,	R =   143.565 deg,
	E1=  -345.012  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2359.570  mm,	Y =  1024.521  mm,	Z =  -413.297  mm,
	W =    48.172 deg,	P =    89.617 deg,	R =   143.565 deg,
	E1=  -345.012  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2359.570  mm,	Y =  1024.520  mm,	Z =  -166.577  mm,
	W =    48.168 deg,	P =    89.617 deg,	R =   143.561 deg,
	E1=  -345.012  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -2161.745  mm,	Y =   890.580  mm,	Z =    53.622  mm,
	W =    56.337 deg,	P =    80.101 deg,	R =   152.640 deg,
	E1=  -345.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1557.412  mm,	Y =   708.081  mm,	Z =   678.115  mm,
	W =   145.386 deg,	P =     9.675 deg,	R =  -131.834 deg,
	E1=  -345.000  mm
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
