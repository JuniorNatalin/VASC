/PROG  FOLGE018
/ATTR
OWNER		= AUROM;
COMMENT		= "Int. Mat. 1680";
PROG_SIZE	= 3720;
CREATE		= DATE 96-06-02  TIME 17:15:36;
MODIFIED	= DATE 24-03-18  TIME 20:47:16;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 6096;
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
     23:  WAIT ((DI[77]) OR (DI[76]))    ;
     24:  WAIT (M[31] AND M[33])    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   6:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  GO[21]=0 ;
      4:  F[951]=(OFF) ;
      5:  F[952]=(OFF) ;
      6:  WAIT ((GI[21]=1) OR (GI[21]=2))    ;
      7:  IF (GI[21]=1),F[951]=(ON) ;
      8:  IF (GI[21]=2),F[952]=(ON) ;
      9:  WAIT ((F[951] AND !F[952]) OR (!F[951] AND F[952]))    ;
     10:   ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   7:  WAIT   5.00(sec) ;
   8:  ! CALL UP005 Tom. ST168 ;
   9:  ! CALL UP007 Tom. ST168 ;
  10:  IF (F[951] AND DI[62] AND DI[77]),CALL UP005 ;
  11:  IF (F[951] AND DI[62] AND DI[76]),CALL UP007 ;
  12:   ;
  13:  ! CALL UP025 Tom. ST168 ;
  14:  ! CALL UP027 Tom. ST168 ;
  15:  IF (F[952] AND DI[62] AND DI[77]),CALL UP025 ;
  16:  IF (F[952] AND DI[62] AND DI[76]),CALL UP027 ;
  17:   ;
  18:  UFRAME_NUM=0 ;
  19:  UTOOL_NUM=1 ;
  20:  !Llamar UP003 Dep. En Banda ;
  21:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  22:   ;
  23:  IF (F[951]),CALL UP003 ;
  24:  IF (F[952]),CALL UP023 ;
  25:   ;
  26:  UFRAME_NUM=0 ;
  27:  UTOOL_NUM=1 ;
  28:  !Fin de Trabajo Total ;
  29:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  F[951]=(OFF) ;
      5:  F[952]=(OFF) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  30:J P[6] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
P[4]{
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
P[5]{
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
/END
