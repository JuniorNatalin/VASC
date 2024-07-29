/PROG  UP024
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depositar en ST1";
PROG_SIZE	= 5358;
CREATE		= DATE 23-12-11  TIME 11:58:06;
MODIFIED	= DATE 23-12-11  TIME 11:58:06;
FILE_NAME	= UP004;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 10098;
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
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[16]=ON ;
      4:  TIMER[6]=RESET ;
      5:  TIMER[6]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[79]=ON ;
     10:  DO[78]=OFF ;
     11:  DO[77]=OFF ;
     12:  DO[76]=ON ;
     13:  DO[74]=OFF ;
     14:  !Lib de Anticolisiones ;
     15:  DO[41]=ON ;
     16:  DO[42]=ON ;
     17:  DO[43]=ON ;
     18:  DO[44]=ON ;
     19:  DO[45]=ON ;
     20:  DO[46]=ON ;
     21:  DO[47]=ON ;
     22:  DO[48]=ON ;
     23:  !Apagar Pos. Base ;
     24:  DO[15]=OFF ;
     25:  !Robot en Trayectoria ;
     26:  DO[16]=ON ;
     27:  WAIT (DI[76] AND !DI[62] AND DI[61])    ;
     28:  DO[76]=OFF ;
     29:  !Encender Anticolision ;
     30:  DO[83]=ON ;
     31:  CALL MAKRO020    ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  TC_ONLINE (DI[43] AND DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[76] AND !DI[62] AND DI[61] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   9:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[43] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  10:  !Posicion de descarga en ST1190 ;
  11:  !Fin de Trabajo 4 ;
  12:  !Descargar en ST1190 ;
  13:L P[7] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[62] AND !DI[61]) OR DI[15])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  DO[74]=ON ;
      9:  CALL MAKRO004    ;
     10:  WAIT (DI[75])    ;
     11:  DO[74]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[43] AND DI[75] AND DI[62] AND !DI[61] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  14:L P[8] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[75] AND DI[62] AND !DI[61] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[75] AND DI[62] AND !DI[61] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  16:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[75] AND DI[62] AND !DI[61] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  17:  !Lib. Anticolision 3 vs 1220R01 ;
  18:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[43]=ON ;
      3:  TC_ONLINE (DI[43] AND DI[75] AND DI[62] AND !DI[61] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  19:  !Encender Perfil Lib 76 vs ST1190 ;
  20:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  DO[76]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -575.093  mm,	Y =   317.786  mm,	Z =  1043.889  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =  -166.236 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -457.864  mm,	Y =  2615.326  mm,	Z =  -310.764  mm,
	W =   151.811 deg,	P =    79.349 deg,	R =   -87.811 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1221.294  mm,	Y =  3020.986  mm,	Z =  -479.079  mm,
	W =  -137.616 deg,	P =    87.914 deg,	R =    16.240 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1312.836  mm,	Y =  2837.194  mm,	Z =  -437.325  mm,
	W =  -163.454 deg,	P =    87.914 deg,	R =    16.242 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1313.756  mm,	Y =  2661.554  mm,	Z =  -437.046  mm,
	W =  -165.421 deg,	P =    87.655 deg,	R =    14.189 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1308.427  mm,	Y =  2662.922  mm,	Z =  -571.266  mm,
	W =  -165.417 deg,	P =    87.656 deg,	R =    14.193 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1314.490  mm,	Y =  2661.369  mm,	Z =  -418.831  mm,
	W =  -165.427 deg,	P =    87.655 deg,	R =    14.183 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -967.102  mm,	Y =  2673.042  mm,	Z =  -305.790  mm,
	W =  -176.512 deg,	P =    80.191 deg,	R =     3.144 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -186.972  mm,	Y =  2715.651  mm,	Z =  -286.000  mm,
	W =   144.162 deg,	P =    76.115 deg,	R =  -107.300 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -575.093  mm,	Y =   317.786  mm,	Z =  1043.889  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =  -166.236 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
