/PROG  FOLGE124
/ATTR
OWNER		= AUROM;
COMMENT		= "Mantenimiento";
PROG_SIZE	= 3374;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 21-03-29  TIME 13:27:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 5526;
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
    :  UTOOL_NUM=1 ;
    :  UFRAME_NUM=0 ;
    :  PAYLOAD[1] ;
    :   ;
    :J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]=ON),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
    :  !Fresado antes de Mant. ;
    :J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  DO[80]=ON ;
      6:  DO[79]=ON ;
      7:  !Lib. de Anticolisiones ;
      8:  DO[41]=ON ;
      9:  DO[42]=ON ;
     10:  DO[43]=ON ;
     11:  DO[44]=ON ;
     12:  !Apagar Posicion Base ;
     13:  DO[15]=OFF ;
     14:  F[298]=(OFF) ;
     15:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     16:  WAIT    .10(sec) ;
     17:  F[79]=((DI[786] AND !DI[788]) OR F[298] OR (!DI[786] AND !DI[788] AND DO[11]) OR (!DI[788] AND DI[130])) ;
     18:  F[78]=(DI[788] AND !F[79]) ;
     19:  GO[2]=(R[197]+0) ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :  LBL[1] ;
    :  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
    :  IF (F[298]),JMP LBL[1] ;
    :  !Pos. de Mantenimiento ;
    :  !UP112 Mant. SP1 ;
    :  !UP201 Cambio Herramienta SP1 ;
    :  !UP206 TCP Check ;
    :J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[940]=(OFF) ;
      4:  F[941]=(OFF) ;
      5:  F[942]=(OFF) ;
      6:  WAIT (DI[20] OR DI[21] OR (DI[132] OR DI[777] OR DI[801]))    ;
      7:  !Mant. SP1 ;
      8:  F[940]=(!DI[20] AND !DI[21] AND (DI[132] OR DI[777] OR DI[801])) ;
      9:  !Cambio Herramienta SP1 ;
     10:  F[941]=(DI[20] AND !DI[21]) ;
     11:  !TCP Check ;
     12:  F[942]=(!DI[20] AND DI[21]) ;
     13:  WAIT (F[940] OR F[941] OR F[942])    ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :  IF (F[940]),CALL UP112 ;
    :  IF (F[941]),CALL UP201 ;
    :  IF (F[942]),CALL UP206 ;
    :  !Fresado despues de Mant. ;
    :J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[298]=(OFF) ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      5:  WAIT    .10(sec) ;
      6:  F[79]=((DI[786] AND !DI[788]) OR F[298] OR (!DI[786] AND !DI[788] AND DO[11]) OR (!DI[788] AND DI[130])) ;
      7:  F[78]=(DI[788] AND !F[79]) ;
      8:  GO[2]=(R[197]+0) ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
    :  LBL[2] ;
    :  IF (F[78] OR F[79] OR F[298]),CALL UP101 ;
    :  IF (F[298]),JMP LBL[2] ;
    :J P[5] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[15]=ON ;
      3:  DO[14]=ON ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
	X =  1607.403  mm,	Y =  -801.499  mm,	Z =   725.794  mm,
	W =   176.848 deg,	P =   -29.910 deg,	R =   -22.694 deg
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
