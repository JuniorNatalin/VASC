/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1420";
PROG_SIZE	= 4454;
CREATE		= DATE 96-03-24  TIME 15:00:54;
MODIFIED	= DATE 23-09-23  TIME 15:53:44;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 7978;
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
   1:  !Apagar Perfil Lib. 80 vs ST1420 ;
   2:  !Encender Anticol. 3 vs 1410R01 ;
   3:  UFRAME_NUM=0 ;
   4:  UTOOL_NUM=1 ;
   5:  PAYLOAD[1] ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  DO[55]=ON ;
     15:  DO[56]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     21:  DO[80]=(OFF) ;
     22:  !Encender Anticolisiones ;
     23:  DO[83]=(ON) ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=(ON) ;
     27:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT30 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[32] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1410 ;
  11:  !Tomar Pieza 1 de ST1410 ;
  12:  !Fin de Trabajo 1 ;
  13:L P[5] 2000mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[34] AND M[36])    ;
      8:  DO[78]=ON ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[79])    ;
     11:  DO[78]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[43] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[2] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 80 vs ST1420 ;
  19:  !Apagar Anticol. 3 vs 1410R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[80]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1397.669  mm,	Y =   -34.900  mm,	Z =  1229.565  mm,
	W =  -178.704 deg,	P =    60.622 deg,	R =    -1.110 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =   726.997  mm,	Y =  1181.498  mm,	Z =  1036.601  mm,
	W =  -151.534 deg,	P =    52.400 deg,	R =    57.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.274  mm
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
	X =  -450.045  mm,	Y =  1821.889  mm,	Z =  -432.069  mm,
	W =    47.497 deg,	P =    88.363 deg,	R =  -103.297 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.100  mm
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
	X =  -451.056  mm,	Y =  1820.972  mm,	Z =  -647.904  mm,
	W =    47.737 deg,	P =    88.311 deg,	R =  -102.663 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.685  mm
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
	X =  -457.283  mm,	Y =  1818.099  mm,	Z =  -743.640  mm,
	W =    47.838 deg,	P =    88.287 deg,	R =  -102.386 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.500  mm
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
	X =  -457.294  mm,	Y =  1815.580  mm,	Z =  -658.881  mm,
	W =    47.506 deg,	P =    88.364 deg,	R =  -103.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.100  mm
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
	X =  -455.806  mm,	Y =  1821.889  mm,	Z =  -432.070  mm,
	W =    47.497 deg,	P =    88.363 deg,	R =  -103.297 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.100  mm
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
	X =   726.997  mm,	Y =  1181.498  mm,	Z =  1036.601  mm,
	W =  -151.534 deg,	P =    52.400 deg,	R =    57.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.274  mm
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
	X =  1397.669  mm,	Y =   -34.900  mm,	Z =  1229.565  mm,
	W =  -178.704 deg,	P =    60.622 deg,	R =    -1.110 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
