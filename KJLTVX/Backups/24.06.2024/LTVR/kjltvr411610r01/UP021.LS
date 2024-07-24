/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1600";
PROG_SIZE	= 6866;
CREATE		= DATE 96-03-22  TIME 17:31:42;
MODIFIED	= DATE 23-07-30  TIME 10:13:22;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 12814;
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
   4:  !Apagar Perfil Lib. 80 vs ST1600 ;
   5:  !Apagar Perfil Lib. 79 vs ST1600 ;
   6:  !Encender Anticol. 3 vs 1600R01 ;
   7:  !Encender Anticol. 7 vs 1550R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[47]=ON ;
     19:  DO[48]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  F[1]=(ON) ;
     25:  CALL MAKRO343    ;
     26:  WAIT (M[32])    ;
     27:  WAIT (DI[80] AND DI[79] AND DI[64] AND !DI[63])    ;
     28:  DO[80]=OFF ;
     29:  DO[79]=OFF ;
     30:  !Encender Anticolisiones ;
     31:  DO[83]=ON ;
     32:  DO[87]=ON ;
     33:  CALL MAKRO020    ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[79] AND DI[80] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  15:   ;
  16:  !En Posicion ST1600 ;
  17:  !Tomar Pieza en ST1600 ;
  18:  !Fin de Trabajo 1 ;
  19:L P[8] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  DO[78]=ON ;
      5:  DO[77]=ON ;
      6:  CALL MAKRO001    ;
      7:  WAIT (DI[78])    ;
      8:  DO[78]=OFF ;
      9:  DO[77]=OFF ;
     10:  F[1]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[31])    ;
     14:  F[2]=(ON) ;
     15:  CALL MAKRO343    ;
     16:  WAIT (M[34])    ;
     17:  WAIT (DI[23])    ;
     18:  DO[23]=ON ;
     19:  TC_ONLINE (DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  20:  PAYLOAD[2] ;
  21:L P[9] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[10] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] OR !DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[11] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] OR DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[12] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] OR DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] OR DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[78] AND DI[80] AND M[1] AND M[25] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  27:   ;
  28:  !Encender Perfil Lib 80 vs ST1600 ;
  29:  !Encender Perfil Lib 79 vs ST1600 ;
  30:  !Apagar Anticol. 3 vs 1600R01 ;
  31:  !Apagar Anticol. 7 vs 1550R01 ;
  32:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[47]=ON ;
      6:  DO[80]=ON ;
      7:  DO[79]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1095.734  mm,	Y =  -340.363  mm,	Z =  2945.513  mm,
	W =   157.968 deg,	P =    10.374 deg,	R =   -36.815 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1081.218  mm,	Y =  1840.890  mm,	Z =  2193.693  mm,
	W =   164.143 deg,	P =    40.683 deg,	R =   117.032 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X = -1288.598  mm,	Y =  3065.372  mm,	Z =   659.333  mm,
	W =   175.320 deg,	P =    88.394 deg,	R =   122.324 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1288.598  mm,	Y =  3065.372  mm,	Z =   163.492  mm,
	W =   175.321 deg,	P =    88.394 deg,	R =   122.325 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1297.300  mm,	Y =  3076.371  mm,	Z =   -25.183  mm,
	W =   177.541 deg,	P =    88.406 deg,	R =   124.772 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1319.550  mm,	Y =  3061.423  mm,	Z =  -232.072  mm,
	W =   164.008 deg,	P =    84.875 deg,	R =   111.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1319.375  mm,	Y =  3061.420  mm,	Z =  -452.175  mm,
	W =   165.128 deg,	P =    88.620 deg,	R =   112.408 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.500  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1319.375  mm,	Y =  3061.419  mm,	Z =  -344.517  mm,
	W =   164.245 deg,	P =    86.830 deg,	R =   111.525 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.500  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1317.444  mm,	Y =  3055.664  mm,	Z =  -270.403  mm,
	W =   176.026 deg,	P =    88.408 deg,	R =   123.270 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1313.515  mm,	Y =  3046.594  mm,	Z =    29.501  mm,
	W =   175.326 deg,	P =    88.394 deg,	R =   122.330 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1519.754  mm,	Y =  2716.209  mm,	Z =   844.544  mm,
	W =   164.934 deg,	P =    73.323 deg,	R =   117.723 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X = -1081.218  mm,	Y =  1840.890  mm,	Z =  2193.693  mm,
	W =   164.143 deg,	P =    40.683 deg,	R =   117.032 deg
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1095.734  mm,	Y =  -340.363  mm,	Z =  2945.513  mm,
	W =   157.968 deg,	P =    10.374 deg,	R =   -36.815 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.143  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
