/PROG  UP002
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar en ST1540";
PROG_SIZE	= 7030;
CREATE		= DATE 96-03-29  TIME 12:56:52;
MODIFIED	= DATE 23-12-18  TIME 14:51:50;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 12802;
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
    :  PAYLOAD[2] ;
    :  !Apagar Perfil Lib. 76 vs ST1540 ;
    :J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
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
     17:  DO[69]=OFF ;
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
     29:  !Apagar Pos. Base ;
     30:  DO[15]=OFF ;
     31:  !Robot en Trayectoria ;
     32:  DO[16]=ON ;
     33:  WAIT (!DI[61] AND DI[62] AND !DI[63] AND DI[64] AND DI[76])    ;
     34:  DO[76]=OFF ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marca Usuario ST1540 C/Pieza 1 ;
     38:  !M[14] = (!DI[63] AND DI[64]) ;
     39:  !Marca Usuario ST1540 C/Pieza 2 ;
     40:  !M[16] = (!DI[61] AND DI[62]) ;
     41:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[14] AND M[16] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :  !En Posicion 1 ST1540 ;
    :  !Tomar Pieza 1 en ST1540 ;
    :  !Fin de Trabajo 2 ;
    :L P[6] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[5])    ;
      4:  F[4]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[38])    ;
      7:  DO[75]=ON ;
      8:  CALL MAKRO002    ;
      9:  WAIT (DI[76])    ;
     10:  DO[75]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=(ON) ;
     13:  TC_ONLINE (DI[76] AND M[5] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 1 ;
      2:  !M[15] = (DI[63] AND !DI[64]) ;
      3:  TC_ONLINE (DI[76] AND M[5] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[5] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :  UTOOL_NUM=1 ;
    :J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[5] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :  !En Posicion 2 ST1540 ;
    :  !Tomar Pieza 2 en ST1540 ;
    :  !Fin de Trabajo 3 ;
    :L P[11] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[34])    ;
      7:  DO[74]=ON ;
      8:  CALL MAKRO003    ;
      9:  WAIT (DI[76])    ;
     10:  DO[74]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=(ON) ;
     13:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :  PAYLOAD[3] ;
    :L P[12] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 2 ;
      2:  !M[17] = (DI[61] AND !DI[62]) ;
      3:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :  !Encender Perfil Lib 76 vs ST1540 ;
    :J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[76]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
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
	X =  -376.822  mm,	Y =  2024.883  mm,	Z =  -164.188  mm,
	W =   -82.425 deg,	P =    61.598 deg,	R =   172.169 deg
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
	X =  -381.560  mm,	Y =  2093.168  mm,	Z =  -301.615  mm,
	W =   -82.425 deg,	P =    61.598 deg,	R =   172.169 deg
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
	X =  -352.527  mm,	Y =  2083.027  mm,	Z =  -316.899  mm,
	W =   -78.663 deg,	P =    61.598 deg,	R =   172.169 deg
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
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -368.673  mm,	Y =  2086.058  mm,	Z =  -336.379  mm,
	W =   -82.427 deg,	P =    61.598 deg,	R =   172.167 deg
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
P[6]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -383.469  mm,	Y =  2092.332  mm,	Z =  -359.173  mm,
	W =   -82.424 deg,	P =    61.598 deg,	R =   172.170 deg
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
P[7]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -320.226  mm,	Y =  2079.824  mm,	Z =  -239.097  mm,
	W =   -82.425 deg,	P =    61.598 deg,	R =   172.169 deg
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
P[8]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =  -232.878  mm,	Y =  2052.016  mm,	Z =   -95.922  mm,
	W =   -82.214 deg,	P =    61.938 deg,	R =   173.254 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -406.294  mm,	Y =  1837.262  mm,	Z =  -214.095  mm,
	W =    90.001 deg,	P =    21.158 deg,	R =   160.441 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -556.921  mm,	Y =  1902.301  mm,	Z =  -271.330  mm,
	W =    89.457 deg,	P =    22.111 deg,	R =   161.284 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -682.067  mm,	Y =  1948.384  mm,	Z =  -320.775  mm,
	W =    89.457 deg,	P =    22.111 deg,	R =   161.284 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -628.295  mm,	Y =  1926.809  mm,	Z =  -299.645  mm,
	W =    89.470 deg,	P =    22.076 deg,	R =   161.289 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -318.416  mm,	Y =  1806.041  mm,	Z =  -178.001  mm,
	W =    90.001 deg,	P =    21.158 deg,	R =   160.441 deg
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
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1197.686  mm,	Y =  1121.323  mm,	Z =  2751.072  mm,
	W =     9.668 deg,	P =   -22.231 deg,	R =    56.206 deg
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
P[15]{
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
