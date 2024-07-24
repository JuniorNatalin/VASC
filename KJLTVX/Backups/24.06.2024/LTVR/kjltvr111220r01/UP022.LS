/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 9426;
CREATE		= DATE 03-01-27  TIME 13:48:10;
MODIFIED	= DATE 23-12-10  TIME 16:44:12;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 17902;
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
   2:  UTOOL_NUM=5 ;
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
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[72]=OFF ;
     14:  DO[71]=OFF ;
     15:  DO[69]=OFF ;
     16:  !Lib. de Anticolisiones ;
     17:  DO[41]=ON ;
     18:  DO[42]=ON ;
     19:  DO[43]=ON ;
     20:  DO[44]=ON ;
     21:  DO[45]=ON ;
     22:  DO[46]=ON ;
     23:  !Apagar Pos. Base ;
     24:  DO[15]=OFF ;
     25:  !Robot en Trayectoria ;
     26:  DO[16]=ON ;
     27:  !Basculante 1 en Pos. de Reposo ;
     28:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     29:  WAIT (M[96])    ;
     30:  WAIT (M[3] AND M[95] AND M[96] AND M[11])    ;
     31:  WAIT (DI[23])    ;
     32:  DO[23]=ON ;
     33:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
   9:   ;
  10:  !Punto de Sol. No. 5712 ;
  11:  !5qa802035b_024_yps0002_R ;
  12:J P[6] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11536,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-4) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  14:   ;
  15:  !Punto de Sol. No. 5713 ;
  16:  !5qa802035b_024_yps0001_R ;
  17:J P[8] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11537,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  20:   ;
  21:  !Punto de Sol. No. 5714 ;
  22:  !5qa802035b_024_yps0003_R ;
  23:J P[11] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11538,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  25:   ;
  26:  !Punto de Sol. No. 5716 ;
  27:  !5qa802035b_036_alps0003_R ;
  28:J P[13] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11539,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  30:   ;
  31:  !Punto de Sol. No. 5715 ;
  32:  !Fin de Trabajo 2 ;
  33:  !5qa802035b_066_brps0010_R ;
  34:J P[15] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11540,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[17] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  37:   ;
  38:  !Punto de Sol. No. 5715 ;
  39:  !Fin de Trabajo 2 ;
  40:  !5qa802035b_066_brps0002_R ;
  41:J P[18] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11541,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  42:   ;
  43:J P[19] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  44:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  45:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  46:J P[22] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -93.496  mm,	RY =  2782.087  mm,	RZ =   565.485  mm,
	RW =    50.278 deg,	RP =    -8.287 deg,	RR =    47.483 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -197.293  mm,	RY =  2231.437  mm,	RZ =  -261.807  mm,
	RW =    26.156 deg,	RP =    -7.592 deg,	RR =    65.239 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -22.144  mm,	RY =   384.985  mm,	RZ =   -59.428  mm,
	RW =    -1.286 deg,	RP =    17.183 deg,	RR =    73.473 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -12.487  mm,	RY =   391.353  mm,	RZ =   183.518  mm,
	RW =      .002 deg,	RP =     -.008 deg,	RR =    72.272 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =    -7.910  mm,	RY =   405.644  mm,	RZ =   183.529  mm,
	RW =      .001 deg,	RP =     -.008 deg,	RR =    72.272 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =    -7.103  mm,	RY =   414.670  mm,	RZ =   184.781  mm,
	RW =      .001 deg,	RP =     -.012 deg,	RR =    72.396 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    38.600  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -15.322  mm,	RY =   402.884  mm,	RZ =   186.271  mm,
	RW =     2.955 deg,	RP =    -1.182 deg,	RR =    71.927 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    43.466  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -31.253  mm,	RY =   418.971  mm,	RZ =   191.974  mm,
	RW =      .502 deg,	RP =     -.238 deg,	RR =    71.515 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    22.594  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -39.500  mm,	RY =   408.000  mm,	RZ =   193.311  mm,
	RW =     8.379 deg,	RP =     -.601 deg,	RR =    71.416 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -93.496  mm,	RY =   430.096  mm,	RZ =   247.613  mm,
	RW =     6.024 deg,	RP =      .814 deg,	RR =    73.787 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -86.245  mm,	RY =   435.717  mm,	RZ =   242.470  mm,
	RW =     6.024 deg,	RP =      .814 deg,	RR =    73.787 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -90.384  mm,	RY =   433.066  mm,	RZ =   208.171  mm,
	RW =     6.026 deg,	RP =     -.338 deg,	RR =    73.359 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    60.687  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -92.605  mm,	RY =   434.319  mm,	RZ =   182.019  mm,
	RW =     5.953 deg,	RP =     -.004 deg,	RR =    72.284 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    30.492  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -152.317  mm,	RY =   443.837  mm,	RZ =   192.890  mm,
	RW =     5.993 deg,	RP =     -.713 deg,	RR =    76.880 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    41.200  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -167.291  mm,	RY =   455.917  mm,	RZ =   186.596  mm,
	RW =     5.877 deg,	RP =     -.000 deg,	RR =    83.611 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    26.200  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -170.022  mm,	RY =   436.642  mm,	RZ =   186.499  mm,
	RW =      .015 deg,	RP =     -.131 deg,	RR =    83.243 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -115.978  mm,	RY =   422.748  mm,	RZ =   218.963  mm,
	RW =     1.474 deg,	RP =     -.295 deg,	RR =    74.930 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -115.629  mm,	RY =   443.346  mm,	RZ =   245.787  mm,
	RW =     1.477 deg,	RP =     -.272 deg,	RR =    74.016 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    25.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -115.978  mm,	RY =   422.748  mm,	RZ =   218.963  mm,
	RW =     1.474 deg,	RP =     -.295 deg,	RR =    74.930 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -144.774  mm,	RY =   477.025  mm,	RZ =    24.877  mm,
	RW =      .446 deg,	RP =     4.134 deg,	RR =    82.822 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -197.293  mm,	RY =  2231.437  mm,	RZ =  -261.807  mm,
	RW =    26.156 deg,	RP =    -7.592 deg,	RR =    65.239 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -93.496  mm,	RY =  2782.087  mm,	RZ =   565.485  mm,
	RW =    50.278 deg,	RP =    -8.287 deg,	RR =    47.483 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
/END
