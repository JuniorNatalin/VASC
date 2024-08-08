/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 7656;
CREATE		= DATE 96-03-24  TIME 14:16:58;
MODIFIED	= DATE 23-07-08  TIME 21:34:10;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 14584;
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
   3:  PAYLOAD[3] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
     12:  DO[75]=OFF ;
     13:  DO[74]=OFF ;
     14:  DO[73]=ON ;
     15:  DO[72]=ON ;
     16:  DO[71]=OFF ;
     17:  DO[70]=OFF ;
     18:  DO[69]=OFF ;
     19:  DO[68]=OFF ;
     20:  DO[67]=OFF ;
     21:  !Lib. de Anticolisiones ;
     22:  DO[41]=ON ;
     23:  DO[42]=ON ;
     24:  DO[43]=ON ;
     25:  DO[44]=ON ;
     26:  DO[53]=ON ;
     27:  DO[54]=ON ;
     28:  DO[55]=ON ;
     29:  DO[56]=ON ;
     30:  !Apagar Pos. Base ;
     31:  DO[15]=OFF ;
     32:  !Robot en Trayectoria ;
     33:  DO[16]=ON ;
     34:  !Basculante 1 en Pos. de Reposo ;
     35:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     36:  WAIT (M[96])    ;
     37:  WAIT (DI[23])    ;
     38:  DO[23]=(ON) ;
     39:  !Marcas de Usuario : ;
     40:  !Marca 12 Estado de Garra ;
     41:  !Valvulas 2-4 en V, 1&5 en R ;
     42:  !M[21]=(M[31] AND M[34] AND M[36] ;
     43:  !AND M[38] AND M[39]) ;
     44:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:  !5qa802035b_039_aops0002_L ;
  10:  !Punto de Sol. No. 10073 ;
  11:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10073,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:  !5qa802035b_041_aqps0002_L ;
  18:  !Punto de Sol. No. 10074 ;
  19:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10074,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:  !5qa802035b_041_aqps0003_L ;
  21:  !Punto de Sol. No. 10075 ;
  22:  !Fin de Trabajo 3 ;
  23:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10075,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[21] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -65.616  mm,	RY =  2373.450  mm,	RZ =  1744.160  mm,
	RW =    59.640 deg,	RP =     -.000 deg,	RR =  -120.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   617.537  mm,	RY =  1099.675  mm,	RZ =    -2.719  mm,
	RW =    61.133 deg,	RP =   -24.639 deg,	RR =  -135.536 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -33.881  mm,	RY =  -634.211  mm,	RZ =  -136.560  mm,
	RW =     6.586 deg,	RP =   -69.764 deg,	RR =   -97.460 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -464.640  mm,	RY =  -529.614  mm,	RZ =   424.294  mm,
	RW =  -159.611 deg,	RP =   -86.276 deg,	RR =    32.436 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -464.403  mm,	RY =  -526.914  mm,	RZ =   360.513  mm,
	RW =  -159.611 deg,	RP =   -86.276 deg,	RR =    32.434 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -378.673  mm,	RY =  -469.706  mm,	RZ =   283.642  mm,
	RW =   161.744 deg,	RP =   -82.273 deg,	RR =    71.367 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    21.087  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -407.192  mm,	RY =  -480.755  mm,	RZ =   315.368  mm,
	RW =   161.798 deg,	RP =   -82.264 deg,	RR =    71.310 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    48.986  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -452.305  mm,	RY =  -538.315  mm,	RZ =   356.330  mm,
	RW =   161.798 deg,	RP =   -82.264 deg,	RR =    71.310 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -142.238  mm,	RY =  -813.026  mm,	RZ =   302.822  mm,
	RW =  -154.395 deg,	RP =   -82.264 deg,	RR =    71.311 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    48.986  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -66.666  mm,	RY =  -493.243  mm,	RZ =   356.579  mm,
	RW =  -125.169 deg,	RP =   -82.264 deg,	RR =    71.313 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    81.710  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -99.371  mm,	RY =  -451.810  mm,	RZ =   295.580  mm,
	RW =  -125.170 deg,	RP =   -82.264 deg,	RR =    71.314 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    56.607  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -112.355  mm,	RY =  -445.634  mm,	RZ =   280.054  mm,
	RW =  -125.170 deg,	RP =   -82.266 deg,	RR =    71.316 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.104  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -112.064  mm,	RY =  -426.072  mm,	RZ =   279.491  mm,
	RW =  -125.178 deg,	RP =   -82.264 deg,	RR =    71.322 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -85.548  mm,	RY =  -456.447  mm,	RZ =   312.669  mm,
	RW =  -125.176 deg,	RP =   -82.264 deg,	RR =    71.321 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    62.618  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =    15.476  mm,	RY =  -586.194  mm,	RZ =   364.680  mm,
	RW =  -125.177 deg,	RP =   -82.264 deg,	RR =    71.322 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    62.586  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -64.274  mm,	RY =  -625.214  mm,	RZ =  -425.640  mm,
	RW =  -125.177 deg,	RP =   -82.264 deg,	RR =    71.322 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    62.618  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   179.829  mm,	RY =   682.537  mm,	RZ = -1183.692  mm,
	RW =   106.957 deg,	RP =   -46.567 deg,	RR =  -131.110 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    81.628  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -65.616  mm,	RY =  2373.450  mm,	RZ =  1744.160  mm,
	RW =    59.640 deg,	RP =     -.000 deg,	RR =  -120.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
