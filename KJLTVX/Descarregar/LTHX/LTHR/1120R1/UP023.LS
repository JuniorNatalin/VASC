/PROG  UP023
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 8058;
CREATE		= DATE 23-02-12  TIME 07:53:58;
MODIFIED	= DATE 24-04-11  TIME 03:47:08;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 15394;
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
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=3 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  !Basculante 2 en Pos. de Reposo ;
     21:  IF (!DI[1002] AND DO[12]),CALL MAKRO102 ;
     22:  WAIT (M[103])    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[5] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   9:J P[6] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  10:  !5QA802035_028_AC_PS_0002 ;
  11:  !Schweisspunkt Nr. 11506 ;
  12:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11506,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  13:  !5QA_802_035__028_AC_PS_0005 ;
  14:  !Schweisspunkt Nr. 11508 ;
  15:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11508,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  17:  !5QA802035_028_AC_PS_0004 ;
  18:  !Schweisspunkt Nr. 11507 ;
  19:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11507,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  21:  !5QA802035_028_AC_PS_0003 ;
  22:  !Schweisspunkt Nr. 11509 ;
  23:  !Fin de Trabajo 3 ;
  24:J P[12] 100% CNT0 ACC100 TB    0.00sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11509,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  25:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  26:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  27:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  28:J P[16] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  29:   ;
  30:J P[17] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  31:J P[18] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  32:   ;
  33:   ;
  34:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1773.807  mm,	RY =  1252.018  mm,	RZ =  -501.454  mm,
	RW =   -29.462 deg,	RP =   -33.367 deg,	RR =    23.974 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1400.921  mm,	RY =   508.543  mm,	RZ =   193.753  mm,
	RW =    46.124 deg,	RP =   -36.033 deg,	RR =   -80.789 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   107.946  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   256.248  mm,	RY =   118.518  mm,	RZ =    94.925  mm,
	RW =    43.798 deg,	RP =    47.476 deg,	RR =   178.241 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   260.068  mm,	RY =   369.024  mm,	RZ =    98.476  mm,
	RW =    43.798 deg,	RP =    47.476 deg,	RR =   178.241 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   216.946  mm,	RY =   420.842  mm,	RZ =   104.613  mm,
	RW =    43.798 deg,	RP =    47.476 deg,	RR =   178.241 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   174.370  mm,	RY =   424.719  mm,	RZ =    94.099  mm,
	RW =    45.153 deg,	RP =    48.409 deg,	RR =  -179.738 deg
   GP2:
	UF : 2, UT : 3,	
	J1=    80.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   101.060  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    82.707  mm,	RY =   425.721  mm,	RZ =    84.925  mm,
	RW =    46.801 deg,	RP =    48.901 deg,	RR =  -177.922 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   103.879  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    30.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    87.660  mm,	RY =   404.231  mm,	RZ =    82.711  mm,
	RW =    48.217 deg,	RP =    49.978 deg,	RR =  -176.045 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    30.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    83.099  mm,	RY =   406.131  mm,	RZ =    80.942  mm,
	RW =    48.217 deg,	RP =    49.978 deg,	RR =  -176.045 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    23.800  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    71.727  mm,	RY =   416.710  mm,	RZ =    94.567  mm,
	RW =    48.271 deg,	RP =    49.971 deg,	RR =  -176.049 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    17.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    76.317  mm,	RY =   417.027  mm,	RZ =    89.964  mm,
	RW =    48.271 deg,	RP =    49.971 deg,	RR =  -176.049 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    50.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    69.933  mm,	RY =   430.293  mm,	RZ =    94.237  mm,
	RW =    48.656 deg,	RP =    48.729 deg,	RR =  -174.575 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.400  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    30.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   176.569  mm,	RY =   411.490  mm,	RZ =    94.126  mm,
	RW =    45.153 deg,	RP =    48.409 deg,	RR =  -179.738 deg
   GP2:
	UF : 2, UT : 3,	
	J1=    80.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   101.060  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   216.946  mm,	RY =   420.842  mm,	RZ =   104.613  mm,
	RW =    43.798 deg,	RP =    47.476 deg,	RR =   178.241 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   250.803  mm,	RY =   369.308  mm,	RZ =    88.368  mm,
	RW =    43.798 deg,	RP =    47.476 deg,	RR =   178.241 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   256.248  mm,	RY =   118.518  mm,	RZ =    94.925  mm,
	RW =    43.798 deg,	RP =    47.476 deg,	RR =   178.241 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1940.340  mm,	RY =  1497.580  mm,	RZ =  -176.420  mm,
	RW =    49.175 deg,	RP =   -28.716 deg,	RR =   -62.822 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   106.173  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1355.568  mm,	RY =  2004.639  mm,	RZ =  -604.650  mm,
	RW =    28.374 deg,	RP =   -31.525 deg,	RR =   -28.364 deg
   GP2:
	UF : 2, UT : 3,	
	J1=    99.980  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   104.618  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1122.074  mm,	RY =  1027.235  mm,	RZ =  -933.990  mm,
	RW =   -18.235 deg,	RP =   -25.685 deg,	RR =     1.465 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
/END
