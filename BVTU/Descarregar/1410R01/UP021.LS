/PROG  UP021
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar de ST1400";
PROG_SIZE	= 5380;
CREATE		= DATE 16-07-31  TIME 02:27:22;
MODIFIED	= DATE 24-02-11  TIME 09:06:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 9700;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:  !Espera Lib. Tomar ST1400 ;
   5:  !Apagar Perfil Libre vs ST1400 ;
   6:  !Encender Anticol. 3 vs R1390R01 ;
   7:  !Encender Anticol. 5 vs R1400R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=OFF ;
     10:  DO[76]=ON ;
     11:  DO[74]=OFF ;
     12:  !Lib. de Anticolisiones ;
     13:  DO[41]=ON ;
     14:  DO[42]=ON ;
     15:  DO[43]=ON ;
     16:  DO[44]=ON ;
     17:  DO[45]=ON ;
     18:  DO[46]=ON ;
     19:  !Apagar Pos. Base ;
     20:  DO[15]=OFF ;
     21:  !Robot en Trayectoria ;
     22:  DO[16]=ON ;
     23:  WAIT (M[2] AND DI[80] AND DI[64] AND !DI[63])    ;
     24:  DO[80]=OFF ;
     25:  !Solicitar Anticolisiones ;
     26:  DO[83]=ON ;
     27:  DO[85]=ON ;
     28:  CALL MAKRO020    ;
     29:  WAIT (DI[23])    ;
     30:  DO[23]=ON ;
     31:  !M[25]=(DI[43] AND DI[45]) ;
     32:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[25] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[25] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:  !En Posicion de Toma ST1400 ;
  14:  !Fin de Trabajo 1 ;
  15:  !Tomar de ST1400 ;
  16:L P[6] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  DO[79]=ON ;
      5:  DO[78]=ON ;
      6:  CALL MAKRO001    ;
      7:  WAIT (DI[79])    ;
      8:  F[1]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[32])    ;
     11:  DO[79]=OFF ;
     12:  DO[78]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:  PAYLOAD[2] ;
  18:L P[7] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1] AND DI[63] AND !DI[64])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  22:  !Encender Perfil Libre ST1400 ;
  23:  !Apagar Anticol. 3 vs R1390R01 ;
  24:  !Apagar Anticol. 5 vs R1400R01 ;
  25:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[43]=ON ;
      4:  DO[45]=ON ;
      5:  DO[80]=ON ;
      6:  TIMER[3]=STOP ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1438.854  mm,	Y =   998.871  mm,	Z =  1219.125  mm,
	W =   167.118 deg,	P =    -6.718 deg,	R =    87.118 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1160.106  mm,	Y =   -53.298  mm,	Z =   781.005  mm,
	W =   148.164 deg,	P =    76.906 deg,	R =    74.429 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1275.349  mm,	Y = -1143.644  mm,	Z =   428.704  mm,
	W =   111.821 deg,	P =    85.009 deg,	R =    26.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1091.607  mm,	Y = -2225.065  mm,	Z =   175.174  mm,
	W =   -44.623 deg,	P =    89.950 deg,	R =  -134.821 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1096.276  mm,	Y = -2227.866  mm,	Z =  -231.207  mm,
	W =    53.940 deg,	P =    89.695 deg,	R =   -36.182 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1098.660  mm,	Y = -2229.229  mm,	Z =  -288.917  mm,
	W =    53.861 deg,	P =    89.695 deg,	R =   -36.043 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.587  mm
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
	X =  1097.789  mm,	Y = -2227.089  mm,	Z =  -203.969  mm,
	W =    53.984 deg,	P =    89.695 deg,	R =   -36.137 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1089.429  mm,	Y = -2226.974  mm,	Z =   440.552  mm,
	W =    54.258 deg,	P =    89.695 deg,	R =   -36.177 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1262.171  mm,	Y = -1134.576  mm,	Z =   576.635  mm,
	W =    42.112 deg,	P =    82.832 deg,	R =   -43.583 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1160.106  mm,	Y =   -53.298  mm,	Z =   781.005  mm,
	W =   148.164 deg,	P =    76.906 deg,	R =    74.429 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  1438.854  mm,	Y =   998.871  mm,	Z =  1219.125  mm,
	W =   167.118 deg,	P =    -6.718 deg,	R =    87.118 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
