/PROG  UP222
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Novo ST1140-1";
PROG_SIZE	= 5732;
CREATE		= DATE 23-08-26  TIME 14:54:26;
MODIFIED	= DATE 23-09-15  TIME 20:07:18;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 9852;
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
   1:  !PALET_NOVO Tomar en ST1140 ;
   2:  !UP222 Tomar en ST1140-1 ;
   3:   ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=2 ;
   6:  PAYLOAD[2] ;
   7:   ;
   8:  !PALET_NOVO Tomar en ST1140 ;
   9:   ;
  10:  !Apagar Perfil Lib 77 vs ST1140-1 ;
  11:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  12:J P[2] 100% CNT80 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[3] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:L P[4] 100mm/sec CNT30 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:L P[5] 100mm/sec CNT5 ACC100 TB    .10sec,P-SPS    ;
       ------ ;
  16:L P[6] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:   ;
  18:  !En Posicion ST1140-1 ;
  19:  !Tomar Piezas en ST1140-1 ;
  20:  !Fin de Trabajo 2 ;
  21:L P[7] 75mm/sec CNT0 ACC50 TB    .10sec,P-SPS    ;
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
  22:   ;
  23:  PAYLOAD[2] ;
  24:L P[8] 100mm/sec CNT10 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:L P[9] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:   ;
  27:  !Tomar Piezas CLOSE CLMP3 ;
  28:L P[10] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  29:   ;
  30:  !Encender Perf Lib 77 vs ST1140-1 ;
  31:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	X =   323.875  mm,	Y =  2464.812  mm,	Z =   -99.230  mm,
	W =   -86.228 deg,	P =    84.542 deg,	R =    90.277 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.800  mm
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
	X =   296.754  mm,	Y =  2465.585  mm,	Z =  -230.841  mm,
	W =   -74.237 deg,	P =    84.380 deg,	R =   102.695 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   128.000  mm
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
	X =   314.657  mm,	Y =  2459.727  mm,	Z =  -360.753  mm,
	W =   -81.949 deg,	P =    84.515 deg,	R =    94.351 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   128.000  mm
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
	X =   315.944  mm,	Y =  2460.883  mm,	Z =  -390.676  mm,
	W =   -83.604 deg,	P =    84.888 deg,	R =    92.550 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   128.000  mm
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
	X =   317.306  mm,	Y =  2467.425  mm,	Z =  -405.850  mm,
	W =   -78.971 deg,	P =    84.488 deg,	R =    97.162 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   128.000  mm
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
	X =   317.306  mm,	Y =  2459.264  mm,	Z =  -334.089  mm,
	W =   -78.971 deg,	P =    84.488 deg,	R =    97.162 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   128.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   318.744  mm,	Y =  2458.362  mm,	Z =  -245.879  mm,
	W =   -72.744 deg,	P =    84.331 deg,	R =   104.170 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   128.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   320.214  mm,	Y =  2460.949  mm,	Z =    11.625  mm,
	W =   -71.710 deg,	P =    84.230 deg,	R =   105.805 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   107.400  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[11]{
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
