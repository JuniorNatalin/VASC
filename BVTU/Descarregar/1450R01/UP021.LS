/PROG  UP021
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar ST1440";
PROG_SIZE	= 5182;
CREATE		= DATE 16-07-19  TIME 05:06:28;
MODIFIED	= DATE 23-07-09  TIME 15:58:38;
FILE_NAME	= UP444;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 9446;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
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
   4:  !Espera Lib. Tomar aus ST1440 ;
   5:  !Apagar Perfil Libre vs ST1440 ;
   6:  !Encender Anticol. 3 vs R1143R01 ;
   7:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[80] AND DI[64] AND !DI[63] AND M[2] AND M[31] AND M[33] AND M[35])    ;
     21:  DO[80]=OFF ;
     22:  !Solicitud de anticolisiones ;
     23:  DO[83]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion de Toma ST1440 ;
  13:  !Fin de Trabajo 1 ;
  14:  !Tomar de ST1440 ;
  15:L P[6] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[1] AND M[32] AND M[34] AND M[35])    ;
      8:  DO[78]=ON ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[79])    ;
     11:  DO[78]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[43] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[7] 200mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  21:  !Encender Perfil Libre ST1440 ;
  22:  !Apagar Anticol. 3 vs R1430R01 ;
  23:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[43]=ON ;
      4:  DO[80]=ON ;
      5:  TIMER[3]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =  -305.853  mm,	Y = -1639.549  mm,	Z =   541.992  mm,
	W =   -85.357 deg,	P =    85.425 deg,	R =   -82.233 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =  -729.159  mm,	Y = -2391.267  mm,	Z =    70.673  mm,
	W =   -69.677 deg,	P =    87.623 deg,	R =   -66.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =  -994.840  mm,	Y = -2492.593  mm,	Z =  -363.297  mm,
	W =    58.644 deg,	P =    89.849 deg,	R =    58.867 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.300  mm
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
	X =  -994.583  mm,	Y = -2492.174  mm,	Z =  -553.310  mm,
	W =    58.604 deg,	P =    89.849 deg,	R =    58.828 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.300  mm
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
	X =  -994.496  mm,	Y = -2492.033  mm,	Z =  -616.965  mm,
	W =    58.576 deg,	P =    89.849 deg,	R =    58.799 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.300  mm
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
	X =  -994.588  mm,	Y = -2492.179  mm,	Z =  -552.142  mm,
	W =    58.712 deg,	P =    89.849 deg,	R =    58.936 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.300  mm
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
	X =  -996.585  mm,	Y = -2492.676  mm,	Z =  -336.967  mm,
	W =    58.621 deg,	P =    89.849 deg,	R =    58.845 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.300  mm
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
	X =  -729.159  mm,	Y = -2391.267  mm,	Z =    70.673  mm,
	W =   -69.677 deg,	P =    87.623 deg,	R =   -66.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =  -305.853  mm,	Y = -1639.548  mm,	Z =   541.992  mm,
	W =   -85.357 deg,	P =    85.425 deg,	R =   -82.233 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
