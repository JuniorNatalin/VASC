/PROG  FOLGE020
/ATTR
OWNER		= GME;
COMMENT		= "VW336";
PROG_SIZE	= 7126;
CREATE		= DATE 96-03-23  TIME 08:56:16;
MODIFIED	= DATE 24-03-23  TIME 15:56:36;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 11222;
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
   5:  !Fresado Estacionario ;
   6:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=ON ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=ON ;
     13:  DO[74]=OFF ;
     14:  DO[73]=OFF ;
     15:  DO[72]=OFF ;
     16:  DO[71]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[55]=ON ;
     23:  DO[56]=ON ;
     24:  !Apagar Posicion Base ;
     25:  DO[15]=OFF ;
     26:  !Garra a Base si no hay pieza ;
     27:  WAIT (M[2])    ;
     28:  F[1]=(ON) ;
     29:  F[2]=(ON) ;
     30:  F[3]=(ON) ;
     31:  F[4]=(ON) ;
     32:  F[5]=(ON) ;
     33:  F[6]=(ON) ;
     34:   ;
     35:  IF (M[2]),CALL MAKRO342 ;
     36:  CALL MAKRO340    ;
     37:  WAIT (M[31] AND M[33] AND M[35] AND M[37] AND M[39])    ;
     38:   ;
     39:  !Fresado SZ1 ;
     40:  F[298]=(OFF) ;
     41:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     42:  WAIT    .10(sec) ;
     43:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     44:  F[78]=(DI[788] AND !F[79]) ;
     45:  GO[2]=(R[197]+5) ;
     46:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     47:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     48:  WAIT (M[96])    ;
     49:  WAIT (DI[23])    ;
     50:  DO[23]=ON ;
     51:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
   7:  !Tomar de la Estacion ST1510 ;
   8:  !UP021 pos.1 ;
   9:  !UP022 pos.2 ;
  10:  !UP023 pos.3 ;
  11:  !UP024 pos.4 ;
  12:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[930]=(OFF) ;
      4:  F[931]=(OFF) ;
      5:  F[932]=(OFF) ;
      6:  F[933]=(OFF) ;
      7:  WAIT ((DI[70] AND !DI[69]) OR (DI[68] AND !DI[67]) OR (DI[66] AND !DI[65]) OR (DI[64] AND !DI[63]))    ;
      8:  !Tomar de la ST1510 Pos 1 ;
      9:  F[930]=(DI[70] AND !DI[69]) ;
     10:  !Tomar de la ST1510 Pos 2 ;
     11:  F[931]=(DI[68] AND !DI[67] AND !F[930]) ;
     12:  !Tomar de la ST1510 Pos 3 ;
     13:  F[932]=(DI[66] AND !DI[65] AND !F[930] AND !F[931]) ;
     14:  !Tomar de la ST1510 Pos 4 ;
     15:  F[933]=(DI[64] AND !DI[63] AND !F[930] AND !F[931] AND !F[932]) ;
     16:  WAIT (F[930] OR F[931] OR F[932] OR F[933])    ;
     17:  WAIT (DI[23])    ;
     18:  DO[23]=ON ;
     19:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  13:  IF (F[930]),CALL UP021 ;
  14:  IF (F[931]),CALL UP022 ;
  15:  IF (F[932]),CALL UP023 ;
  16:  IF (F[933]),CALL UP024 ;
  17:  UFRAME_NUM=0 ;
  18:  UTOOL_NUM=1 ;
  19:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[3] AND M[30] AND M[31] AND M[31] AND M[35] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  20:  !Llamar a UP025 ;
  21:  !Tomar de la Estacion ST1470 ;
  22:  CALL UP025    ;
  23:  UFRAME_NUM=0 ;
  24:  UTOOL_NUM=1 ;
  25:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[32] AND M[35] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  26:  !Llamar a UP026 ;
  27:  !Soldadura Est. ;
  28:  CALL UP026    ;
  29:  UFRAME_NUM=0 ;
  30:  UTOOL_NUM=1 ;
  31:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[32] AND M[35] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  32:  !En Area de Mantenimiento ;
  33:  !Llamar a UP027 ;
  34:  !Dejar en ST1520 ;
  35:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[76] AND DI[75] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[76] AND DI[75] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57]),JMP LBL[2] ;
      8:  LBL[3] ;
      9:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     10:  CALL MAKRO089    ;
     11:  DO[17]=(ON) ;
     12:  GO[19]=(11) ;
     13:  F[281]=(ON) ;
     14:  WAIT (DI[17])    ;
     15:  F[64]=(ON) ;
     16:  F[65]=(OFF) ;
     17:  F[66]=(OFF) ;
     18:  F[67]=(OFF) ;
     19:  LBL[4] ;
     20:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135] AND DI[17]),CALL MAKRO081 ;
     21:  IF (F[85]),JMP LBL[4] ;
     22:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     23:  F[79]=((!DI[788] AND DI[130]) OR (DI[786] AND !DI[788])) ;
     24:  F[78]=(DI[788] AND !F[79]) ;
     25:  GO[2]=(R[197]+5) ;
     26:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     27:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     28:  WAIT (M[96] AND !DI[132])    ;
     29:  DO[17]=(OFF) ;
     30:  GO[19]=(0) ;
     31:  WAIT (!DI[19])    ;
     32:  JMP LBL[1] ;
     33:  LBL[2] ;
     34:  DO[18]=(OFF) ;
     35:  F[281]=(OFF) ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=ON ;
     38:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[32] AND M[35] AND M[38] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  36:  CALL UP027    ;
  37:  UFRAME_NUM=0 ;
  38:  UTOOL_NUM=1 ;
  39:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[298]=(OFF) ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      5:  WAIT    .10(sec) ;
      6:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      7:  F[78]=(DI[788] AND !F[79]) ;
      8:  GO[2]=(R[197]) ;
      9:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  WAIT (M[96])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  40:  !Fin de Trabajo Total ;
  41:J P[9] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[95] AND M[96]) ;
       ------ ;
  42:J P[10] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =  1105.490  mm,	Y =   969.349  mm,	Z =  2451.019  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =  1105.490  mm,	Y =   969.349  mm,	Z =  2451.019  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =  1105.490  mm,	Y =   969.349  mm,	Z =  2451.019  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =  1105.490  mm,	Y =   969.349  mm,	Z =  2451.019  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =  1105.490  mm,	Y =   969.349  mm,	Z =  2451.019  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =  1105.488  mm,	Y =   969.348  mm,	Z =  2451.021  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
	X =  1105.509  mm,	Y =   969.351  mm,	Z =  2451.036  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1105.509  mm,	Y =   969.351  mm,	Z =  2451.036  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1105.509  mm,	Y =   969.351  mm,	Z =  2451.036  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1105.509  mm,	Y =   969.351  mm,	Z =  2451.036  mm,
	W =   175.411 deg,	P =    -5.716 deg,	R =    91.781 deg
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
