/PROG  UP106
/ATTR
OWNER		= AUROM;
COMMENT		= "Calibracion SP1";
PROG_SIZE	= 2956;
CREATE		= DATE 96-03-15  TIME 09:24:00;
MODIFIED	= DATE 17-02-24  TIME 04:46:26;
FILE_NAME	= UP101;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 5020;
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
   4:  !F[293] - Calibracion Fuerza ;
   5:  !F[294] - Calibracion Corriente ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  !Lib. de Anticolisiones ;
      8:  DO[41]=ON ;
      9:  DO[43]=ON ;
     10:  !Apagar Pos. Base ;
     11:  DO[15]=OFF ;
     12:  !Robot en Trayectoria ;
     13:  DO[16]=ON ;
     14:  IF (!DI[705] AND !DI[714]),CALL MAKRO086 ;
     15:  WAIT (F[293] OR F[294])    ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   8:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  !Calibracion de Fuerza ;
      3:  GO[2]=(0) ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=1, , ,S-Punkt=1, ,EIN/AUS=F[293]) ;
      5:  WAIT (DI[3986] OR F[294])    ;
      6:  DO[715]=(F[293]) ;
      7:  DO[718]=(F[293]) ;
      8:  TIMER[10]=((-3)) ;
      9:  WAIT (F[294] OR (TIMER[10]>=0))    ;
     10:  DO[718]=OFF ;
     11:  DO[717]=ON ;
     12:  WAIT (DI[717] AND !DI[718] AND DI[719])    ;
     13:  DO[717]=OFF ;
     14:  DO[715]=OFF ;
     15:  WAIT (DI[3986] OR F[294])    ;
     16:  !Calibracion de Corriente ;
     17:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=11, , ,S-Punkt=11, ,EIN/AUS=F[294]) ;
     18:  WAIT (DI[3986] OR F[293])    ;
     19:  !Medicion de Campo Magnetico ;
     20:  IF (F[294]),CALL MAKRO080 ;
     21:  !Lectura del Valor 1 ;
     22:  WAIT (DI[3986] OR F[293])    ;
     23:  !Medicion de Campo Magnetico ;
     24:  IF (F[294]),CALL MAKRO080 ;
     25:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  10:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   471.294  mm,	Y =   -54.798  mm,	Z =   952.831  mm,
	W =  -172.162 deg,	P =   -29.440 deg,	R =   -25.722 deg
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
	X =   250.117  mm,	Y =  -468.504  mm,	Z =   651.847  mm,
	W =  -175.254 deg,	P =     3.129 deg,	R =   -78.813 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   120.000  mm
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
	X =   302.267  mm,	Y = -1007.203  mm,	Z =  -318.250  mm,
	W =   179.521 deg,	P =     -.558 deg,	R =   -80.456 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000  mm
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
	X =   250.117  mm,	Y =  -468.504  mm,	Z =   651.847  mm,
	W =  -175.254 deg,	P =     3.129 deg,	R =   -78.813 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   120.000  mm
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
	X =   471.294  mm,	Y =   -54.798  mm,	Z =   952.831  mm,
	W =  -172.162 deg,	P =   -29.440 deg,	R =   -25.722 deg
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
