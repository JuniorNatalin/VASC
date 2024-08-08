/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 10994;
CREATE		= DATE 96-04-05  TIME 17:06:36;
MODIFIED	= DATE 23-07-08  TIME 19:33:26;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 22154;
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
   2:  UTOOL_NUM=4 ;
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
      9:  DO[77]=ON ;
     10:  DO[76]=OFF ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[70]=OFF ;
     17:  DO[69]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[55]=ON ;
     24:  DO[56]=ON ;
     25:  !Apagar Pos. Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  !Basculante 1 en Pos. de Reposo ;
     30:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     31:  WAIT (M[96])    ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:  !5qa802035b_007_gps0002_L ;
   9:  !Punto de Sol. No. 10063 ;
  10:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10063,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:  !5qa802035b_035_akps0002_L ;
  20:  !Punto de Sol. No. 10064 ;
  21:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10064,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:  !5qa802035b_031_afps0001_L ;
  23:  !Punto de Sol. No. 10065 ;
  24:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10065,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  33:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:  !5qa802035b_011_lps0008_L ;
  35:  !Fin de Trabajo 2 ;
  36:  !Punto de Sol. No. 10066 ;
  37:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10066,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-6) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  38:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  39:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  40:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  41:J P[29] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[3] AND M[11] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, -1',
	RX =   463.603  mm,	RY =   -51.118  mm,	RZ = -1165.354  mm,
	RW =   -20.224 deg,	RP =    43.682 deg,	RR =  -175.308 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -128.963  mm,	RY =  -660.479  mm,	RZ =  -549.740  mm,
	RW =     -.578 deg,	RP =    24.897 deg,	RR =   107.124 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -195.685  mm,	RY =  -516.969  mm,	RZ =   135.312  mm,
	RW =    -1.780 deg,	RP =     -.966 deg,	RR =    93.091 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -198.132  mm,	RY =  -505.901  mm,	RZ =   194.954  mm,
	RW =    -1.780 deg,	RP =     -.966 deg,	RR =    93.091 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -201.914  mm,	RY =  -444.537  mm,	RZ =   210.971  mm,
	RW =    -1.781 deg,	RP =     -.969 deg,	RR =    93.091 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    29.518  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -199.796  mm,	RY =  -483.654  mm,	RZ =   210.204  mm,
	RW =    -1.780 deg,	RP =     -.966 deg,	RR =    93.091 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -66.327  mm,	RY =  -503.226  mm,	RZ =   -21.917  mm,
	RW =    -1.780 deg,	RP =     -.966 deg,	RR =    93.091 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =   -15.576  mm,	RY =  -561.563  mm,	RZ =   -48.633  mm,
	RW =    37.124 deg,	RP =    12.809 deg,	RR =   110.237 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =    75.992  mm,	RY =  -478.665  mm,	RZ =   150.421  mm,
	RW =    51.963 deg,	RP =    23.913 deg,	RR =   119.886 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =    77.700  mm,	RY =  -413.949  mm,	RZ =   142.466  mm,
	RW =    62.646 deg,	RP =    27.735 deg,	RR =   117.734 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =    43.899  mm,	RY =  -408.992  mm,	RZ =   124.246  mm,
	RW =    72.858 deg,	RP =    30.083 deg,	RR =   139.793 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =    33.061  mm,	RY =  -419.431  mm,	RZ =   106.882  mm,
	RW =    82.428 deg,	RP =    42.353 deg,	RR =   160.357 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =    35.084  mm,	RY =  -440.231  mm,	RZ =   105.335  mm,
	RW =    94.024 deg,	RP =    51.391 deg,	RR =   177.369 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =    43.782  mm,	RY =  -443.323  mm,	RZ =    99.934  mm,
	RW =    92.426 deg,	RP =    53.467 deg,	RR =   175.428 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    23.900  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =    46.938  mm,	RY =  -408.475  mm,	RZ =    94.706  mm,
	RW =    94.021 deg,	RP =    51.392 deg,	RR =   177.365 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    35.224  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =    35.084  mm,	RY =  -440.232  mm,	RZ =   105.335  mm,
	RW =    94.024 deg,	RP =    51.391 deg,	RR =   177.369 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =    30.153  mm,	RY =  -418.997  mm,	RZ =   110.047  mm,
	RW =    82.428 deg,	RP =    42.353 deg,	RR =   160.357 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =    47.322  mm,	RY =  -412.812  mm,	RZ =   129.840  mm,
	RW =    72.858 deg,	RP =    30.083 deg,	RR =   139.793 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =    71.942  mm,	RY =  -415.745  mm,	RZ =   154.850  mm,
	RW =    62.645 deg,	RP =    27.735 deg,	RR =   117.734 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =    67.656  mm,	RY =  -479.029  mm,	RZ =   159.078  mm,
	RW =    51.963 deg,	RP =    23.913 deg,	RR =   119.886 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, 0',
	RX =   -18.611  mm,	RY =  -597.148  mm,	RZ =    25.054  mm,
	RW =    51.963 deg,	RP =    23.913 deg,	RR =   119.886 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =   -14.678  mm,	RY =  -700.888  mm,	RZ =   127.054  mm,
	RW =    63.765 deg,	RP =    80.704 deg,	RR =   146.343 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =  -109.644  mm,	RY =  -552.969  mm,	RZ =   153.414  mm,
	RW =    63.766 deg,	RP =    80.704 deg,	RR =   146.344 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =   -96.059  mm,	RY =  -452.767  mm,	RZ =   160.653  mm,
	RW =    63.766 deg,	RP =    80.703 deg,	RR =   146.344 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =   -97.518  mm,	RY =  -443.354  mm,	RZ =   156.978  mm,
	RW =    73.857 deg,	RP =    76.021 deg,	RR =   156.649 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    22.100  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =   -96.059  mm,	RY =  -452.767  mm,	RZ =   160.653  mm,
	RW =    63.766 deg,	RP =    80.703 deg,	RR =   146.344 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =  -130.810  mm,	RY =  -670.157  mm,	RZ =   109.186  mm,
	RW =    63.766 deg,	RP =    80.704 deg,	RR =   146.343 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 1, -1',
	RX =  -143.904  mm,	RY = -1336.437  mm,	RZ =   321.036  mm,
	RW =   101.739 deg,	RP =    56.045 deg,	RR =  -150.792 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   115.428  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, -1',
	RX =   463.603  mm,	RY =   -51.118  mm,	RZ = -1165.354  mm,
	RW =   -20.224 deg,	RP =    43.682 deg,	RR =  -175.308 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
/END
