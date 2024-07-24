/PROG  UP024
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1600";
PROG_SIZE	= 6906;
CREATE		= DATE 19-11-10  TIME 20:42:16;
MODIFIED	= DATE 23-07-13  TIME 03:15:56;
FILE_NAME	= UP024;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 11994;
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
    :  UFRAME_NUM=0 ;
    :  UTOOL_NUM=2 ;
    :  PAYLOAD[1] ;
    :  !Apagar Perfil Lib. 73 vs ST1600 ;
    :  !Apagar Perfil Lib. 72 vs ST1600 ;
    :  !Encender Anticol. 1 vs 1600R01 ;
    :  !Encender Anticol. 7 vs 1610R01 ;
    :J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     18:  DO[68]=ON ;
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
     29:  !Apagar Pos. Base ;
     30:  DO[15]=OFF ;
     31:  !Robot en Trayectoria ;
     32:  DO[16]=ON ;
     33:  WAIT (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[73] AND DI[69])    ;
     34:  DO[73]=OFF ;
     35:  DO[69]=OFF ;
     36:  !Encender Anticolisiones ;
     37:  DO[81]=ON ;
     38:  DO[87]=ON ;
     39:  CALL MAKRO020    ;
     40:  WAIT (DI[23])    ;
     41:  DO[23]=ON ;
     42:  !Marca Usuario ST1600 S/Pieza 1 ;
     43:  !M[19] = (DI[59] AND !DI[60]) ;
     44:  !Marca Usuario ST1600 S/Pieza 2 ;
     45:  !M[21] = (DI[57] AND !DI[58]) ;
     46:  !Marca Usuario Suma Anticol. ;
     47:  !M[22] = (DI[41] AND DI[47]) ;
     48:  !Marca de Usuario Estado de Garra ;
     49:  !M[23] = (M[32] AND M[34]]) ;
     50:  !Marca de Usuario Estado de Garra ;
     51:  !M[26] = (M[39] AND M[41]) ;
     52:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30] AND M[35] AND M[38]) ;
       ------ ;
    :J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30] AND M[35] AND M[38]) ;
       ------ ;
    :J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30] AND M[35] AND M[38]) ;
       ------ ;
    :   ;
    :  UTOOL_NUM=1 ;
    :  UFRAME_NUM=0 ;
    :   ;
    :J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30]) ;
       ------ ;
    :J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30]) ;
       ------ ;
    :J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30]) ;
       ------ ;
    :J P[7] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[21] AND M[22] AND M[23] AND M[26] AND M[30]) ;
       ------ ;
    :J P[8] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca de Usuario Estado de Garra ;
      2:  !M[25] = (M[40] AND M[42]) ;
      3:  TC_ONLINE (DI[69] AND DI[73] AND M[6] AND M[19] AND M[22] AND M[23] AND M[26] AND M[30]) ;
       ------ ;
    :  !En Posicion 2 ST1600 ;
    :  !Dejar Pieza 2 en ST1600 ;
    :  !Fin de Trabajo 5 ;
    :L P[9] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     11:  F[2]=(ON) ;
     12:  F[4]=(ON) ;
     13:  CALL MAKRO342    ;
     14:  CALL MAKRO340    ;
     15:  WAIT (M[31] AND M[37])    ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=(ON) ;
     18:  !Marca de Usuario Estado de Garra ;
     19:  !M[24] = (M[31] AND M[33]) ;
     20:  !Marca Usuario ST1600 S/Pieza 2 ;
     21:  !M[20] = (!DI[57] AND DI[58]) ;
     22:  TC_ONLINE (DI[68] AND DI[73] AND M[19] AND M[20] AND M[22] AND M[24] AND M[26] AND M[30]) ;
       ------ ;
    :  PAYLOAD[1] ;
    :L P[10] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND DI[73] AND M[2] AND M[19] AND M[20] AND M[22] AND M[24] AND M[26] AND M[30]) ;
       ------ ;
    :  !Encender Perfil Lib 73 vs ST1600 ;
    :  !Encender Perfil Lib 72 vs ST1600 ;
    :J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[73]=ON ;
      3:  DO[69]=ON ;
      4:  TC_ONLINE (M[2] AND M[19] AND M[20] AND M[22] AND M[24] AND M[26] AND M[30]) ;
       ------ ;
    :J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[41]=ON ;
      3:  DO[47]=ON ;
      4:  TC_ONLINE (DI[73] AND M[2] AND M[24] AND M[26] AND M[30]) ;
       ------ ;
    :  !Apagar Anticol. 1 vs 1600R01 ;
    :  !Apagar Anticol. 7 vs 1610R01 ;
    :J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[35])    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   302.544  mm,	Y =  -595.216  mm,	Z =  1733.575  mm,
	W =    13.219 deg,	P =    54.819 deg,	R =   177.077 deg
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
	X =   875.783  mm,	Y =    67.899  mm,	Z =  1742.607  mm,
	W =   -96.978 deg,	P =    47.306 deg,	R =    74.972 deg
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
	X =   648.722  mm,	Y =  -885.782  mm,	Z =  1578.045  mm,
	W =   -55.732 deg,	P =    11.906 deg,	R =    19.295 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -488.885  mm,	Y = -2302.130  mm,	Z =   308.725  mm,
	W =   133.976 deg,	P =    76.974 deg,	R =   -86.508 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -695.368  mm,	Y = -2121.786  mm,	Z =    92.469  mm,
	W =    82.547 deg,	P =    89.352 deg,	R =  -153.764 deg
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
	X =  -691.803  mm,	Y = -2119.410  mm,	Z =    92.421  mm,
	W =    82.527 deg,	P =    89.352 deg,	R =  -153.784 deg
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
	X =  -672.861  mm,	Y = -2025.405  mm,	Z =   -84.812  mm,
	W =   -66.368 deg,	P =    89.675 deg,	R =    61.631 deg
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
	X =  -672.003  mm,	Y = -2023.800  mm,	Z =  -405.515  mm,
	W =   -66.272 deg,	P =    89.675 deg,	R =    61.726 deg
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
	X =  -671.820  mm,	Y = -2023.455  mm,	Z =  -472.743  mm,
	W =   -66.193 deg,	P =    89.675 deg,	R =    61.804 deg
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
	X =  -673.465  mm,	Y = -2023.800  mm,	Z =  -401.617  mm,
	W =   -72.370 deg,	P =    89.571 deg,	R =    55.626 deg
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
	X =  -675.330  mm,	Y = -2027.685  mm,	Z =    39.892  mm,
	W =   -72.425 deg,	P =    89.571 deg,	R =    55.572 deg
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
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -471.680  mm,	Y = -1798.050  mm,	Z =  1656.610  mm,
	W =    92.497 deg,	P =    10.164 deg,	R =  -128.608 deg
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
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.083  mm,	Y =  -599.299  mm,	Z =  2061.852  mm,
	W =    36.403 deg,	P =    28.189 deg,	R =   -17.877 deg
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
