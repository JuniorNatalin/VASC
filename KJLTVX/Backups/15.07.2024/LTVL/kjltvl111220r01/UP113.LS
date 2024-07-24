/PROG  UP113
/ATTR
OWNER		= AUROM;
COMMENT		= "Mant. SP1";
PROG_SIZE	= 2762;
CREATE		= DATE 17-07-04  TIME 12:28:44;
MODIFIED	= DATE 17-07-04  TIME 12:28:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 4150;
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
      9:  DO[74]=ON ;
     10:  DO[73]=ON ;
     11:  DO[72]=OFF ;
     12:  DO[71]=OFF ;
     13:  DO[69]=OFF ;
     14:  !Lib. de Anticolisiones ;
     15:  DO[41]=ON ;
     16:  DO[42]=ON ;
     17:  DO[43]=ON ;
     18:  DO[44]=ON ;
     19:  DO[45]=ON ;
     20:  DO[46]=ON ;
     21:  !Apagar Pos. Base ;
     22:  DO[15]=OFF ;
     23:  !Robot en Trayectoria ;
     24:  DO[16]=ON ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
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
     31:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
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
      8:  GO[2]=(R[197]+0) ;
      9:  IF (F[78] OR F[79]),CALL MAKRO085 ;
     10:  IF (F[78] OR F[79]),CALL MAKRO084 ;
     11:  WAIT (M[96])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[37] AND M[39] AND M[41] AND M[95] AND M[96]) ;
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
/END
