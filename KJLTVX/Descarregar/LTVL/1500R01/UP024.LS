/PROG  UP024
/ATTR
OWNER		= GME;
COMMENT		= "Tomar ST1510-4";
PROG_SIZE	= 5458;
CREATE		= DATE 16-11-09  TIME 02:29:56;
MODIFIED	= DATE 23-07-08  TIME 23:36:42;
FILE_NAME	= UP024;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 9766;
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
   4:  !Apagar Perfil Lib 80 vs ST1510-1 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=OFF ;
      9:  DO[78]=ON ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[75]=ON ;
     13:  DO[74]=OFF ;
     14:  DO[73]=OFF ;
     15:  DO[72]=OFF ;
     16:  DO[71]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[55]=ON ;
     23:  DO[56]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  !Retraer Pernos ;
     29:  F[3]=(ON) ;
     30:  CALL MAKRO343    ;
     31:  WAIT (M[36])    ;
     32:  WAIT (!DI[63] AND DI[64] AND DI[80])    ;
     33:  DO[80]=OFF ;
     34:  WAIT (DI[23])    ;
     35:  DO[23]=ON ;
     36:  !Marcas de Usuario : ;
     37:  !Marca 2 Estado de Garra ;
     38:  !Valula 3 en V, 1,2,4&5 en R ;
     39:  !M[11] = M[31] AND M[33] ;
     40:  !AND M[36] AND M[37] AND M[39] ;
     41:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[2] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (!DI[63] AND DI[64] AND DI[80] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1510-4 ;
  11:  !Tomar Pieza 1 de ST1510-4 ;
  12:  !Fin de Trabajo 1 ;
  13:L P[6] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (M[3])    ;
      4:  F[3]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[35])    ;
      8:  F[4]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[38])    ;
     11:  DO[79]=ON ;
     12:  CALL MAKRO001    ;
     13:  WAIT (DI[79])    ;
     14:  DO[79]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  !Marca 3 Estado de Garra ;
     18:  !Valula 4 en V, 1,2,3,5 en R ;
     19:  !M[12] = M[31] AND M[33] ;
     20:  !AND M[35] AND M[38] AND M[39] ;
     21:  TC_ONLINE (DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:L P[7] 500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[63] AND !DI[64])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[79] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encend. Perf. Lib 80 vs ST1510-4 ;
  19:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[80]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =   528.171  mm,	Y =   -53.836  mm,	Z =  2806.257  mm,
	W =   -61.311 deg,	P =    -3.669 deg,	R =   -29.191 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  1573.196  mm,	Y =    55.477  mm,	Z =   699.641  mm,
	W =   168.756 deg,	P =    53.854 deg,	R =  -122.063 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  1861.872  mm,	Y = -1420.929  mm,	Z =    10.945  mm,
	W =   128.236 deg,	P =    78.704 deg,	R =   170.559 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2633.460  mm,	Y = -1934.476  mm,	Z =  -108.287  mm,
	W =    80.282 deg,	P =    80.807 deg,	R =   106.830 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2633.459  mm,	Y = -1934.476  mm,	Z =  -334.779  mm,
	W =    80.282 deg,	P =    80.807 deg,	R =   106.830 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2633.477  mm,	Y = -1934.470  mm,	Z =  -374.769  mm,
	W =    80.273 deg,	P =    80.808 deg,	R =   106.822 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.600  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2633.459  mm,	Y = -1934.476  mm,	Z =  -334.779  mm,
	W =    80.282 deg,	P =    80.807 deg,	R =   106.830 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  2633.460  mm,	Y = -1934.476  mm,	Z =  -108.287  mm,
	W =    80.282 deg,	P =    80.807 deg,	R =   106.830 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.400  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  1861.872  mm,	Y = -1420.929  mm,	Z =    10.945  mm,
	W =   128.236 deg,	P =    78.704 deg,	R =   170.559 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =  1573.196  mm,	Y =    55.477  mm,	Z =   699.641  mm,
	W =   168.756 deg,	P =    53.854 deg,	R =  -122.063 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, -1, 0',
	X =   528.171  mm,	Y =   -53.836  mm,	Z =  2806.257  mm,
	W =   -61.311 deg,	P =    -3.669 deg,	R =   -29.191 deg
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
