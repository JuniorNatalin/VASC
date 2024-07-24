/PROG  FOLGE020
/ATTR
OWNER		= GME;
COMMENT		= "VW336";
PROG_SIZE	= 5446;
CREATE		= DATE 96-03-11  TIME 09:47:40;
MODIFIED	= DATE 23-07-01  TIME 02:03:14;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 8810;
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
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[47]=ON ;
     19:  DO[48]=ON ;
     20:  !Apagar Posicion Base ;
     21:  DO[15]=OFF ;
     22:  !Garra a Base si no hay pieza ;
     23:  WAIT (M[2])    ;
     24:  F[1]=(ON) ;
     25:  F[2]=(ON) ;
     26:  IF (M[2]),CALL MAKRO342 ;
     27:  CALL MAKRO340    ;
     28:  WAIT (M[31] AND M[33])    ;
     29:  !Fresado SZ1 ;
     30:  F[298]=(OFF) ;
     31:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     32:  WAIT    .10(sec) ;
     33:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     34:  F[78]=(DI[788] AND !F[79]) ;
     35:  GO[2]=(R[197]+5) ;
     36:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     37:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     38:  WAIT (M[96])    ;
     39:  WAIT (DI[23])    ;
     40:  DO[23]=ON ;
     41:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:  !Llamar a UP021 ;
   8:  !Tomar de la Estacion ST1600 ;
   9:  CALL UP021    ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=1 ;
  12:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  13:  !Llamar a UP022 ;
  14:  !Soldadura Est. ;
  15:  CALL UP022    ;
  16:  UFRAME_NUM=0 ;
  17:  UTOOL_NUM=1 ;
  18:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  19:  !En Area de Mantenimiento ;
  20:  !Llamar a UP023 ;
  21:  !Dejar en ST1620 ;
  22:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[76] AND !DI[62] AND DI[61] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[76] AND !DI[62] AND DI[61]),JMP LBL[2] ;
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
     38:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  23:  CALL UP023    ;
  24:  UFRAME_NUM=0 ;
  25:  UTOOL_NUM=1 ;
  26:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  27:  !Fin de Trabajo Total ;
  28:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[8] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1478.134  mm,	Y =  -981.144  mm,	Z =  1998.395  mm,
	W =   145.269 deg,	P =    62.134 deg,	R =   -76.624 deg
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
