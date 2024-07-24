/PROG  UP004
/ATTR
OWNER		= AUROM;
COMMENT		= "Dejar en ST1640";
PROG_SIZE	= 4430;
CREATE		= DATE 17-04-02  TIME 12:42:40;
MODIFIED	= DATE 24-03-03  TIME 12:01:36;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 7962;
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
   4:  !Apagar Perfil Lib. 77 vs ST1640 ;
   5:  !Encender Anticol. 3 vs 1670R01 ;
   6:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     20:  WAIT (!DI[62] AND DI[61] AND DI[77] AND M[1] AND M[32] AND M[33])    ;
     21:  DO[77]=OFF ;
     22:  !Encender Anticolisiones ;
     23:  DO[83]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[61] AND !DI[62] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[77] AND M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:  !En Posicion ST1640 ;
  11:  !Dejar Pieza en ST1640 ;
  12:  !Fin de Trabajo 4 ;
  13:L P[5] 1500mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((DI[62] AND !DI[61]) OR DI[15])    ;
      4:  DO[75]=ON ;
      5:  CALL MAKRO004    ;
      6:  WAIT (DI[76])    ;
      7:  DO[75]=OFF ;
      8:  F[1]=(ON) ;
      9:  CALL MAKRO342    ;
     10:  CALL MAKRO340    ;
     11:  WAIT (M[31])    ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  14:  PAYLOAD[1] ;
  15:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND !DI[61] AND DI[62] AND DI[76] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 77 vs ST1640 ;
  19:  !Apagar Anticol. 3 vs 1670R01 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[77]=ON ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   317.191  mm,	Y =   894.705  mm,	Z =  2184.773  mm,
	W =     -.000 deg,	P =    15.000 deg,	R =    90.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1563.407  mm,	Y =   741.262  mm,	Z =  1240.437  mm,
	W =     0.000 deg,	P =    55.000 deg,	R =    36.000 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1817.803  mm,	Y =   930.513  mm,	Z =   299.128  mm,
	W =   175.972 deg,	P =    89.997 deg,	R =  -129.172 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2252.655  mm,	Y =  1211.859  mm,	Z =    75.709  mm,
	W =    14.932 deg,	P =    88.830 deg,	R =    70.213 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2252.504  mm,	Y =  1210.518  mm,	Z =  -132.130  mm,
	W =    19.279 deg,	P =    88.932 deg,	R =    74.424 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
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
	X =  2252.505  mm,	Y =  1210.517  mm,	Z =    50.511  mm,
	W =    19.279 deg,	P =    88.932 deg,	R =    74.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1887.976  mm,	Y =  1075.582  mm,	Z =   442.776  mm,
	W =   163.713 deg,	P =    84.036 deg,	R =  -141.290 deg
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
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1563.808  mm,	Y =   740.436  mm,	Z =  1240.777  mm,
	W =     -.107 deg,	P =    55.000 deg,	R =    35.883 deg
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
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   317.191  mm,	Y =   894.705  mm,	Z =  2184.773  mm,
	W =     -.000 deg,	P =    15.000 deg,	R =    90.000 deg
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
