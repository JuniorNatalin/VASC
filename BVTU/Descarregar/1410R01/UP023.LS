/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Deposito ST1420";
PROG_SIZE	= 6452;
CREATE		= DATE 16-09-23  TIME 02:16:42;
MODIFIED	= DATE 23-07-09  TIME 14:47:08;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 11364;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
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
   3:  PAYLOAD[2] ;
   4:  !Esperar Lib. de Deposito ST1420 ;
   5:  !Apagar Perfil Libre vs ST1420 ;
   6:  !Encender Anticol. 1 vs R1430R01 ;
   7:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=OFF ;
     10:  DO[76]=ON ;
     11:  DO[74]=OFF ;
     12:  !Lib. de Anticolisiones ;
     13:  DO[41]=ON ;
     14:  DO[42]=ON ;
     15:  DO[43]=ON ;
     16:  DO[44]=ON ;
     17:  DO[45]=ON ;
     18:  DO[46]=ON ;
     19:  !Apagar Pos. Base ;
     20:  DO[15]=OFF ;
     21:  !Robot en Trayectoria ;
     22:  DO[16]=ON ;
     23:  WAIT (M[1] AND M[32] AND M[33] AND DI[76] AND !DI[62] AND DI[61])    ;
     24:  DO[76]=OFF ;
     25:  !Anticol. EIN ;
     26:  DO[81]=ON ;
     27:  CALL MAKRO020    ;
     28:  WAIT (DI[23])    ;
     29:  DO[23]=ON ;
     30:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  11:  //J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:L P[7] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[74]=ON ;
      4:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      5:  F[1]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[31])    ;
      9:  F[2]=(ON) ;
     10:  CALL MAKRO343    ;
     11:  WAIT (M[34])    ;
     12:  DO[74]=ON ;
     13:  CALL MAKRO003    ;
     14:  WAIT (DI[75])    ;
     15:  DO[74]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  14:  !En Posicion de Deposito ST1420 ;
  15:  !Fin de Trabajo 3 ;
  16:  !Deposito en ST1420 ;
  17:  //L P[8] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[74]=ON ;
      4:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      5:  F[1]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[31])    ;
      9:  F[2]=(ON) ;
     10:  CALL MAKRO343    ;
     11:  WAIT (M[34])    ;
     12:  DO[74]=ON ;
     13:  CALL MAKRO003    ;
     14:  WAIT (DI[75])    ;
     15:  DO[74]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:  PAYLOAD[1] ;
  19:L P[9] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[2] AND !DI[61] AND DI[62])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  23:  !Encender Perfil Libre ST1420 ;
  24:  !Apagar Anticol. 1 vs R1430R01 ;
  25:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[76]=ON ;
      5:  TIMER[5]=STOP ;
      6:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1438.854  mm,	Y =   998.871  mm,	Z =  1219.125  mm,
	W =   167.118 deg,	P =    -6.718 deg,	R =    87.118 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  -609.880  mm,	Y =  1477.228  mm,	Z =  1606.586  mm,
	W =  -115.093 deg,	P =     7.358 deg,	R =    94.837 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  -606.149  mm,	Y =  1437.565  mm,	Z =   767.981  mm,
	W =  -115.259 deg,	P =    50.237 deg,	R =    94.686 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  -672.840  mm,	Y =  2202.504  mm,	Z =   -92.897  mm,
	W =  -117.683 deg,	P =    85.381 deg,	R =    92.278 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
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
	X =  -676.417  mm,	Y =  2237.088  mm,	Z =  -263.544  mm,
	W =  -144.857 deg,	P =    89.677 deg,	R =    65.080 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.800  mm
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
	X =  -674.880  mm,	Y =  2239.375  mm,	Z =  -275.195  mm,
	W =  -145.300 deg,	P =    89.677 deg,	R =    64.975 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.900  mm
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
	X =  -674.691  mm,	Y =  2239.772  mm,	Z =  -353.913  mm,
	W =  -145.274 deg,	P =    89.677 deg,	R =    65.001 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.900  mm
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
	X =  -680.686  mm,	Y =  2236.927  mm,	Z =  -358.232  mm,
	W =  -144.843 deg,	P =    89.677 deg,	R =    65.095 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.800  mm
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
	X =  -676.295  mm,	Y =  2237.346  mm,	Z =  -313.993  mm,
	W =  -144.803 deg,	P =    89.677 deg,	R =    65.135 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -672.840  mm,	Y =  2202.504  mm,	Z =   -92.897  mm,
	W =  -117.683 deg,	P =    85.381 deg,	R =    92.278 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -606.149  mm,	Y =  1437.565  mm,	Z =   767.981  mm,
	W =  -115.259 deg,	P =    50.237 deg,	R =    94.686 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -609.880  mm,	Y =  1477.228  mm,	Z =  1606.586  mm,
	W =  -115.093 deg,	P =     7.358 deg,	R =    94.837 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1438.854  mm,	Y =   998.871  mm,	Z =  1219.125  mm,
	W =   167.118 deg,	P =    -6.718 deg,	R =    87.118 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
