/PROG  UP001
/ATTR
OWNER		= SHIFT;
COMMENT		= "Tomar en ST1250";
PROG_SIZE	= 4964;
CREATE		= DATE 16-07-27  TIME 00:20:28;
MODIFIED	= DATE 17-02-14  TIME 10:36:58;
FILE_NAME	= UP012;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 8552;
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
   4:  !Apagar Perfil Lib. 80 vs ST1250 ;
   5:  !Apagar Perfil Lib. 79 vs ST1250 ;
   6:  !Encender Anticol. 5 vs 1220R01 ;
   7:  !Encender Anticol. 3 vs 1250R01 ;
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
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  DO[45]=ON ;
     17:  DO[46]=ON ;
     18:  !Apagar Pos. Base ;
     19:  DO[15]=OFF ;
     20:  !Robot en Trayectoria ;
     21:  DO[16]=ON ;
     22:  F[1]=(ON) ;
     23:  CALL MAKRO343    ;
     24:  WAIT (M[32])    ;
     25:  WAIT (!DI[63] AND DI[64] AND DI[79] AND DI[80])    ;
     26:  DO[79]=OFF ;
     27:  DO[80]=OFF ;
     28:  !Encender Anticolisiones ;
     29:  DO[83]=ON ;
     30:  DO[85]=ON ;
     31:  CALL MAKRO020    ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  !Marca Usuario ST1250 C/Pieza ;
     35:  !M[10] =(!DI[63] AND DI[64]) ;
     36:  TC_ONLINE (DI[43] AND DI[45] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[79] AND DI[80] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion ST1250 ;
  13:  !Tomar Pieza en ST1250 ;
  14:  !Fin de Trabajo 1 ;
  15:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  DO[77]=ON ;
      5:  DO[78]=ON ;
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
     19:  TC_ONLINE (DI[43] AND DI[45] AND DI[78] AND DI[80] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1250 S/Pieza ;
      2:  !M[11] =(DI[63] AND !DI[64]) ;
      3:  TC_ONLINE (DI[43] AND DI[45] AND DI[78] AND DI[80] AND M[1] AND M[11] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[78] AND DI[80] AND M[1] AND M[11] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[78] AND DI[80] AND M[1] AND M[11] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  20:  !Encender Perfil Lib 80 vs ST1250 ;
  21:  !Encender Perfil Lib 79 vs ST1250 ;
  22:  !Apagar Anticol. 5 vs 1220R01 ;
  23:  !Apagar Anticol. 3 vs 1250R01 ;
  24:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[79]=ON ;
      4:  DO[80]=ON ;
      5:  DO[43]=ON ;
      6:  DO[45]=ON ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TIMER[3]=STOP ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -538.873  mm,	Y =  -938.845  mm,	Z =  1394.457  mm,
	W =   -37.908 deg,	P =     4.556 deg,	R =  -120.101 deg
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
	X =   939.522  mm,	Y =  -154.456  mm,	Z =  1184.278  mm,
	W =     3.330 deg,	P =    11.706 deg,	R =   -51.989 deg
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
	X =  2090.942  mm,	Y =   616.327  mm,	Z =   302.064  mm,
	W =   145.794 deg,	P =    88.983 deg,	R =    80.905 deg
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
	X =  2109.513  mm,	Y =   597.075  mm,	Z =    42.619  mm,
	W =    21.144 deg,	P =    89.877 deg,	R =   -43.284 deg
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
	X =  2106.624  mm,	Y =   602.661  mm,	Z =   -83.615  mm,
	W =    86.926 deg,	P =    89.619 deg,	R =    22.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.400  mm
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
	X =  2104.808  mm,	Y =   605.889  mm,	Z =   121.488  mm,
	W =    86.767 deg,	P =    89.616 deg,	R =    21.958 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.700  mm
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
	X =  2090.942  mm,	Y =   616.327  mm,	Z =   302.064  mm,
	W =   145.794 deg,	P =    88.983 deg,	R =    80.905 deg
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
	X =   939.522  mm,	Y =  -154.456  mm,	Z =  1184.278  mm,
	W =     3.330 deg,	P =    11.706 deg,	R =   -51.989 deg
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
	X =  -538.873  mm,	Y =  -938.845  mm,	Z =  1394.457  mm,
	W =   -37.908 deg,	P =     4.556 deg,	R =  -120.101 deg
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
