/PROG  UP002
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 7614;
CREATE		= DATE 96-03-24  TIME 10:53:18;
MODIFIED	= DATE 24-07-29  TIME 04:24:18;
FILE_NAME	= R1450R01;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 14062;
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
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  !Fresador en Pos. Base ;
     21:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     22:  WAIT (M[96])    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:  !5qa803296_ps_005_eps0015 ;
   8:  !Punto de Sol. No. 1968 ;
   9:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=1968,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  11:  !5qa803296_ps_005_eps0013 ;
  12:  !Punto de Sol. No. 1967 ;
  13:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=1967,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:  !5qa803296_ps_006_fps0022 ;
  19:  !Punto de Sol. No. 1970 ;
  20:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=1970,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[12] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  22:  !5qa803296_ps_006_fps0020 ;
  23:  !Punto de Sol. No. 1969 ;
  24:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=1969,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  25:  !5qa803296_ps_006_fps0019 ;
  26:  !Punto de Sol. No. 1971 ;
  27:  !Fin de Trabajo 2 ;
  28:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=1971,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   341.681  mm,	RY =  -170.477  mm,	RZ =  -671.251  mm,
	RW =    29.745 deg,	RP =   -14.702 deg,	RR =    72.713 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   810.218  mm,	RY =  -319.330  mm,	RZ =  -184.077  mm,
	RW =   -31.768 deg,	RP =    14.654 deg,	RR =    73.559 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   674.696  mm,	RY =  -267.895  mm,	RZ =     9.447  mm,
	RW =   -35.835 deg,	RP =    20.574 deg,	RR =    82.271 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4:""]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   553.797  mm,	RY =  -139.416  mm,	RZ =    -2.569  mm,
	RW =   -34.245 deg,	RP =    20.681 deg,	RR =    88.959 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    36.200  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   592.247  mm,	RY =  -137.465  mm,	RZ =     4.499  mm,
	RW =   -32.151 deg,	RP =    20.188 deg,	RR =    89.505 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   647.056  mm,	RY =  -143.495  mm,	RZ =    -9.638  mm,
	RW =   -30.378 deg,	RP =    19.717 deg,	RR =    89.320 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   685.062  mm,	RY =  -254.251  mm,	RZ =    31.938  mm,
	RW =   -35.838 deg,	RP =    20.576 deg,	RR =    82.265 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   652.562  mm,	RY =  -316.782  mm,	RZ =  -142.000  mm,
	RW =   -29.619 deg,	RP =    22.634 deg,	RR =    83.039 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   736.093  mm,	RY =   233.087  mm,	RZ =  -153.490  mm,
	RW =   -18.329 deg,	RP =   -24.088 deg,	RR =    82.290 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   592.163  mm,	RY =   156.068  mm,	RZ =   -59.521  mm,
	RW =   -21.841 deg,	RP =   -25.760 deg,	RR =    83.976 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   532.575  mm,	RY =   181.122  mm,	RZ =    -5.612  mm,
	RW =   -23.701 deg,	RP =   -26.812 deg,	RR =    86.025 deg
   GP2:
	UF : 1, UT : 2,	
	J1=     6.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   598.940  mm,	RY =   169.105  mm,	RZ =    -7.365  mm,
	RW =   -24.903 deg,	RP =   -20.120 deg,	RR =    87.328 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.085  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   625.963  mm,	RY =   179.255  mm,	RZ =   -17.411  mm,
	RW =   -24.901 deg,	RP =   -16.791 deg,	RR =    87.322 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    13.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   680.614  mm,	RY =   180.155  mm,	RZ =   -17.677  mm,
	RW =   -26.429 deg,	RP =   -16.217 deg,	RR =    90.881 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   716.758  mm,	RY =   145.791  mm,	RZ =   -15.505  mm,
	RW =   -25.896 deg,	RP =   -10.790 deg,	RR =    87.473 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   799.328  mm,	RY =   152.979  mm,	RZ =  -148.312  mm,
	RW =   -19.644 deg,	RP =   -15.527 deg,	RR =    87.103 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   341.681  mm,	RY =  -170.477  mm,	RZ =  -671.251  mm,
	RW =    29.745 deg,	RP =   -14.702 deg,	RR =    72.713 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
