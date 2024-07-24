/PROG  UP723
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldadura Est. 2";
PROG_SIZE	= 8726;
CREATE		= DATE 23-12-11  TIME 11:39:38;
MODIFIED	= DATE 23-12-11  TIME 11:52:44;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 16898;
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
   2:  UTOOL_NUM=2 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[16]=ON ;
      4:  TIMER[5]=RESET ;
      5:  TIMER[5]=START ;
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
     27:  !Basculante 2 en Pos. de Reposo ;
     28:  IF (!DI[1002] AND DO[12]),CALL MAKRO102 ;
     29:  WAIT (M[103])    ;
     30:  WAIT (DI[23])    ;
     31:  DO[23]=ON ;
     32:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  10:   ;
  11:  !5qa802035b_009_jps0002_L ;
  12:  !Punto de Sol. No. 10028 ;
  13:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10028,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  16:  !5qa802035b_009_jps0005_L ;
  17:  !Punto de Sol. No. 10029 ;
  18:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10029,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  19:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  20:  !5qa802035b_009_jps0003_L ;
  21:  !Punto de Sol. No. 10030 ;
  22:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10030,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  23:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  27:  !5qa802035b_011_lps0001_L ;
  28:  !Punto de Sol. No. 10031 ;
  29:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=10031,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  30:  !Fin de Trabajo 3 ;
  31:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  32:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  33:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  34:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -60.593  mm,	RY =   468.698  mm,	RZ = -1746.029  mm,
	RW =   -80.250 deg,	RP =      .438 deg,	RR =  -170.060 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1348.385  mm,	RY = -1105.106  mm,	RZ =   140.424  mm,
	RW =      .337 deg,	RP =   -37.810 deg,	RR =   145.078 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -260.840  mm,	RY = -1073.356  mm,	RZ =  -732.705  mm,
	RW =     1.372 deg,	RP =    67.955 deg,	RR =   106.816 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -386.249  mm,	RY =  -587.381  mm,	RZ =   198.560  mm,
	RW =    14.144 deg,	RP =    87.895 deg,	RR =   119.679 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -395.747  mm,	RY =  -549.184  mm,	RZ =   195.934  mm,
	RW =    16.130 deg,	RP =    87.813 deg,	RR =   121.756 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -411.511  mm,	RY =  -486.324  mm,	RZ =   178.851  mm,
	RW =    17.568 deg,	RP =    87.627 deg,	RR =   125.764 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -439.078  mm,	RY =  -492.855  mm,	RZ =   162.985  mm,
	RW =    10.141 deg,	RP =    87.884 deg,	RR =   120.607 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    99.100  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    14.500  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -373.822  mm,	RY =  -470.323  mm,	RZ =   164.241  mm,
	RW =    13.874 deg,	RP =    87.874 deg,	RR =   119.407 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    15.300  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -354.489  mm,	RY =  -473.544  mm,	RZ =   166.751  mm,
	RW =     4.322 deg,	RP =    85.917 deg,	RR =    99.346 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    15.300  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -354.140  mm,	RY =  -472.155  mm,	RZ =   160.953  mm,
	RW =     4.324 deg,	RP =    85.917 deg,	RR =    99.348 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    15.500  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -322.168  mm,	RY =  -476.211  mm,	RZ =   166.742  mm,
	RW =     4.344 deg,	RP =    85.911 deg,	RR =    99.366 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    15.600  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -292.922  mm,	RY =  -473.365  mm,	RZ =   159.504  mm,
	RW =    11.408 deg,	RP =    85.849 deg,	RR =   106.437 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    97.800  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    15.900  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -295.162  mm,	RY =  -489.641  mm,	RZ =   183.121  mm,
	RW =     4.323 deg,	RP =    85.917 deg,	RR =    99.347 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    60.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -238.887  mm,	RY =  -518.728  mm,	RZ =   171.363  mm,
	RW =    35.635 deg,	RP =    84.663 deg,	RR =   126.323 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    60.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -183.641  mm,	RY =  -517.318  mm,	RZ =   170.959  mm,
	RW =    55.886 deg,	RP =    83.623 deg,	RR =   146.190 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    60.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -114.501  mm,	RY =  -466.334  mm,	RZ =   162.779  mm,
	RW =    72.075 deg,	RP =    81.578 deg,	RR =   161.892 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    60.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -113.727  mm,	RY =  -472.874  mm,	RZ =   154.632  mm,
	RW =    83.492 deg,	RP =    81.937 deg,	RR =   173.428 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    17.500  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -114.501  mm,	RY =  -466.334  mm,	RZ =   162.779  mm,
	RW =    72.075 deg,	RP =    81.578 deg,	RR =   161.892 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    60.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -117.901  mm,	RY =  -965.846  mm,	RZ =   140.272  mm,
	RW =    72.075 deg,	RP =    81.578 deg,	RR =   161.892 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    60.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -205.461  mm,	RY =  -482.389  mm,	RZ =  -567.117  mm,
	RW =     5.759 deg,	RP =    33.763 deg,	RR =    99.640 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    60.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -60.593  mm,	RY =   468.698  mm,	RZ = -1746.029  mm,
	RW =   -80.250 deg,	RP =      .438 deg,	RR =  -170.060 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
/END
