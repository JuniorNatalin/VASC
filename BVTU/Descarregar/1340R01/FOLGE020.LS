/PROG  FOLGE020
/ATTR
OWNER		= AUROM;
COMMENT		= "folge vw336";
PROG_SIZE	= 5880;
CREATE		= DATE 21-03-24  TIME 10:07:28;
MODIFIED	= DATE 24-07-01  TIME 09:55:54;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 9572;
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
   4:   ;
   5:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   6:   ;
   7:  !Liberaciones PLC ;
   8:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  !Espera fin de purga en casa ;
      3:  DO[23]=OFF ;
      4:  TIMER[1]=RESET ;
      5:  TIMER[1]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[76]=ON ;
     11:  DO[74]=OFF ;
     12:  DO[72]=ON ;
     13:  DO[71]=ON ;
     14:  DO[70]=OFF ;
     15:  DO[69]=OFF ;
     16:  !Lib. de Anticolisiones ;
     17:  DO[41]=ON ;
     18:  DO[42]=ON ;
     19:  DO[43]=ON ;
     20:  DO[44]=ON ;
     21:  DO[47]=ON ;
     22:  DO[48]=ON ;
     23:  DO[49]=ON ;
     24:  DO[50]=ON ;
     25:  DO[51]=ON ;
     26:  DO[52]=ON ;
     27:  DO[53]=ON ;
     28:  DO[54]=ON ;
     29:  !Apagar Posicion Base ;
     30:  DO[15]=OFF ;
     31:  !G1/G2 a Base si no hay pieza ;
     32:  WAIT (M[2])    ;
     33:  !Garra 1: ;
     34:  F[1]=(ON) ;
     35:  F[2]=(ON) ;
     36:  !Garra 2: ;
     37:  F[11]=(ON) ;
     38:  F[12]=(ON) ;
     39:  F[13]=(ON) ;
     40:  F[14]=(ON) ;
     41:  F[15]=(ON) ;
     42:  IF (M[2]),CALL MAKRO342 ;
     43:  CALL MAKRO340    ;
     44:  WAIT (M[31] AND M[33] AND M[51] AND M[53] AND M[55] AND M[57] AND M[59])    ;
     45:  WAIT (DI[23])    ;
     46:  DO[23]=ON ;
     47:  TC_ONLINE (M[2] AND M[21] AND M[30]) ;
       ------ ;
   9:   ;
  10:  !Llamar a UP021 ;
  11:  !Tomar de la Estacion ST1320 ;
  12:  !Tunel ;
  13:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[21] AND M[30]) ;
       ------ ;
  14:  CALL UP021    ;
  15:   ;
  16:  !Tunel ;
  17:  UFRAME_NUM=0 ;
  18:  UTOOL_NUM=1 ;
  19:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[3] AND M[22] AND M[30]) ;
       ------ ;
  20:   ;
  21:  !En Area de Mantenimiento ;
  22:  !Llamar a UP023 ;
  23:  !Tomar de la Estacion ST1330 ;
  24:  !Refuerzos ;
  25:  UFRAME_NUM=0 ;
  26:  UTOOL_NUM=1 ;
  27:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT (((DI[76] AND ((DI[62] AND !DI[61]) OR (DI[66] AND !DI[65]))) AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[76] AND ((DI[62] AND !DI[61]) OR (DI[66] AND !DI[65]))),JMP LBL[2] ;
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
     18:  F[930]=(OFF) ;
     19:  F[931]=(OFF) ;
     20:  WAIT (DI[76] AND ((DI[62] AND !DI[61]) OR (DI[66] AND !DI[65])))    ;
     21:  !Tomar de ST1330 KT1 ;
     22:  F[930]=(DI[62] AND !DI[61]) ;
     23:  !Tomar de ST1330 KT2 ;
     24:  F[931]=(DI[66] AND !DI[65] AND !F[930]) ;
     25:  WAIT (F[930] OR F[931])    ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=(ON) ;
     28:  TC_ONLINE (M[3] AND M[22] AND M[30]) ;
       ------ ;
  28:  IF (F[930]),CALL UP023 ;
  29:  IF (F[931]),CALL UP025 ;
  30:   ;
  31:  !En Area de Mantenimiento ;
  32:  !Llamar a UP024 ;
  33:  !Depositar en ST1350 ;
  34:  !Refuerzos, Tunel ;
  35:  ! ;
  36:  UFRAME_NUM=0 ;
  37:  UTOOL_NUM=1 ;
  38:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[72] AND DI[71] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[72] AND DI[71] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57]),JMP LBL[2] ;
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
     20:  TC_ONLINE (M[1] AND M[23] AND M[30]) ;
       ------ ;
  39:   ;
  40:  CALL UP024    ;
  41:   ;
  42:  UFRAME_NUM=0 ;
  43:  UTOOL_NUM=1 ;
  44:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[21] AND M[30]) ;
       ------ ;
  45:   ;
  46:  !Fin de Trabajo Total ;
  47:J P[8] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[21] AND M[30]) ;
       ------ ;
  48:J P[9] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -539.178  mm,	Y =  1319.810  mm,	Z =  1800.307  mm,
	W =    89.020 deg,	P =   -70.452 deg,	R =   -94.246 deg,
	E1=  -345.000  mm
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
