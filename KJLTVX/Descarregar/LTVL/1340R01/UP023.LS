/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Tomar en ST1330";
PROG_SIZE	= 6368;
CREATE		= DATE 96-04-05  TIME 13:33:52;
MODIFIED	= DATE 23-08-17  TIME 11:26:28;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 11376;
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
   2:  UTOOL_NUM=2 ;
   3:  PAYLOAD[2] ;
   4:  !Apagar Perfil Lib. 77 vs ST1330 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[76]=OFF ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[55]=ON ;
     24:  DO[56]=ON ;
     25:  !Apagar Pos. Base ;
     26:  DO[15]=OFF ;
     27:  !Retraer Pernos ;
     28:  F[2]=(ON) ;
     29:  F[4]=(ON) ;
     30:  CALL MAKRO343    ;
     31:  WAIT (M[34] AND M[38])    ;
     32:  !Robot en Trayectoria ;
     33:  DO[16]=ON ;
     34:  WAIT (!DI[61] AND DI[62] AND !DI[63] AND DI[64] AND DI[77] AND M[12])    ;
     35:  DO[77]=OFF ;
     36:  WAIT (DI[23])    ;
     37:  DO[23]=ON ;
     38:  TC_ONLINE (!DI[61] AND DI[62] AND !DI[63] AND DI[64] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC85 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND !DI[63] AND DI[64] AND DI[77] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:  !En Posicion ST1330 ;
   8:  !Tomar Pieza 1 de ST1330 ;
   9:  !Fin de Trabajo 3 ;
  10:L P[3] 1000mm/sec CNT0 ACC70 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[5])    ;
      4:  F[4]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[37])    ;
      8:  F[5]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[40])    ;
     11:  DO[76]=ON ;
     12:  CALL MAKRO003    ;
     13:  WAIT (DI[76])    ;
     14:  DO[76]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (!DI[61] AND DI[62] AND DI[76] AND M[5] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:L P[4] 2000mm/sec CNT0 ACC85 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[63] AND !DI[64])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=(ON) ;
      6:  TC_ONLINE (!DI[61] AND DI[62] AND DI[63] AND !DI[64] AND DI[76] AND M[5] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:  UTOOL_NUM=3 ;
  13:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[63] AND !DI[64] AND DI[76] AND M[5] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[6] 100% CNT100 ACC85 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[63] AND !DI[64] AND DI[76] AND M[5] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[7] 100% CNT100 ACC70 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[63] AND !DI[64] AND DI[76] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:   ;
  17:   ;
  18:J P[8] 100% CNT0 ACC70 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[63] AND !DI[64] AND DI[76] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:   ;
  20:  !En Posicion ST1330 ;
  21:  !Tomar Pieza 2 de ST1330 ;
  22:  !Fin de Trabajo 4 ;
  23:L P[9] 1000mm/sec CNT0 ACC50 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  F[3]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[36])    ;
     11:  DO[75]=ON ;
     12:  CALL MAKRO004    ;
     13:  WAIT (DI[75])    ;
     14:  DO[75]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (DI[63] AND !DI[64] AND DI[75] AND M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:   ;
  25:   ;
  26:L P[10] 2000mm/sec CNT0 ACC70 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[61] AND !DI[62])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[61] AND !DI[62] AND DI[63] AND !DI[64] AND DI[75] AND M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[11] 100% CNT100 ACC85 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[63] AND !DI[64] AND DI[75] AND M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[63] AND !DI[64] AND DI[75] AND M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:  !Encender Perfil Lib 77 vs ST1330 ;
  30:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[77]=ON ;
      4:  TIMER[5]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[14] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	X =   922.002  mm,	Y =   572.013  mm,	Z =  1031.131  mm,
	W =   122.768 deg,	P =    42.735 deg,	R =    19.899 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 1, -1',
	X =  2024.533  mm,	Y = -1857.955  mm,	Z =  -158.912  mm,
	W =      .335 deg,	P =     -.314 deg,	R =   -42.899 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 1, -1',
	X =  1931.101  mm,	Y = -1952.853  mm,	Z =  -161.475  mm,
	W =      .332 deg,	P =     -.306 deg,	R =   -42.900 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.001  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		CONFIG : 'F U T, 0, 1, -1',
	X =  1934.748  mm,	Y = -1950.287  mm,	Z =   -64.101  mm,
	W =      .335 deg,	P =     -.314 deg,	R =   -42.899 deg
   GP2:
	UF : 0, UT : 2,	
	J1=    98.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, -1',
	X =  1087.156  mm,	Y = -1611.210  mm,	Z =   902.489  mm,
	W =    -4.025 deg,	P =    -7.000 deg,	R =  -122.616 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, 0',
	X =  1463.177  mm,	Y = -2079.405  mm,	Z =   182.998  mm,
	W =   176.134 deg,	P =     7.604 deg,	R =   -29.929 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, 0',
	X =  1555.210  mm,	Y = -2065.153  mm,	Z =  -154.072  mm,
	W =   176.134 deg,	P =     7.604 deg,	R =   -29.929 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, 0',
	X =  1694.085  mm,	Y = -1989.866  mm,	Z =  -154.925  mm,
	W =   176.021 deg,	P =     7.348 deg,	R =   -29.921 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.628  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, 0',
	X =  1739.705  mm,	Y = -1962.659  mm,	Z =  -168.325  mm,
	W =   176.067 deg,	P =     7.448 deg,	R =   -29.716 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    98.700  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, 0',
	X =  1738.842  mm,	Y = -1959.370  mm,	Z =  -123.633  mm,
	W =   176.134 deg,	P =     7.605 deg,	R =   -29.929 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, 0',
	X =  1713.404  mm,	Y = -1985.769  mm,	Z =    10.287  mm,
	W =   176.134 deg,	P =     7.605 deg,	R =   -29.929 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 1, 0',
	X =  1645.756  mm,	Y = -1687.258  mm,	Z =   195.257  mm,
	W =   175.975 deg,	P =     7.000 deg,	R =   -30.186 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'F U T, 0, 0, -1',
	X =   926.442  mm,	Y =   312.152  mm,	Z =   963.970  mm,
	W =  -139.944 deg,	P =    66.362 deg,	R =   135.111 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
/END
