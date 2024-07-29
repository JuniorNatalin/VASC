/PROG  UP022
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TOMA ST1140-1 TY";
PROG_SIZE	= 8556;
CREATE		= DATE 23-08-26  TIME 21:58:52;
MODIFIED	= DATE 24-04-23  TIME 17:57:58;
FILE_NAME	= UP222;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 15020;
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
   5:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     28:   ;
     29:  F[4]=(ON) ;
     30:  CALL MAKRO343    ;
     31:  WAIT (M[38])    ;
     32:  DO[16]=ON ;
     33:  WAIT (M[3] AND M[27] AND DI[77] AND DI[64] AND !DI[63])    ;
     34:  DO[77]=OFF ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marcas de Usuario: ;
     38:  !Marca 5 Estado de Garra ;
     39:  !Valvula 1 en V, 2-7 en R ;
     40:  !M[21]=(M[32] AND M[35] AND M[37] ;
     41:  !AND M[39] AND M[41] AND M[43]) ;
     42:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:L P[4] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:L P[5] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:L P[6] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:L P[7] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:L P[8] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:   ;
  14:L P[9] 75mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[27] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:   ;
  16:  !En Posicion ST1140-1 ;
  17:  !Tomar Piezas en ST1140-1 ;
  18:  !Fin de Trabajo 2 ;
  19:L P[10] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[5]=(ON) ;
      5:  IF (!DI[15]),F[17]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[40] AND M[63])    ;
      6:  CALL MAKRO340    ;
      8:  F[4]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  WAIT (M[37])    ;
      6:  CALL MAKRO340    ;
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
  20:   ;
  21:L P[11] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  22:L P[12] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  26:L P[13] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:  //L P[14] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:   ;
  29:  PAYLOAD[2] ;
  30:L P[15] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[28] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:   ;
  32:  !Tomar Piezas CLOSE CLMP3 ;
  33:L P[16] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  34:   ;
  35:  !Encender Perf Lib 77 vs ST1140-1 ;
  36:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	X =   323.875  mm,	Y =  2464.812  mm,	Z =  -118.430  mm,
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
	X =   278.467  mm,	Y =  2459.546  mm,	Z =  -194.930  mm,
	W =   -81.836 deg,	P =    74.134 deg,	R =    91.051 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   111.600  mm
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
	X =   288.352  mm,	Y =  2457.592  mm,	Z =  -336.483  mm,
	W =   -81.015 deg,	P =    75.712 deg,	R =    85.248 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   111.600  mm
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
	X =   284.215  mm,	Y =  2460.864  mm,	Z =  -344.452  mm,
	W =   -80.851 deg,	P =    76.000 deg,	R =    87.256 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   111.600  mm
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
	X =   290.390  mm,	Y =  2462.119  mm,	Z =  -401.738  mm,
	W =   -86.160 deg,	P =    76.929 deg,	R =    83.869 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   111.211  mm
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
	X =   291.047  mm,	Y =  2460.799  mm,	Z =  -398.162  mm,
	W =   -86.469 deg,	P =    78.150 deg,	R =    90.721 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   111.160  mm
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
	X =   290.078  mm,	Y =  2466.756  mm,	Z =  -398.738  mm,
	W =   -83.926 deg,	P =    81.804 deg,	R =    93.014 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   110.869  mm
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
	X =   290.081  mm,	Y =  2466.041  mm,	Z =  -397.533  mm,
	W =   -84.559 deg,	P =    84.545 deg,	R =    92.637 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   110.869  mm
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
	X =   288.401  mm,	Y =  2464.414  mm,	Z =  -333.556  mm,
	W =   -83.890 deg,	P =    84.548 deg,	R =    92.643 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   115.400  mm
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
	X =   288.401  mm,	Y =  2462.734  mm,	Z =  -308.836  mm,
	W =   -83.891 deg,	P =    84.548 deg,	R =    92.643 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   115.400  mm
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
	X =   290.079  mm,	Y =  2466.757  mm,	Z =  -207.096  mm,
	W =   -83.926 deg,	P =    81.804 deg,	R =    93.014 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   110.872  mm
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
	X =   319.546  mm,	Y =  2466.909  mm,	Z =  -366.016  mm,
	W =   -73.543 deg,	P =    84.342 deg,	R =   101.722 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   129.600  mm
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
	X =   320.214  mm,	Y =  2460.949  mm,	Z =   -27.495  mm,
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
P[16]{
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
P[17]{
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
