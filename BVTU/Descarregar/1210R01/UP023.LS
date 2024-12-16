/PROG  UP023
/ATTR
OWNER		= AUROM;
COMMENT		= "Dep. Banda 1300";
PROG_SIZE	= 6698;
CREATE		= DATE 17-01-22  TIME 02:29:18;
MODIFIED	= DATE 23-12-23  TIME 15:50:20;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 12806;
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
   4:  ! Esperar Lib. Depositar 1300 ;
   5:  ! Apagar Perfil Libre vs 1300 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  ! Lib. de Herramietas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  ! Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  ! Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  ! Robot en Trayecoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[76] AND !DI[62] AND DI[61])    ;
     19:  DO[76]=OFF ;
     20:  WAIT (DI[23])    ;
     21:  DO[23]=ON ;
     22:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[62] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[62] AND DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  13:L P[8] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:L P[9] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  15:L P[10] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:  ! Posicion de Deposito ;
  17:  ! Deposito en Banda 1300 ;
  18:  ! Fin de Trabajo 3 ;
  19:L P[11] 500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[1]=(ON) ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31] AND M[33] AND M[35])    ;
      8:  DO[74]=ON ;
      9:  CALL MAKRO003    ;
     10:  WAIT (DI[75])    ;
     11:  DO[74]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (!DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:  PAYLOAD[1] ;
  21:L P[12] 500mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  25:  ! Encender Perfil Libre vs 1300 ;
  26:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[76]=ON ;
      4:  TIMER[5]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   124.280  mm,	Y =    20.861  mm,	Z =  2168.892  mm,
	W =  -108.055 deg,	P =   -84.588 deg,	R =    68.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   747.433  mm,	Y =   675.435  mm,	Z =  2253.295  mm,
	W =   -77.804 deg,	P =   -36.672 deg,	R =    38.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   959.857  mm,	Y =  1295.557  mm,	Z =  1696.816  mm,
	W =   -86.238 deg,	P =    -5.181 deg,	R =    56.255 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   749.193  mm,	Y =  2090.683  mm,	Z =  1775.700  mm,
	W =   -88.574 deg,	P =     1.288 deg,	R =   101.417 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   896.705  mm,	Y =  2163.492  mm,	Z =  1931.973  mm,
	W =   -89.941 deg,	P =    -2.223 deg,	R =   105.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   922.261  mm,	Y =  2140.327  mm,	Z =  2159.665  mm,
	W =   -90.061 deg,	P =    -4.092 deg,	R =   105.629 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   893.392  mm,	Y =  2177.425  mm,	Z =  2378.394  mm,
	W =   -89.940 deg,	P =    -6.720 deg,	R =   105.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   895.099  mm,	Y =  2171.301  mm,	Z =  2411.233  mm,
	W =   -89.937 deg,	P =   -20.639 deg,	R =   105.214 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   898.113  mm,	Y =  2160.579  mm,	Z =  2497.945  mm,
	W =   -89.937 deg,	P =   -20.639 deg,	R =   105.214 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   908.166  mm,	Y =  2123.535  mm,	Z =  2458.649  mm,
	W =   -89.940 deg,	P =   -10.962 deg,	R =   105.227 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   908.137  mm,	Y =  2123.537  mm,	Z =  2430.343  mm,
	W =   -89.941 deg,	P =    -8.897 deg,	R =   105.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   953.092  mm,	Y =  1958.387  mm,	Z =  2403.551  mm,
	W =   -89.941 deg,	P =    -8.897 deg,	R =   105.228 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =  1036.641  mm,	Y =  1651.671  mm,	Z =  2405.157  mm,
	W =   -89.940 deg,	P =   -12.404 deg,	R =   105.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1043.831  mm,	Y =  1276.624  mm,	Z =  2461.787  mm,
	W =   -83.609 deg,	P =   -13.217 deg,	R =    83.038 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
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
	X =   947.743  mm,	Y =   386.757  mm,	Z =  2640.978  mm,
	W =   -66.129 deg,	P =   -40.655 deg,	R =    22.756 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   124.280  mm,	Y =    20.861  mm,	Z =  2168.892  mm,
	W =  -108.055 deg,	P =   -84.588 deg,	R =    68.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.300  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
