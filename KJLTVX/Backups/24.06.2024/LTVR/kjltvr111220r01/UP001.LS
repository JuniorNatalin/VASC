/PROG  UP001
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar en ST1190";
PROG_SIZE	= 3150;
CREATE		= DATE 96-03-31  TIME 20:28:34;
MODIFIED	= DATE 17-05-20  TIME 13:52:32;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 5286;
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
   4:  !Apagar Perfil Lib. 80 vs ST1190 ;
   5:  !Encender Anticol. 3 vs 1180R01 ;
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
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[72]=OFF ;
     14:  DO[71]=OFF ;
     15:  DO[69]=OFF ;
     16:  !Lib. de Anticolisiones ;
     17:  DO[41]=ON ;
     18:  DO[42]=ON ;
     19:  DO[43]=ON ;
     20:  DO[44]=ON ;
     21:  DO[45]=ON ;
     22:  DO[46]=ON ;
     23:  !Apagar Pos. Base ;
     24:  DO[15]=OFF ;
     25:  !Robot en Trayectoria ;
     26:  DO[16]=ON ;
     27:  WAIT (!DI[67] AND DI[68] AND DI[80])    ;
     28:  DO[80]=OFF ;
     29:  !Encender Anticolisiones ;
     30:  DO[83]=ON ;
     31:  CALL MAKRO020    ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  TC_ONLINE (DI[43] AND !DI[67] AND DI[68] AND DI[80] AND M[2] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[67] AND DI[68] AND DI[80] AND M[10] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:   ;
   9:  !En Posicion ST1190 ;
  10:  !Tomar Pieza en ST1190 ;
  11:  !Fin de Trabajo 1 ;
  12:L P[3] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[3])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[43] AND DI[79] AND M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:  PAYLOAD[2] ;
  14:L P[4] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[67] AND !DI[68] AND DI[79] AND M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:  !Encender Perfil Lib 80 vs ST1190 ;
  16:  !Apagar Anticol. 3 vs 1180R01 ;
  17:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[80]=ON ;
      4:  DO[43]=ON ;
      5:  TIMER[3]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1051.147  mm,	Y =  1345.708  mm,	Z =  1234.773  mm,
	W =   -49.346 deg,	P =    39.227 deg,	R =    19.277 deg
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
	X =  1058.992  mm,	Y =  2469.824  mm,	Z =  -434.704  mm,
	W =    81.754 deg,	P =    89.344 deg,	R =   141.561 deg
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
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1057.481  mm,	Y =  2471.076  mm,	Z =  -570.066  mm,
	W =    67.382 deg,	P =    89.300 deg,	R =   127.453 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.900  mm
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
	X =  1059.354  mm,	Y =  2470.306  mm,	Z =  -463.517  mm,
	W =    67.488 deg,	P =    89.300 deg,	R =   127.446 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.900  mm
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
	X =  1051.147  mm,	Y =  1345.707  mm,	Z =  1234.776  mm,
	W =   -49.346 deg,	P =    39.227 deg,	R =    19.277 deg
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
