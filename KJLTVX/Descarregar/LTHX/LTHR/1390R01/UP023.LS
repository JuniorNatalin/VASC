/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Dejar en ST1400";
PROG_SIZE	= 4012;
CREATE		= DATE 23-07-14  TIME 02:28:00;
MODIFIED	= DATE 23-07-14  TIME 02:28:02;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 6888;
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
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 75 vs ST1400 ;
   5:  !Encender Anticol. 1 vs 1410R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=OFF ;
     12:  DO[75]=ON ;
     13:  DO[73]=OFF ;
     14:  !Lib. de Anticolisiones ;
     15:  DO[41]=ON ;
     16:  DO[42]=ON ;
     17:  DO[43]=ON ;
     18:  DO[44]=ON ;
     19:  DO[45]=ON ;
     20:  DO[46]=ON ;
     21:  !Apagar Pos. Base ;
     22:  DO[15]=OFF ;
     23:  !Robot en Trayectoria ;
     24:  DO[16]=ON ;
     25:  WAIT (DI[61] AND !DI[62] AND DI[75])    ;
     26:  DO[75]=OFF ;
     27:  !Encender Anticolisiones ;
     28:  DO[81]=ON ;
     29:  CALL MAKRO020    ;
     30:  WAIT (DI[23])    ;
     31:  DO[23]=(ON) ;
     32:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[75] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[1]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[32])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=(ON) ;
      8:  TC_ONLINE (DI[41] AND DI[75] AND M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:  !En Posicion ST1400 ;
  10:  !Dejar Pieza en ST1400 ;
  11:  !Fin de Trabajo 3 ;
  12:L P[4] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  DO[73]=ON ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[74])    ;
      7:  DO[73]=OFF ;
      8:  F[2]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  CALL MAKRO340    ;
     11:  WAIT (M[33])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[74] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:  PAYLOAD[1] ;
  14:L P[5] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[74] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[74] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:  !Encender Perfil Lib 75 vs ST1400 ;
  17:  !Apagar Anticol. 1 vs 1410R01 ;
  18:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[5]=STOP ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[41]=ON ;
      9:  DO[75]=ON ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=(ON) ;
     12:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   482.000  mm,	Y = -1029.614  mm,	Z =  1044.913  mm,
	W =   -90.000 deg,	P =    80.000 deg,	R =   -90.000 deg
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
	X =  1835.469  mm,	Y =   577.452  mm,	Z =   -23.491  mm,
	W =   -53.000 deg,	P =    90.000 deg,	R =     0.000 deg
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
	X =  1835.503  mm,	Y =   574.780  mm,	Z =  -472.046  mm,
	W =    47.232 deg,	P =    89.658 deg,	R =    99.646 deg
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
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1836.316  mm,	Y =   573.838  mm,	Z =  -532.452  mm,
	W =    47.451 deg,	P =    89.659 deg,	R =    99.792 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1835.503  mm,	Y =   574.780  mm,	Z =  -472.046  mm,
	W =    47.232 deg,	P =    89.658 deg,	R =    99.646 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1835.469  mm,	Y =   577.452  mm,	Z =   -23.491  mm,
	W =   -53.000 deg,	P =    90.000 deg,	R =     0.000 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   482.000  mm,	Y = -1029.614  mm,	Z =  1044.913  mm,
	W =   -90.000 deg,	P =    80.000 deg,	R =   -90.000 deg
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
