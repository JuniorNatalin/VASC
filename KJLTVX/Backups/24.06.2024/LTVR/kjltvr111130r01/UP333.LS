/PROG  UP333
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Novo ST1140-2";
PROG_SIZE	= 5070;
CREATE		= DATE 23-09-15  TIME 19:44:12;
MODIFIED	= DATE 23-09-15  TIME 19:44:12;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 8582;
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
   2:  !UP333 Tomar en ST1140-2 ;
   3:   ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=2 ;
   6:  PAYLOAD[2] ;
   7:   ;
   8:  !Apagar Perfil Lib 77 vs ST1140-1 ;
   9:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     29:  WAIT (M[3] AND M[21] AND DI[77] AND DI[62] AND !DI[61])    ;
     30:  DO[77]=OFF ;
     31:  WAIT (DI[23])    ;
     32:  DO[23]=ON ;
     33:  !Marcas de Usuario: ;
     34:  !Marca 5 Estado de Garra ;
     35:  !Valvula 1 en V, 2-7 en R ;
     36:  !M[21]=(M[32] AND M[35] AND M[37] ;
     37:  !AND M[39] AND M[41] AND M[43]) ;
     38:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:L P[4] 300mm/sec CNT5 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  13:L P[5] 75mm/sec CNT2 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  14:   ;
  15:  !En Posicion ST1140-2 ;
  16:  !Tomar Piezas en ST1140-2 ;
  17:  !Fin de Trabajo 2 ;
  18:L P[6] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  19:  PAYLOAD[2] ;
  20:   ;
  21:L P[7] 300mm/sec CNT10 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:L P[8] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[3]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[36])    ;
      6:  WAIT (DI[61] AND !DI[62])    ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  !Marca 7 Estado de Garra ;
     10:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     11:  !M[23]=(M[32] AND M[36] AND M[37] ;
     12:  !AND M[40] AND M[41] AND M[43] ;
     13:  !AND M[63]) ;
     14:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:   ;
  24:  !Encender Perf Lib 77 vs ST1140-2 ;
  25:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[77]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
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
	X =   623.301  mm,	Y =  2600.782  mm,	Z =   154.770  mm,
	W =   -93.113 deg,	P =    84.556 deg,	R =    82.780 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   103.900  mm
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
	X =   623.776  mm,	Y =  2638.757  mm,	Z =    62.905  mm,
	W =   -69.852 deg,	P =    83.676 deg,	R =   106.891 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.000  mm
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
	X =   626.573  mm,	Y =  2641.808  mm,	Z =  -147.704  mm,
	W =   -73.307 deg,	P =    83.820 deg,	R =   102.767 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   119.200  mm
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
	X =   626.465  mm,	Y =  2641.852  mm,	Z =  -313.681  mm,
	W =   -73.320 deg,	P =    83.819 deg,	R =   102.755 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.987  mm
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
	X =   626.460  mm,	Y =  2641.854  mm,	Z =  -322.276  mm,
	W =   -73.313 deg,	P =    83.818 deg,	R =   102.763 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.924  mm
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
	X =   626.457  mm,	Y =  2636.571  mm,	Z =  -237.424  mm,
	W =   -73.320 deg,	P =    83.819 deg,	R =   102.757 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.924  mm
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
	X =   626.449  mm,	Y =  2641.841  mm,	Z =    47.105  mm,
	W =   -73.331 deg,	P =    83.819 deg,	R =   102.748 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.925  mm
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
