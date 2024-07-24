/PROG  UP003
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 7114;
CREATE		= DATE 22-02-18  TIME 10:36:30;
MODIFIED	= DATE 24-06-06  TIME 13:50:50;
FILE_NAME	= UP003;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 13218;
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
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   9:  !5QA802035_028_AC_PS_0002 ;
  10:  !Schweisspunkt Nr. 5688 ;
  11:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5688,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]+1) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  12:  !5QA_802_035__028_AC_PS_0004 ;
  13:  !Schweisspunkt Nr. 5686 ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5686,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]+2) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  16:  !5QA802035_028_AC_PS_0005 ;
  17:  !Schweisspunkt Nr. 5687 ;
  18:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5687,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]+1) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC50 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  20:  !5QA802035_028_AC_PS_0003 ;
  21:  !Schweisspunkt Nr. 5685 ;
  22:  !Fin de Trabajo 3 ;
  23:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[21]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5685,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[5]=(R[198]+1) ;
      6:  WAIT (!DI[161] OR DI[26])    ;
      7:  CALL MAKRO110    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  24:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[102] AND M[103]) ;
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
  28:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
P[3]{
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
P[4]{
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
P[5]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   176.525  mm,	RY =   428.359  mm,	RZ =    94.096  mm,
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
P[6]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    86.088  mm,	RY =   428.429  mm,	RZ =    86.279  mm,
	RW =    46.934 deg,	RP =    48.921 deg,	RR =  -177.812 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    28.700  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    87.248  mm,	RY =   403.746  mm,	RZ =    85.008  mm,
	RW =    48.217 deg,	RP =    49.978 deg,	RR =  -176.045 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    27.300  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    87.387  mm,	RY =   403.755  mm,	RZ =    85.997  mm,
	RW =    48.217 deg,	RP =    49.978 deg,	RR =  -176.045 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    19.500  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    78.128  mm,	RY =   416.963  mm,	RZ =    91.651  mm,
	RW =    48.271 deg,	RP =    49.971 deg,	RR =  -176.049 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    27.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    76.314  mm,	RY =   417.029  mm,	RZ =    94.365  mm,
	RW =    48.271 deg,	RP =    49.971 deg,	RR =  -176.049 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    19.500  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =    71.524  mm,	RY =   430.357  mm,	RZ =    95.184  mm,
	RW =    43.709 deg,	RP =    50.321 deg,	RR =   179.070 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   105.400  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    29.500  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   176.525  mm,	RY =   428.359  mm,	RZ =    94.096  mm,
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
P[13]{
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
P[14]{
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
P[15]{
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
P[16]{
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
/END
