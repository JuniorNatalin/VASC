/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Dejar en ST1420";
PROG_SIZE	= 4210;
CREATE		= DATE 23-07-14  TIME 02:38:28;
MODIFIED	= DATE 23-07-14  TIME 02:38:28;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 7370;
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
   4:  !Apagar Perfil Lib. 77 vs ST1420 ;
   5:  !Encender Anticol. 3 vs 1450R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (DI[61] AND !DI[62] AND DI[77])    ;
     21:  DO[77]=(OFF) ;
     22:  !Encender Anticolisiones ;
     23:  DO[83]=(ON) ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=(ON) ;
     27:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[77] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1420 ;
  11:  !Dejar Pieza en ST1420 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  DO[75]=ON ;
      5:  CALL MAKRO003    ;
      6:  WAIT (DI[76])    ;
      7:  DO[75]=OFF ;
      8:  F[1]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  F[2]=(ON) ;
     11:  CALL MAKRO342    ;
     12:  CALL MAKRO340    ;
     13:  WAIT (M[32] AND M[33])    ;
     14:  WAIT (DI[23])    ;
     15:  DO[23]=ON ;
     16:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:  !Encender Perfil Lib 77 vs ST1420 ;
  18:  !Apagar Anticol. 3 vs 1450R01 ;
  19:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[5]=STOP ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[43]=ON ;
      9:  DO[77]=ON ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=(ON) ;
     12:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1313.892  mm,	Y =   157.171  mm,	Z =  1484.741  mm,
	W =     0.000 deg,	P =    80.000 deg,	R =    -8.000 deg
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
	X =    -3.105  mm,	Y = -1889.508  mm,	Z =  1115.971  mm,
	W =    29.370 deg,	P =    77.970 deg,	R =  -102.803 deg
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
	X = -1422.558  mm,	Y = -1943.190  mm,	Z =   127.576  mm,
	W =   165.754 deg,	P =    89.516 deg,	R =   -29.403 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.955  mm
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
	X = -1420.185  mm,	Y = -1943.611  mm,	Z =   -94.146  mm,
	W =   177.128 deg,	P =    89.530 deg,	R =   -17.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.955  mm
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
	X = -1419.866  mm,	Y = -1943.716  mm,	Z =  -133.288  mm,
	W =   177.129 deg,	P =    89.529 deg,	R =   -17.965 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.955  mm
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
	X = -1420.911  mm,	Y = -1944.103  mm,	Z =   -86.245  mm,
	W =   165.989 deg,	P =    89.516 deg,	R =   -29.167 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.600  mm
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
	X = -1423.729  mm,	Y = -1942.532  mm,	Z =   295.410  mm,
	W =   166.557 deg,	P =    89.516 deg,	R =   -29.162 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.600  mm
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
	X =  1313.892  mm,	Y =   157.171  mm,	Z =  1484.741  mm,
	W =     0.000 deg,	P =    80.000 deg,	R =    -8.000 deg
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
