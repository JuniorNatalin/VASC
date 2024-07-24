/PROG  UP002
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est. 1";
PROG_SIZE	= 12232;
CREATE		= DATE 96-06-10  TIME 22:52:36;
MODIFIED	= DATE 24-02-20  TIME 17:08:06;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 23672;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000001 00000000;
/APPL
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=2 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[16]=ON ;
      4:  TIMER[4]=RESET ;
      5:  TIMER[4]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[79]=ON ;
     10:  DO[78]=OFF ;
     11:  DO[77]=OFF ;
     12:  DO[76]=ON ;
     13:  DO[74]=OFF ;
     14:  !Lib. de Anticolisiones ;
     15:  DO[41]=ON ;
     16:  DO[42]=ON ;
     17:  DO[43]=ON ;
     18:  DO[44]=ON ;
     19:  DO[45]=ON ;
     20:  DO[46]=ON ;
     21:  DO[47]=ON ;
     22:  DO[48]=ON ;
     23:  !Apagar Pos. Base ;
     24:  DO[15]=OFF ;
     25:  !Robot en Trayectoria ;
     26:  DO[16]=ON ;
     27:  !Basculante 1 en Pos. de Reposo ;
     28:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     29:  WAIT (M[96])    ;
     30:  WAIT (DI[23])    ;
     31:  DO[23]=ON ;
     32:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:  !5QA802035_001_A_PS_0002 ;
  10:  !Punto de Sol. No. 5538 ;
  11:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5538,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  12:  !5QA802035_001_A_PS_0003 ;
  13:  !Punto de Sol. No. 5537 ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5537,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  17:  !5QA802035_027_AB_PS_0007 ;
  18:  !Punto de Sol. No. 5536 ;
  19:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5536,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  20:  !5QA802035_027_AB_PS_0001 ;
  21:  !Punto de Sol. No. 5535 ;
  22:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5535,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  26:  !5QA802035_027_AB_PS_0003 ;
  27:  !Punto de Sol. No. 5539 ;
  28:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5539,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  32:  !5QA802035_027_AB_PS_0004 ;
  33:  !Punto de Sol. No. 5534 ;
  34:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5534,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  38:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  39:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  40:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  41:  !5QA802035_001_A_PS_0006 ;
  42:  !Punto de Sol. No. 5540 ;
  43:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5540,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  44:  !Fin de Trabajo 2 ;
  45:J P[27] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  46:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  47:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1095.849  mm,	RY =  -844.470  mm,	RZ = -1400.287  mm,
	RW =   131.617 deg,	RP =     7.190 deg,	RR =   145.319 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -549.845  mm,	RY =   281.090  mm,	RZ =   874.152  mm,
	RW =  -138.865 deg,	RP =      .541 deg,	RR =   120.929 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   576.177  mm,	RY =  -441.951  mm,	RZ =   587.293  mm,
	RW =  -122.247 deg,	RP =     4.427 deg,	RR =    93.102 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   297.772  mm,	RY =  -478.023  mm,	RZ =   264.562  mm,
	RW =  -126.765 deg,	RP =     2.715 deg,	RR =   100.664 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   196.108  mm,	RY =  -390.410  mm,	RZ =   156.217  mm,
	RW =  -135.619 deg,	RP =     6.644 deg,	RR =    98.032 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   143.902  mm,	RY =  -372.282  mm,	RZ =   114.947  mm,
	RW =  -138.004 deg,	RP =     7.636 deg,	RR =    97.436 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.800  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.200  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   144.169  mm,	RY =  -370.756  mm,	RZ =   135.289  mm,
	RW =  -136.378 deg,	RP =     9.456 deg,	RR =    96.260 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   148.168  mm,	RY =  -379.291  mm,	RZ =   118.419  mm,
	RW =  -134.807 deg,	RP =     7.465 deg,	RR =    98.644 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   109.847  mm,	RY =  -391.317  mm,	RZ =   123.935  mm,
	RW =  -124.367 deg,	RP =     4.839 deg,	RR =   102.974 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    82.496  mm,	RY =  -382.954  mm,	RZ =   143.891  mm,
	RW =  -123.354 deg,	RP =     5.112 deg,	RR =   103.001 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.100  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   100.359  mm,	RY =  -379.326  mm,	RZ =   142.127  mm,
	RW =  -121.257 deg,	RP =     4.105 deg,	RR =   102.743 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.300  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.500  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    88.450  mm,	RY =  -391.593  mm,	RZ =   113.480  mm,
	RW =  -124.601 deg,	RP =     3.210 deg,	RR =   102.819 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    88.201  mm,	RY =  -392.241  mm,	RZ =   103.427  mm,
	RW =  -128.521 deg,	RP =     3.495 deg,	RR =   101.896 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    96.060  mm,	RY =  -388.155  mm,	RZ =    99.847  mm,
	RW =  -132.564 deg,	RP =     3.722 deg,	RR =   100.926 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    77.701  mm,	RY =  -386.623  mm,	RZ =   103.485  mm,
	RW =  -134.284 deg,	RP =     3.773 deg,	RR =   100.523 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.900  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.200  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    96.733  mm,	RY =  -390.713  mm,	RZ =   101.670  mm,
	RW =  -131.945 deg,	RP =     3.449 deg,	RR =   100.946 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    88.904  mm,	RY =  -392.067  mm,	RZ =   103.402  mm,
	RW =  -128.585 deg,	RP =     2.919 deg,	RR =   101.549 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 2,	
	J1=    34.132 deg,	J2=    59.566 deg,	J3=    -6.087 deg,
	J4=   -79.057 deg,	J5=   -73.900 deg,	J6=   185.156 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    52.923  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 2,	
	J1=    34.188 deg,	J2=    63.839 deg,	J3=    -2.468 deg,
	J4=   -76.654 deg,	J5=   -76.798 deg,	J6=   180.560 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.300  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    88.208  mm,	RY =  -387.735  mm,	RZ =   108.433  mm,
	RW =  -125.600 deg,	RP =     2.201 deg,	RR =   102.176 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    52.923  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    99.910  mm,	RY =  -389.251  mm,	RZ =    98.906  mm,
	RW =  -129.791 deg,	RP =     3.640 deg,	RR =   101.102 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   108.846  mm,	RY =  -387.777  mm,	RZ =    92.840  mm,
	RW =  -133.219 deg,	RP =     4.443 deg,	RR =   100.322 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   123.375  mm,	RY =  -386.072  mm,	RZ =    84.586  mm,
	RW =  -136.771 deg,	RP =     5.220 deg,	RR =    99.471 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   128.579  mm,	RY =  -385.310  mm,	RZ =    82.943  mm,
	RW =  -140.008 deg,	RP =     5.885 deg,	RR =    98.621 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   136.361  mm,	RY =  -385.943  mm,	RZ =    75.432  mm,
	RW =  -144.379 deg,	RP =     6.690 deg,	RR =    97.493 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   133.363  mm,	RY =  -378.912  mm,	RZ =    77.057  mm,
	RW =  -147.055 deg,	RP =     5.047 deg,	RR =    97.203 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.900  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.447  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   169.874  mm,	RY =  -382.521  mm,	RZ =   112.888  mm,
	RW =  -148.469 deg,	RP =     7.450 deg,	RR =    96.414 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   246.941  mm,	RY =  -374.673  mm,	RZ =   352.334  mm,
	RW =  -148.469 deg,	RP =     7.450 deg,	RR =    96.414 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    36.546  mm,	RY =  -201.114  mm,	RZ =   442.414  mm,
	RW =  -148.469 deg,	RP =     7.450 deg,	RR =    96.414 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1095.849  mm,	RY =  -844.470  mm,	RZ = -1400.287  mm,
	RW =   131.617 deg,	RP =     7.190 deg,	RR =   145.319 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
