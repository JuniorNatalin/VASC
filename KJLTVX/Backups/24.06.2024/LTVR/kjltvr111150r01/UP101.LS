/PROG  UP101
/ATTR
OWNER		= rgast01;
COMMENT		= "Fresado";
PROG_SIZE	= 3854;
CREATE		= DATE 96-06-02  TIME 16:08:02;
MODIFIED	= DATE 17-05-23  TIME 07:00:40;
FILE_NAME	= UP101;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 6622;
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
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     12:  !Apagar Pos. Base ;
     13:  DO[15]=OFF ;
     14:  !Robot en Trayectoria ;
     15:  DO[16]=ON ;
     16:  !Ap. Med. Ant/Dsp. Fresar ;
     17:  DO[756]=OFF ;
     18:  DO[757]=OFF ;
     19:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     20:  WAIT    .10(sec) ;
     21:  !Fresado Normal ;
     22:  F[79]=((DI[786] AND !DI[788]) OR F[298] OR (!DI[786] AND !DI[788] AND DO[11]) OR (!DI[788] AND DI[130])) ;
     23:  !Fresado Inicial ;
     24:  F[78]=(DI[788] AND !F[79]) ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   6:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   7:  !Posicion de Fresado ;
   8:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      4:  !Sel. de Pistola ;
      5:  F[64]=(ON) ;
      6:  F[65]=(OFF) ;
      7:  F[66]=(OFF) ;
      8:  F[67]=(OFF) ;
      9:  DO[130]=ON ;
     10:  GO[2]=(R[197]+5) ;
     11:  IF (F[78] OR F[79]),CALL MAKRO082 ;
     12:  DO[130]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   9:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  10:  !Inic. de Med. ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[715]=ON ;
      3:  DO[757]=ON ;
      4:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  12:  !Fin de Med. ;
  13:  !Pos. Base ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL MAKRO083    ;
      4:  IF (F[78] AND !F[79] AND F[335]),CALL MAKRO087 ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=41, , ,S-Punkt=41, ,EIN/AUS=F[78]) ;
      6:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=51, , ,S-Punkt=51, ,EIN/AUS=F[79]) ;
      7:  IF (!F[85] AND !F[86]),CALL MAKRO080 ;
      8:  WAIT (!F[298] OR (DI[777] AND F[298]) OR DI[26] OR (F[298] AND F[749]))    ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1030.054  mm,	Y =  1361.085  mm,	Z =   723.779  mm,
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
	X = -1069.261  mm,	Y =  1285.665  mm,	Z =  -225.423  mm,
	W =   155.191 deg,	P =    10.073 deg,	R =  -164.851 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   211.999  mm
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
	X =  -926.250  mm,	Y =  1405.173  mm,	Z =  -782.452  mm,
	W =   162.405 deg,	P =    -1.550 deg,	R =  -177.286 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   211.999  mm
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
	X = -1038.609  mm,	Y =  1400.119  mm,	Z =  -788.856  mm,
	W =   159.939 deg,	P =     -.541 deg,	R =  -177.654 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   211.999  mm
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
	X =  -926.250  mm,	Y =  1405.173  mm,	Z =  -782.452  mm,
	W =   162.405 deg,	P =    -1.550 deg,	R =  -177.286 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   211.999  mm
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
	X = -1069.261  mm,	Y =  1285.665  mm,	Z =  -225.423  mm,
	W =   155.191 deg,	P =    10.073 deg,	R =  -164.851 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   211.999  mm
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
	X = -1030.054  mm,	Y =  1361.085  mm,	Z =   723.779  mm,
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
