/PROG  UP101
/ATTR
OWNER		= AUROM;
COMMENT		= "Fresado";
PROG_SIZE	= 4916;
CREATE		= DATE 17-07-18  TIME 18:36:56;
MODIFIED	= DATE 22-01-24  TIME 08:37:36;
FILE_NAME	= UP101;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 9200;
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
   3:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  !Ap. Med. Ant/Dsp. Fresar ;
     19:  DO[756]=OFF ;
     20:  DO[757]=OFF ;
     21:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
     22:  WAIT    .10(sec) ;
     23:  !Fresado Normal ;
     24:  F[79]=((DI[786] AND !DI[788]) OR F[298] OR (!DI[786] AND !DI[788] AND DO[11]) OR (!DI[788] AND DI[130])) ;
     25:  !Fresado Inicial ;
     26:  F[78]=(DI[788] AND !F[79]) ;
     27:  WAIT (DI[23])    ;
     28:  DO[23]=ON ;
     29:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   4:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   5:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   6:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   7:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
   8:  !Posicion de Fresado ;
   9:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      4:  !Sel. de Pistola ;
      5:  F[64]=(ON) ;
      6:  F[65]=(OFF) ;
      7:  F[66]=(OFF) ;
      8:  F[67]=(OFF) ;
      9:  DO[130]=ON ;
     10:  GO[2]=(R[197]+11) ;
     11:  IF (F[78] OR F[79]),CALL MAKRO082 ;
     12:  DO[130]=OFF ;
     13:  WAIT (DI[23])    ;
     14:  DO[23]=ON ;
     15:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  10:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  11:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  12:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  13:  !Inic. de Med. ;
  14:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[715]=ON ;
      3:  DO[757]=ON ;
      4:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
  15:  !Fin de Med. ;
  16:  !Posicion Base ;
  17:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	X =   904.753  mm,	Y =  -817.855  mm,	Z =   163.311  mm,
	W =  -171.536 deg,	P =    37.337 deg,	R =     -.393 deg
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
	X =  1611.133  mm,	Y =  -834.509  mm,	Z =  -229.377  mm,
	W =   177.614 deg,	P =    -3.785 deg,	R =      .167 deg
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
	X =  1598.894  mm,	Y =  -848.822  mm,	Z =  -573.567  mm,
	W =   177.614 deg,	P =    -3.785 deg,	R =      .167 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.000  mm
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
	X =  1639.816  mm,	Y =  -849.900  mm,	Z =  -569.672  mm,
	W =   177.574 deg,	P =    -2.567 deg,	R =     1.139 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.400  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.642  mm,	Y =  -847.379  mm,	Z =  -581.565  mm,
	W =   177.795 deg,	P =     6.148 deg,	R =     1.306 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.400  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1639.816  mm,	Y =  -849.900  mm,	Z =  -569.672  mm,
	W =   177.574 deg,	P =    -2.567 deg,	R =     1.139 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.400  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1616.813  mm,	Y =  -848.769  mm,	Z =  -572.382  mm,
	W =   177.614 deg,	P =    -3.785 deg,	R =      .167 deg
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
	X =  1611.133  mm,	Y =  -834.509  mm,	Z =  -229.377  mm,
	W =   177.614 deg,	P =    -3.785 deg,	R =      .167 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   979.237  mm,	Y =  -926.442  mm,	Z =   173.501  mm,
	W =   170.442 deg,	P =    21.229 deg,	R =   -17.088 deg
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
P[11]{
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
