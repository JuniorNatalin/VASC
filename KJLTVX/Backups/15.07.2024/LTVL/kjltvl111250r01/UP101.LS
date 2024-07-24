/PROG  UP101
/ATTR
OWNER		= AUROM;
COMMENT		= "Fresado";
PROG_SIZE	= 4426;
CREATE		= DATE 96-04-04  TIME 09:20:30;
MODIFIED	= DATE 21-10-16  TIME 10:33:38;
FILE_NAME	= UP101;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 7938;
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
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   7:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   8:  !Pos. de Fresado ;
   9:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
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
  10:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  11:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  12:  !Inic. de Med. ;
  13:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[715]=ON ;
      3:  DO[757]=ON ;
      4:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  14:  !Fin de Med. ;
  15:  !Pos. Base ;
  16:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	X =   345.089  mm,	Y =   322.829  mm,	Z =   947.589  mm,
	W =  -172.162 deg,	P =   -29.438 deg,	R =    24.277 deg
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
	X =   888.483  mm,	Y =   868.158  mm,	Z =    18.077  mm,
	W =  -130.377 deg,	P =   -75.159 deg,	R =    49.690 deg
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
	X =   854.353  mm,	Y =  1217.226  mm,	Z =  -517.255  mm,
	W =  -112.410 deg,	P =   -87.746 deg,	R =    42.611 deg
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
	X =   817.917  mm,	Y =  1313.679  mm,	Z =  -505.136  mm,
	W =  -109.479 deg,	P =   -89.334 deg,	R =    40.111 deg
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
	X =   816.842  mm,	Y =  1311.719  mm,	Z =  -465.390  mm,
	W =  -156.378 deg,	P =   -88.656 deg,	R =    87.038 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    30.500  mm
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
	X =   817.917  mm,	Y =  1313.679  mm,	Z =  -505.136  mm,
	W =  -109.479 deg,	P =   -89.334 deg,	R =    40.111 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   854.353  mm,	Y =  1217.226  mm,	Z =  -517.255  mm,
	W =  -112.410 deg,	P =   -87.746 deg,	R =    42.611 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   888.483  mm,	Y =   868.158  mm,	Z =    18.077  mm,
	W =  -130.377 deg,	P =   -75.159 deg,	R =    49.690 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   345.090  mm,	Y =   322.830  mm,	Z =   947.588  mm,
	W =  -172.162 deg,	P =   -29.438 deg,	R =    24.277 deg
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
