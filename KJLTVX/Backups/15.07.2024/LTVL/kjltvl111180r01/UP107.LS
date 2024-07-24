/PROG  UP107
/ATTR
OWNER		= AUROM;
COMMENT		= "Calibracion SP2";
PROG_SIZE	= 2536;
CREATE		= DATE 96-03-15  TIME 09:24:00;
MODIFIED	= DATE 17-02-11  TIME 03:01:26;
FILE_NAME	= UP101;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 3824;
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
      7:  DO[78]=OFF ;
      8:  DO[77]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  DO[45]=ON ;
     17:  DO[46]=ON ;
     18:  !Apagar Pos. Base ;
     19:  DO[15]=OFF ;
     20:  !Robot en Trayectoria ;
     21:  DO[16]=ON ;
     22:  IF (!DI[865] AND !DI[874]),CALL MAKRO116 ;
     23:  WAIT (F[293] OR F[294])    ;
     24:  WAIT (DI[23])    ;
     25:  DO[23]=ON ;
     26:  TC_ONLINE (M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[2] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  !Calibracion de Fuerza ;
      3:  GO[2]=(0) ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=1, , ,S-Punkt=1, ,EIN/AUS=F[293]) ;
      5:  WAIT (DI[3986] OR F[294])    ;
      6:  DO[875]=(F[293]) ;
      7:  DO[878]=(F[293]) ;
      8:  TIMER[10]=((-3)) ;
      9:  WAIT (F[294] OR (TIMER[10]>=0))    ;
     10:  DO[878]=OFF ;
     11:  DO[877]=ON ;
     12:  WAIT (DI[717] AND !DI[718] AND DI[719])    ;
     13:  DO[877]=OFF ;
     14:  DO[875]=OFF ;
     15:  WAIT (DI[3986] OR F[294])    ;
     16:  !Calibracion de Corriente ;
     17:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=11, , ,S-Punkt=11, ,EIN/AUS=F[294]) ;
     18:  WAIT (DI[3986] OR F[293])    ;
     19:  !Medicion de Campo Magnetico ;
     20:  IF (F[294]),CALL MAKRO110 ;
     21:  !Lectura del Valor 1 ;
     22:  WAIT (DI[3986] OR F[293])    ;
     23:  !Medicion del Campo Magnetico ;
     24:  IF (F[294]),CALL MAKRO110 ;
     25:  TC_ONLINE (M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95] AND M[96] AND M[102] AND M[103]) ;
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
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=    20.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
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
