/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Dejar en ST1600";
PROG_SIZE	= 6584;
CREATE		= DATE 23-07-09  TIME 12:44:50;
MODIFIED	= DATE 23-08-16  TIME 18:46:30;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 10784;
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
   3:  PAYLOAD[3] ;
   4:  !Apagar Perfil Lib. 73 vs ST1600 ;
   5:  !Apagar Perfil Lib. 72 vs ST1600 ;
   6:  !Encender Anticol. 1 vs 1600R01 ;
   7:  !Encender Anticol. 7 vs 1610R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  DO[73]=ON ;
     15:  DO[72]=ON ;
     16:  DO[70]=OFF ;
     17:  DO[69]=ON ;
     18:  DO[68]=OFF ;
     19:  DO[67]=OFF ;
     20:  !Lib. de Anticolisiones ;
     21:  DO[41]=ON ;
     22:  DO[42]=ON ;
     23:  DO[43]=ON ;
     24:  DO[44]=ON ;
     25:  DO[45]=ON ;
     26:  DO[46]=ON ;
     27:  DO[47]=ON ;
     28:  DO[48]=ON ;
     29:  !Apagar Posicion Base ;
     30:  DO[15]=OFF ;
     31:  !Roboter en Trayectoria ;
     32:  DO[16]=ON ;
     33:  WAIT (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[73] AND DI[69])    ;
     34:  //F[7]=(ON) ;
     35:  //CALL MAKRO342    ;
     36:  //CALL MAKRO340    ;
     37:  DO[72]=OFF ;
     38:  DO[73]=OFF ;
     39:  DO[69]=OFF ;
     40:  DO[81]=ON ;
     41:  DO[87]=ON ;
     42:  CALL MAKRO020    ;
     43:  WAIT (DI[23])    ;
     44:  DO[23]=ON ;
     45:  !Marca Usuario ST1600 S/Pieza 1 ;
     46:  !M[19] = (DI[59] AND !DI[60]) ;
     47:  !Marca Usuario ST1600 S/Pieza 2 ;
     48:  !M[21] = (DI[57] AND !DI[58]) ;
     49:  !Marca de Usuario Suma de Anticol ;
     50:  !M[22] = (DI[41] AND DI[47]) ;
     51:  !Marca de Usuario Estado de Garra ;
     52:  !M[23] = (M[32] AND M[38]]) ;
     53:  !Marca de Usuario Estado de Garra ;
     54:  !M[26] = (M[39] AND M[41] AND M[4 ;
     55:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  11:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  12:  UTOOL_NUM=1 ;
  13:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  F[5]=(ON) ;
      4:  F[6]=(ON) ;
      5:  F[7]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[40] AND M[42] AND M[44])    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  !Marca de Usuario Estado de Garra ;
     11:  !M[25] = (M[40] AND M[42] AND M[4 ;
     12:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[22] AND M[23] AND M[25] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  14:   ;
  15:  !En Posicion ST1600 ;
  16:  !Dejar Pieza 2 en ST1600 ;
  17:  !Fin de Trabajo 5 ;
  18:L P[6] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[57] AND DI[58]) OR DI[15])    ;
      4:  DO[67]=ON ;
      5:  DO[68]=ON ;
      6:  CALL MAKRO005    ;
      7:  WAIT (DI[68])    ;
      8:  DO[68]=OFF ;
      9:  DO[67]=OFF ;
     10:  F[1]=(ON) ;
     11:  F[4]=(ON) ;
     12:  CALL MAKRO342    ;
     13:  CALL MAKRO340    ;
     14:  WAIT (M[31] AND M[37])    ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=(ON) ;
     17:  !Marca de Usuario Estado de Garra ;
     18:  !M[24] = (M[31] AND M[37]) ;
     19:  !Marca Usuario ST1600 C/Pieza 2 ;
     20:  !M[20] = (!DI[57] AND DI[58]) ;
     21:  TC_ONLINE (DI[68] AND DI[73] AND M[19] AND M[20] AND M[22] AND M[24] AND M[25] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  19:   ;
  20:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND DI[73] AND M[2] AND M[19] AND M[20] AND M[22] AND M[24] AND M[25] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  21:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND DI[73] AND M[2] AND M[19] AND M[20] AND M[22] AND M[24] AND M[25] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  22:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND DI[73] AND M[2] AND M[19] AND M[20] AND M[22] AND M[24] AND M[25] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  23:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND DI[73] AND M[2] AND M[19] AND M[20] AND M[22] AND M[24] AND M[25] AND M[30] AND M[33] AND M[35]) ;
       ------ ;
  24:  !Encender Perfil Lib 73 vs ST1600 ;
  25:  !Encender Perfil Lib 72 vs ST1600 ;
  26:  !Apagar Anticol. 1 vs 1600R01 ;
  27:  !Apagar Anticol. 7 vs 1610R01 ;
  28:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  F[2]=(ON) ;
      5:  F[5]=(ON) ;
      6:  F[6]=(ON) ;
      7:  F[7]=(ON) ;
      8:  CALL MAKRO342    ;
      9:  CALL MAKRO340    ;
     10:  WAIT (M[33] AND M[39] AND M[41] AND M[43])    ;
     11:  DO[41]=ON ;
     12:  DO[47]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=ON ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[43]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  1111.865  mm,	Y =   118.787  mm,	Z =  1806.347  mm,
	W =   -70.737 deg,	P =    11.951 deg,	R =   -35.487 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
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
	X =  1492.784  mm,	Y =   791.366  mm,	Z =  2136.380  mm,
	W =   -74.744 deg,	P =    11.683 deg,	R =   -19.804 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
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
	X =  -376.886  mm,	Y =  1894.316  mm,	Z =   648.516  mm,
	W =   -81.698 deg,	P =    53.304 deg,	R =   -30.382 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
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
	X =   258.080  mm,	Y =  2137.265  mm,	Z =   437.873  mm,
	W =  -179.535 deg,	P =      .517 deg,	R =      .570 deg
   GP2:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1204.866  mm,	Y =  3071.746  mm,	Z =    25.723  mm,
	W =  -172.540 deg,	P =    88.689 deg,	R =    52.786 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X = -1204.905  mm,	Y =  3071.697  mm,	Z =  -138.503  mm,
	W =  -167.717 deg,	P =    88.670 deg,	R =    57.610 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X = -1204.866  mm,	Y =  3071.746  mm,	Z =    25.723  mm,
	W =  -172.540 deg,	P =    88.689 deg,	R =    52.786 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X = -1204.417  mm,	Y =  3072.711  mm,	Z =   441.462  mm,
	W =   -38.476 deg,	P =    89.769 deg,	R =  -172.579 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  -541.433  mm,	Y =  1819.071  mm,	Z =  2360.436  mm,
	W =   -81.330 deg,	P =    -5.106 deg,	R =    53.050 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   260.814  mm,	Y =   962.826  mm,	Z =  3327.073  mm,
	W =  -122.903 deg,	P =   -14.932 deg,	R =    67.034 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =   -63.679  mm,	Y =   564.245  mm,	Z =  2983.021  mm,
	W =  -122.362 deg,	P =   -18.830 deg,	R =    50.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
