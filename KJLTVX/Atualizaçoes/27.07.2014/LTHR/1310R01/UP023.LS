/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1320";
PROG_SIZE	= 4540;
CREATE		= DATE 96-03-26  TIME 21:05:40;
MODIFIED	= DATE 23-07-14  TIME 01:37:58;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 8056;
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
   4:  !Apagar Perfil Lib. 77. vs ST1320 ;
   5:  !Encender Anticol. 5 vs 1370R01 ;
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
     12:  DO[45]=ON ;
     13:  DO[46]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[61] AND !DI[62] AND DI[77])    ;
     19:  DO[77]=(OFF) ;
     20:  !Encender Anticolisiones ;
     21:  DO[85]=(ON) ;
     22:  CALL MAKRO020    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=(ON) ;
     25:  TC_ONLINE (DI[45] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[45] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  F[2]=(ON) ;
      4:  CALL MAKRO343    ;
      5:  WAIT (M[34])    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[45] AND M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[45] AND M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1320 ;
  11:  !Dejar Pieza en ST1320 ;
  12:  !Fin de Trabajo 3 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[1]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[31])    ;
      8:  DO[75]=ON ;
      9:  CALL MAKRO003    ;
     10:  WAIT (DI[76])    ;
     11:  DO[75]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[45] AND !DI[61] AND DI[62] AND DI[76] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[45] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[45] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  17:  !Encender Perfil Lib 77. vs ST132 ;
  18:  !Apagar Anticol. 5 vs 1370R01 ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[45]=ON ;
      3:  DO[77]=ON ;
      4:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[9] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =     0.000 deg
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
	X =   566.914  mm,	Y =  1234.312  mm,	Z =  1435.938  mm,
	W =   -15.577 deg,	P =    54.786 deg,	R =    65.784 deg
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
	X = -2342.279  mm,	Y =   195.858  mm,	Z =    56.376  mm,
	W =   170.833 deg,	P =    88.188 deg,	R =   178.501 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.500  mm
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
	X = -2350.595  mm,	Y =   196.598  mm,	Z =   -78.641  mm,
	W =   170.754 deg,	P =    88.190 deg,	R =   178.513 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.777  mm
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
	X = -2352.210  mm,	Y =   196.639  mm,	Z =  -129.791  mm,
	W =   170.754 deg,	P =    88.190 deg,	R =   178.512 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.300  mm
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
	X = -2346.134  mm,	Y =   196.170  mm,	Z =   -93.797  mm,
	W =   170.952 deg,	P =    88.188 deg,	R =   178.497 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.700  mm
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
	X = -2354.036  mm,	Y =   195.122  mm,	Z =    52.660  mm,
	W =   170.952 deg,	P =    88.188 deg,	R =   178.497 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.700  mm
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
	X =   604.858  mm,	Y =  1688.544  mm,	Z =   882.945  mm,
	W =    77.510 deg,	P =    40.452 deg,	R =    67.308 deg
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
	X =  1129.209  mm,	Y =  -339.733  mm,	Z =  1423.642  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =     0.000 deg
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
