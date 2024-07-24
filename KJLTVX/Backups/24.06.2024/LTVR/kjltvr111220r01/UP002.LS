/PROG  UP002
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 8190;
CREATE		= DATE 96-03-31  TIME 20:31:04;
MODIFIED	= DATE 23-08-30  TIME 17:55:46;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 38;
MEMORY_SIZE	= 15586;
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
  10:  !5QA802035_024_Y_PS_0002 ;
  11:  !Punto de Sol. No. 5712 ;
  12:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5712,Fzg_Typ=3,EIN/AUS=ON) ;
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
  15:  !5QA802035_024_Y_PS_0001 ;
  16:  !Punto de Sol. No. 5713 ;
  17:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5713,Fzg_Typ=3,EIN/AUS=ON) ;
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
  21:  !5QA802035_024_Y_PS_0003 ;
  22:  !Punto de Sol. No. 5714 ;
  23:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5714,Fzg_Typ=3,EIN/AUS=ON) ;
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
  26:  !5QA802035_036_AL_PS_0003 ;
  27:  !Punto de Sol. No. 5716 ;
  28:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5716,Fzg_Typ=3,EIN/AUS=ON) ;
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
  31:  !5QA802035_010_K_PS_0006 ;
  32:  !Punto de Sol. No. 5715 ;
  33:  !Fin de Trabajo 2 ;
  34:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5715,Fzg_Typ=3,EIN/AUS=ON) ;
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
  36:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[11] AND M[95] AND M[96]) ;
       ------ ;
  38:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -93.496  mm,	RY =  2782.087  mm,	RZ =   565.485  mm,
	RW =    50.278 deg,	RP =    -8.287 deg,	RR =    47.483 deg
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
	RX =  -197.293  mm,	RY =  2231.437  mm,	RZ =  -261.807  mm,
	RW =    26.156 deg,	RP =    -7.592 deg,	RR =    65.239 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   118.000  mm
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
	RX =   -22.144  mm,	RY =   384.985  mm,	RZ =   -59.428  mm,
	RW =    -1.286 deg,	RP =    17.183 deg,	RR =    73.473 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   118.000  mm
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
	RX =   -12.487  mm,	RY =   391.353  mm,	RZ =   183.518  mm,
	RW =      .003 deg,	RP =     -.009 deg,	RR =    72.272 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    -7.910  mm,	RY =   405.644  mm,	RZ =   183.529  mm,
	RW =      .002 deg,	RP =     -.009 deg,	RR =    72.272 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    -8.647  mm,	RY =   411.198  mm,	RZ =   186.359  mm,
	RW =     -.063 deg,	RP =    -1.263 deg,	RR =    75.192 deg
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
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -15.322  mm,	RY =   402.884  mm,	RZ =   186.271  mm,
	RW =     2.955 deg,	RP =    -1.182 deg,	RR =    71.927 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    43.466  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -36.208  mm,	RY =   419.343  mm,	RZ =   193.508  mm,
	RW =     8.379 deg,	RP =     -.601 deg,	RR =    71.416 deg
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
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -39.500  mm,	RY =   408.000  mm,	RZ =   193.311  mm,
	RW =     8.379 deg,	RP =     -.601 deg,	RR =    71.416 deg
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
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -93.496  mm,	RY =   430.096  mm,	RZ =   247.613  mm,
	RW =     6.024 deg,	RP =      .814 deg,	RR =    73.787 deg
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
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -87.569  mm,	RY =   436.380  mm,	RZ =   245.478  mm,
	RW =     6.204 deg,	RP =      .225 deg,	RR =    73.756 deg
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
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -100.801  mm,	RY =   428.011  mm,	RZ =   208.146  mm,
	RW =     6.026 deg,	RP =     -.338 deg,	RR =    73.359 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    32.915  mm
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
	RX =   -92.577  mm,	RY =   437.311  mm,	RZ =   183.559  mm,
	RW =     6.035 deg,	RP =     -.476 deg,	RR =    74.028 deg
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
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -152.317  mm,	RY =   443.837  mm,	RZ =   192.890  mm,
	RW =     5.993 deg,	RP =     -.713 deg,	RR =    76.880 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    41.200  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -173.339  mm,	RY =   455.712  mm,	RZ =   188.363  mm,
	RW =      .156 deg,	RP =     2.018 deg,	RR =    87.116 deg
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
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -170.022  mm,	RY =   436.642  mm,	RZ =   186.499  mm,
	RW =      .016 deg,	RP =     -.131 deg,	RR =    83.243 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   118.000  mm
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
	RX =  -144.774  mm,	RY =   477.025  mm,	RZ =    24.877  mm,
	RW =      .446 deg,	RP =     4.134 deg,	RR =    82.822 deg
   GP2:
	UF : 1, UT : 2,	
	J1=     4.200  mm
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
	RX =  -197.293  mm,	RY =  2231.437  mm,	RZ =  -261.807  mm,
	RW =    26.156 deg,	RP =    -7.592 deg,	RR =    65.239 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   118.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -93.496  mm,	RY =  2782.087  mm,	RZ =   565.485  mm,
	RW =    50.278 deg,	RP =    -8.287 deg,	RR =    47.483 deg
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
