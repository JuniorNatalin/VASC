/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1520";
PROG_SIZE	= 5808;
CREATE		= DATE 96-03-29  TIME 12:56:40;
MODIFIED	= DATE 23-07-01  TIME 02:05:40;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 10076;
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
    :  !Verr. 3 mit 1500R01 EIN ;
    :  !Verr. 5 mit 1520R01 EIN ;
    :  UFRAME_NUM=0 ;
    :  UTOOL_NUM=1 ;
    :  PAYLOAD[1] ;
    :  !Apagar Perfil Lib. 80 vs ST1520 ;
    :  !Apagar Perfil Lib. 79 vs ST1520 ;
    :  !Encender Anticol. 3 vs 1500R01 ;
    :  !Encender Anticol. 5 vs 1520R01 ;
    :J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
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
     33:  WAIT (!DI[65] AND DI[66] AND DI[79] AND DI[80])    ;
     34:  DO[80]=OFF ;
     35:  DO[79]=OFF ;
     36:  !Encender Anticolisiones ;
     37:  DO[83]=ON ;
     38:  DO[85]=ON ;
     39:  CALL MAKRO020    ;
     40:  WAIT (DI[23])    ;
     41:  DO[23]=ON ;
     42:  !Marca Usuario Suma Anticol. ;
     43:  !M[10] = (DI[43] AND DI[45]) ;
     44:  !Marca Usuario ST1520 C/Pieza ;
     45:  !M[11] = (!DI[65] AND DI[66]) ;
     46:  !Marca de Usuario Estado de Garra ;
     47:  !M[13] = (M[33] AND M[35] AND M[3 ;
     48:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39]) ;
       ------ ;
    :J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39]) ;
       ------ ;
    :J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[2] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39]) ;
       ------ ;
    :J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[79] AND DI[80] AND M[10] AND M[11] AND M[13] AND M[30] AND M[31] AND M[39]) ;
       ------ ;
    :  !En Posicion ST1520 ;
    :  !Tomar Pieza en ST1520 ;
    :  !Fin de Trabajo 1 ;
    :L P[5] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=(ON) ;
      8:  DO[77]=(ON) ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[78])    ;
     11:  DO[78]=(OFF) ;
     12:  DO[77]=(OFF) ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=(ON) ;
     15:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[13] AND M[30] AND M[32] AND M[39]) ;
       ------ ;
    :  PAYLOAD[2] ;
    :L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Marca Usuario ST1520 S/Pieza ;
      2:  !M[12] = (DI[65] AND !DI[66]) ;
      3:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39]) ;
       ------ ;
    :J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39]) ;
       ------ ;
    :J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39]) ;
       ------ ;
    :J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39]) ;
       ------ ;
    :J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[78] AND DI[80] AND M[3] AND M[10] AND M[12] AND M[13] AND M[30] AND M[32] AND M[39]) ;
       ------ ;
    :  !Encender Perfil Lib 80 vs ST1520 ;
    :  !Endender Perfil Lib 79 vs ST1520 ;
    :  !Apagar Anticol. 3 vs 1500R01 ;
    :  !Apagar Anticol. 5 vs 1520R01 ;
    :J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[45]=ON ;
      6:  DO[80]=ON ;
      7:  DO[79]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
/POS
P[1]{
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
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2580.019  mm,	Y =   113.534  mm,	Z =   285.385  mm,
	W =   179.991 deg,	P =    65.037 deg,	R =   -38.472 deg
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
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2737.375  mm,	Y =   319.754  mm,	Z =     8.430  mm,
	W =    92.152 deg,	P =    89.996 deg,	R =  -112.848 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2725.610  mm,	Y =   321.099  mm,	Z =  -383.169  mm,
	W =   -90.433 deg,	P =    89.740 deg,	R =    64.975 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2725.026  mm,	Y =   321.829  mm,	Z =  -499.005  mm,
	W =   -90.438 deg,	P =    89.741 deg,	R =    64.967 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2725.611  mm,	Y =   321.099  mm,	Z =  -432.315  mm,
	W =   -90.414 deg,	P =    89.740 deg,	R =    64.939 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2737.373  mm,	Y =   319.740  mm,	Z =  -201.695  mm,
	W =    90.649 deg,	P =    89.996 deg,	R =  -114.686 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2737.378  mm,	Y =   319.753  mm,	Z =    -1.695  mm,
	W =    90.719 deg,	P =    89.996 deg,	R =  -114.657 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2663.478  mm,	Y =  -268.267  mm,	Z =   198.932  mm,
	W =   179.991 deg,	P =    65.037 deg,	R =   -38.472 deg
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
	X =  2018.150  mm,	Y =  -824.625  mm,	Z =   948.777  mm,
	W =    -1.508 deg,	P =    45.552 deg,	R =   -22.649 deg
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
