/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1540";
PROG_SIZE	= 4792;
CREATE		= DATE 03-02-02  TIME 06:48:44;
MODIFIED	= DATE 23-07-13  TIME 02:53:30;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 8348;
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
    :   ;
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
     33:  WAIT (DI[61] AND !DI[62] AND !DI[63] AND DI[64] AND DI[76])    ;
     34:  DO[76]=OFF ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  !Marca Usuario ST1540 C/Pieza 1 ;
     38:  !M[14] = (!DI[63] AND DI[64]) ;
     39:  !Marca Usuario ST1540 C/Pieza 2 ;
     40:  !M[16] = (!DI[61] AND DI[62]) ;
     41:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :J P[2] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :   ;
    :  UTOOL_NUM=1 ;
    :   ;
    :J P[3] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :J P[4] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[3] AND M[14] AND M[17] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
    :   ;
    :  !En Posicion 2 ST1540 ;
    :  !Tomar Pieza 2 en ST1540 ;
    :  !Fin de Trabajo 3 ;
    :L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[6])    ;
      4:  F[2]=(ON) ;
      5:  F[4]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[34])    ;
      8:  DO[74]=ON ;
      9:  CALL MAKRO003    ;
     10:  WAIT (DI[76])    ;
     11:  DO[74]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=(ON) ;
     14:  TC_ONLINE (DI[76] AND M[6] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :   ;
    :  PAYLOAD[3] ;
    :   ;
    :L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1540 S/Pieza 2 ;
      2:  !M[17] = (DI[61] AND !DI[62]) ;
      3:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[17] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[6] AND M[15] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :   ;
    :  !Encender Perfil Lib 76 vs ST1540 ;
    :J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  DO[76]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[6] AND M[30] AND M[32] AND M[34] AND M[35] AND M[38] AND M[39] AND M[41]) ;
       ------ ;
    :   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   305.491  mm,	Y =  -595.609  mm,	Z =  1733.811  mm,
	W =    13.306 deg,	P =    54.883 deg,	R =   177.270 deg
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
	X =  1448.127  mm,	Y =   792.217  mm,	Z =  2256.788  mm,
	W =   119.048 deg,	P =    52.241 deg,	R =   -13.720 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -596.710  mm,	Y =  1921.259  mm,	Z =  -289.547  mm,
	W =    89.568 deg,	P =    21.721 deg,	R =   161.098 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -676.214  mm,	Y =  1945.411  mm,	Z =  -325.082  mm,
	W =    89.456 deg,	P =    22.795 deg,	R =   161.084 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -592.339  mm,	Y =  1916.668  mm,	Z =  -287.821  mm,
	W =    89.456 deg,	P =    22.795 deg,	R =   161.084 deg
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
P[8]{
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
P[9]{
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
