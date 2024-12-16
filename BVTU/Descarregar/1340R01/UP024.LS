/PROG  UP024
/ATTR
OWNER		= AUROM;
COMMENT		= "Depositar ST1350";
PROG_SIZE	= 12240;
CREATE		= DATE 17-06-05  TIME 08:33:04;
MODIFIED	= DATE 24-07-01  TIME 10:26:36;
FILE_NAME	= R_1340R0;
VERSION		= 0;
LINE_COUNT	= 99;
MEMORY_SIZE	= 21392;
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
   1:  !M[2] >Ambas Garras sin Piezas ;
   2:  !M[3] >Solo Garra Tunel con Pieza ;
   3:  !M[10]>Suma Anticolisiones: ;
   4:  !.     >DI[43]&[47]&[49]&[51]&[53 ;
   5:  !M[23]>Garras Cerrada Completas ;
   6:  !.    >Pines G1/G2 Avanzados ;
   7:  !M[24]>Garras Cerrada Completas ;
   8:  !.    >Pines G1 Avanzados ;
   9:  !.    >Pines G2 Retraidos ;
  10:  !M[25]>Garra Refuerzos Abierta ;
  11:  !.    >Garra Tunel Cerrada ;
  12:  !.    >Pines G1 Avanzados ;
  13:  !.    >Pines G2 Retraidos ;
  14:  !M[26]>Garra Refuerzos Abierta ;
  15:  !.    >Garra Tunel Cerrada ;
  16:  !.    >Pines G1/G2 Retraidos ;
  17:  !M[27]>Garras Abiertas con ;
  18:  !.    >Pines Retraidos ;
  19:   ;
  20:  PAYLOAD[3] ;
  21:   ;
  22:  UFRAME_NUM=0 ;
  23:  UTOOL_NUM=2 ;
  24:   ;
  25:  !Deposito 1: Refuerzos Izq./Der. ;
  26:  !Deposito 2: Tunel ;
  27:  !Espera Lib. Depositar en ST1350 ;
  28:  !Apagar Perfil Libre vs ST1350 ;
  29:  !Herramienta y 7mo Eje ;
  30:  !Encender Anticol.  7 vs R1350R03 ;
  31:  !Encender Anticol.  9 vs R1350R04 ;
  32:  !Encender Anticol. 11 vs R1350R02 ;
  33:  !Encender Anticol. 13 vs R1350R01 ;
  34:  !Encender Anticol.  3 vs R1360R01 ;
  35:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  DO[72]=ON ;
     12:  DO[71]=ON ;
     13:  DO[70]=OFF ;
     14:  DO[69]=OFF ;
     15:  !Lib. de Anticolisiones ;
     16:  DO[41]=ON ;
     17:  DO[42]=ON ;
     18:  DO[43]=ON ;
     19:  DO[44]=ON ;
     20:  DO[47]=ON ;
     21:  DO[48]=ON ;
     22:  DO[49]=ON ;
     23:  DO[50]=ON ;
     24:  DO[51]=ON ;
     25:  DO[52]=ON ;
     26:  DO[53]=ON ;
     27:  DO[54]=ON ;
     28:  !Apagar Posicion Base ;
     29:  DO[15]=OFF ;
     30:  !Robot en Trayectoria ;
     31:  DO[16]=ON ;
     32:  !Espera Liberacion ;
     33:  WAIT (DI[72] AND DI[71] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57] AND M[1] AND M[23])    ;
     34:  DO[72]=OFF ;
     35:  DO[71]=OFF ;
     36:  !Solicitar Anticolisiones ;
     37:  DO[83]=ON ;
     38:  DO[87]=ON ;
     39:  DO[89]=ON ;
     40:  DO[91]=ON ;
     41:  DO[93]=ON ;
     42:  CALL MAKRO020    ;
     43:  WAIT (DI[23])    ;
     44:  DO[23]=ON ;
     45:  TC_ONLINE (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[71] AND DI[72] AND M[1] AND M[10] AND M[23] AND M[30]) ;
       ------ ;
  36:   ;
  37:J P[2] 100% CNT100 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[71] AND DI[72] AND M[1] AND M[10] AND M[23] AND M[30]) ;
       ------ ;
  38:J P[3] 100% CNT50 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[71] AND DI[72] AND M[1] AND M[10] AND M[23] AND M[30]) ;
       ------ ;
  39:J P[4] 100% CNT50 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND DI[59] AND !DI[60] AND DI[71] AND DI[72] AND M[1] AND M[10] AND M[23] AND M[30]) ;
       ------ ;
  40:   ;
  41:  !Retraer Pin Garra 2 Grupo 3 ;
  42:J P[5] 100% CNT0 ACC50 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[13]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[24])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[57] AND !DI[58] AND DI[71] AND DI[72] AND M[1] AND M[10] AND M[24] AND M[30]) ;
       ------ ;
  43:   ;
  44:  !Grupo ;
  45:  !En Pos. de Deposito(1) en ST1350 ;
  46:  !Refuerzos Izquierdo y Derecho ;
  47:  !Fin de Trabajo 4: ;
  48:  !Depositar (1) en ST1350 ;
  49:  !Espera Lib. Para Reorientar ;
  50:L P[6] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[60] AND !DI[59]) OR DI[15])    ;
      4:  F[11]=(ON) ;
      5:  F[12]=(ON) ;
      6:  F[15]=(ON) ;
      7:  CALL MAKRO342    ;
      8:  CALL MAKRO340    ;
      9:  !Ambas Garras en Pos. ;
     10:  WAIT (M[25])    ;
     11:  DO[69]=ON ;
     12:  CALL MAKRO004    ;
     13:  WAIT (DI[70])    ;
     14:  DO[69]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  51:   ;
  52:  PAYLOAD[2] ;
  53:  UTOOL_NUM=2 ;
  54:L P[7] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  55:   ;
  56:  !Cambio de TCP ;
  57:  UTOOL_NUM=1 ;
  58:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  59:   ;
  60:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  61:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  62:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  63:J P[12] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  64:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  65:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  66:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[57] AND !DI[58] AND !DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[25] AND M[30]) ;
       ------ ;
  67:   ;
  68:  !Retraer Pin Garra 1 Grupo 2 ;
  69:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[2]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[26])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (!DI[59] AND DI[60] AND DI[70] AND DI[72] AND M[3] AND M[10] AND M[26] AND M[30]) ;
       ------ ;
  70:   ;
  71:  !En Pos. de Deposito(2) en ST1350 ;
  72:  !Depositar Tunel ;
  73:  !Fin de Trabajo 5: ;
  74:  !Depositar (2) en ST1350 ;
  75:  !Espera Lib. Para Salir ;
  76:L P[17] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[58] AND !DI[57]) OR DI[15])    ;
      4:  DO[68]=ON ;
      5:  DO[70]=ON ;
      6:  CALL MAKRO005    ;
      7:  F[1]=(ON) ;
      8:  CALL MAKRO342    ;
      9:  CALL MAKRO340    ;
     10:  !Ambas Garras en Pos. ;
     11:  WAIT (M[27])    ;
     12:  WAIT (DI[69])    ;
     13:  DO[68]=OFF ;
     14:  DO[70]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (!DI[57] AND DI[58] AND !DI[59] AND DI[60] AND DI[69] AND DI[72] AND M[10] AND M[27] AND M[30]) ;
       ------ ;
  77:   ;
  78:  PAYLOAD[1] ;
  79:L P[18] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[57] AND DI[58] AND !DI[59] AND DI[60] AND DI[69] AND DI[72] AND M[2] AND M[10] AND M[27] AND M[30] AND M[34]) ;
       ------ ;
  80:   ;
  81:J P[19] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[57] AND DI[58] AND !DI[59] AND DI[60] AND DI[69] AND DI[72] AND M[2] AND M[10] AND M[27] AND M[30]) ;
       ------ ;
  82:J P[20] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[57] AND DI[58] AND !DI[59] AND DI[60] AND DI[69] AND DI[72] AND M[2] AND M[10] AND M[27] AND M[30]) ;
       ------ ;
  83:   ;
  84:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[57] AND DI[58] AND !DI[59] AND DI[60] AND DI[69] AND DI[72] AND M[2] AND M[10] AND M[27] AND M[30]) ;
       ------ ;
  85:   ;
  86:  !Encender Perfil Libre vs ST1350 ;
  87:  !Herramienta y 7mo Eje ;
  88:  !Apagar Anticol. 11 vs R1350R02 ;
  89:  !Apagar Anticol. 13 vs R1350R01 ;
  90:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[51]=ON ;
      3:  DO[53]=ON ;
      4:  DO[72]=ON ;
      5:  DO[71]=ON ;
      6:  TC_ONLINE (DI[43] AND DI[47] AND DI[49] AND M[2] AND M[27] AND M[30]) ;
       ------ ;
  91:   ;
  92:  !Apagar Anticol. 3 vs R1360R01 ;
  93:  !Apagar Anticol. 7 vs R1350R03 ;
  94:  !Apagar Anticol. 9 vs R1350R04 ;
  95:J P[23] 100% CNT10 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[43]=ON ;
      3:  DO[47]=ON ;
      4:  DO[49]=ON ;
      5:  TC_ONLINE (M[2] AND M[27] AND M[30]) ;
       ------ ;
  96:   ;
  97:  !Avanzar Pines Garra 1 Grupo 2 ;
  98:  !Avanzar Pines Garra 2 Grupo 3 ;
  99:J P[24] 100% CNT0 ACC50 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[2]=(ON) ;
      4:  F[13]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  !Ambas Garras en Pos. ;
      8:  WAIT (M[21])    ;
      9:  TIMER[5]=STOP ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (M[2] AND M[21] AND M[30]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.868  mm,	Y =  1840.801  mm,	Z =   676.917  mm,
	W =   -89.020 deg,	P =    70.452 deg,	R =    85.754 deg,
	E1=  -345.000  mm
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   454.201  mm,	Y =  3339.700  mm,	Z =   951.205  mm,
	W =   -97.363 deg,	P =    70.464 deg,	R =    88.386 deg,
	E1=   178.727  mm
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   472.245  mm,	Y =  5554.426  mm,	Z =   574.848  mm,
	W =   -93.818 deg,	P =    73.000 deg,	R =    86.677 deg,
	E1=  2300.000  mm
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   635.921  mm,	Y =  5559.409  mm,	Z =   -97.066  mm,
	W =  -100.652 deg,	P =    89.825 deg,	R =    76.418 deg,
	E1=  2300.015  mm
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   681.832  mm,	Y =  5574.950  mm,	Z =  -288.203  mm,
	W =  -112.567 deg,	P =    89.418 deg,	R =    65.097 deg,
	E1=  2306.520  mm
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   682.166  mm,	Y =  5575.597  mm,	Z =  -355.525  mm,
	W =  -112.678 deg,	P =    89.413 deg,	R =    64.986 deg,
	E1=  2306.506  mm
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
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =   681.868  mm,	Y =  5574.958  mm,	Z =  -286.796  mm,
	W =  -112.678 deg,	P =    89.413 deg,	R =    64.985 deg,
	E1=  2306.520  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -263.465  mm,	Y =  5412.359  mm,	Z =  1260.291  mm,
	W =   113.070 deg,	P =   -89.422 deg,	R =  -115.407 deg,
	E1=  2306.520  mm
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -385.498  mm,	Y =  5425.550  mm,	Z =  1480.052  mm,
	W =   113.069 deg,	P =   -89.422 deg,	R =  -115.406 deg,
	E1=  2306.520  mm
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
	X =  -300.739  mm,	Y =  4637.401  mm,	Z =  2530.932  mm,
	W =    92.187 deg,	P =   -58.297 deg,	R =   -97.978 deg,
	E1=  2306.520  mm
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
	X =   586.637  mm,	Y =  4914.359  mm,	Z =  1562.394  mm,
	W =    89.237 deg,	P =    63.898 deg,	R =    88.400 deg,
	E1=  2302.291  mm
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
	X =   534.818  mm,	Y =  5378.606  mm,	Z =   532.575  mm,
	W =    71.724 deg,	P =    87.352 deg,	R =    70.154 deg,
	E1=  2302.307  mm
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
	X =   614.611  mm,	Y =  5373.193  mm,	Z =   217.432  mm,
	W =   149.849 deg,	P =    87.718 deg,	R =   146.169 deg,
	E1=  2302.311  mm
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
	X =   640.025  mm,	Y =  5367.903  mm,	Z =   131.902  mm,
	W =   167.660 deg,	P =    86.851 deg,	R =   163.853 deg,
	E1=  2302.313  mm
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
	X =   660.099  mm,	Y =  5367.643  mm,	Z =    39.818  mm,
	W =   167.660 deg,	P =    86.851 deg,	R =   163.853 deg,
	E1=  2302.312  mm
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
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   701.508  mm,	Y =  5365.751  mm,	Z =   -34.598  mm,
	W =    77.513 deg,	P =    89.311 deg,	R =    73.687 deg,
	E1=  2302.312  mm
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
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   701.831  mm,	Y =  5366.855  mm,	Z =  -130.409  mm,
	W =    77.511 deg,	P =    89.311 deg,	R =    73.686 deg,
	E1=  2302.312  mm
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
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   701.223  mm,	Y =  5364.927  mm,	Z =    36.343  mm,
	W =    77.462 deg,	P =    89.311 deg,	R =    73.641 deg,
	E1=  2302.303  mm
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
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   701.223  mm,	Y =  5339.325  mm,	Z =   444.664  mm,
	W =    77.508 deg,	P =    89.311 deg,	R =    73.686 deg,
	E1=  2302.303  mm
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
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -242.795  mm,	Y =  4806.324  mm,	Z =  1210.869  mm,
	W =   157.905 deg,	P =     8.902 deg,	R =   170.863 deg,
	E1=  1850.771  mm
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
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -586.648  mm,	Y =  4094.188  mm,	Z =  1921.788  mm,
	W =   147.051 deg,	P =   -37.876 deg,	R =  -163.997 deg,
	E1=  1573.186  mm
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
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -508.100  mm,	Y =  3433.268  mm,	Z =  2388.455  mm,
	W =    85.024 deg,	P =   -66.434 deg,	R =   -85.661 deg,
	E1=  1312.897  mm
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
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -538.908  mm,	Y =  1839.083  mm,	Z =  2261.269  mm,
	W =    90.583 deg,	P =   -67.736 deg,	R =   -92.494 deg,
	E1=   200.000  mm
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
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -539.178  mm,	Y =  1319.809  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
