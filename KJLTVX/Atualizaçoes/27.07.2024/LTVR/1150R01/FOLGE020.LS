/PROG  FOLGE020
/ATTR
OWNER		= GME;
COMMENT		= "VW336";
PROG_SIZE	= 3522;
CREATE		= DATE 03-01-27  TIME 14:16:36;
MODIFIED	= DATE 23-06-29  TIME 01:39:58;
FILE_NAME	= FOLGE020;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 6022;
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
   5:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[1]=RESET ;
      4:  TIMER[1]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[79]=ON ;
      8:  DO[80]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[41]=ON ;
     11:  DO[42]=ON ;
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  !Apagar Posicion Base ;
     15:  DO[15]=OFF ;
     16:  !Fresado EZ1 ;
     17:  F[298]=(OFF) ;
     18:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
     19:  WAIT    .10(sec) ;
     20:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
     21:  F[78]=(DI[788] AND !F[79]) ;
     22:  GO[2]=(R[197]+0) ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   6:  LBL[1] ;
   7:  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
   8:  IF (F[298]),JMP LBL[1] ;
   9:  UFRAME_NUM=0 ;
  10:  UTOOL_NUM=1 ;
  11:  ! Llamar a UP021 ;
  12:  !Sol. en Geometria ST1150 ;
  13:   ;
  14:  CALL UP021    ;
  15:  UFRAME_NUM=0 ;
  16:  UTOOL_NUM=1 ;
  17:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  18:   ;
  19:  //CALL UP021    ;
  20:  UFRAME_NUM=0 ;
  21:  UTOOL_NUM=1 ;
  22:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Fresado EZ1 ;
      4:  F[298]=(OFF) ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  WAIT    .10(sec) ;
      7:  F[79]=((DI[786] AND !DI[788]) OR (!DI[788] AND DI[130])) ;
      8:  F[78]=(DI[788] AND !F[79]) ;
      9:  GO[2]=(R[197]+0) ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  23:  LBL[2] ;
  24:  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
  25:  IF (F[298]),JMP LBL[2] ;
  26:  !Fin de Trabajo Total ;
  27:J P[5] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO015    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  28:J P[6] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
	X = -1030.054  mm,	Y =  1357.683  mm,	Z =   723.779  mm,
	W =   172.006 deg,	P =    30.544 deg,	R =   -79.872 deg
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
	X = -1030.054  mm,	Y =  1357.683  mm,	Z =   723.779  mm,
	W =   172.006 deg,	P =    30.544 deg,	R =   -79.872 deg
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
	X = -1030.054  mm,	Y =  1357.683  mm,	Z =   723.779  mm,
	W =   172.006 deg,	P =    30.544 deg,	R =   -79.872 deg
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
	X = -1030.054  mm,	Y =  1357.683  mm,	Z =   723.779  mm,
	W =   172.006 deg,	P =    30.544 deg,	R =   -79.872 deg
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
	X = -1030.054  mm,	Y =  1357.683  mm,	Z =   723.779  mm,
	W =   172.006 deg,	P =    30.544 deg,	R =   -79.872 deg
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
	X = -1030.054  mm,	Y =  1357.683  mm,	Z =   723.779  mm,
	W =   172.006 deg,	P =    30.544 deg,	R =   -79.872 deg
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
