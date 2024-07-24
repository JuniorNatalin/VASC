/PROG  FOLGE011
/ATTR
OWNER		= AUROM;
COMMENT		= "VW326";
PROG_SIZE	= 7018;
CREATE		= DATE 96-03-11  TIME 09:47:40;
MODIFIED	= DATE 17-07-04  TIME 12:16:42;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 10746;
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
     18:  DO[45]=ON ;
     19:  DO[46]=ON ;
     20:  !Apagar Posicion Base ;
     21:  DO[15]=OFF ;
     22:  !Garra a Base si no hay pieza ;
     23:  F[1]=(ON) ;
     24:  F[2]=(ON) ;
     25:  IF (M[2]),CALL MAKRO342 ;
     26:  CALL MAKRO340    ;
     27:  WAIT (M[31] AND M[33])    ;
     28:  !Fresado SZ1 ;
     29:  F[298]=(OFF) ;
     30:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     31:  WAIT    .10(sec) ;
     32:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     33:  F[78]=(DI[788] AND !F[79]) ;
     34:  GO[2]=(R[197]+5) ;
     35:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     36:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     37:  WAIT (M[96])    ;
     38:  !Fresado SZ2 ;
     39:  F[298]=(OFF) ;
     40:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     41:  WAIT    .10(sec) ;
     42:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     43:  F[138]=(DI[948] AND !F[139]) ;
     44:  GO[5]=(R[198]+0) ;
     45:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     46:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     47:  WAIT (M[103])    ;
     48:  WAIT (DI[23])    ;
     49:  DO[23]=ON ;
     50:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   7:  !Llamar a UP001 ;
   8:  !Tomar de la Estacion ST1150 ;
   9:  CALL UP001    ;
  10:  UFRAME_NUM=0 ;
  11:  UTOOL_NUM=1 ;
  12:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  13:  !Llamar a UP002 ;
  14:  !Soldadura Est. 1 ;
  15:  CALL UP002    ;
  16:  UFRAME_NUM=0 ;
  17:  UTOOL_NUM=1 ;
  18:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  19:  !Llamar a UP003 ;
  20:  !Soldadura Est. 2 ;
  21:  CALL UP003    ;
  22:  UFRAME_NUM=0 ;
  23:  UTOOL_NUM=1 ;
  24:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  25:  !En Area de Mantenimiento ;
  26:  !Llamar a UP004 ;
  27:  !Dejar en ST1190 ;
  28:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[76] AND !DI[62] AND DI[61] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[76] AND !DI[62] AND DI[61]),JMP LBL[2] ;
      8:  !EZ1 ;
      9:  LBL[3] ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  CALL MAKRO089    ;
     12:  DO[17]=(ON) ;
     13:  GO[19]=(11) ;
     14:  F[281]=(ON) ;
     15:  WAIT (DI[17])    ;
     16:  F[64]=(ON) ;
     17:  F[65]=(OFF) ;
     18:  F[66]=(OFF) ;
     19:  F[67]=(OFF) ;
     20:  LBL[4] ;
     21:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135] AND DI[17]),CALL MAKRO081 ;
     22:  IF (F[85]),JMP LBL[4] ;
     23:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     24:  F[79]=((!DI[788] AND DI[130]) OR (DI[786] AND !DI[788])) ;
     25:  F[78]=(DI[788] AND !F[79]) ;
     26:  GO[2]=(R[197]+5) ;
     27:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     28:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     29:  WAIT (M[96])    ;
     30:  !EZ2 ;
     31:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     32:  CALL MAKRO119    ;
     33:  DO[17]=(ON) ;
     34:  GO[19]=(51) ;
     35:  F[281]=(ON) ;
     36:  WAIT (DI[17])    ;
     37:  F[64]=(OFF) ;
     38:  F[65]=(ON) ;
     39:  F[66]=(OFF) ;
     40:  F[67]=(OFF) ;
     41:  LBL[5] ;
     42:  IF (DI[164] AND !DI[165] AND !DI[166] AND !DI[167] AND DI[17]),CALL MAKRO111 ;
     43:  IF (F[143]),JMP LBL[5] ;
     44:  CALL VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     45:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     46:  F[138]=(DI[948] AND !F[139]) ;
     47:  GO[5]=(R[198]+0) ;
     48:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     49:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     50:  WAIT (M[103])    ;
     51:  DO[17]=(OFF) ;
     52:  GO[19]=(0) ;
     53:  WAIT (!DI[19])    ;
     54:  JMP LBL[1] ;
     55:  LBL[2] ;
     56:  DO[18]=(OFF) ;
     57:  F[281]=(OFF) ;
     58:  WAIT (DI[23])    ;
     59:  DO[23]=ON ;
     60:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  29:  CALL UP004    ;
  30:  UFRAME_NUM=0 ;
  31:  UTOOL_NUM=1 ;
  32:  !Fresado Estacionario ;
  33:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado SZ1 ;
      4:  F[298]=(OFF) ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  GO[2]=(R[197]+5) ;
     10:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     11:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     12:  WAIT (M[96])    ;
     13:  !Fresado SZ2 ;
     14:  F[298]=(OFF) ;
     15:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     16:  WAIT    .10(sec) ;
     17:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     18:  F[138]=(DI[948] AND !F[139]) ;
     19:  GO[5]=(R[198]+0) ;
     20:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     21:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     22:  WAIT (M[103])    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  34:  !Fin de Trabajo Total ;
  35:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  36:J P[9] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.128  mm,	Y =   297.241  mm,	Z =  1068.180  mm,
	W =    15.400 deg,	P =    27.794 deg,	R =  -173.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
