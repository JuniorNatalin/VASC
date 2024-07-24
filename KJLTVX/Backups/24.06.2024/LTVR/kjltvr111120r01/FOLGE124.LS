/PROG  FOLGE124
/ATTR
OWNER		= AUROM;
COMMENT		= "Mantenimiento";
PROG_SIZE	= 5722;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 17-02-13  TIME 10:39:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 8590;
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
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  DO[78]=OFF ;
      8:  DO[77]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  !Apagar Posicion Base ;
     15:  DO[15]=OFF ;
     16:  WAIT (M[2])    ;
     17:  F[1]=(ON) ;
     18:  F[2]=(ON) ;
     19:  IF (M[2]),CALL MAKRO342 ;
     20:  CALL MAKRO340    ;
     21:  WAIT (M[31] AND M[33])    ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   6:  !Fresado antes de Mant. ;
   7:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado SP1 ;
      4:  F[298]=(OFF) ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR F[298] OR (!DI[786] AND !DI[788] AND DO[11]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  GO[2]=(R[197]+0) ;
     10:  !Fresado SP2 ;
     11:  F[298]=(OFF) ;
     12:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     13:  WAIT    .10(sec) ;
     14:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     15:  F[138]=(DI[948] AND !F[139]) ;
     16:  GO[5]=(R[198]+0) ;
     17:  F[286]=(F[138]) ;
     18:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     19:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     20:  WAIT (M[103])    ;
     21:  WAIT (DI[23])    ;
     22:  DO[23]=ON ;
     23:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   8:  LBL[1] ;
   9:  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
  10:  IF (F[298]),JMP LBL[1] ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  12:  !Pos. de Mantenimiento ;
  13:  !UP112 Mant. G1 ;
  14:  !UP113 Mant. SP1 ;
  15:  !UP114 Mant. SP2 ;
  16:  !UP201 Cambio Herramienta G1 ;
  17:  !UP202 Cambio Herramienta SP1 ;
  18:  !UP203 Cambio Herramienta SP2 ;
  19:  !UP206 TCP Check SP1 ;
  20:  !UP207 TCP Check SP2 ;
  21:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[940]=(OFF) ;
      4:  F[941]=(OFF) ;
      5:  F[942]=(OFF) ;
      6:  F[943]=(OFF) ;
      7:  F[944]=(OFF) ;
      8:  F[945]=(OFF) ;
      9:  F[946]=(OFF) ;
     10:  WAIT ((DI[20] OR DI[21] AND (DI[121] OR DI[132] OR DI[164])) OR DI[121] OR (DI[132] OR DI[777] OR DI[801]) OR (DI[164] OR DI[937] OR DI[961]))    ;
     11:  !Mantenimiento G1 ;
     12:  F[940]=(!DI[20] AND !DI[21] AND DI[121] AND !DI[130] AND !DI[132] AND !DI[162] AND !DI[164]) ;
     13:  !Mantenimiento SP1 ;
     14:  F[941]=(!DI[20] AND !DI[21] AND !DI[121] AND (DI[132] OR DI[777] OR DI[801]) AND !DI[164]) ;
     15:  !Mantenimiento SP2 ;
     16:  F[942]=(!DI[20] AND !DI[21] AND !DI[121] AND !DI[132] AND (DI[164] OR DI[937] OR DI[961])) ;
     17:  !Cambio de Herramienta G1 ;
     18:  F[943]=(DI[20] AND !DI[21] AND DI[121] AND !DI[132] AND !DI[164]) ;
     19:  !Cambio de Herramienta SP1 ;
     20:  F[944]=(DI[20] AND !DI[21] AND !DI[121] AND DI[132] AND !DI[164]) ;
     21:  !Cambio de Herramienta SP2 ;
     22:  F[945]=(DI[20] AND !DI[21] AND !DI[121] AND !DI[132] AND DI[164]) ;
     23:  !TCP Check SP1 ;
     24:  F[946]=(!DI[20] AND DI[21] AND !DI[121] AND DI[132] AND !DI[164]) ;
     25:  !TCP Check SP2 ;
     26:  F[947]=(!DI[20] AND DI[21] AND !DI[121] AND !DI[132] AND DI[164]) ;
     27:  WAIT (F[940] OR F[941] OR F[942] OR F[943] OR F[944] OR F[945] OR F[946] OR F[947])    ;
     28:  WAIT (DI[23])    ;
     29:  DO[23]=ON ;
     30:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  22:  IF (F[940]),CALL UP112 ;
  23:  IF (F[941]),CALL UP113 ;
  24:  IF (F[942]),CALL UP114 ;
  25:  IF (F[943]),CALL UP201 ;
  26:  IF (F[944]),CALL UP202 ;
  27:  IF (F[945]),CALL UP203 ;
  28:  IF (F[946]),CALL UP206 ;
  29:  IF (F[947]),CALL UP207 ;
  30:  UTOOL_NUM=1 ;
  31:  UFRAME_NUM=0 ;
  32:  !Fresado despues de Mant. ;
  33:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado SP1 ;
      4:  F[298]=(OFF) ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR F[298] OR (!DI[786] AND !DI[788] AND DO[11]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  GO[2]=(R[197]+0) ;
     10:  !Fresado SP2 ;
     11:  F[298]=(OFF) ;
     12:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     13:  WAIT    .10(sec) ;
     14:  F[139]=((DI[946] AND !DI[948]) OR (!DI[948] AND DI[162])) ;
     15:  F[138]=(DI[948] AND !F[139]) ;
     16:  GO[5]=(R[198]+0) ;
     17:  F[286]=(F[138]) ;
     18:  IF (F[138] OR F[139]),CALL MAKRO115 ;
     19:  IF (F[138] OR F[139]),CALL MAKRO114 ;
     20:  WAIT (M[103])    ;
     21:  WAIT (DI[23])    ;
     22:  DO[23]=ON ;
     23:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  34:  LBL[2] ;
  35:  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
  36:  IF (F[298]),JMP LBL[2] ;
  37:J P[7] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[15]=ON ;
      3:  DO[14]=ON ;
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
/END
