/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tomar en ST1380";
PROG_SIZE	= 6340;
CREATE		= DATE 23-07-14  TIME 02:27:30;
MODIFIED	= DATE 23-07-14  TIME 02:27:30;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 11404;
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
   4:  !Apagar Perfil Lib. 80 vs ST1380 ;
   5:  !Apagar Perfil Lib. 79 vs ST1380 ;
   6:  !Encender Anticol. 3 vs 1370R01 ;
   7:  !Encender Anticol. 5 vs 1380R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     27:  CALL MAKRO340    ;
     28:  WAIT (M[32])    ;
     29:  WAIT (!DI[63] AND DI[64] AND DI[79] AND DI[80])    ;
     30:  DO[80]=(OFF) ;
     31:  DO[79]=(OFF) ;
     32:  !Encender Anticolisiones ;
     33:  DO[83]=ON ;
     34:  DO[85]=ON ;
     35:  CALL MAKRO020    ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=(ON) ;
     38:  !Marca Usuario Suma Anticol. ;
     39:  !M[10] = (DI[43] AND DI[45]) ;
     40:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[10] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:  !En Posicion ST1380 ;
  15:  !Tomar Pieza en ST1380 ;
  16:  !Fin de Trabajo 1 ;
  17:L P[7] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     22:  TC_ONLINE (DI[76] AND DI[80] AND M[1] AND M[10] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:  PAYLOAD[2] ;
  19:L P[8] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[10] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[10] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[10] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[10] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND DI[80] AND M[1] AND M[10] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  24:  !Encender Perfil Lib 80 vs ST1380 ;
  25:  !Encender Perfil Lib 79 vs ST1380 ;
  26:  !Apagar Anticol. 3 vs 1370R01 ;
  27:  !Apagar Anticol. 5 vs 1380R01 ;
  28:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  DO[79]=ON ;
      6:  DO[43]=ON ;
      7:  DO[45]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   482.000  mm,	Y = -1029.614  mm,	Z =  1044.913  mm,
	W =   -90.000 deg,	P =    80.000 deg,	R =   -90.000 deg
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
	X =   788.602  mm,	Y =   -72.257  mm,	Z =  1130.431  mm,
	W =   -90.009 deg,	P =    64.639 deg,	R =   -42.814 deg
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
	X =   157.439  mm,	Y =   708.783  mm,	Z =   968.884  mm,
	W =   -90.019 deg,	P =    69.000 deg,	R =    35.793 deg
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
	X =  -482.854  mm,	Y =  1481.779  mm,	Z =  1178.251  mm,
	W =   -90.000 deg,	P =    47.000 deg,	R =    90.000 deg
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
	X =  -482.586  mm,	Y =  2687.974  mm,	Z =   349.057  mm,
	W =   -21.337 deg,	P =    80.000 deg,	R =    93.663 deg
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
	X =  -455.129  mm,	Y =  2792.935  mm,	Z =  -221.180  mm,
	W =     3.571 deg,	P =    89.582 deg,	R =   118.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.100  mm
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
	X =  -456.122  mm,	Y =  2792.980  mm,	Z =  -306.882  mm,
	W =     3.226 deg,	P =    89.515 deg,	R =   117.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.800  mm
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
	X =  -457.394  mm,	Y =  2792.448  mm,	Z =  -183.823  mm,
	W =     4.616 deg,	P =    89.487 deg,	R =   119.735 deg
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
	X =  -482.586  mm,	Y =  2687.974  mm,	Z =   349.057  mm,
	W =   -21.337 deg,	P =    80.000 deg,	R =    93.663 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -482.854  mm,	Y =  1481.779  mm,	Z =  1178.251  mm,
	W =   -90.000 deg,	P =    47.000 deg,	R =    90.000 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   157.439  mm,	Y =   708.783  mm,	Z =   968.884  mm,
	W =   -90.019 deg,	P =    69.000 deg,	R =    35.793 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   788.581  mm,	Y =   -72.288  mm,	Z =  1130.415  mm,
	W =   -90.014 deg,	P =    64.639 deg,	R =   -42.819 deg
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
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   482.000  mm,	Y = -1029.614  mm,	Z =  1044.913  mm,
	W =   -90.000 deg,	P =    80.000 deg,	R =   -90.000 deg
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
