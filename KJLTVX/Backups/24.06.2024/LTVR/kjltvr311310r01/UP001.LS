/PROG  UP001
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar en ST1300";
PROG_SIZE	= 3504;
CREATE		= DATE 96-03-26  TIME 21:01:16;
MODIFIED	= DATE 17-07-14  TIME 10:51:44;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 6312;
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
   4:  !Apagar Perfil Lib. 80 vs ST1300 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     11:  !Lib. de Herramientas ;
     12:  DO[45]=ON ;
     13:  DO[46]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     19:  DO[80]=(OFF) ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=(ON) ;
     22:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:  !En Posicion ST1300 ;
   9:  !Tomar Pieza en ST1300 ;
  10:  !Fin de Trabajo 1 ;
  11:L P[4] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  WAIT (M[32])    ;
      7:  DO[78]=ON ;
      8:  CALL MAKRO001    ;
      9:  WAIT (DI[79])    ;
     10:  DO[78]=OFF ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:  PAYLOAD[2] ;
  13:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[80] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  15:  !Encender Perfil Lib 80 vs ST1300 ;
  16:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     -.000 deg,	P =    55.000 deg,	R =     -.000 deg
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
	X =  1302.004  mm,	Y =  2071.341  mm,	Z =   435.278  mm,
	W =    98.306 deg,	P =    78.744 deg,	R =  -164.733 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.900  mm
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
	X =  1268.020  mm,	Y =  2058.025  mm,	Z =   268.280  mm,
	W =    92.888 deg,	P =    78.917 deg,	R =  -169.958 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.700  mm
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
	X =  1251.787  mm,	Y =  2057.814  mm,	Z =   182.993  mm,
	W =    92.776 deg,	P =    78.916 deg,	R =  -169.951 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.500  mm
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
	X =  1266.438  mm,	Y =  2061.897  mm,	Z =   260.611  mm,
	W =    98.303 deg,	P =    78.744 deg,	R =  -164.732 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.900  mm
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
	X =  1292.558  mm,	Y =  2068.765  mm,	Z =   386.083  mm,
	W =    98.306 deg,	P =    78.744 deg,	R =  -164.733 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.900  mm
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
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     -.000 deg,	P =    55.000 deg,	R =     -.000 deg
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
