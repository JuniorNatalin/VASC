/PROG  FOLGE020
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VW336";
PROG_SIZE	= 4320;
CREATE		= DATE 23-07-11  TIME 01:04:40;
MODIFIED	= DATE 24-03-27  TIME 04:01:26;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 38;
MEMORY_SIZE	= 7140;
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
   4:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[72]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Garra a Posicion Base ;
     19:  F[1]=(ON) ;
     20:  F[2]=(ON) ;
     21:  IF (M[2]),CALL MAKRO342 ;
     22:  CALL MAKRO340    ;
     23:  WAIT (M[31] AND M[33])    ;
     24:  WAIT (DI[23])    ;
     25:  DO[23]=ON ;
     26:  TC_ONLINE (M[2] AND M[30] AND M[31]) ;
       ------ ;
   6:  !UP021 Tomar en ST1640 ;
   7:  CALL UP021    ;
   8:  UFRAME_NUM=0 ;
   9:  UTOOL_NUM=1 ;
  10:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  11:   ;
  12:   ;
  13:  OVERRIDE=100% ;
  14:  !UP022 Sold. MAG Est. ;
  15:  CALL UP022    ;
  16:   ;
  17:  OVERRIDE=30% ;
  18:  UFRAME_NUM=0 ;
  19:  UTOOL_NUM=1 ;
  20:  !UP023 Dejar Pza en Banda ;
  21:  !UP024 Dejar Pza en ST1680 Pos. 1 ;
  22:  !UP026 Dejar Pza en ST1680 Pos. 2 ;
  23:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[930]=(OFF) ;
      4:  F[931]=(OFF) ;
      5:  F[932]=(OFF) ;
      6:  WAIT ((DI[61] AND !DI[62] AND DI[75] AND DI[77]) OR (DI[61] AND !DI[62] AND DI[75] AND DI[76]) OR (DI[59] AND !DI[60] AND DI[74]))    ;
      7:  F[930]=(DI[61] AND !DI[62] AND DI[75] AND DI[77]) ;
      8:  F[931]=(DI[61] AND !DI[62] AND DI[75] AND DI[76]) ;
      9:  F[932]=(DI[59] AND !DI[60] AND DI[74] AND !DI[75]) ;
     10:  WAIT (F[930] OR F[931] OR F[932])    ;
     11:  WAIT (DI[2163] AND !DI[2164])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  24:  !IF F[930], CALL UP024 Dep. ST168 ;
  25:  !IF F[931], CALL UP026 Dep. ST168 ;
  26:  !IF F[932], CALL UP023 Dep. Banda ;
  27:  IF (F[930]),CALL UP024 ;
  28:  IF (F[931]),CALL UP026 ;
  29:  IF (F[932]),CALL UP023 ;
  30:   ;
  31:  OVERRIDE=100% ;
  32:  UFRAME_NUM=0 ;
  33:  UTOOL_NUM=1 ;
  34:  !Limpiador MAG en Reposo ;
  35:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[2163] AND !DI[2164] AND !F[604] AND F[321])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  36:  !Fin de Trabajo Total ;
  37:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  GO[21]=0 ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  38:J P[7] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[14]=ON ;
      3:  DO[15]=ON ;
      4:  TIMER[1]=STOP ;
      5:  TIMER[2]=(TIMER[1]) ;
      6:  TIMER[2]=STOP ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.980  mm,	Y =  4426.811  mm,	Z =   635.988  mm,
	W =    92.000 deg,	P =     0.000 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  -332.980  mm,	Y =  4426.811  mm,	Z =   635.988  mm,
	W =    92.000 deg,	P =     0.000 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  -332.974  mm,	Y =  4426.802  mm,	Z =   636.014  mm,
	W =    91.999 deg,	P =      .001 deg,	R =  -179.999 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  -332.978  mm,	Y =  4426.811  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =      .001 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.980  mm,	Y =  4426.811  mm,	Z =   635.988  mm,
	W =    92.000 deg,	P =     0.000 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.960  mm,	Y =  4426.809  mm,	Z =   635.875  mm,
	W =    92.003 deg,	P =      .001 deg,	R =   180.000 deg,
	E1=  2499.990  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.960  mm,	Y =  4426.809  mm,	Z =   635.875  mm,
	W =    92.003 deg,	P =      .001 deg,	R =   180.000 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
