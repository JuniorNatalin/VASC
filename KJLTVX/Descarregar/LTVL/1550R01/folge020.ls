/PROG  FOLGE020
/ATTR
OWNER		= GME;
COMMENT		= "VW336";
PROG_SIZE	= 3514;
CREATE		= DATE 03-02-02  TIME 15:37:32;
MODIFIED	= DATE 23-07-09  TIME 16:43:38;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 5994;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
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
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  DO[73]=ON ;
     15:  DO[72]=ON ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  DO[68]=OFF ;
     19:  DO[67]=OFF ;
     20:  !Lib. de Anticolisiones ;
     21:  DO[41]=ON ;
     22:  DO[42]=ON ;
     23:  DO[43]=ON ;
     24:  DO[44]=ON ;
     25:  DO[45]=ON ;
     26:  DO[46]=ON ;
     27:  DO[47]=ON ;
     28:  DO[48]=ON ;
     29:  !Apagar Posicion Base ;
     30:  DO[15]=OFF ;
     31:  !Garra a Base si no hay pieza ;
     32:  WAIT (M[2])    ;
     33:  F[1]=(ON) ;
     34:  F[2]=(ON) ;
     35:  F[3]=(ON) ;
     36:  F[4]=(ON) ;
     37:  F[5]=(ON) ;
     38:  F[6]=(ON) ;
     39:  IF (M[2]),CALL MAKRO342 ;
     40:  CALL MAKRO340    ;
     41:  WAIT (M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41])    ;
     42:  WAIT (DI[23])    ;
     43:  DO[23]=ON ;
     44:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
   6:  ! Llamar UP021 ;
   7:  !Tomar de la Estacion ST1520 ;
   8:  CALL UP021    ;
   9:  UFRAME_NUM=0 ;
  10:  UTOOL_NUM=1 ;
  11:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  12:  ! Llamar UP022 ;
  13:  !Tomar de la Estacion ST1540 ;
  14:  CALL UP022    ;
  15:  ! UP023 VW336 DROP TAYRON ;
  16:  CALL UP023    ;
  17:  UFRAME_NUM=0 ;
  18:  UTOOL_NUM=1 ;
  19:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  20:  !Fin de Trabajo Total ;
  21:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41]) ;
       ------ ;
  22:J P[6] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -63.578  mm,	Y =   564.288  mm,	Z =  2982.996  mm,
	W =  -122.360 deg,	P =   -18.827 deg,	R =    50.373 deg
};
/END
