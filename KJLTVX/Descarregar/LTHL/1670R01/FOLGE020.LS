/PROG  FOLGE020
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VW336";
PROG_SIZE	= 4398;
CREATE		= DATE 23-07-11  TIME 01:10:40;
MODIFIED	= DATE 24-05-05  TIME 12:12:10;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 7306;
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
     18:  WAIT (M[2])    ;
     19:  !Garra a Posicion Base ;
     20:  F[1]=(ON) ;
     21:  F[2]=(ON) ;
     22:  IF (M[2]),CALL MAKRO342 ;
     23:  CALL MAKRO340    ;
     24:  GO[21]=0 ;
     25:  WAIT (M[31] AND M[33])    ;
     26:  F[951]=(OFF) ;
     27:  F[952]=(OFF) ;
     28:  WAIT (GI[21]=2)    ;
     29:  IF (GI[21]=2),F[952]=(ON) ;
     30:  DO[234]=(GI[21]=2) ;
     31:  WAIT ((F[951] AND !F[952]) OR (!F[951] AND F[952]))    ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   6:   ;
   7:  !UP021 Tomar en ST1640 ;
   8:  CALL UP021    ;
   9:  UFRAME_NUM=0 ;
  10:  UTOOL_NUM=1 ;
  11:   ;
  12:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  13:   ;
  14:  OVERRIDE=100% ;
  15:  !UP022 Sold. MAG Est. ;
  16:  CALL UP022    ;
  17:   ;
  18:  UFRAME_NUM=0 ;
  19:  UTOOL_NUM=1 ;
  20:  !UP023 Dejar Pza en Banda ;
  21:  !UP024 Dejar Pza en ST1680 ;
  22:J P[4] 100% FINE ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:   ;
      4:  F[930]=(OFF) ;
      5:  F[931]=(OFF) ;
      6:   ;
      7:   ;
      8:  WAIT ((DI[61] AND !DI[62] AND DI[75]) OR (DI[59] AND !DI[60] AND DI[74]))    ;
      9:  F[930]=(!F[930] AND DI[61] AND !DI[62] AND DI[75]) ;
     10:  F[931]=(DI[59] AND !DI[60] AND DI[74] AND !DI[75]) ;
     11:   ;
     12:  WAIT (F[930] OR F[931])    ;
     13:   ;
     14:  WAIT (DI[2163] AND !DI[2164])    ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  23:  !IF F[931], CALL UP023 Dep Banda ;
  24:  !IF F[930], CALL UP024 Dep ST1680 ;
  25:  !IF F[930], CALL UP026 Dep ST1680 ;
  26:  IF (F[931]),CALL UP023 ;
  27:  IF (F[930] AND DI[97]),CALL UP024 ;
  28:  IF (F[930] AND DI[98]),CALL UP026 ;
  29:   ;
  30:  OVERRIDE=100% ;
  31:  UFRAME_NUM=0 ;
  32:  UTOOL_NUM=1 ;
  33:  !Limpiador MAG en reposo ;
  34:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[2163] AND !DI[2164] AND !F[604] AND F[321])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  35:  !Fin de Trabajo Total ;
  36:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  F[933]=(OFF) ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  37:J P[7] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.913  mm,	Y = -3587.039  mm,	Z =   462.270  mm,
	W =   171.614 deg,	P =     5.374 deg,	R =    -6.049 deg,
	E1= -1100.000  mm
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
