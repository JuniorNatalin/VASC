/PROG  UP021
/ATTR
OWNER		= AUROM;
COMMENT		= "Tomar ST1420";
PROG_SIZE	= 5264;
CREATE		= DATE 16-07-23  TIME 08:35:54;
MODIFIED	= DATE 23-07-09  TIME 15:03:02;
FILE_NAME	= UP444;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 9492;
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
   3:  PAYLOAD[1] ;
   4:  !Espera Lib. Tomar ST1400 ;
   5:  !Perfil Libre ST1400 ;
   6:  !Anticol. 1 vs R1410R01 EIN ;
   7:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (M[2] AND DI[80] AND DI[64] AND !DI[63])    ;
     21:  DO[80]=OFF ;
     22:  !Solicitar Anticol. ;
     23:  DO[81]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[4] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND !DI[63] AND DI[64] AND DI[80] AND M[30] AND M[31] AND M[33] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:  !En Posicion de Toma ST1420 ;
  13:  !Fin de Trabajo 1 ;
  14:  !Tomar de ST1420 ;
  15:L P[6] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1])    ;
      4:  F[1]=(ON) ;
      5:  F[2]=(ON) ;
      6:  CALL MAKRO343    ;
      7:  WAIT (M[32] AND M[34])    ;
      8:  DO[78]=ON ;
      9:  CALL MAKRO001    ;
     10:  WAIT (DI[79])    ;
     11:  DO[78]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[41] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:  PAYLOAD[2] ;
  17:L P[7] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (M[1] AND DI[63] AND !DI[64])    ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[8] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[63] AND !DI[64] AND DI[79] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  21:  !Encender Perfil Libre ST1420 ;
  22:  !Apagar Anticol. 1 vs R1410R01 ;
  23:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[80]=ON ;
      5:  TIMER[3]=STOP ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1472.939  mm,	Y =  -267.063  mm,	Z =  2166.730  mm,
	W =    83.502 deg,	P =     9.510 deg,	R =     1.229 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -310.476  mm,	Y =  -709.239  mm,	Z =  1637.567  mm,
	W =    83.017 deg,	P =    23.000 deg,	R =   -80.193 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1044.169  mm,	Y = -1370.034  mm,	Z =  1088.620  mm,
	W =    30.617 deg,	P =    57.139 deg,	R =  -111.741 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1165.367  mm,	Y = -1609.629  mm,	Z =   165.122  mm,
	W =   167.499 deg,	P =    89.803 deg,	R =    17.578 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1191.298  mm,	Y = -1625.392  mm,	Z =   -76.704  mm,
	W =   169.330 deg,	P =    89.796 deg,	R =    19.507 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1194.179  mm,	Y = -1622.500  mm,	Z =  -123.504  mm,
	W =   169.997 deg,	P =    89.793 deg,	R =    20.086 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.400  mm
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
	X = -1192.138  mm,	Y = -1626.735  mm,	Z =   -76.708  mm,
	W =   169.336 deg,	P =    89.796 deg,	R =    19.514 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1190.483  mm,	Y = -1624.218  mm,	Z =    86.835  mm,
	W =   167.913 deg,	P =    89.801 deg,	R =    17.993 deg
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
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1044.169  mm,	Y = -1370.034  mm,	Z =  1088.620  mm,
	W =    30.617 deg,	P =    57.139 deg,	R =  -111.741 deg
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
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -310.476  mm,	Y =  -709.239  mm,	Z =  1637.567  mm,
	W =    83.017 deg,	P =    23.000 deg,	R =   -80.193 deg
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
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1472.939  mm,	Y =  -267.063  mm,	Z =  2166.730  mm,
	W =    83.502 deg,	P =     9.510 deg,	R =     1.229 deg
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
