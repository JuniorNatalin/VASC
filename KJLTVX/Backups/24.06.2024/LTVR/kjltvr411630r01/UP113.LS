/PROG  UP113
/ATTR
OWNER		= AUROM;
COMMENT		= "Mant. SP1";
PROG_SIZE	= 2604;
CREATE		= DATE 17-07-04  TIME 11:50:16;
MODIFIED	= DATE 24-01-04  TIME 00:28:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 4020;
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
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[78]=OFF ;
      7:  DO[77]=ON ;
      8:  DO[75]=OFF ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[41]=ON ;
     11:  DO[42]=ON ;
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[23])    ;
     19:  DO[23]=ON ;
     20:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   5:  !Pos. de Mantenimiento ;
   6:J P[2] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[281]=(ON) ;
      4:  F[64]=(ON) ;
      5:  F[65]=(OFF) ;
      6:  F[66]=(OFF) ;
      7:  F[67]=(OFF) ;
      8:  IF (DI[132]),JMP LBL[1] ;
      9:  IF (DO[12]),CALL MAKRO073 ;
     10:  CALL MAKRO089    ;
     11:  DO[17]=ON ;
     12:  WAIT (DI[17])    ;
     13:  DO[17]=OFF ;
     14:  IF (DO[12]),CALL MAKRO072 ;
     15:  LBL[1] ;
     16:  GO[19]=11 ;
     17:  CALL MAKRO089    ;
     18:  DO[17]=ON ;
     19:  WAIT (DI[17])    ;
     20:  IF (DI[132] AND !DI[133] AND !DI[134] AND !DI[135]),CALL MAKRO081 ;
     21:  LBL[2] ;
     22:  WAIT (!F[85] OR DI[26])    ;
     23:  IF (F[85]),CALL MAKRO081 ;
     24:  IF (F[85]),JMP LBL[2] ;
     25:  DO[17]=OFF ;
     26:  GO[19]=0 ;
     27:  F[281]=(OFF) ;
     28:  WAIT (!DI[132] AND !DI[133] AND !DI[134] AND !DI[135])    ;
     29:  WAIT (DI[23])    ;
     30:  DO[23]=ON ;
     31:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
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
      8:  GO[2]=(R[197]+27) ;
      9:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  WAIT (M[96])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   317.190  mm,	Y =   894.706  mm,	Z =  2184.774  mm,
	W =     0.000 deg,	P =    15.000 deg,	R =    90.000 deg
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
	X =   317.190  mm,	Y =   894.706  mm,	Z =  2184.774  mm,
	W =     0.000 deg,	P =    15.000 deg,	R =    90.000 deg
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
	X =   317.190  mm,	Y =   894.706  mm,	Z =  2184.774  mm,
	W =     0.000 deg,	P =    15.000 deg,	R =    90.000 deg
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
