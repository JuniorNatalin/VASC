/PROG  UP004
/ATTR
OWNER		= AUROM;
COMMENT		= "Ext. 1680 Pos. 1";
PROG_SIZE	= 4786;
CREATE		= DATE 17-04-24  TIME 09:53:16;
MODIFIED	= DATE 24-07-03  TIME 09:54:52;
FILE_NAME	= UP006;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 8646;
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
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 77 vs ST1680 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[43]=ON ;
      8:  DO[44]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[80]=ON ;
     11:  DO[78]=OFF ;
     12:  DO[77]=ON ;
     13:  DO[75]=OFF ;
     14:  DO[74]=ON ;
     15:  DO[72]=OFF ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[61] AND !DI[62] AND DI[77] AND M[1])    ;
     21:  DO[77]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
   8:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[77] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
   9:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[77] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  10:  !En Posicion ST1680-1 ;
  11:  !Dejar Pieza en ST1680-1 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[6] 150mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[75]=ON ;
      4:  GO[21]=1 ;
      5:  WAIT (!DI[61] AND DI[62])    ;
      6:  F[2]=(ON) ;
      7:  CALL MAKRO343    ;
      8:  WAIT (M[34])    ;
      9:  F[1]=(ON) ;
     10:  CALL MAKRO342    ;
     11:  CALL MAKRO340    ;
     12:  WAIT (M[31])    ;
     13:  CALL MAKRO003    ;
     14:  WAIT (DI[77])    ;
     15:  DO[75]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[7] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[2])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  16:J P[8] 100% CNT100 ACC75 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  17:J P[9] 100% CNT100 ACC75 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[77] AND M[2] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
  18:  !Encender Perfil Lib 77 vs ST1680 ;
  19:J P[10] 100% CNT0 ACC50 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  DO[77]=ON ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -332.978  mm,	Y =  4426.811  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =      .001 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  -332.978  mm,	Y =  2308.572  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =     0.000 deg,	R =   180.000 deg,
	E1=   381.761  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1737.304  mm,	Y =  -214.852  mm,	Z =   310.171  mm,
	W =   -92.297 deg,	P =    29.499 deg,	R =   -87.049 deg,
	E1=   -31.039  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1177.415  mm,	Y = -2724.448  mm,	Z =  -460.217  mm,
	W =   -89.022 deg,	P =    14.618 deg,	R =   -89.503 deg,
	E1=   -67.764  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1179.319  mm,	Y = -2898.467  mm,	Z =  -505.830  mm,
	W =   -89.182 deg,	P =    14.685 deg,	R =   -89.902 deg,
	E1=   -67.744  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1180.446  mm,	Y = -3001.395  mm,	Z =  -532.808  mm,
	W =   -89.276 deg,	P =    14.724 deg,	R =   -90.139 deg,
	E1=   -67.731  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1174.746  mm,	Y = -2824.840  mm,	Z =  -488.711  mm,
	W =   -88.458 deg,	P =    14.512 deg,	R =   -89.509 deg,
	E1=   -67.734  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  1174.178  mm,	Y = -2571.198  mm,	Z =  -419.175  mm,
	W =   -89.136 deg,	P =    14.619 deg,	R =   -89.500 deg,
	E1=   -67.754  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  -332.978  mm,	Y =  2308.572  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =     0.000 deg,	R =  -180.000 deg,
	E1=   381.761  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
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
	X =  -332.978  mm,	Y =  4426.811  mm,	Z =   636.000  mm,
	W =    91.999 deg,	P =      .001 deg,	R =  -180.000 deg,
	E1=  2500.000  mm
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
