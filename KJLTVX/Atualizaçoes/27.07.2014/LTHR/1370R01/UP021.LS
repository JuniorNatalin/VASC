/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1350";
PROG_SIZE	= 4132;
CREATE		= DATE 17-05-03  TIME 18:20:38;
MODIFIED	= DATE 23-12-26  TIME 11:21:58;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 6968;
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
   4:  !Apagar Perfil Lib. 80 vs ST1350 ;
   5:  !Apagar Perfil Lib. 79 vs ST1350 ;
   6:  !Encender Anticol. 5 vs 1310R01 ;
   7:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  DO[68]=OFF ;
     19:  !Lib. de Anticolisiones ;
     20:  DO[41]=ON ;
     21:  DO[42]=ON ;
     22:  DO[43]=ON ;
     23:  DO[44]=ON ;
     24:  DO[45]=ON ;
     25:  DO[46]=ON ;
     26:  !Apagar Pos. Base ;
     27:  DO[15]=OFF ;
     28:  !Robot en Trayectoria ;
     29:  DO[16]=ON ;
     30:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     31:  DO[80]=OFF ;
     32:  !Encender Anticolisiones ;
     33:  DO[85]=ON ;
     34:  CALL MAKRO020    ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=(ON) ;
     37:  !Marca Usuario ST1320 S/Pieza ;
     38:  !M[10] = !DI[63] AND DI[64] ;
     39:  !Marca de Usuario Estado de Garra ;
     40:  !M[21] = (M[35] AND M[37] AND M[3 ;
     41:  TC_ONLINE (DI[45] AND DI[80] AND M[2] AND M[10] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[45] AND DI[80] AND M[2] AND M[10] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[45] AND DI[80] AND M[10] AND M[17] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:   ;
  11:  !En Posicion ST1320 ;
  12:  !Tomar Pieza en ST1320 ;
  13:  !Fin de Trabajo 1 ;
  14:L P[4] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[34])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[45] AND DI[79] AND M[3] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:  PAYLOAD[2] ;
  16:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1320 S/Pieza ;
      2:  !M[11] = DI[63] AND !DI[64] ;
      3:  TC_ONLINE (DI[45] AND DI[79] AND M[3] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[45] AND DI[79] AND M[3] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 80 vs ST1350 ;
  19:  !Encender Perfil Lib 79 vs ST1350 ;
  20:  !Apagar Anticol. 5 vs 1310R01 ;
  21:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[45]=ON ;
      5:  DO[80]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[3] AND M[11] AND M[18] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
	X = -1838.359  mm,	Y = -1253.814  mm,	Z =  -391.163  mm,
	W =   159.557 deg,	P =    89.298 deg,	R =   -20.091 deg
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
	X = -1837.127  mm,	Y = -1259.717  mm,	Z =  -639.843  mm,
	W =   158.136 deg,	P =    88.602 deg,	R =   -21.742 deg
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
	X = -1834.557  mm,	Y = -1259.987  mm,	Z =  -751.795  mm,
	W =   158.348 deg,	P =    88.602 deg,	R =   -21.527 deg
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
	X = -1837.097  mm,	Y = -1259.597  mm,	Z =  -639.961  mm,
	W =   158.295 deg,	P =    88.602 deg,	R =   -21.580 deg
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
	X = -1838.359  mm,	Y = -1253.814  mm,	Z =  -391.163  mm,
	W =   159.557 deg,	P =    89.298 deg,	R =   -20.091 deg
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
	X =   839.400  mm,	Y = -1767.696  mm,	Z =  1746.892  mm,
	W =   150.000 deg,	P =     0.000 deg,	R =     0.000 deg
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
