/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 12864;
CREATE		= DATE 03-01-31  TIME 07:30:46;
MODIFIED	= DATE 23-10-22  TIME 09:31:50;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 56;
MEMORY_SIZE	= 25424;
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
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
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
     18:  DO[68]=OFF ;
     19:  !Lib. de Anticolisiones ;
     20:  DO[41]=ON ;
     21:  DO[42]=ON ;
     22:  DO[43]=ON ;
     23:  DO[44]=ON ;
     24:  DO[45]=ON ;
     25:  DO[46]=ON ;
     26:  !Apagar Pos. Base ;
     27:  DO[15]=OFF ;
     28:  !Robot en Trayectoria ;
     29:  DO[16]=ON ;
     30:  !Basculante 1 en Pos. de Reposo ;
     31:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     32:  WAIT (M[96])    ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=(ON) ;
     35:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  13:   ;
  14:  !Punto de Sol. No. 5752 ;
  15:  !5qa802035b_032_agps0001_R ;
  16:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11575,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[16] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:   ;
  29:  !Punto de Sol. No. 11576 ;
  30:  !5qa802035b_008_hps0007_R ;
  31:J P[22] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11576,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  32:  !Punto de Sol. No. 11579 ;
  33:  !Fin de Trabajo 3 ;
  34:  !5qa802035b_008_hps0006_R ;
  35:J P[23] 100% CNT0 ACC100 TB    0.00sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11579,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[25] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  38:   ;
  32:  !Punto de Sol. No. 11577 ;
  39:  !5qa802035b_062_bpps0008_R ;
  40:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11577,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  41:   ;
  42:J P[27] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  43:   ;
  32:  !Punto de Sol. No. 11578 ;
  44:  !5qa802035b_066_brps0009_R ;
  45:J P[28] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11578,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  46:   ;
  47:  !Punto de Sol. No. 5750 ;
  48:J P[29] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  49:   ;
  32:  !Punto de Sol. No. 11580 ;
  50:  !Fin de Trabajo 3 ;
  51:  !5qa802035b_066_brps0001_R ;
  52:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11580,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  53:   ;
  54:J P[31] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  55:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  56:J P[33] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[20] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    79.406  mm,	RY = -1521.157  mm,	RZ =  1149.591  mm,
	RW =     0.000 deg,	RP =     0.000 deg,	RR =  -165.000 deg
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
	RX =   876.412  mm,	RY =   777.073  mm,	RZ =  -407.384  mm,
	RW =   -73.977 deg,	RP =    38.870 deg,	RR =  -157.234 deg
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   200.928  mm,	RY =   614.301  mm,	RZ =   269.918  mm,
	RW =  -145.399 deg,	RP =    50.728 deg,	RR =   120.145 deg
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   171.922  mm,	RY =   414.884  mm,	RZ =   140.823  mm,
	RW =  -145.399 deg,	RP =    50.728 deg,	RR =   120.145 deg
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
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   159.288  mm,	RY =   428.211  mm,	RZ =    73.334  mm,
	RW =  -131.546 deg,	RP =    61.296 deg,	RR =   136.747 deg
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
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   118.566  mm,	RY =   422.987  mm,	RZ =    73.196  mm,
	RW =  -111.038 deg,	RP =    66.309 deg,	RR =   159.933 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    98.027  mm
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
	RX =    95.371  mm,	RY =   411.548  mm,	RZ =    78.682  mm,
	RW =   -95.429 deg,	RP =    67.406 deg,	RR =   176.722 deg
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
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    59.768  mm,	RY =   412.096  mm,	RZ =   107.949  mm,
	RW =   -66.488 deg,	RP =    56.595 deg,	RR =  -174.924 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    66.849  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    46.007  mm,	RY =   413.940  mm,	RZ =   105.788  mm,
	RW =   -64.123 deg,	RP =    56.595 deg,	RR =  -174.924 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    43.883  mm
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
	RX =    45.155  mm,	RY =   411.789  mm,	RZ =    95.006  mm,
	RW =   -92.145 deg,	RP =    54.985 deg,	RR =  -179.969 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    46.007  mm,	RY =   413.939  mm,	RZ =   105.789  mm,
	RW =   -64.123 deg,	RP =    56.595 deg,	RR =  -174.924 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    43.883  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    59.768  mm,	RY =   412.096  mm,	RZ =   107.949  mm,
	RW =   -66.488 deg,	RP =    56.595 deg,	RR =  -174.924 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    66.849  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    95.371  mm,	RY =   411.548  mm,	RZ =    78.682  mm,
	RW =   -95.429 deg,	RP =    67.406 deg,	RR =   176.722 deg
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
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   123.379  mm,	RY =   421.230  mm,	RZ =    84.875  mm,
	RW =  -111.038 deg,	RP =    66.309 deg,	RR =   159.933 deg
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
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   161.220  mm,	RY =   427.149  mm,	RZ =    78.258  mm,
	RW =  -131.546 deg,	RP =    61.296 deg,	RR =   136.747 deg
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
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   187.555  mm,	RY =   432.846  mm,	RZ =   147.103  mm,
	RW =  -145.399 deg,	RP =    50.728 deg,	RR =   120.145 deg
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
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   200.928  mm,	RY =   614.302  mm,	RZ =   269.917  mm,
	RW =  -145.399 deg,	RP =    50.728 deg,	RR =   120.145 deg
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
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    55.867  mm,	RY =   823.495  mm,	RZ =   206.390  mm,
	RW =   -79.695 deg,	RP =    58.227 deg,	RR =  -170.862 deg
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
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -318.014  mm,	RY =   504.724  mm,	RZ =     3.071  mm,
	RW =    -3.628 deg,	RP =    -3.968 deg,	RR =   -90.188 deg
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
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -310.061  mm,	RY =   510.082  mm,	RZ =   128.234  mm,
	RW =    -3.628 deg,	RP =    -3.968 deg,	RR =   -90.188 deg
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
P[21]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -302.476  mm,	RY =   494.178  mm,	RZ =   250.138  mm,
	RW =    -3.628 deg,	RP =    -3.968 deg,	RR =   -90.188 deg
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
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -299.747  mm,	RY =   447.454  mm,	RZ =   250.401  mm,
	RW =    -3.650 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -341.623  mm,	RY =   447.454  mm,	RZ =   250.401  mm,
	RW =    -3.644 deg,	RP =      .000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    24.300  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -348.971  mm,	RY =   516.157  mm,	RZ =   208.404  mm,
	RW =    -3.628 deg,	RP =    -3.968 deg,	RR =   -90.188 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    90.630  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -263.624  mm,	RY =   482.227  mm,	RZ =   248.532  mm,
	RW =    -3.629 deg,	RP =     -.106 deg,	RR =   -86.008 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    99.638  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -258.263  mm,	RY =   455.259  mm,	RZ =   250.643  mm,
	RW =    -4.027 deg,	RP =     -.253 deg,	RR =   -88.525 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -224.737  mm,	RY =   485.957  mm,	RZ =   221.067  mm,
	RW =    -3.629 deg,	RP =     -.106 deg,	RR =   -92.606 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    99.638  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -217.323  mm,	RY =   463.644  mm,	RZ =   186.916  mm,
	RW =    -3.628 deg,	RP =     -.106 deg,	RR =   -92.606 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -142.053  mm,	RY =   503.047  mm,	RZ =   249.110  mm,
	RW =    -3.519 deg,	RP =     -.108 deg,	RR =  -101.043 deg
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
P[30]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -142.823  mm,	RY =   459.004  mm,	RZ =   249.118  mm,
	RW =    -3.519 deg,	RP =     -.108 deg,	RR =  -101.043 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -142.056  mm,	RY =   479.594  mm,	RZ =   249.110  mm,
	RW =    -3.519 deg,	RP =     -.108 deg,	RR =  -101.043 deg
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
P[32]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -359.855  mm,	RY =   535.028  mm,	RZ =    34.019  mm,
	RW =    -3.628 deg,	RP =    -3.968 deg,	RR =   -90.188 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    90.630  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    79.406  mm,	RY = -1521.157  mm,	RZ =  1149.591  mm,
	RW =     0.000 deg,	RP =     0.000 deg,	RR =  -165.000 deg
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
