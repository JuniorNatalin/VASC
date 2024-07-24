/PROG  UP025
/ATTR
OWNER		= GME;
COMMENT		= "Tomar 1210-3";
PROG_SIZE	= 4978;
CREATE		= DATE 03-01-27  TIME 08:27:52;
MODIFIED	= DATE 23-06-29  TIME 01:31:00;
FILE_NAME	= UP025;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 9370;
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
   2:  UTOOL_NUM=3 ;
   3:  !Apagar Perf. Lib. 77 vs ST1210-3 ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
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
     27:  F[2]=(ON) ;
     28:  CALL MAKRO343    ;
     29:  WAIT (M[34])    ;
     30:  WAIT (!DI[65] AND DI[66] AND DI[77])    ;
     31:  DO[77]=OFF ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  TC_ONLINE (!DI[65] AND DI[66] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[65] AND DI[66] AND DI[77] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:  !En Posicion ST1210-3 ;
  10:  !Tomar Piezas en ST1210-3 ;
  11:  !Fin de Trabajo 3 ;
  12:L P[6] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[2]=(ON) ;
      4:  CALL MAKRO342    ;
      5:  CALL MAKRO340    ;
      6:  WAIT (M[33])    ;
      7:  F[3]=(ON) ;
      8:  CALL MAKRO343    ;
      9:  WAIT (M[1] AND M[36])    ;
     10:  DO[75]=ON ;
     11:  WAIT (DI[76])    ;
     12:  CALL MAKRO003    ;
     13:  DO[75]=OFF ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  TC_ONLINE (DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:  PAYLOAD[3] ;
  14:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[65] AND !DI[66] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perf Lib 77 vs ST1210-3 ;
  19:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[77]=ON ;
      4:  TIMER[5]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -549.947  mm,	Y =  1084.355  mm,	Z =   982.284  mm,
	W =   149.673 deg,	P =    -1.812 deg,	R =   171.832 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =  -740.604  mm,	Y =   372.837  mm,	Z =  1399.765  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =   171.144 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =   762.013  mm,	Y =  -326.861  mm,	Z =  1399.764  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =    -5.351 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2233.812  mm,	Y =  -188.270  mm,	Z =    35.022  mm,
	W =   -16.346 deg,	P =    75.859 deg,	R =   136.197 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2201.849  mm,	Y =  -125.742  mm,	Z =  -178.734  mm,
	W =   -54.978 deg,	P =    75.942 deg,	R =    98.709 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2201.898  mm,	Y =   -76.258  mm,	Z =  -329.587  mm,
	W =   -56.434 deg,	P =    76.181 deg,	R =    97.216 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.200  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2199.554  mm,	Y =   -85.708  mm,	Z =  -286.489  mm,
	W =   -54.980 deg,	P =    75.943 deg,	R =    98.706 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2186.808  mm,	Y =  -168.915  mm,	Z =    49.693  mm,
	W =   -54.980 deg,	P =    75.943 deg,	R =    98.706 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =   762.013  mm,	Y =  -326.861  mm,	Z =  1399.764  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =    -5.351 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =  -740.604  mm,	Y =   372.837  mm,	Z =  1399.765  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =   171.144 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -549.947  mm,	Y =  1084.355  mm,	Z =   982.284  mm,
	W =   149.673 deg,	P =    -1.812 deg,	R =   171.832 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
/END
