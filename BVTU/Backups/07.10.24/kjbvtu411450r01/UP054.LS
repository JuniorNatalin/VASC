/PROG  UP054
/ATTR
OWNER		= engenhar;
COMMENT		= "Dep. Banda 1100";
PROG_SIZE	= 6814;
CREATE		= DATE 04-05-26  TIME 15:46:54;
MODIFIED	= DATE 24-07-13  TIME 22:36:38;
FILE_NAME	= UP054;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 12930;
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
   1:  PAYLOAD[2] ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:  ! Esperar Lib. Depositar 1100 ;
   5:  ! Apagar Perfil Libre vs 1100 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  ! Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  ! Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  ! Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  ! Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[68] AND !DI[60] AND DI[59] AND M[1] AND M[32] AND M[34] AND M[35])    ;
     21:  DO[68]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[59] AND !DI[60] AND DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:L P[7] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  13:L P[8] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[68] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:  ! Posicion de Deposito ;
  15:  ! Depositar en ST1100 ;
  16:  ! Fin de Trabajo 4 ;
  17:L P[9] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[59] AND DI[60]) OR DI[15])    ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO343    ;
      6:  F[1]=(ON) ;
      7:  F[2]=(ON) ;
      8:  CALL MAKRO342    ;
      9:  CALL MAKRO340    ;
     10:  WAIT (M[31] AND M[33] AND M[36])    ;
     11:  DO[66]=ON ;
     12:  CALL MAKRO004    ;
     13:  WAIT (DI[67])    ;
     14:  DO[66]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  18:  PAYLOAD[1] ;
  19:L P[10] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  20:L P[11] 100mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[59] AND DI[60] AND DI[67] AND M[2] AND M[30] AND M[31] AND M[33] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  25:  !Encender P. L. Banda 1100 ;
  26:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[68]=ON ;
      4:  TIMER[6]=STOP ;
      5:  F[3]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   320.147  mm,	Y =  -139.069  mm,	Z =  2518.700  mm,
	W =   -30.794 deg,	P =   -74.365 deg,	R =   -37.146 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =  -591.898  mm,	Y =   182.560  mm,	Z =  2768.469  mm,
	W =  -105.977 deg,	P =   -59.522 deg,	R =   112.717 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -196.844  mm,	Y =   746.342  mm,	Z =  2339.311  mm,
	W =   -11.447 deg,	P =    -3.534 deg,	R =   162.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   113.703  mm,	Y =  1351.041  mm,	Z =  2702.018  mm,
	W =   -11.447 deg,	P =    -3.534 deg,	R =   162.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.902  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    36.792  mm,	Y =  1343.167  mm,	Z =  2905.958  mm,
	W =     -.231 deg,	P =     -.159 deg,	R =   156.473 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -124.327  mm,	Y =  1406.563  mm,	Z =  2902.675  mm,
	W =      .161 deg,	P =      .188 deg,	R =   156.400 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -173.238  mm,	Y =  1427.931  mm,	Z =  2902.503  mm,
	W =      .161 deg,	P =      .188 deg,	R =   156.400 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -175.030  mm,	Y =  1427.585  mm,	Z =  2888.169  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =   156.329 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -79.874  mm,	Y =  1385.873  mm,	Z =  2888.171  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =   156.329 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.700  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   122.913  mm,	Y =  1305.707  mm,	Z =  2888.100  mm,
	W =     -.233 deg,	P =    -1.414 deg,	R =   156.479 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   216.640  mm,	Y =  1232.505  mm,	Z =  2759.696  mm,
	W =    -2.195 deg,	P =    -5.116 deg,	R =   151.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.800  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -196.844  mm,	Y =   746.342  mm,	Z =  2339.311  mm,
	W =   -11.447 deg,	P =    -3.534 deg,	R =   162.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U B, 0, 0, 0',
	X =  -591.898  mm,	Y =   182.560  mm,	Z =  2768.469  mm,
	W =  -105.977 deg,	P =   -59.522 deg,	R =   112.717 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   320.147  mm,	Y =  -139.069  mm,	Z =  2518.700  mm,
	W =   -30.794 deg,	P =   -74.365 deg,	R =   -37.146 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.228  mm,	Y = -1203.116  mm,	Z =   971.191  mm,
	W =  -126.116 deg,	P =    39.769 deg,	R =   -85.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
