/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1250";
PROG_SIZE	= 4762;
CREATE		= DATE 17-08-11  TIME 02:17:30;
MODIFIED	= DATE 23-07-08  TIME 16:04:48;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 8350;
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
   4:  !Apagar Perfil Lib. 80 vs ST1250 ;
   5:  !Apagar Perfil Lib. 79 vs ST1250 ;
   6:  !Encender Anticol. 3 vs 1250R01 ;
   7:  !Encender Anticol. 5 vs 1220R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[16]=(ON) ;
      4:  TIMER[3]=RESET ;
      5:  TIMER[3]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[79]=ON ;
     10:  DO[78]=OFF ;
     11:  DO[77]=OFF ;
     12:  DO[76]=ON ;
     13:  DO[74]=OFF ;
     14:  !Lib. de Anticolisiones ;
     15:  DO[43]=ON ;
     16:  DO[44]=ON ;
     17:  DO[45]=ON ;
     18:  DO[46]=ON ;
     19:  DO[47]=ON ;
     20:  DO[48]=ON ;
     21:  !Apagar Pos. Base ;
     22:  DO[15]=OFF ;
     23:  !Robot en Trayectoria ;
     24:  DO[16]=ON ;
     25:  !Encender Anticolisiones ;
     26:  DO[83]=ON ;
     27:  DO[85]=ON ;
     28:  CALL MAKRO020    ;
     29:  WAIT (DI[80] AND DI[79] AND DI[64] AND !DI[63])    ;
     30:  DO[80]=OFF ;
     31:  DO[79]=OFF ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  TC_ONLINE (DI[43] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[2] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
   9:   ;
  10:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[2] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  11:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[2] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  12:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[80] AND DI[79] AND DI[64] AND !DI[63] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  13:  !En Posicion ST1250 ;
  14:  !Tomar Pieza de ST1250 ;
  15:  !Fin de Trabajo 1 ;
  16:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  DO[77]=ON ;
      5:  DO[78]=ON ;
      6:  CALL MAKRO001    ;
      7:  WAIT (DI[78])    ;
      8:  DO[77]=OFF ;
      9:  DO[78]=OFF ;
     10:  F[1]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[31])    ;
     14:  F[2]=(ON) ;
     15:  CALL MAKRO343    ;
     16:  WAIT (M[34])    ;
     17:  WAIT (DI[23])    ;
     18:  DO[23]=ON ;
     19:  TC_ONLINE (DI[43] AND DI[45] AND DI[80] AND DI[78] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  17:  PAYLOAD[2] ;
  18:L P[6] 2000mm/sec CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[80] AND DI[78] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  19:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[45] AND DI[80] AND DI[78] AND !DI[64] AND DI[63] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  20:  !Encender Perfil Lib 79 vs ST1250 ;
  21:  !Apagar Anticol. 3 vs 1250R01 ;
  22:  !Apagar Anticol. 5 vs 1220R01 ;
  23:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[43]=(ON) ;
      3:  DO[45]=(ON) ;
      4:  DO[79]=(ON) ;
      5:  TC_ONLINE (DI[80] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  24:  !Encender Perfil Lib 80 vs ST1250 ;
  25:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=(ON) ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=(ON) ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -201.461  mm,	Y =  1353.436  mm,	Z =   725.940  mm,
	W =    12.214 deg,	P =    57.195 deg,	R =  -155.598 deg
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
	X =  1125.796  mm,	Y =  -138.319  mm,	Z =   618.345  mm,
	W =    82.608 deg,	P =    51.866 deg,	R =  -125.931 deg
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
	X =  2793.043  mm,	Y =  -562.696  mm,	Z =  -100.574  mm,
	W =   -12.701 deg,	P =    88.916 deg,	R =    51.769 deg
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
	X =  2792.317  mm,	Y =  -563.273  mm,	Z =  -377.020  mm,
	W =   -12.422 deg,	P =    88.919 deg,	R =    51.964 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.826  mm
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
	X =  2792.541  mm,	Y =  -562.921  mm,	Z =  -474.238  mm,
	W =   -12.393 deg,	P =    88.919 deg,	R =    51.974 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.809  mm
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
	X =  2792.318  mm,	Y =  -563.273  mm,	Z =  -377.020  mm,
	W =   -12.422 deg,	P =    88.919 deg,	R =    51.964 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.826  mm
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
	X =  2793.043  mm,	Y =  -562.696  mm,	Z =  -100.574  mm,
	W =   -12.701 deg,	P =    88.916 deg,	R =    51.769 deg
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
	X =  1125.796  mm,	Y =  -138.319  mm,	Z =   618.345  mm,
	W =    82.608 deg,	P =    51.866 deg,	R =  -125.931 deg
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
	X =  -201.461  mm,	Y =  1353.436  mm,	Z =   725.940  mm,
	W =    12.214 deg,	P =    57.195 deg,	R =  -155.598 deg
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
