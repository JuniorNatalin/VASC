/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Dejar en ST1300";
PROG_SIZE	= 4542;
CREATE		= DATE 03-01-27  TIME 09:10:10;
MODIFIED	= DATE 23-06-29  TIME 01:34:18;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 8450;
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
   4:  !Apagar Perfil Lib. 76 vs ST1300 ;
   5:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=OFF ;
     11:  DO[76]=ON ;
     12:  DO[74]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  DO[45]=ON ;
     17:  DO[46]=ON ;
     18:  !Apagar Pos. Base ;
     19:  DO[15]=OFF ;
     20:  !Robot en Trayectoria ;
     21:  DO[16]=ON ;
     22:  WAIT (DI[61] AND !DI[62] AND DI[76] AND M[1])    ;
     23:  DO[76]=OFF ;
     24:  WAIT (DI[23])    ;
     25:  DO[23]=ON ;
     26:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[61] AND !DI[62] AND DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[76] AND M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:  !En Posicion ST1300 ;
  10:  !Dejar Pieza en ST1300 ;
  11:  !Fin de Trabajo 3 ;
  12:L P[5] 1000mm/sec CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT ((!DI[61] AND DI[62]) OR DI[15])    ;
      4:  F[2]=(ON) ;
      5:  CALL MAKRO342    ;
      6:  CALL MAKRO340    ;
      7:  WAIT (M[33])    ;
      8:  DO[74]=ON ;
      9:  CALL MAKRO003    ;
     10:  WAIT (DI[75])    ;
     11:  DO[74]=OFF ;
     12:  WAIT (DI[23])    ;
     13:  DO[23]=ON ;
     14:  TC_ONLINE (!DI[61] AND DI[62] AND DI[75] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:  PAYLOAD[1] ;
  14:L P[6] 2000mm/sec CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (!DI[61] AND DI[62] AND DI[75] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[76]=ON ;
      3:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  18:  !Encender Perfil Lib 76 vs ST1300 ;
  19:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -538.873  mm,	Y =  -938.845  mm,	Z =  1394.457  mm,
	W =   -37.908 deg,	P =     4.556 deg,	R =  -120.101 deg
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
	X =   215.296  mm,	Y =   475.384  mm,	Z =  1426.197  mm,
	W =    48.192 deg,	P =     7.832 deg,	R =    25.695 deg
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
	X =  -967.008  mm,	Y =  1570.670  mm,	Z =   349.688  mm,
	W =    95.579 deg,	P =    78.991 deg,	R =    15.090 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -915.141  mm,	Y =  1598.130  mm,	Z =    45.793  mm,
	W =    99.630 deg,	P =    78.498 deg,	R =    18.838 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -896.593  mm,	Y =  1604.457  mm,	Z =   -50.513  mm,
	W =    99.630 deg,	P =    78.498 deg,	R =    18.838 deg
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -923.927  mm,	Y =  1595.495  mm,	Z =   104.174  mm,
	W =    95.572 deg,	P =    78.991 deg,	R =    15.083 deg
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
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -452.501  mm,	Y =  1114.911  mm,	Z =   784.319  mm,
	W =  -110.090 deg,	P =    79.842 deg,	R =  -168.103 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   215.296  mm,	Y =   475.384  mm,	Z =  1426.197  mm,
	W =    48.192 deg,	P =     7.832 deg,	R =    25.695 deg
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
	X =   467.117  mm,	Y =  -450.104  mm,	Z =  1613.387  mm,
	W =   -25.188 deg,	P =   -16.872 deg,	R =   -19.262 deg
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -538.873  mm,	Y =  -938.845  mm,	Z =  1394.457  mm,
	W =   -37.908 deg,	P =     4.556 deg,	R =  -120.101 deg
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
