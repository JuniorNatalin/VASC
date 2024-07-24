/PROG  UP024
/ATTR
OWNER		= GME;
COMMENT		= "Tomar 1210-2";
PROG_SIZE	= 4986;
CREATE		= DATE 03-01-27  TIME 08:27:52;
MODIFIED	= DATE 23-12-10  TIME 17:11:32;
FILE_NAME	= UP024;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 9374;
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
   2:  UTOOL_NUM=3 ;
   3:  !Apagar Perf. Lib. 77 vs ST1210-2 ;
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[72]=OFF ;
     14:  DO[71]=OFF ;
     15:  DO[69]=OFF ;
     16:  !Lib. de Anticolisiones ;
     17:  DO[41]=ON ;
     18:  DO[42]=ON ;
     19:  DO[43]=ON ;
     20:  DO[44]=ON ;
     21:  DO[45]=ON ;
     22:  DO[46]=ON ;
     23:  !Apagar Pos. Base ;
     24:  DO[15]=OFF ;
     25:  !Robot en Trayectoria ;
     26:  DO[16]=ON ;
     27:  F[2]=(ON) ;
     28:  CALL MAKRO343    ;
     29:  WAIT (M[34])    ;
     30:  WAIT (!DI[63] AND DI[64] AND DI[77])    ;
     31:  DO[77]=OFF ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[3] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[63] AND DI[64] AND DI[77] AND M[12] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:  !En Posicion ST1210-2 ;
  10:  !Tomar Piezas en ST1210-2 ;
  11:  !Fin de Trabajo 3 ;
  12:L P[6] 1000mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  F[3]=(ON) ;
      9:  CALL MAKRO343    ;
     10:  WAIT (M[36])    ;
     11:  DO[75]=ON ;
     12:  CALL MAKRO003    ;
     13:  WAIT (DI[76])    ;
     14:  DO[75]=OFF ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=ON ;
     17:  TC_ONLINE (DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:  PAYLOAD[3] ;
  14:L P[7] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[63] AND !DI[64] AND DI[76] AND M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perf Lib 77 vs ST1210-2 ;
  19:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[77]=ON ;
      4:  TIMER[5]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[13] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -549.947  mm,	Y =  1084.355  mm,	Z =   982.284  mm,
	W =   149.673 deg,	P =    -1.812 deg,	R =   171.832 deg
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
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =  -740.604  mm,	Y =   372.837  mm,	Z =  1399.765  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =   171.144 deg
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
P[3]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =   762.013  mm,	Y =  -326.861  mm,	Z =  1399.764  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =    -5.351 deg
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
P[4]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2497.932  mm,	Y =  -504.208  mm,	Z =    27.948  mm,
	W =   -16.347 deg,	P =    75.859 deg,	R =   136.196 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2445.823  mm,	Y =  -427.811  mm,	Z =   -77.072  mm,
	W =   -52.300 deg,	P =    74.955 deg,	R =   101.776 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2449.882  mm,	Y =  -326.852  mm,	Z =  -381.896  mm,
	W =   -52.310 deg,	P =    74.965 deg,	R =   101.206 deg
   GP2:
	UF : 0, UT : 3,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2451.190  mm,	Y =  -341.032  mm,	Z =  -335.080  mm,
	W =   -52.298 deg,	P =    74.955 deg,	R =   101.779 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X = -2436.121  mm,	Y =  -413.293  mm,	Z =   -60.469  mm,
	W =   -52.299 deg,	P =    74.955 deg,	R =   101.778 deg
   GP2:
	UF : 0, UT : 3,	
	J1=    99.800  mm
   GP3:
	UF : 0, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =   762.013  mm,	Y =  -326.861  mm,	Z =  1399.764  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =    -5.351 deg
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
P[10]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U B, 0, 0, 0',
	X =  -740.604  mm,	Y =   372.837  mm,	Z =  1399.765  mm,
	W =   105.338 deg,	P =     3.499 deg,	R =   171.144 deg
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
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -549.947  mm,	Y =  1084.355  mm,	Z =   982.284  mm,
	W =   149.673 deg,	P =    -1.812 deg,	R =   171.832 deg
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
