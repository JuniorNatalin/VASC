/PROG  UP027
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Int. 1680 Pos. 2";
PROG_SIZE	= 4392;
CREATE		= DATE 23-07-11  TIME 01:06:00;
MODIFIED	= DATE 24-03-17  TIME 19:58:04;
FILE_NAME	= UP007;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 7892;
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
   4:  !Apagar Perfil Lib. 77 vs ST1680 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[72]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (!DI[61] AND DI[62] AND DI[76] AND M[2])    ;
     21:  DO[77]=OFF ;
     22:  WAIT (DI[23])    ;
     23:  DO[23]=ON ;
     24:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   8:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[2]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[34])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[76] AND M[30] AND M[31] AND M[34]) ;
       ------ ;
   9:  !En Posicion ST1680-2 ;
  10:  !Tomar Pieza en ST1680-2 ;
  11:  !Fin de Trabajo 3 ;
  12:L P[5] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[75]=ON ;
      4:  WAIT (M[1])    ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO342    ;
      7:  CALL MAKRO340    ;
      8:  WAIT (M[33])    ;
      9:  F[1]=(ON) ;
     10:  CALL MAKRO343    ;
     11:  WAIT (M[32])    ;
     12:  CALL MAKRO003    ;
     13:  GO[21]=2 ;
     14:  WAIT (DI[76])    ;
     15:  DO[75]=OFF ;
     16:  WAIT (DI[23])    ;
     17:  DO[23]=ON ;
     18:  TC_ONLINE (DI[76] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  13:  PAYLOAD[2] ;
  14:L P[6] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[61] AND !DI[62])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  15:J P[7] 100% CNT100 ACC75 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  16:J P[8] 100% CNT100 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[33]) ;
       ------ ;
  17:  !Encender Perfil Lib 77 vs ST1680 ;
  18:J P[9] 100% CNT0 ACC50 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  DO[77]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33]) ;
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
	X =  1153.407  mm,	Y = -2787.117  mm,	Z =  -479.839  mm,
	W =   -90.121 deg,	P =    14.541 deg,	R =   -89.705 deg,
	E1=   -67.748  mm
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
	X =  1154.520  mm,	Y = -3003.158  mm,	Z =  -535.879  mm,
	W =   -90.121 deg,	P =    14.541 deg,	R =   -89.705 deg,
	E1=   -67.748  mm
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
	X =  1155.786  mm,	Y = -2716.474  mm,	Z =  -461.517  mm,
	W =   -90.120 deg,	P =    14.539 deg,	R =   -89.705 deg,
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1151.371  mm,	Y = -2537.180  mm,	Z =  -414.609  mm,
	W =   -89.264 deg,	P =    14.494 deg,	R =   -88.422 deg,
	E1=   -69.637  mm
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
P[9]{
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
