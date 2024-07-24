/PROG  UP302
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar ST1140-1";
PROG_SIZE	= 4624;
CREATE		= DATE 20-11-03  TIME 08:12:54;
MODIFIED	= DATE 20-11-03  TIME 08:12:54;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 7664;
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
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib 77 vs ST1140-1 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
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
     25:  !Apagar Posicion Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  WAIT (M[3] AND M[21] AND DI[77] AND DI[64] AND !DI[63])    ;
     30:  DO[77]=OFF ;
     31:  WAIT (DI[23])    ;
     32:  DO[23]=ON ;
     33:  !Marcas de Usuario: ;
     34:  !Marca 5 Estado de Garra ;
     35:  !Valvula 1 en V, 2-7 en R ;
     36:  !M[21]=(M[32] AND M[35] AND M[37] ;
     37:  !AND M[39] AND M[41] AND M[43]) ;
     38:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT80 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:L P[4] 50mm/sec CNT0 ACC50 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:   ;
  10:  !En Posicion ST1140-1 ;
  11:  !Tomar Piezas en ST1140-1 ;
  12:  !Fin de Trabajo 2 ;
  13:L P[5] 100mm/sec CNT0 ACC50 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[5]=(ON) ;
      5:  IF (!DI[15]),F[17]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[40] AND M[63])    ;
      8:  DO[75]=ON ;
      9:  CALL MAKRO002    ;
     10:  WAIT (DI[76])    ;
     11:  DO[75]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  !Marca 6 Estado de Garra ;
     15:  !Valvula 1,2&5 en V, 3,4,6&7 en R ;
     16:  !M[22]=(M[32] AND M[35] AND M[37] ;
     17:  !AND M[40] AND M[41] AND M[43] ;
     18:  !AND M[63]) ;
     19:  TC_ONLINE (DI[76] AND M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 100mm/sec CNT0 ACC70 TB    .10sec,P-SPS    ;
       ------ ;
  16:L P[7] 50mm/sec CNT0 ACC70 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[3]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[36])    ;
      6:  WAIT (DI[63] AND !DI[64])    ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  !Marca 7 Estado de Garra ;
     10:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     11:  !M[23]=(M[32] AND M[36] AND M[37] ;
     12:  !AND M[40] AND M[41] AND M[43] ;
     13:  !AND M[63]) ;
     14:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:   ;
  18:  !Encender Perf Lib 77 vs ST1140-1 ;
  19:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[930]=(OFF) ;
      4:  TIMER[4]=STOP ;
      5:  DO[77]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1436.857  mm,	Y =  1598.998  mm,	Z =   117.965  mm,
	W =   179.395 deg,	P =    81.558 deg,	R =   -18.495 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   271.857  mm,	Y =  2447.987  mm,	Z =     1.651  mm,
	W =   -90.741 deg,	P =    84.537 deg,	R =    86.878 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   313.006  mm,	Y =  2455.797  mm,	Z =  -309.394  mm,
	W =   -87.801 deg,	P =    84.534 deg,	R =    90.253 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   101.095  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   321.468  mm,	Y =  2462.186  mm,	Z =  -370.793  mm,
	W =   -86.239 deg,	P =    84.537 deg,	R =    90.264 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   101.791  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   321.454  mm,	Y =  2465.325  mm,	Z =  -403.700  mm,
	W =   -86.238 deg,	P =    84.537 deg,	R =    90.265 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   101.791  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   321.468  mm,	Y =  2462.186  mm,	Z =  -370.794  mm,
	W =   -86.233 deg,	P =    84.537 deg,	R =    90.270 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   101.791  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   319.863  mm,	Y =  2463.023  mm,	Z =   -80.622  mm,
	W =   -87.368 deg,	P =    84.534 deg,	R =    90.262 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   101.099  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1436.857  mm,	Y =  1598.998  mm,	Z =   117.965  mm,
	W =   179.395 deg,	P =    81.558 deg,	R =   -18.495 deg
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
