/PROG  FOLGE124
/ATTR
OWNER		= AUROM;
COMMENT		= "Mantenimiento";
PROG_SIZE	= 5438;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 24-02-18  TIME 22:35:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 7814;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1] ;
   4:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]=ON),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   5:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  DO[78]=OFF ;
      8:  DO[77]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  DO[45]=ON ;
     17:  DO[46]=ON ;
     18:  !Apagar Posicion Base ;
     19:  DO[15]=OFF ;
     20:  WAIT (M[2])    ;
     21:  F[1]=(ON) ;
     22:  F[2]=(ON) ;
     23:  IF (M[2]),CALL MAKRO342 ;
     24:  CALL MAKRO340    ;
     25:  WAIT (M[31] AND M[33])    ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   6:  !Fresado antes de Mantenimiento ;
   7:  !SP1 y SP2 ;
   8:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[298]=(OFF) ;
      4:  !Pinza 1 ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  GO[2]=(R[197]+5) ;
     10:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     11:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     12:  WAIT (M[96])    ;
     13:  !Pinza 2 ;
     14:  CALL VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     15:  WAIT    .10(sec) ;
     16:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     17:  F[138]=(DI[948] AND !F[139]) ;
     18:  GO[5]=(R[198]+0) ;
     19:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     20:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     21:  WAIT (M[103])    ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   9:  !Pos. de Mantenimiento ;
  10:  !UP112 Mant. G1 ;
  11:  !UP113 Mant. SP1 ;
  12:  !UP114 Mant. SP2 ;
  13:  !UP201 Cambio Herramienta G1 ;
  14:  !UP202 Cambio Herramienta SP1 ;
  15:  !UP203 Cambio Herramienta SP2 ;
  16:  !UP206 TCP Check SP1 ;
  17:  !UP207 TCP Check SP2 ;
  18:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[940]=(OFF) ;
      4:  F[941]=(OFF) ;
      5:  F[942]=(OFF) ;
      6:  F[943]=(OFF) ;
      7:  F[944]=(OFF) ;
      8:  F[945]=(OFF) ;
      9:  F[946]=(OFF) ;
     10:  F[947]=(OFF) ;
     11:  WAIT ((DI[20] OR DI[21] AND (DI[121] OR DI[132] OR DI[164])) OR DI[121] OR (DI[132] OR DI[777] OR DI[801]) OR (DI[164] OR DI[937] OR DI[961]))    ;
     12:  !Mantenimiento G1 ;
     13:  F[940]=(!DI[20] AND !DI[21] AND DI[121] AND !DI[130] AND !DI[132] AND !DI[162] AND !DI[164]) ;
     14:  !Mantenimiento SP1 ;
     15:  F[941]=(!DI[20] AND !DI[21] AND !DI[121] AND (DI[132] OR DI[777] OR DI[801]) AND !DI[164]) ;
     16:  !Mantenimiento SP2 ;
     17:  F[942]=(!DI[20] AND !DI[21] AND !DI[121] AND !DI[132] AND (DI[164] OR DI[937] OR DI[961])) ;
     18:  !Cambio de Herramienta G1 ;
     19:  F[943]=(DI[20] AND !DI[21] AND DI[121] AND !DI[132] AND !DI[164]) ;
     20:  !Cambio de Herramienta SP1 ;
     21:  F[944]=(DI[20] AND !DI[21] AND !DI[121] AND DI[132] AND !DI[164]) ;
     22:  !Cambio de Herramienta SP2 ;
     23:  F[945]=(DI[20] AND !DI[21] AND !DI[121] AND !DI[132] AND DI[164]) ;
     24:  !TCP Check SP1 ;
     25:  F[946]=(!DI[20] AND DI[21] AND !DI[121] AND DI[132] AND !DI[164]) ;
     26:  !TCP Check SP2 ;
     27:  F[947]=(!DI[20] AND DI[21] AND !DI[121] AND !DI[132] AND DI[164]) ;
     28:  WAIT (F[940] OR F[941] OR F[942] OR F[943] OR F[944] OR F[945] OR F[946] OR F[947])    ;
     29:  WAIT (DI[23])    ;
     30:  DO[23]=ON ;
     31:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  19:  IF (F[940]),CALL UP112 ;
  20:  IF (F[941]),CALL UP113 ;
  21:  IF (F[942]),CALL UP114 ;
  22:  IF (F[943]),CALL UP201 ;
  23:  IF (F[944]),CALL UP202 ;
  24:  IF (F[945]),CALL UP203 ;
  25:  IF (F[946]),CALL UP206 ;
  26:  IF (F[947]),CALL UP207 ;
  27:  UTOOL_NUM=1 ;
  28:  UFRAME_NUM=0 ;
  29:  !Fresado despues de Mant. ;
  30:  !SP1 y SP2 ;
  31:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[298]=(OFF) ;
      4:  !Pinza 1 ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  GO[2]=(R[197]+5) ;
     10:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     11:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     12:  WAIT (M[96])    ;
     13:  !Pinza 2 ;
     14:  CALL VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     15:  WAIT    .10(sec) ;
     16:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     17:  F[138]=(DI[948] AND !F[139]) ;
     18:  GO[5]=(R[198]+0) ;
     19:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     20:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     21:  WAIT (M[103])    ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  32:J P[6] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[15]=ON ;
      3:  DO[14]=ON ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
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
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
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
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
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
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
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
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
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
	X =   484.079  mm,	Y =   550.530  mm,	Z =  1117.781  mm,
	W =   145.476 deg,	P =     5.074 deg,	R =    98.085 deg
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
