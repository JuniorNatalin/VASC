/PROG  UP303
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar ST1140-2";
PROG_SIZE	= 3996;
CREATE		= DATE 20-11-03  TIME 09:48:10;
MODIFIED	= DATE 20-11-03  TIME 09:48:10;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 6432;
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
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[3] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:  !En Posicion ST1140-2 ;
   9:  !Tomar Piezas en ST1140-2 ;
  10:  !Fin de Trabajo 2 ;
  11:L P[4] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  12:L P[5] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  13:  !Encender Perf Lib 77 vs ST1140-2 ;
  14:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	X =   619.671  mm,	Y =  2646.270  mm,	Z =  -234.048  mm,
	W =   -87.764 deg,	P =    84.559 deg,	R =    82.782 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   105.700  mm
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
	X =   626.147  mm,	Y =  2644.255  mm,	Z =  -326.289  mm,
	W =   -86.341 deg,	P =    84.553 deg,	R =    89.581 deg
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
P[5]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   626.148  mm,	Y =  2644.256  mm,	Z =  -172.688  mm,
	W =   -86.341 deg,	P =    84.553 deg,	R =    89.581 deg
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
P[6]{
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
