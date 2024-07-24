/PROG  UP003
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldadura Est. 2";
PROG_SIZE	= 8710;
CREATE		= DATE 21-02-06  TIME 01:40:16;
MODIFIED	= DATE 24-07-14  TIME 18:40:18;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 16886;
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
   9:J P[6] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  10:  !5QA802035_009_J_PS_0002 ;
  11:  !Punto de Sol. No. 5544 ;
  12:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5544,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  13:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  14:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  15:  !5QA802035_009_J_PS_0005 ;
  16:  !Punto de Sol. No. 5543 ;
  17:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5543,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  18:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  19:  !5QA802035_009_J_PS_0003 ;
  20:  !Punto de Sol. No. 5542 ;
  21:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5542,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  22:J P[13] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  24:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  25:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  26:  !5QA802035_011_L_PS_0001 ;
  27:  !Punto de Sol. No. 5541 ;
  28:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5541,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=R[198] ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  29:  !Fin de Trabajo 3 ;
  30:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  31:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  32:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[102] AND M[103]) ;
       ------ ;
  33:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	RX =  -411.379  mm,	RY =  -484.303  mm,	RZ =   190.652  mm,
	RW =    16.849 deg,	RP =    87.700 deg,	RR =   123.917 deg
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
	RX =  -422.409  mm,	RY =  -477.162  mm,	RZ =   176.300  mm,
	RW =    15.699 deg,	RP =    87.711 deg,	RR =   123.667 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    99.943  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    16.100  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -372.587  mm,	RY =  -471.352  mm,	RZ =   179.427  mm,
	RW =    13.876 deg,	RP =    87.874 deg,	RR =   119.409 deg
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
	RX =  -367.289  mm,	RY =  -472.977  mm,	RZ =   174.796  mm,
	RW =    10.125 deg,	RP =    87.219 deg,	RR =   113.075 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    15.400  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -367.278  mm,	RY =  -473.005  mm,	RZ =   175.411  mm,
	RW =    14.156 deg,	RP =    87.222 deg,	RR =   112.659 deg
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
	RX =  -305.298  mm,	RY =  -472.291  mm,	RZ =   185.764  mm,
	RW =    35.638 deg,	RP =    84.663 deg,	RR =   126.326 deg
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
P[12]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -300.286  mm,	RY =  -467.247  mm,	RZ =   174.432  mm,
	RW =     4.343 deg,	RP =    85.912 deg,	RR =    99.365 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    15.100  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -298.258  mm,	RY =  -473.578  mm,	RZ =   191.025  mm,
	RW =     4.341 deg,	RP =    85.916 deg,	RR =    99.365 deg
   GP2:
	UF : 2, UT : 2,	
	J1=    99.747  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    51.372  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -297.523  mm,	RY =  -520.970  mm,	RZ =   193.239  mm,
	RW =    35.636 deg,	RP =    84.663 deg,	RR =   126.324 deg
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
	RX =  -112.903  mm,	RY =  -466.857  mm,	RZ =   174.134  mm,
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
	RX =  -123.615  mm,	RY =  -471.711  mm,	RZ =   170.341  mm,
	RW =    72.076 deg,	RP =    81.578 deg,	RR =   161.893 deg
   GP2:
	UF : 2, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 2,	
	J1=    17.900  mm
   GP4:
	UF : 2, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -112.903  mm,	RY =  -466.857  mm,	RZ =   174.134  mm,
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
