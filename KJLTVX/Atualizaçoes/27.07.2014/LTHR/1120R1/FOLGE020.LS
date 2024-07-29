/PROG  FOLGE020
/ATTR
OWNER		= GME;
COMMENT		= "VW336";
PROG_SIZE	= 6860;
CREATE		= DATE 96-06-10  TIME 20:12:02;
MODIFIED	= DATE 23-06-29  TIME 01:44:12;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 10668;
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
     16:  !Apagar Posicion Base ;
     17:  DO[15]=OFF ;
     18:  !Garra a Base si no hay pieza ;
     19:  WAIT (M[2])    ;
     20:  F[1]=(ON) ;
     21:  F[2]=(ON) ;
     22:  IF (M[2]),CALL MAKRO342 ;
     23:  CALL MAKRO340    ;
     24:  WAIT (M[31] AND M[33])    ;
     25:  !Fresado SZ1 ;
     26:  F[298]=(OFF) ;
     27:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     28:  WAIT    .10(sec) ;
     29:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     30:  F[78]=(DI[788] AND !F[79]) ;
     31:  !Fresado SZ2 ;
     32:  F[298]=(OFF) ;
     33:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     34:  WAIT    .10(sec) ;
     35:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     36:  F[138]=(DI[948] AND !F[139]) ;
     37:  GO[5]=(R[198]+0) ;
     38:  F[286]=(F[138]) ;
     39:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     40:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     41:  WAIT (M[103])    ;
     42:  WAIT (DI[23])    ;
     43:  DO[23]=ON ;
     44:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   7:  !Fresado ;
   8:  LBL[1] ;
   9:  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
  10:  IF (F[298]),JMP LBL[1] ;
  11:  UFRAME_NUM=0 ;
  12:  UTOOL_NUM=1 ;
  13:   ;
  14:  !Llamar a UP021 ;
  15:  !Soldadura ST1120 ;
  16:  CALL UP021    ;
  17:   ;
  18:  UFRAME_NUM=0 ;
  19:  UTOOL_NUM=1 ;
  20:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  21:  CALL UP022    ;
  22:  UFRAME_NUM=0 ;
  23:  UTOOL_NUM=1 ;
  24:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  25:   ;
  26:  !Llamar a UP023 ;
  27:  !Stat. Schweissen ;
  28:  CALL UP023    ;
  29:   ;
  30:  UFRAME_NUM=0 ;
  31:  UTOOL_NUM=1 ;
  32:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  33:  !En Area de Mantenimiento ;
  34:  !Llamar a UP024 ;
  35:  !Dejar en ST1125 ;
  36:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  LBL[1] ;
      4:  DO[18]=(ON) ;
      5:  WAIT ((DI[76] AND !DI[62] AND DI[61] AND !DI[18]) OR DI[19])    ;
      6:  IF (DI[19]),JMP LBL[3] ;
      7:  IF (DI[76] AND !DI[62] AND DI[61]),JMP LBL[2] ;
      8:  !EZ1 ;
      9:  LBL[3] ;
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
     22:  F[79]=(!(DI[788] AND DI[130]) OR (DI[786] AND !DI[788])) ;
     23:  F[78]=(DI[788] AND !F[79]) ;
     24:  GO[2]=(R[197]+5) ;
     25:  WAIT (!DI[132])    ;
     26:  !EZ2 ;
     27:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     28:  CALL MAKRO119    ;
     29:  DO[17]=(ON) ;
     30:  GO[19]=(51) ;
     31:  F[281]=(ON) ;
     32:  WAIT (DI[17])    ;
     33:  F[64]=(OFF) ;
     34:  F[65]=(ON) ;
     35:  F[66]=(OFF) ;
     36:  F[67]=(OFF) ;
     37:  LBL[5] ;
     38:  IF (DI[164] AND !DI[165] AND !DI[166] AND !DI[167] AND DI[17]),CALL MAKRO111 ;
     39:  IF (F[143]),JMP LBL[5] ;
     40:  CALL VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     41:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     42:  F[138]=(DI[948] AND !F[139]) ;
     43:  GO[5]=(R[198]+0) ;
     44:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     45:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     46:  WAIT (M[103] AND DI[164])    ;
     47:  DO[17]=(OFF) ;
     48:  GO[19]=(0) ;
     49:  WAIT (!DI[19])    ;
     50:  JMP LBL[1] ;
     51:  LBL[2] ;
     52:  DO[18]=(OFF) ;
     53:  F[281]=(OFF) ;
     54:  WAIT (DI[23])    ;
     55:  DO[23]=ON ;
     56:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  37:  CALL UP024    ;
  38:  UFRAME_NUM=0 ;
  39:  UTOOL_NUM=1 ;
  40:  !Fresado Estacionario ;
  41:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado SZ1 ;
      4:  F[298]=(OFF) ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  !Fresado SZ2 ;
     10:  F[298]=(OFF) ;
     11:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     12:  WAIT    .10(sec) ;
     13:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     14:  F[138]=(DI[948] AND !F[139]) ;
     15:  GO[5]=(R[198]+0) ;
     16:  F[286]=(F[138]) ;
     17:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     18:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     19:  WAIT (M[103])    ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  42:  !Fresado ;
  43:  LBL[3] ;
  44:  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
  45:  IF (F[298]),JMP LBL[3] ;
  46:  UFRAME_NUM=0 ;
  47:  UTOOL_NUM=1 ;
  48:  !Fin de Trabajo Total ;
  49:J P[8] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  50:J P[9] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -775.321  mm,	Y =  4177.431  mm,	Z =  1637.772  mm,
	W =   -13.499 deg,	P =    54.396 deg,	R =    87.678 deg
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
	X =   428.854  mm,	Y =  -792.886  mm,	Z =   487.331  mm,
	W =   165.177 deg,	P =    26.016 deg,	R =   -36.122 deg
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
