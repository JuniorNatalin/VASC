/PROG  UP555
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depositar ST1150";
PROG_SIZE	= 14976;
CREATE		= DATE 24-02-06  TIME 05:31:34;
MODIFIED	= DATE 24-02-06  TIME 05:31:36;
FILE_NAME	= UP005;
VERSION		= 0;
LINE_COUNT	= 51;
MEMORY_SIZE	= 27388;
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
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 74 vs ST1150 ;
   5:  !Apagar Perfil Lib. 73 vs ST1150 ;
   6:  !Encender Anticol. 3 vs 1150R01 ;
   7:  !Encender Anticol. 5 vs 1180R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
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
     25:  !Apagar Pos. Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  WAIT (DI[74] AND DI[73] AND M[10])    ;
     30:  DO[74]=OFF ;
     31:  DO[73]=OFF ;
     32:  !Encender Anticolisiones ;
     33:  DO[83]=ON ;
     34:  DO[85]=ON ;
     35:  CALL MAKRO020    ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=ON ;
     38:  !Marcas de Usuario: ;
     39:  !Marca 1 ST1150 Vacia ;
     40:  !M[10]=(!DI[60] AND DI[59] ;
     41:  !AND !DI[58] AND DI[57]) ;
     42:  !Marca 7 Estado de Garra ;
     43:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     44:  !M[23]=(M[32] AND M[36] AND M[37] ;
     45:  !AND M[40] AND M[41] AND M[43] ;
     46:  !AND M[63]) ;
     47:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[10] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[6]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[42])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  !Marca 8 Estado de Garra ;
      9:  !Valvula 1,2,3,5&6 en V, 4&7 en R ;
     10:  !M[24]=(M[32] AND M[36] AND M[37] ;
     11:  !AND M[40] AND M[42] AND M[43] ;
     12:  !AND M[63]) ;
     13:  TC_ONLINE (DI[43] AND DI[45] AND DI[73] AND DI[74] AND M[1] AND M[24] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:  !En Posicion 1 ST1150 ;
  20:  !Dejar Pieza 1 en ST1150 ;
  21:  !Fin de Trabajo 4 ;
  22:L P[12] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[71]=ON ;
      9:  CALL MAKRO004    ;
     10:  WAIT (DI[72])    ;
     11:  DO[71]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  !Marca 2 ST1150 C/Pieza 1 ;
     15:  !M[11]=(DI[60] AND !DI[59] ;
     16:  !AND !DI[58] AND DI[57]) ;
     17:  !Marca 9 Estado de Garra ;
     18:  !Valvula 2,3,5&6 en V, 1,4&7 en R ;
     19:  !M[25]=(M[31] AND M[36] AND M[37] ;
     20:  !AND M[40] AND M[42] AND M[43] ;
     21:  !AND M[63]) ;
     22:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:L P[13] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[5])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[72] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:  UTOOL_NUM=2 ;
  29:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[70]=ON ;
      4:  WAIT (DI[70])    ;
      5:  DO[70]=OFF ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  33:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[11] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[24] 50% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (DI[43] AND DI[45] AND DI[70] AND DI[74] AND M[5] AND M[25] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  36:  !En Posicion 2 ST1150 ;
  37:  !Dejar Pieza 2 en ST1150 ;
  38:  !Fin de Trabajo 5 ;
  39:L P[25] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[68]=ON ;
      4:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[35])    ;
      9:  F[7]=(ON) ;
     10:  CALL MAKRO343    ;
     11:  WAIT (M[44])    ;
     12:  DO[69]=ON ;
     13:  CALL MAKRO005    ;
     14:  WAIT (DI[69])    ;
     15:  DO[69]=OFF ;
     16:  F[5]=(ON) ;
     17:  CALL MAKRO342    ;
     18:  CALL MAKRO340    ;
     19:  WAIT (M[39])    ;
     20:  F[4]=(ON) ;
     21:  CALL MAKRO343    ;
     22:  WAIT (M[38])    ;
     23:  DO[67]=(ON) ;
     24:  WAIT (DI[67])    ;
     25:  DO[67]=(OFF) ;
     26:  IF (!DI[15]),F[17]=(ON) ;
     27:  IF (!DI[15]),CALL MAKRO342 ;
     28:  CALL MAKRO340    ;
     29:  WAIT (!M[63] OR M[63] OR DI[15])    ;
     30:  F[7]=(ON) ;
     31:  CALL MAKRO342    ;
     32:  CALL MAKRO340    ;
     33:  WAIT (M[43])    ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  !Marca 3 ST1150 Llena ;
     37:  !M[12]=(DI[60] AND !DI[59] ;
     38:  !AND DI[58] AND !DI[57]) ;
     39:  !Marca 10 Estado de Garra ;
     40:  !Valvula 4&6 en V, 1,2,3,5&7 en R ;
     41:  !M[26]=(M[31] AND M[35] AND M[38] ;
     42:  !AND M[39] AND M[42] AND M[43]) ;
     43:  TC_ONLINE (DI[43] AND DI[45] AND DI[67] AND DI[74] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  40:L P[26] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[43] AND DI[45] AND DI[67] AND DI[74] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  41:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[67] AND DI[74] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  42:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[67] AND DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  43:  !Encender Perfil Lib 73 vs ST1150 ;
  44:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[73]=ON ;
      3:  TC_ONLINE (DI[43] AND DI[45] AND DI[74] AND M[2] AND M[12] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  45:  !Encender Perfil Lib 74 vs ST1150 ;
  46:  !Apagar Anticol. 3 vs 1150R01 ;
  47:  !Apagar Anticol. 5 vs 1180R01 ;
  48:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[74]=ON ;
      3:  DO[43]=ON ;
      4:  DO[45]=ON ;
      5:  TC_ONLINE (M[2] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  49:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[26] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[33] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  F[4]=(ON) ;
      5:  F[6]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[37] AND M[41])    ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  !Marca 4 Estado de Garra ;
     12:  !Valvulas 1-7 en R ;
     13:  !M[20]=(M[31] AND M[35] AND M[37] ;
     14:  !AND M[39] AND M[41] AND M[43]) ;
     15:  TC_ONLINE (M[20] AND M[2] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   893.302  mm,	Y =   623.420  mm,	Z =    77.203  mm,
	W =    98.852 deg,	P =    39.834 deg,	R =  -104.177 deg
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
	X =   574.660  mm,	Y =  -533.643  mm,	Z =  1020.134  mm,
	W =  -149.104 deg,	P =    53.651 deg,	R =   -86.456 deg
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
	X =  -599.745  mm,	Y =  -505.284  mm,	Z =  1020.134  mm,
	W =  -149.104 deg,	P =    53.651 deg,	R =   176.539 deg
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
	X = -2450.973  mm,	Y = -1200.382  mm,	Z =   572.809  mm,
	W =    13.060 deg,	P =    75.060 deg,	R =  -149.650 deg
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
	X = -2450.973  mm,	Y = -1200.382  mm,	Z =   572.809  mm,
	W =    13.060 deg,	P =    75.060 deg,	R =  -149.650 deg
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
	X = -2450.973  mm,	Y = -1200.382  mm,	Z =   572.809  mm,
	W =    13.060 deg,	P =    75.060 deg,	R =  -149.650 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2528.860  mm,	Y = -1252.461  mm,	Z =   130.411  mm,
	W =    11.017 deg,	P =    84.248 deg,	R =  -151.604 deg
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
	X = -2550.681  mm,	Y = -1236.248  mm,	Z =   -31.493  mm,
	W =    11.017 deg,	P =    84.247 deg,	R =  -151.605 deg
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
	X = -2513.541  mm,	Y = -1206.195  mm,	Z =  -133.580  mm,
	W =     0.000 deg,	P =    87.427 deg,	R =  -150.007 deg
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
	X = -2558.750  mm,	Y = -1232.189  mm,	Z =  -133.577  mm,
	W =      .000 deg,	P =    87.427 deg,	R =  -150.005 deg
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
	X = -2599.883  mm,	Y = -1171.878  mm,	Z =  -255.856  mm,
	W =    -5.900 deg,	P =    86.802 deg,	R =  -155.549 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   102.400  mm
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
	X = -2601.386  mm,	Y = -1171.781  mm,	Z =  -311.736  mm,
	W =    -5.898 deg,	P =    86.805 deg,	R =  -155.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   104.400  mm
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
	X = -2597.734  mm,	Y = -1168.977  mm,	Z =  -203.862  mm,
	W =     8.862 deg,	P =    86.601 deg,	R =  -141.113 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.002  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2550.835  mm,	Y = -1236.339  mm,	Z =   -75.887  mm,
	W =     0.000 deg,	P =    87.427 deg,	R =  -150.005 deg
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
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2582.668  mm,	Y = -1353.251  mm,	Z =   273.693  mm,
	W =   -20.996 deg,	P =    72.024 deg,	R =  -171.741 deg
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
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2327.345  mm,	Y = -1265.489  mm,	Z =   501.373  mm,
	W =     1.785 deg,	P =    73.144 deg,	R =  -148.053 deg
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
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1824.464  mm,	Y = -1953.321  mm,	Z =   494.068  mm,
	W =    37.586 deg,	P =    69.200 deg,	R =  -102.660 deg
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
P[18]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1932.364  mm,	Y = -1177.176  mm,	Z =   531.178  mm,
	W =   -22.630 deg,	P =    84.645 deg,	R =  -169.649 deg
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
P[19]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2058.115  mm,	Y = -1150.619  mm,	Z =   304.183  mm,
	W =   -80.811 deg,	P =    86.145 deg,	R =   124.000 deg
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
P[20]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2062.977  mm,	Y = -1149.419  mm,	Z =   236.209  mm,
	W =   -83.532 deg,	P =    86.073 deg,	R =   120.935 deg
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
P[21]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2078.860  mm,	Y = -1121.037  mm,	Z =   235.959  mm,
	W =   -93.443 deg,	P =    86.237 deg,	R =   118.829 deg
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
P[22]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2081.476  mm,	Y = -1112.958  mm,	Z =    71.964  mm,
	W =   -93.436 deg,	P =    86.236 deg,	R =   118.836 deg
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
P[23]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2091.080  mm,	Y = -1097.146  mm,	Z =    -8.355  mm,
	W =   -88.731 deg,	P =    86.241 deg,	R =   120.751 deg
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
P[24]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2084.272  mm,	Y = -1078.623  mm,	Z =   -67.856  mm,
	W =  -102.560 deg,	P =    85.652 deg,	R =   108.520 deg
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
P[25]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2052.588  mm,	Y = -1137.046  mm,	Z =   -74.230  mm,
	W =   -93.156 deg,	P =    85.899 deg,	R =   116.109 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   194.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2069.208  mm,	Y = -1139.567  mm,	Z =   -10.694  mm,
	W =  -101.086 deg,	P =    85.699 deg,	R =   109.695 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   115.537  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2078.599  mm,	Y = -1147.096  mm,	Z =   117.823  mm,
	W =  -100.314 deg,	P =    85.837 deg,	R =   111.082 deg
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
P[28]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -2060.989  mm,	Y = -1165.495  mm,	Z =   456.956  mm,
	W =   -83.942 deg,	P =    86.190 deg,	R =   129.109 deg
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
P[29]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X = -1058.805  mm,	Y =  -367.660  mm,	Z =  2129.829  mm,
	W =     3.506 deg,	P =    27.246 deg,	R =  -145.763 deg
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
P[30]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -475.910  mm,	Y = -1025.833  mm,	Z =  2275.270  mm,
	W =     4.453 deg,	P =    17.669 deg,	R =   -99.640 deg
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
P[31]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1049.266  mm,	Y =  -197.396  mm,	Z =  2602.499  mm,
	W =     6.406 deg,	P =    -4.413 deg,	R =     6.057 deg
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
P[32]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   945.887  mm,	Y =   665.819  mm,	Z =  1984.355  mm,
	W =  -124.411 deg,	P =    15.627 deg,	R =    12.586 deg
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
P[33]{
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
