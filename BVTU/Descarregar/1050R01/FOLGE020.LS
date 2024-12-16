/PROG  FOLGE020
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VW326 TEST";
PROG_SIZE	= 4950;
CREATE		= DATE 24-07-28  TIME 12:24:36;
MODIFIED	= DATE 24-08-03  TIME 08:42:36;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 7878;
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
   4:   ;
   5:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   6:J P[2] 50% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  ! Lib. de herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[75]=ON ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  DO[72]=ON ;
     14:  DO[70]=OFF ;
     15:  DO[68]=OFF ;
     16:  ! Lib. de anticolisiones ;
     17:  DO[55]=ON ;
     18:  DO[56]=ON ;
     19:  !apagar flags de racks ;
     20:  F[951]=(OFF) ;
     21:  F[952]=(OFF) ;
     22:  F[953]=(OFF) ;
     23:  F[954]=(OFF) ;
     24:  F[955]=(OFF) ;
     25:  !Apagar Posicion Base ;
     26:  DO[15]=OFF ;
     27:  WAIT (DI[80] OR DI[79] OR DI[76] OR DI[75] OR DI[68])    ;
     28:   ;
     29:  !Crear Flags de acuerdo a posicio ;
     30:  !Magazine 1, rack 1 ;
     31:  F[951]=(DI[80] AND !DI[79] AND !DI[76] AND !DI[75]) ;
     32:  !Magazine 1, rack 2 ;
     33:  F[952]=(!DI[80] AND DI[79] AND !DI[76] AND !DI[75] AND !F[951]) ;
     34:  !Magazine 2, rack 1 ;
     35:  F[953]=(!DI[80] AND !DI[79] AND DI[76] AND !DI[75] AND !F[952]) ;
     36:  !Magazine 2, rack 2 ;
     37:  F[954]=(!DI[80] AND !DI[79] AND !DI[76] AND DI[75] AND !F[953]) ;
     38:  !Toma st1010 FIJA ;
     39:  F[955]=(DI[68] AND !DI[61] AND DI[62] AND !F[954]) ;
     40:   ;
     41:  WAIT (M[2])    ;
     42:  F[1]=(ON) ;
     43:  F[17]=(ON) ;
     44:  F[18]=(ON) ;
     45:   ;
     46:  IF (M[2]),CALL MAKRO342 ;
     47:  F[1]=(OFF) ;
     48:  F[17]=(OFF) ;
     49:  F[18]=(OFF) ;
     50:   ;
     51:  F[2]=(ON) ;
     52:  IF (M[2]),CALL MAKRO342 ;
     53:  CALL MAKRO340    ;
     54:  WAIT (M[31])    ;
     55:  WAIT (DI[23])    ;
     56:  DO[23]=ON ;
     57:  TC_ONLINE (M[2] AND M[30] AND M[31]) ;
       ------ ;
   7:  ! Tomar Tunel de Rack 1010 ;
   8:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (F[951] OR F[952] OR F[953] OR F[954] OR F[955])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31]) ;
       ------ ;
   9:   ;
  10:  !UP031-Toma BH1 Rack1 ;
  11:  !UP032-Toma BH1 Rack2 ;
  12:  !UP041-Toma BH2 Rack1 ;
  13:  !UP042-Toma BH2 Rack2 ;
  14:   ;
  15:  !Magazine 1, rack 1 ;
  16:  IF (F[951]),CALL UP031 ;
  17:  !Magazine 1, rack 2 ;
  18:  IF (F[952]),CALL UP032 ;
  19:  !Magazine 2, rack 1 ;
  20:  IF (F[953]),CALL UP041 ;
  21:  !Magazine 2, rack 2 ;
  22:  IF (F[954]),CALL UP042 ;
  23:   ;
  24:  UFRAME_NUM=0 ;
  25:  UTOOL_NUM=1 ;
  26:   ;
  27:  !En Area de Mantenimiento ;
  28:J P[4] 50% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[72] AND !DI[62] AND DI[61] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[72] AND !DI[62] AND DI[61]),JMP LBL[2] ;
      8:  LBL[3] ;
      9:  DO[17]=(ON) ;
     10:  GO[19]=(1) ;
     11:  WAIT (DI[17])    ;
     12:  DO[17]=(OFF) ;
     13:  GO[19]=(0) ;
     14:  WAIT (!DI[19])    ;
     15:  JMP LBL[1] ;
     16:  LBL[2] ;
     17:  DO[18]=(OFF) ;
     18:  WAIT (DI[23])    ;
     19:  DO[23]=(ON) ;
     20:  TC_ONLINE (M[1] AND M[30] AND M[32]) ;
       ------ ;
  29:   ;
  30:  !Depositar en ST1030 ;
  31:  !Llamar UP002 ;
  32:  CALL UP002    ;
  33:   ;
  34:  UFRAME_NUM=0 ;
  35:  UTOOL_NUM=1 ;
  36:  !Rest. Banderas Racks ;
  37:J P[5] 50% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31]) ;
       ------ ;
  38:  !Fin de Trabajo Total ;
  39:J P[6] 50% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31]) ;
       ------ ;
  40:J P[7] 50% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.861  mm,	Z =  1457.583  mm,
	W =   110.930 deg,	P =   -12.249 deg,	R =    70.121 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.302  mm,	Y =   -93.859  mm,	Z =  1457.602  mm,
	W =   110.928 deg,	P =   -12.249 deg,	R =    70.120 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.861  mm,	Z =  1457.583  mm,
	W =   110.930 deg,	P =   -12.249 deg,	R =    70.121 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.861  mm,	Z =  1457.583  mm,
	W =   110.930 deg,	P =   -12.249 deg,	R =    70.121 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.861  mm,	Z =  1457.583  mm,
	W =   110.930 deg,	P =   -12.249 deg,	R =    70.121 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.861  mm,	Z =  1457.583  mm,
	W =   110.930 deg,	P =   -12.249 deg,	R =    70.121 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 1',
	X =   653.359  mm,	Y =   -93.861  mm,	Z =  1457.583  mm,
	W =   110.930 deg,	P =   -12.249 deg,	R =    70.121 deg
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
