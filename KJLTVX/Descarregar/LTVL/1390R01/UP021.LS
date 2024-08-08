/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1380";
PROG_SIZE	= 4882;
CREATE		= DATE 23-07-08  TIME 22:43:44;
MODIFIED	= DATE 23-07-08  TIME 22:43:46;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 8466;
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
   1:  !Apagar Perfil Lib. 80 vs ST1380 ;
   2:  !Encender Anticol. 3 vs 1370R01 ;
   3:  !Encender Anticol. 5 vs 1380R01 ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=1 ;
   6:  PAYLOAD[1] ;
   7:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     11:  DO[76]=OFF ;
     12:  DO[75]=ON ;
     13:  DO[73]=OFF ;
     14:  !Lib. de Anticolisiones ;
     15:  DO[41]=ON ;
     16:  DO[42]=ON ;
     17:  DO[43]=ON ;
     18:  DO[44]=ON ;
     19:  DO[45]=ON ;
     20:  DO[46]=ON ;
     21:  !Apagar Pos. Base ;
     22:  DO[15]=OFF ;
     23:  !Robot en Trayectoria ;
     24:  DO[16]=ON ;
     25:  F[1]=(ON) ;
     26:  CALL MAKRO343    ;
     27:  WAIT (M[32])    ;
     28:  WAIT (!DI[63] AND DI[64] AND DI[80] AND DI[79])    ;
     29:  DO[80]=(OFF) ;
     30:  DO[79]=(OFF) ;
     31:  DO[83]=(ON) ;
     32:  DO[85]=(ON) ;
     33:  CALL MAKRO020    ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=(ON) ;
     36:  !Marca de Usuario Suma de Anticol ;
     37:  !M[25] = DI[43] AND DI[45] ;
     38:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:  !En Posicion ST1380 ;
  12:  !Tomar Pieza de ST1380 ;
  13:  !Fin de Trabajo 1 ;
  14:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  DO[78]=ON ;
      5:  DO[77]=ON ;
      6:  WAIT (DI[78])    ;
      7:  DO[78]=OFF ;
      8:  DO[77]=OFF ;
      9:  F[1]=(ON) ;
     10:  CALL MAKRO342    ;
     11:  CALL MAKRO340    ;
     12:  WAIT (M[31])    ;
     13:  F[2]=(ON) ;
     14:  CALL MAKRO343    ;
     15:  WAIT (M[34])    ;
     16:  DO[76]=ON ;
     17:  CALL MAKRO001    ;
     18:  WAIT (DI[76])    ;
     19:  DO[76]=OFF ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (DI[76] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  15:  PAYLOAD[2] ;
  16:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  19:  !Encender Perfil Lib 80 vs ST1380 ;
  20:  !Apagar Anticol. 3 vs 1370R01 ;
  21:  !Apagar Anticol. 5 vs 1380R01 ;
  22:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[45]=ON ;
      6:  DO[80]=ON ;
      7:  DO[79]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   584.813  mm,	Y =   359.341  mm,	Z =  1620.482  mm,
	W =   -42.182 deg,	P =    26.578 deg,	R =    17.187 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -482.502  mm,	Y =   934.622  mm,	Z =  2245.118  mm,
	W =   113.366 deg,	P =    22.673 deg,	R =   114.524 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
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
	X = -1050.189  mm,	Y =  2300.307  mm,	Z =   289.537  mm,
	W =    50.618 deg,	P =    89.850 deg,	R =    49.389 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.201  mm
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
	X = -1049.932  mm,	Y =  2301.724  mm,	Z =    18.628  mm,
	W =    49.503 deg,	P =    89.853 deg,	R =    48.345 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.115  mm
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
	X = -1049.889  mm,	Y =  2301.964  mm,	Z =   -27.469  mm,
	W =    49.283 deg,	P =    89.853 deg,	R =    48.137 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
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
	X = -1050.000  mm,	Y =  2301.830  mm,	Z =    39.216  mm,
	W =    49.395 deg,	P =    89.853 deg,	R =    48.248 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
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
	X = -1050.190  mm,	Y =  2300.306  mm,	Z =   289.537  mm,
	W =    50.488 deg,	P =    89.850 deg,	R =    49.259 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.201  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -481.558  mm,	Y =   932.281  mm,	Z =  2244.062  mm,
	W =   113.366 deg,	P =    22.672 deg,	R =   114.524 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.100  mm
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
	X =   584.813  mm,	Y =   359.341  mm,	Z =  1620.482  mm,
	W =   -42.182 deg,	P =    26.578 deg,	R =    17.187 deg
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
