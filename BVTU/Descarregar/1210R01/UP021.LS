/PROG  UP021
/ATTR
OWNER		= AUROM;
COMMENT		= "Toma ST1180";
PROG_SIZE	= 6590;
CREATE		= DATE 96-03-17  TIME 14:40:48;
MODIFIED	= DATE 23-07-08  TIME 16:53:26;
FILE_NAME	= R_1210R0;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 12318;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil libre vs ST1180 ;
   5:  !Endender Antico. 1 vs R1170R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  !Apagar Posicion Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[80] AND DI[64] AND !DI[63] AND M[2] AND M[31] AND M[33] AND M[35])    ;
     19:  DO[80]=OFF ;
     20:  !Solicitar Anticolisiones ;
     21:  DO[81]=ON ;
     22:  CALL MAKRO020    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  13:  !En Posicion de Toma ST1180 ;
  14:  !Fin de trabajo 1 ;
  15:  !Tomar de ST1180 ;
  16:L P[8] 500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[32] AND M[34])    ;
      8:  CALL MAKRO001    ;
      9:  DO[78]=ON ;
     10:  WAIT (DI[79])    ;
     11:  DO[78]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[41] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  17:  PAYLOAD[2] ;
  18:L P[9] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[64] AND DI[63])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  24:  !Encender Perfil Libre con ST1180 ;
  25:  !Apagar Anticol. 1 vs R1170R01 ;
  26:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[80]=ON ;
      5:  TIMER[3]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   124.280  mm,	Y =    20.861  mm,	Z =  2168.892  mm,
	W =  -108.055 deg,	P =   -84.588 deg,	R =    68.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    89.354  mm,	Y =   -70.209  mm,	Z =  2612.349  mm,
	W =  -118.927 deg,	P =   -85.808 deg,	R =    34.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -43.198  mm,	Y =   -93.580  mm,	Z =  2634.075  mm,
	W =  -154.207 deg,	P =   -87.152 deg,	R =    -3.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
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
	X =   -43.198  mm,	Y =   -93.580  mm,	Z =  2186.239  mm,
	W =  -154.207 deg,	P =   -87.152 deg,	R =    -3.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
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
	X =  1204.205  mm,	Y = -2252.792  mm,	Z =  -726.134  mm,
	W =   -15.000 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
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
	X =  1211.660  mm,	Y = -2255.705  mm,	Z = -1152.333  mm,
	W =  -145.134 deg,	P =    89.758 deg,	R =  -130.455 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
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
	X =  1212.154  mm,	Y = -2259.319  mm,	Z = -1261.677  mm,
	W =   -95.994 deg,	P =    89.768 deg,	R =   -81.251 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.500  mm
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
	X =  1212.154  mm,	Y = -2259.319  mm,	Z = -1312.515  mm,
	W =   -95.992 deg,	P =    89.768 deg,	R =   -81.249 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.500  mm
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
	X =  1213.136  mm,	Y = -2261.540  mm,	Z = -1261.188  mm,
	W =   -96.244 deg,	P =    89.768 deg,	R =   -81.501 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.500  mm
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
	X =  1211.217  mm,	Y = -2256.219  mm,	Z = -1030.373  mm,
	W =  -145.109 deg,	P =    89.758 deg,	R =  -130.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
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
	X =  1204.205  mm,	Y = -2252.792  mm,	Z =  -726.134  mm,
	W =   -15.000 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
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
	X =   -43.198  mm,	Y =   -93.580  mm,	Z =  2186.239  mm,
	W =  -154.207 deg,	P =   -87.152 deg,	R =    -3.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
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
	X =   -43.198  mm,	Y =   -93.580  mm,	Z =  2634.075  mm,
	W =  -154.207 deg,	P =   -87.152 deg,	R =    -3.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    89.354  mm,	Y =   -70.209  mm,	Z =  2612.349  mm,
	W =  -118.927 deg,	P =   -85.808 deg,	R =    34.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   124.280  mm,	Y =    20.861  mm,	Z =  2168.892  mm,
	W =  -108.055 deg,	P =   -84.588 deg,	R =    68.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
