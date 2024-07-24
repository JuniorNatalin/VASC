/PROG  FOLGE124
/ATTR
OWNER		= AUROM;
COMMENT		= "Matenimiento";
PROG_SIZE	= 3610;
CREATE		= DATE 23-12-05  TIME 06:27:32;
MODIFIED	= DATE 23-12-05  TIME 06:27:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 5638;
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
   4:   ;
   5:J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]=ON),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
   6:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[78]=OFF ;
      7:  DO[77]=ON ;
      8:  DO[75]=OFF ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[45]=ON ;
     11:  DO[46]=ON ;
     12:  !Apagar Posicion Base ;
     13:  DO[15]=OFF ;
     14:  WAIT (M[2])    ;
     15:  F[1]=(ON) ;
     16:  F[2]=(ON) ;
     17:  IF (M[2]),CALL MAKRO342 ;
     18:  CALL MAKRO340    ;
     19:  WAIT (M[31] AND M[33])    ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:  !Fresado en Mantenimiento ;
   8:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[298]=(OFF) ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      5:  WAIT    .10(sec) ;
      6:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      7:  F[78]=(DI[788] AND !F[79]) ;
      8:  GO[2]=(R[197]+5) ;
      9:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  WAIT (M[96])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:  !Pos. de Mantenimiento ;
  10:  !UP112 Mant. G1 ;
  11:  !UP113 Mant. SP1 ;
  12:  !UP201 Cambio Herramienta G1 ;
  13:  !UP202 Cambio Herramienta SP1 ;
  14:  !UP206 TCP Check SP1 ;
  15:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[940]=(OFF) ;
      4:  F[941]=(OFF) ;
      5:  F[942]=(OFF) ;
      6:  F[943]=(OFF) ;
      7:  F[944]=(OFF) ;
      8:  WAIT (((DI[20] OR DI[21]) AND (DI[121] OR DI[132])) OR DI[121] OR (DI[132] OR DI[777] OR DI[801]))    ;
      9:  !Mantenimiento G1 ;
     10:  F[940]=(!DI[20] AND !DI[21] AND DI[121] AND !(DI[132] OR DI[777] OR DI[801])) ;
     11:  !Mantenimiento SP1 ;
     12:  F[941]=(!DI[20] AND !DI[21] AND !DI[121] AND (DI[132] OR DI[777] OR DI[801])) ;
     13:  !Cambio de Herramienta G1 ;
     14:  F[942]=(DI[20] AND !DI[21] AND DI[121] AND !DI[132]) ;
     15:  !Cambio de Herramienta SP1 ;
     16:  F[943]=(DI[20] AND !DI[21] AND !DI[121] AND DI[132]) ;
     17:  !TCP Check SP1 ;
     18:  F[944]=(!DI[20] AND DI[21] AND !DI[121] AND DI[132]) ;
     19:  WAIT (F[940] OR F[941] OR F[942] OR F[943] OR F[944])    ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:  IF (F[940]),CALL UP112 ;
  17:  IF (F[941]),CALL UP113 ;
  18:  IF (F[942]),CALL UP201 ;
  19:  IF (F[943]),CALL UP202 ;
  20:  IF (F[944]),CALL UP206 ;
  21:J P[5] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[15]=ON ;
      3:  DO[14]=ON ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =     0.000 deg
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
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =     0.000 deg
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
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =     0.000 deg
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
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =     0.000 deg
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
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =     0.000 deg
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
