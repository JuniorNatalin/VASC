/PROG  UP206
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TCP Check KL1";
PROG_SIZE	= 4038;
CREATE		= DATE 17-09-03  TIME 04:28:04;
MODIFIED	= DATE 19-07-24  TIME 13:19:34;
FILE_NAME	= UP202;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 7666;
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
   1:  PAYLOAD[1] ;
   2:  UTOOL_NUM=24 ;
   3:  UFRAME_NUM=0 ;
   4:J P[1] 100% CNT0 ACC100 TB   1.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[16]=ON ;
      4:  TIMER[3]=RESET ;
      5:  TIMER[3]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=ON ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[72]=OFF ;
     14:  DO[71]=ON ;
     15:  DO[69]=OFF ;
     16:  DO[68]=ON ;
     17:  DO[67]=OFF ;
     18:  DO[66]=OFF ;
     19:  DO[65]=ON ;
     20:  DO[64]=OFF ;
     21:  DO[63]=OFF ;
     22:  !Lib. de Anticolisiones ;
     23:  DO[41]=ON ;
     24:  DO[42]=ON ;
     25:  DO[43]=ON ;
     26:  DO[44]=ON ;
     27:  !Posicion Base Apagada ;
     28:  DO[15]=OFF ;
     29:  WAIT (!DO[12])    ;
     30:  WAIT (DI[23])    ;
     31:  DO[23]=ON ;
     32:  TC_ONLINE (!DO[12] AND M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   7:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
   8:   ;
   9:  !TCP Check ;
  10:  !X=1530.854 Y=633.575 Z=555.379 ;
  11:  !W=-3.753 P=2.786 R=-90.113 ;
  12:L P[5] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[17]=ON ;
      4:  WAIT (DI[17])    ;
      5:  DO[17]=OFF ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  13:L P[6] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
  16:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[2] AND M[30] AND M[31] AND M[33]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 0, 0',
	X =      .081  mm,	Y =  4055.713  mm,	Z =   683.922  mm,
	W =   179.955 deg,	P =   -87.998 deg,	R =    90.042 deg,
	E1=  2500.003  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =    -5.007  mm,	Y =  4344.628  mm,	Z =   316.648  mm,
	W =  -140.061 deg,	P =    -4.446 deg,	R =   -21.895 deg,
	E1=  2500.004  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   471.210  mm,	Y =  4253.079  mm,	Z =   236.396  mm,
	W =  -148.650 deg,	P =     2.376 deg,	R =   -61.791 deg,
	E1=  2500.004  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, -1',
	X =  1120.095  mm,	Y =  3810.708  mm,	Z =  -343.781  mm,
	W =  -151.437 deg,	P =     4.079 deg,	R =   -98.018 deg,
	E1=  2500.004  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, -1',
	X =  1192.240  mm,	Y =  3808.369  mm,	Z =  -331.267  mm,
	W =  -151.442 deg,	P =     4.074 deg,	R =   -98.018 deg,
	E1=  2500.008  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, -1',
	X =  1120.095  mm,	Y =  3810.708  mm,	Z =  -343.781  mm,
	W =  -151.437 deg,	P =     4.079 deg,	R =   -98.018 deg,
	E1=  2500.004  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =   471.210  mm,	Y =  4253.079  mm,	Z =   236.396  mm,
	W =  -148.650 deg,	P =     2.376 deg,	R =   -61.791 deg,
	E1=  2500.004  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'N U T, 0, 0, 0',
	X =    -5.007  mm,	Y =  4344.628  mm,	Z =   316.648  mm,
	W =  -140.061 deg,	P =    -4.446 deg,	R =   -21.895 deg,
	E1=  2500.004  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 24,		CONFIG : 'F U T, 0, 0, 0',
	X =      .081  mm,	Y =  4055.713  mm,	Z =   683.922  mm,
	W =   179.955 deg,	P =   -87.998 deg,	R =    90.042 deg,
	E1=  2500.003  mm
   GP2:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
