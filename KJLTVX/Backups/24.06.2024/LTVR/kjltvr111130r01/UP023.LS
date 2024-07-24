/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TOMA ST1140-2 TY";
PROG_SIZE	= 7522;
CREATE		= DATE 23-08-26  TIME 21:59:10;
MODIFIED	= DATE 24-04-23  TIME 18:36:38;
FILE_NAME	= UP333;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 13290;
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
   4:   ;
   5:  !Apagar Perfil Lib 77 vs ST1140-2 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     28:  F[4]=(ON) ;
     29:  CALL MAKRO343    ;
     30:  WAIT (M[38])    ;
     31:  DO[16]=ON ;
     32:  WAIT (M[3] AND M[27] AND DI[77] AND DI[62] AND !DI[61])    ;
     33:  DO[77]=OFF ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  !Marcas de Usuario: ;
     37:  !Marca 5 Estado de Garra ;
     38:  !Valvula 1 en V, 2-7 en R ;
     39:  !M[21]=(M[32] AND M[35] AND M[37] ;
     40:  !AND M[39] AND M[41] AND M[43]) ;
     41:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[3] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[3] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  10:L P[5] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  11:L P[6] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  12:L P[7] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  13:   ;
  14:L P[8] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  15:L P[9] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
      2:   ;
       ------ ;
  16:   ;
  17:  !En Posicion ST1140-2 ;
  18:  !Tomar Piezas en ST1140-2 ;
  19:  !Fin de Trabajo 2 ;
  20:L P[10] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[5]=(ON) ;
      5:  IF (!DI[15]),F[17]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[40] AND M[63])    ;
      8:  F[4]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  WAIT (M[37])    ;
     11:   ;
     12:  DO[75]=ON ;
     13:  CALL MAKRO002    ;
     14:  WAIT (DI[76])    ;
     15:  DO[75]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  !Marca 6 Estado de Garra ;
     19:  !Valvula 1,2&5 en V, 3,4,6&7 en R ;
     20:  !M[22]=(M[32] AND M[35] AND M[37] ;
     21:  !AND M[40] AND M[41] AND M[43] ;
     22:  !AND M[63]) ;
     23:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:   ;
  22:L P[11] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[5]=(ON) ;
      5:  IF (!DI[15]),F[17]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[40] AND M[63])    ;
      8:  F[4]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  WAIT (M[37])    ;
     11:   ;
     12:  DO[75]=ON ;
     13:  CALL MAKRO002    ;
     14:  WAIT (DI[76])    ;
     15:  DO[75]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  !Marca 6 Estado de Garra ;
     19:  !Valvula 1,2&5 en V, 3,4,6&7 en R ;
     20:  !M[22]=(M[32] AND M[35] AND M[37] ;
     21:  !AND M[40] AND M[41] AND M[43] ;
     22:  !AND M[63]) ;
     23:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:   ;
  24:   ;
  25:   ;
  26:L P[12] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:   ;
  28:  PAYLOAD[2] ;
  29:L P[13] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:   ;
  31:  !Encender Perf Lib 77 vs ST1140-2 ;
  32:  !Tomar Piezas CLOSE CLMP3 ;
  33:L P[14] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     14:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	X =   598.821  mm,	Y =  2600.781  mm,	Z =   154.770  mm,
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
	X =   608.656  mm,	Y =  2638.757  mm,	Z =    62.905  mm,
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
	X =   583.578  mm,	Y =  2639.975  mm,	Z =  -112.835  mm,
	W =   -72.607 deg,	P =    82.752 deg,	R =    96.589 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   118.100  mm
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
	X =   591.070  mm,	Y =  2625.204  mm,	Z =  -214.797  mm,
	W =   -71.926 deg,	P =    83.211 deg,	R =    97.909 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   118.100  mm
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
	X =   591.847  mm,	Y =  2635.543  mm,	Z =  -300.030  mm,
	W =   -74.248 deg,	P =    80.771 deg,	R =    94.013 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   118.100  mm
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
	X =   594.023  mm,	Y =  2637.787  mm,	Z =  -306.044  mm,
	W =   -74.692 deg,	P =    81.140 deg,	R =    97.449 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   118.100  mm
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
	X =   594.961  mm,	Y =  2643.365  mm,	Z =  -309.579  mm,
	W =   -75.840 deg,	P =    81.049 deg,	R =    99.411 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.657  mm
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
	X =   595.611  mm,	Y =  2642.957  mm,	Z =  -310.618  mm,
	W =   -76.268 deg,	P =    82.260 deg,	R =   100.974 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.401  mm
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
	X =   595.519  mm,	Y =  2643.888  mm,	Z =  -314.111  mm,
	W =   -74.091 deg,	P =    83.771 deg,	R =   102.947 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   119.100  mm
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
	X =   597.207  mm,	Y =  2636.550  mm,	Z =  -245.125  mm,
	W =   -74.095 deg,	P =    83.771 deg,	R =   102.943 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   119.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   595.676  mm,	Y =  2636.975  mm,	Z =  -161.794  mm,
	W =   -72.649 deg,	P =    84.137 deg,	R =   104.245 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   117.404  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   548.528  mm,	Y =  2647.767  mm,	Z =   115.365  mm,
	W =   -84.785 deg,	P =    83.585 deg,	R =    91.048 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   118.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   625.328  mm,	Y =  2647.768  mm,	Z =   115.365  mm,
	W =   -84.785 deg,	P =    83.585 deg,	R =    91.048 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   118.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[15]{
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
