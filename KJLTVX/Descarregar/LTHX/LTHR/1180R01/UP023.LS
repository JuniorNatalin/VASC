/PROG  UP023
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est 2";
PROG_SIZE	= 14052;
CREATE		= DATE 03-01-27  TIME 13:56:08;
MODIFIED	= DATE 24-03-23  TIME 10:44:00;
FILE_NAME	= UP023;
VERSION		= 0;
LINE_COUNT	= 59;
MEMORY_SIZE	= 27188;
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
   2:  UTOOL_NUM=4 ;
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
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[45]=ON ;
     19:  DO[46]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  !Basculante 2 en Pos. de Reposo ;
     25:  IF (!DI[1002] AND DO[12]),CALL MAKRO102 ;
     26:  WAIT (M[103])    ;
     27:  WAIT (DI[23])    ;
     28:  DO[23]=ON ;
     29:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   8:   ;
   9:  !Encender Anticolisiones 1270R01 ;
  10:J P[5] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Encender Anticolisiones ;
      4:  DO[89]=ON ;
      5:  CALL MAKRO020    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103] AND DI[49]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103] AND DI[49]) ;
       ------ ;
  12:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103] AND DI[49]) ;
       ------ ;
  13:   ;
  14:  !Punto de Sol. No. 11532 ;
  15:  !5qa802035b_002_bps0009_R ;
  16:J P[8] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11532,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103] AND DI[49]) ;
       ------ ;
  17:   ;
  18:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103] AND DI[49]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103] AND DI[49]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103] AND DI[49]) ;
       ------ ;
  21:   ;
  22:  !Apagar Anticolisiones 1270R01 ;
  23:J P[12] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Apagar Anticolisiones ;
      2:  DO[49]=ON ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  24:J P[13] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  25:   ;
  26:  !Punto de Sol. No. 11533 ;
  27:  !5qa802035b_066_brps0011_R ;
  28:J P[14] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11533,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  29:   ;
  30:  !Punto de Sol. No. 11534 ;
  31:  !5qa802035b_066_brps0012_R ;
  32:J P[15] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11534,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  33:  !Punto de Sol. No. 5709 ;
  34:   ;
  35:J P[16] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  36:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  37:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  38:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  39:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  40:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  41:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  42:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  43:   ;
  44:  !Punto de Sol. No. 11535 ;
  45:  !Fin de Trabajo 3 ;
  46:  !5qa802035b_036_alps0001_R ;
  47:J P[24] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=11535,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  48:   ;
  49:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  50:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  51:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  52:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  53:J P[29] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  54:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  55:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  56:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  57:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  58:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  59:J P[35] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   172.722  mm,	RY = -1615.912  mm,	RZ =  -927.308  mm,
	RW =   154.724 deg,	RP =    71.404 deg,	RR =   175.445 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -88.562  mm,	RY =  -969.751  mm,	RZ =  -793.794  mm,
	RW =   179.566 deg,	RP =    81.651 deg,	RR =  -170.675 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   877.568  mm,	RY =  -555.817  mm,	RZ =   362.103  mm,
	RW =   -40.061 deg,	RP =    14.780 deg,	RR =   -23.855 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1079.823  mm,	RY =  -263.242  mm,	RZ =   901.072  mm,
	RW =   -66.839 deg,	RP =   -20.334 deg,	RR =    -1.497 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   181.337  mm,	RY =   197.725  mm,	RZ =   689.969  mm,
	RW =   -84.208 deg,	RP =   -29.913 deg,	RR =    -1.511 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   128.618  mm,	RY =   353.661  mm,	RZ =    83.106  mm,
	RW =   -86.473 deg,	RP =   -53.148 deg,	RR =    -1.398 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   144.134  mm,	RY =   377.261  mm,	RZ =    28.474  mm,
	RW =   -89.066 deg,	RP =   -57.355 deg,	RR =      .118 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   144.149  mm,	RY =   399.723  mm,	RZ =    44.867  mm,
	RW =   -89.439 deg,	RP =   -57.019 deg,	RR =      .131 deg
   GP2:
	UF : 2, UT : 4,	
	J1=     9.536  mm
   GP3:
	UF : 2, UT : 4,	
	J1=    70.100  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   151.207  mm,	RY =   382.585  mm,	RZ =    28.840  mm,
	RW =   -84.500 deg,	RP =   -55.971 deg,	RR =    -5.361 deg
   GP2:
	UF : 2, UT : 4,	
	J1=    99.400  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   101.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   254.275  mm,	RY =   242.768  mm,	RZ =   243.241  mm,
	RW =   -86.473 deg,	RP =   -53.148 deg,	RR =    -1.398 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   572.116  mm,	RY =   415.631  mm,	RZ =  -630.929  mm,
	RW =    24.425 deg,	RP =    15.453 deg,	RR =   -27.607 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -261.248  mm,	RY =   642.214  mm,	RZ =   195.229  mm,
	RW =    87.100 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -262.428  mm,	RY =   477.666  mm,	RZ =   167.186  mm,
	RW =   -22.892 deg,	RP =    89.996 deg,	RR =  -109.990 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -258.973  mm,	RY =   476.436  mm,	RZ =   166.514  mm,
	RW =   -25.327 deg,	RP =    89.996 deg,	RR =  -112.425 deg
   GP2:
	UF : 2, UT : 4,	
	J1=    30.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=    19.600  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -213.727  mm,	RY =   479.289  mm,	RZ =   168.096  mm,
	RW =    87.100 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 2, UT : 4,	
	J1=    30.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=    19.600  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -217.639  mm,	RY =   477.465  mm,	RZ =   167.875  mm,
	RW =    86.664 deg,	RP =    88.375 deg,	RR =     -.437 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =  -218.838  mm,	RY =   623.387  mm,	RZ =   185.173  mm,
	RW =    83.000 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    -8.961  mm,	RY =   649.157  mm,	RZ =   197.251  mm,
	RW =   -90.000 deg,	RP =    82.601 deg,	RR =  -173.000 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   173.354  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    40.258  mm,	RY =   463.172  mm,	RZ =   150.909  mm,
	RW =   -34.739 deg,	RP =    60.704 deg,	RR =  -107.514 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   112.802  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   155.423  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    45.114  mm,	RY =   435.198  mm,	RZ =   131.869  mm,
	RW =   -41.930 deg,	RP =    57.283 deg,	RR =  -115.897 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    36.914  mm,	RY =   425.919  mm,	RZ =   106.530  mm,
	RW =   -75.815 deg,	RP =    68.125 deg,	RR =  -153.583 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    31.194  mm,	RY =   451.860  mm,	RZ =   105.043  mm,
	RW =  -101.782 deg,	RP =    62.004 deg,	RR =   179.028 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    31.247  mm,	RY =   456.750  mm,	RZ =   101.807  mm,
	RW =  -103.783 deg,	RP =    60.567 deg,	RR =   176.762 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    29.232  mm,	RY =   461.661  mm,	RZ =   103.431  mm,
	RW =  -119.997 deg,	RP =    54.686 deg,	RR =  -179.992 deg
   GP2:
	UF : 2, UT : 4,	
	J1=    14.400  mm
   GP3:
	UF : 2, UT : 4,	
	J1=    65.400  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    31.245  mm,	RY =   444.338  mm,	RZ =   101.809  mm,
	RW =  -103.783 deg,	RP =    60.567 deg,	RR =   176.762 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    31.194  mm,	RY =   451.860  mm,	RZ =   105.043  mm,
	RW =  -101.782 deg,	RP =    62.004 deg,	RR =   179.028 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    36.914  mm,	RY =   425.919  mm,	RZ =   106.530  mm,
	RW =   -75.815 deg,	RP =    68.125 deg,	RR =  -153.583 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    45.114  mm,	RY =   435.198  mm,	RZ =   131.869  mm,
	RW =   -41.930 deg,	RP =    57.283 deg,	RR =  -115.897 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    40.258  mm,	RY =   463.172  mm,	RZ =   150.909  mm,
	RW =   -34.739 deg,	RP =    60.704 deg,	RR =  -107.514 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   159.498  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    -8.961  mm,	RY =   649.157  mm,	RZ =   197.251  mm,
	RW =   -90.000 deg,	RP =    82.601 deg,	RR =  -173.000 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   128.526  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =    83.621  mm,	RY =   591.508  mm,	RZ =  -597.248  mm,
	RW =    44.588 deg,	RP =    70.485 deg,	RR =   -41.412 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, -1',
	RX =   430.395  mm,	RY =  -345.532  mm,	RZ =  -822.518  mm,
	RW =    28.179 deg,	RP =     4.157 deg,	RR =   -63.232 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 1, 0',
	RX =  2056.108  mm,	RY =   -18.138  mm,	RZ =  2311.562  mm,
	RW =   -73.686 deg,	RP =   -24.466 deg,	RR =    35.849 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  2854.541  mm,	RY =  1384.316  mm,	RZ =  -684.817  mm,
	RW =    -1.038 deg,	RP =     8.865 deg,	RR =    78.424 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 2, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   172.722  mm,	RY = -1615.912  mm,	RZ =  -927.308  mm,
	RW =   154.724 deg,	RP =    71.404 deg,	RR =   175.445 deg
   GP2:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 4,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 4,	
	J1=     0.000  mm
};
/END
