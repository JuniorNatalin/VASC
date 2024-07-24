/PROG  FOLGE011
/ATTR
OWNER		= AUROM;
COMMENT		= "VW326";
PROG_SIZE	= 7416;
CREATE		= DATE 96-03-27  TIME 20:47:54;
MODIFIED	= DATE 17-07-04  TIME 12:28:58;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 11336;
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
   1:  PAYLOAD[1] ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]),CALL MAKRO998 ;
      2:  DO[15]=(ON) ;
      3:  DO[16]=(ON) ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   5:  !Fresado Estacionario ;
   6:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[72]=OFF ;
     14:  DO[71]=OFF ;
     15:  DO[69]=OFF ;
     16:  !Lib. de Anticolisiones ;
     17:  DO[41]=ON ;
     18:  DO[42]=ON ;
     19:  DO[43]=ON ;
     20:  DO[44]=ON ;
     21:  DO[45]=ON ;
     22:  DO[46]=ON ;
     23:  !Apagar Posicion Base ;
     24:  DO[15]=OFF ;
     25:  !Garra a Base si no hay pieza ;
     26:  WAIT (M[2])    ;
     27:  F[1]=(ON) ;
     28:  F[2]=(ON) ;
     29:  F[3]=(ON) ;
     30:  F[4]=(ON) ;
     31:  F[5]=(ON) ;
     32:  F[6]=(ON) ;
     33:  IF (M[2]),CALL MAKRO342 ;
     34:  CALL MAKRO340    ;
     35:  WAIT (M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41])    ;
     36:  !Fresado SZ1 ;
     37:  F[298]=(OFF) ;
     38:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     39:  WAIT    .10(sec) ;
     40:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     41:  F[78]=(DI[788] AND !F[79]) ;
     42:  GO[2]=(R[197]+0) ;
     43:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     44:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     45:  WAIT (M[96])    ;
     46:  WAIT (DI[23])    ;
     47:  DO[23]=(ON) ;
     48:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
   7:  !Llamar a UP001 ;
   8:  !Tomar de la Estacion ST1190 ;
   9:  CALL UP001    ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=1 ;
  12:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  13:  !Llamar a UP002 ;
  14:  !Soldadura Estacionaria ;
  15:  CALL UP002    ;
  16:  UFRAME_NUM=0 ;
  17:  UTOOL_NUM=1 ;
  18:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  19:  !En Area de Mantenimiento ;
  20:  !Tomar de la Estacion ST1210 ;
  21:  !UP003 - Posicion 1 ;
  22:  !UP004 - Posicion 2 ;
  23:  !UP005 - Posicion 3 ;
  24:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[77] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[77]),JMP LBL[2] ;
      8:  LBL[3] ;
      9:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     10:  DO[17]=(ON) ;
     11:  GO[19]=(11) ;
     12:  F[281]=(ON) ;
     13:  WAIT (DI[17])    ;
     14:  F[64]=(ON) ;
     15:  F[65]=(OFF) ;
     16:  F[66]=(OFF) ;
     17:  F[67]=(OFF) ;
     18:  LBL[4] ;
     19:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135] AND DI[17]),CALL MAKRO081 ;
     20:  IF (F[85]),JMP LBL[4] ;
     21:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     22:  F[79]=((!DI[788] AND DI[130]) OR (DI[786] AND !DI[788])) ;
     23:  F[78]=(DI[788] AND !F[79]) ;
     24:  GO[2]=(R[197]+0) ;
     25:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     26:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     27:  WAIT (M[96] AND !DI[132])    ;
     28:  DO[17]=(OFF) ;
     29:  GO[19]=(0) ;
     30:  WAIT (!DI[19])    ;
     31:  JMP LBL[1] ;
     32:  LBL[2] ;
     33:  DO[18]=(OFF) ;
     34:  F[281]=(OFF) ;
     35:  F[930]=(OFF) ;
     36:  F[931]=(OFF) ;
     37:  F[932]=(OFF) ;
     38:  WAIT ((DI[77] AND (DI[66] AND !DI[65]) OR (DI[64] AND !DI[63]) OR (DI[62] AND !DI[61])))    ;
     39:  !Tomar de la ST1210 Pos 1 ;
     40:  F[930]=(DI[66] AND !DI[65]) ;
     41:  !Tomar de la ST1210 Pos 2 ;
     42:  F[931]=(DI[64] AND !DI[63] AND !F[930]) ;
     43:  !Tomar de la ST1210 Pos 3 ;
     44:  F[932]=(DI[62] AND !DI[61] AND !F[930] AND !F[931]) ;
     45:  WAIT (F[930] OR F[931] OR F[932])    ;
     46:  WAIT (DI[23])    ;
     47:  DO[23]=ON ;
     48:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  25:  IF (F[930]),CALL UP003 ;
  26:  IF (F[931]),CALL UP004 ;
  27:  IF (F[932]),CALL UP005 ;
  28:  UFRAME_NUM=0 ;
  29:  UTOOL_NUM=1 ;
  30:  !En Area de Mantenimiento ;
  31:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[74] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[74] AND !DI[60] AND DI[59] AND !DI[58] AND DI[57]),JMP LBL[2] ;
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
     25:  GO[2]=(R[197]+0) ;
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
     38:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[36] AND M[38] AND M[40] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  32:  !Llamar a UP006 ;
  33:  !Dejar en ST1250 ;
  34:  CALL UP006    ;
  35:  UFRAME_NUM=0 ;
  36:  UTOOL_NUM=1 ;
  37:  !Fresado Estacionario ;
  38:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado SZ1 ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      5:  WAIT    .10(sec) ;
      6:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      7:  F[78]=(DI[788] AND !F[79]) ;
      8:  GO[2]=(R[197]+0) ;
      9:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  WAIT (M[96])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  39:  !Fin de Trabajo Total ;
  40:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  41:J P[9] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
	X =   846.483  mm,	Y =  1473.446  mm,	Z =  1251.233  mm,
	W =   -40.712 deg,	P =    36.105 deg,	R =    90.967 deg
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
