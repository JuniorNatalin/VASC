/PROG  UP021
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar de ST1160";
PROG_SIZE	= 4818;
CREATE		= DATE 96-03-17  TIME 08:40:06;
MODIFIED	= DATE 23-07-08  TIME 14:40:00;
FILE_NAME	= R_1170R0;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 8278;
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
   1:  !M[25] >Suma de Anticolisiones ;
   2:  UTOOL_NUM=1 ;
   3:  UFRAME_NUM=0 ;
   4:  PAYLOAD[1] ;
   5:  !Encender Anticol. 3 vs R1150R01 ;
   6:  !Encender Anticol. 5 vs R1160R01 ;
   7:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib de Herramientas ;
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
     19:  !Apagar Posicion Base ;
     20:  DO[15]=OFF ;
     21:  !Robot en Trayectoria ;
     22:  DO[16]=ON ;
     23:  WAIT (DI[64] AND !DI[63] AND M[2] AND M[31] AND M[33] AND M[35])    ;
     24:  !Solicitar Anticolisiones ;
     25:  DO[83]=ON ;
     26:  DO[85]=ON ;
     27:  CALL MAKRO020    ;
     28:  WAIT (DI[23])    ;
     29:  DO[23]=ON ;
     30:  TC_ONLINE (!DI[63] AND DI[64] AND M[2] AND M[25] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:  !Apagar Perfil Libre vs ST1160 ;
   9:J P[2] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[80] AND DI[64] AND !DI[63] AND M[2] AND M[31] AND M[33] AND M[35])    ;
      4:  DO[80]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[25] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[25] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Pos. de Toma de ST1160 ;
  13:  !Fin de Trabajo 1 ;
  14:  !Tomar de ST1160 ;
  15:  !Espera Lib. Salir de ST1160 ;
  16:L P[5] 500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[32] AND M[34])    ;
      8:  CALL MAKRO001    ;
      9:  DO[79]=ON ;
     10:  DO[78]=ON ;
     11:  WAIT (DI[79])    ;
     12:  DO[79]=OFF ;
     13:  DO[78]=OFF ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  TC_ONLINE (DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  17:  PAYLOAD[2] ;
  18:L P[6] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[25] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  21:  !Encender Perfil Libre vs ST1160 ;
  22:  !Apagar Anticol. 3 vs R1150R01 ;
  23:  !Apagar Anticol. 5 vs R1160R01 ;
  24:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[43]=ON ;
      4:  DO[45]=ON ;
      5:  DO[80]=ON ;
      6:  TIMER[3]=STOP ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   285.425  mm,	Y = -1267.578  mm,	Z =  1666.567  mm,
	W =   -82.560 deg,	P =    30.138 deg,	R =   -75.628 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1856.189  mm,	Y =  -403.969  mm,	Z =   641.093  mm,
	W =     -.003 deg,	P =    45.050 deg,	R =   166.184 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -2131.373  mm,	Y =  -484.251  mm,	Z =   293.635  mm,
	W =     -.985 deg,	P =    44.743 deg,	R =   161.317 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -2413.277  mm,	Y =  -388.090  mm,	Z =    -1.868  mm,
	W =     -.711 deg,	P =    44.624 deg,	R =   161.555 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -2446.391  mm,	Y =  -377.045  mm,	Z =   -36.320  mm,
	W =     -.711 deg,	P =    44.624 deg,	R =   161.555 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -2399.017  mm,	Y =  -392.846  mm,	Z =    12.968  mm,
	W =     -.711 deg,	P =    44.624 deg,	R =   161.555 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -2131.373  mm,	Y =  -484.251  mm,	Z =   293.634  mm,
	W =     -.985 deg,	P =    44.743 deg,	R =   161.317 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X = -1856.189  mm,	Y =  -403.969  mm,	Z =   641.093  mm,
	W =     -.003 deg,	P =    45.050 deg,	R =   166.184 deg
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
	X =   285.425  mm,	Y = -1267.578  mm,	Z =  1666.567  mm,
	W =   -82.560 deg,	P =    30.138 deg,	R =   -75.628 deg
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
