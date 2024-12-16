/PROG  FOLGE011
/ATTR
OWNER		= AUROM;
COMMENT		= "VW326";
PROG_SIZE	= 5910;
CREATE		= DATE 16-07-31  TIME 02:13:38;
MODIFIED	= DATE 24-03-31  TIME 09:20:20;
FILE_NAME	= FOLGE011;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 9354;
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
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   5:  ! Fresado Estacionario ;
   6:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  ! Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  ! Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  ! Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  WAIT (M[2])    ;
     19:  F[1]=(ON) ;
     20:  F[2]=(ON) ;
     21:  F[3]=(ON) ;
     22:  IF (M[2]),CALL MAKRO342 ;
     23:  CALL MAKRO340    ;
     24:  WAIT (M[31] AND M[33])    ;
     25:  !Fresado SZ1 ;
     26:  F[298]=(OFF) ;
     27:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     28:  WAIT    .10(sec) ;
     29:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     30:  F[78]=(DI[788] AND !F[79]) ;
     31:  GO[2]=(R[197]+5) ;
     32:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     33:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     34:  WAIT (M[96])    ;
     35:  WAIT (DI[23])    ;
     36:  DO[23]=ON ;
     37:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:  ! Llamar a UP001 ;
   8:  ! Tomar de la Estacion ST1440 ;
   9:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:   ;
  11:   ;
  12:  CALL UP001    ;
  13:  UFRAME_NUM=0 ;
  14:  UTOOL_NUM=1 ;
  15:  ! Llamar a UP002 ;
  16:  ! Soldadura Estacionaria ;
  17:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  18:  CALL UP002    ;
  19:  UFRAME_NUM=0 ;
  20:  UTOOL_NUM=1 ;
  21:  ! En Area de Mantenimiento ;
  22:  ! Llamar a UP004 ;
  23:  ! Dejar en ST1000 ;
  24:  ! Llamar a UP005 ;
  25:  ! Extraccion vs ST1460 ;
  26:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  LBL[1] ;
      4:  ! Lib. Depos. en Banda 1000 ;
      5:  F[932]=(OFF) ;
      6:  ! Lib. Extraccion ;
      7:  F[933]=(OFF) ;
      8:  ! Lib. Deposito (Banda/Extrac.) ;
      9:  F[934]=(OFF) ;
     10:  DO[18]=(ON) ;
     11:  WAIT ((((DI[70] AND !DI[62] AND DI[61]) OR (DI[68] AND !DI[60] AND DI[59])) AND !DI[18]) OR DI[19])    ;
     12:  F[934]=((DI[70] AND !DI[62] AND DI[61]) OR (DI[68] AND !DI[60] AND DI[59])) ;
     13:  IF (DI[19]),JMP LBL[3] ;
     14:  IF (F[934]),JMP LBL[2] ;
     15:  LBL[3] ;
     16:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     17:  DO[17]=(ON) ;
     18:  GO[19]=(11) ;
     19:  F[281]=(ON) ;
     20:  WAIT (DI[17])    ;
     21:  F[64]=(ON) ;
     22:  F[65]=(OFF) ;
     23:  F[66]=(OFF) ;
     24:  F[67]=(OFF) ;
     25:  LBL[4] ;
     26:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135] AND DI[17]),CALL MAKRO081 ;
     27:  IF (F[85]),JMP LBL[4] ;
     28:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     29:  F[79]=((!DI[788] AND DI[130]) OR (DI[786] AND !DI[788])) ;
     30:  F[78]=(DI[788] AND !F[79]) ;
     31:  GO[2]=(R[197]+5) ;
     32:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     33:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     34:  WAIT (M[96] AND !DI[132])    ;
     35:  CALL MAKRO089    ;
     36:  DO[17]=(OFF) ;
     37:  GO[19]=(0) ;
     38:  WAIT (!DI[19])    ;
     39:  JMP LBL[1] ;
     40:  LBL[2] ;
     41:  DO[18]=(OFF) ;
     42:  F[281]=(OFF) ;
     43:  ! Lib. Depos. en Banda 1000 ;
     44:  F[932]=(DI[68] AND !DI[60] AND DI[59]) ;
     45:  ! Lib. Extraccion ;
     46:  F[933]=(DI[70] AND !DI[62] AND DI[61]) ;
     47:  WAIT ((F[932] AND !F[933]) OR (!F[932] AND F[933]))    ;
     48:  WAIT (DI[23])    ;
     49:  DO[23]=(ON) ;
     50:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  27:  IF (F[932]),CALL UP004 ;
  28:  IF (F[933]),CALL UP005 ;
  29:  UFRAME_NUM=0 ;
  30:  UTOOL_NUM=1 ;
  31:  !Fresado Estacionario ;
  32:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado SZ1 ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      5:  WAIT    .10(sec) ;
      6:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      7:  F[78]=(DI[788] AND !F[79]) ;
      8:  GO[2]=(R[197]+5) ;
      9:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  WAIT (M[96])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  33:  !Fin de Trabajo Total ;
  34:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[8] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
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
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
