/PROG  UP722
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldadura Est. 1";
PROG_SIZE	= 12254;
CREATE		= DATE 23-12-11  TIME 11:39:32;
MODIFIED	= DATE 23-12-11  TIME 11:44:30;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 23690;
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
      3:  DO[16]=ON ;
      4:  TIMER[4]=RESET ;
      5:  TIMER[4]=START ;
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
     27:  !Basculante 1 en Pos. de Reposo ;
     28:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     29:  WAIT (M[96])    ;
     30:  WAIT (DI[23])    ;
     31:  DO[23]=ON ;
     32:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:  !5qa802035b_001_aps0002_L ;
  10:  !Punto de Sol. No. 10021 ;
  11:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10021,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  12:  !5qa802035b_001_aps0003_L ;
  13:  !Punto de Sol. No. 10022 ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10022,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  17:   ;
  18:  !5qa802035b_001_aps0007_L ;
  19:  !Punto de Sol. No. 10023 ;
  20:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10023,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  21:  !5qa802035b_027_abps0001_L ;
  22:  !Punto de Sol. No. 10024 ;
  23:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10024,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  27:  !5qa802035b_027_abps0003_L ;
  28:  !Punto de Sol. No. 10025 ;
  29:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10025,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  32:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  33:  !5qa802035b_027_abps0004_L ;
  34:  !Punto de Sol. No. 10026 ;
  35:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10026,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  38:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  39:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  40:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  41:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  42:  !5qa802035b_001_aps0006_L ;
  43:  !Punto de Sol. No. 10027 ;
  44:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10027,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  45:  !Fin de Trabajo 2 ;
  46:J P[27] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  47:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  49:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1095.849  mm,	RY =  -844.470  mm,	RZ = -1400.287  mm,
	RW =   131.617 deg,	RP =     7.190 deg,	RR =   145.319 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -549.845  mm,	RY =   281.090  mm,	RZ =   874.152  mm,
	RW =  -138.865 deg,	RP =      .541 deg,	RR =   120.929 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   576.177  mm,	RY =  -441.951  mm,	RZ =   587.293  mm,
	RW =  -122.247 deg,	RP =     4.427 deg,	RR =    93.102 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   297.772  mm,	RY =  -478.023  mm,	RZ =   264.562  mm,
	RW =  -126.765 deg,	RP =     2.715 deg,	RR =   100.664 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   176.001  mm,	RY =  -392.170  mm,	RZ =   123.797  mm,
	RW =  -138.081 deg,	RP =     7.605 deg,	RR =    97.379 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   151.885  mm,	RY =  -377.762  mm,	RZ =    99.577  mm,
	RW =  -138.002 deg,	RP =     7.636 deg,	RR =    97.435 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.863  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.200  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   153.452  mm,	RY =  -375.296  mm,	RZ =   118.971  mm,
	RW =  -136.106 deg,	RP =     7.732 deg,	RR =    98.080 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.010  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.001  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   148.168  mm,	RY =  -379.291  mm,	RZ =   118.419  mm,
	RW =  -134.807 deg,	RP =     7.465 deg,	RR =    98.644 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   111.673  mm,	RY =  -399.240  mm,	RZ =   124.624  mm,
	RW =  -124.367 deg,	RP =     4.839 deg,	RR =   102.974 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   122.820  mm,	RY =  -380.616  mm,	RZ =   127.715  mm,
	RW =  -123.852 deg,	RP =     1.338 deg,	RR =   104.542 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    24.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   101.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    91.809  mm,	RY =  -387.263  mm,	RZ =   126.716  mm,
	RW =  -121.174 deg,	RP =     1.265 deg,	RR =   104.466 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.600  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    88.450  mm,	RY =  -391.593  mm,	RZ =   113.480  mm,
	RW =  -124.601 deg,	RP =     3.210 deg,	RR =   102.819 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    88.201  mm,	RY =  -392.241  mm,	RZ =   103.427  mm,
	RW =  -128.521 deg,	RP =     3.495 deg,	RR =   101.896 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    89.349  mm,	RY =  -392.711  mm,	RZ =    93.194  mm,
	RW =  -132.564 deg,	RP =     3.722 deg,	RR =   100.926 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    88.376  mm,	RY =  -388.659  mm,	RZ =    89.944  mm,
	RW =  -134.293 deg,	RP =     3.790 deg,	RR =   100.516 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.200  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    85.466  mm,	RY =  -393.531  mm,	RZ =    91.264  mm,
	RW =  -131.945 deg,	RP =     3.449 deg,	RR =   100.946 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    79.031  mm,	RY =  -394.506  mm,	RZ =    95.302  mm,
	RW =  -128.585 deg,	RP =     2.919 deg,	RR =   101.549 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    72.280  mm,	RY =  -395.726  mm,	RZ =   100.861  mm,
	RW =  -124.705 deg,	RP =     2.262 deg,	RR =   102.207 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =    72.488  mm,	RY =  -391.771  mm,	RZ =   100.045  mm,
	RW =  -123.527 deg,	RP =      .822 deg,	RR =   103.216 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    21.842  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    76.981  mm,	RY =  -394.572  mm,	RZ =    93.368  mm,
	RW =  -126.741 deg,	RP =     2.885 deg,	RR =   101.755 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    84.070  mm,	RY =  -393.238  mm,	RZ =    85.344  mm,
	RW =  -129.791 deg,	RP =     3.640 deg,	RR =   101.102 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    98.783  mm,	RY =  -390.423  mm,	RZ =    82.952  mm,
	RW =  -133.273 deg,	RP =     4.455 deg,	RR =   100.312 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   110.970  mm,	RY =  -388.601  mm,	RZ =    79.626  mm,
	RW =  -136.771 deg,	RP =     5.220 deg,	RR =    99.471 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   117.375  mm,	RY =  -389.014  mm,	RZ =    68.266  mm,
	RW =  -140.738 deg,	RP =     6.020 deg,	RR =    98.468 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   125.978  mm,	RY =  -389.255  mm,	RZ =    60.121  mm,
	RW =  -144.534 deg,	RP =     6.715 deg,	RR =    97.462 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   139.109  mm,	RY =  -383.776  mm,	RZ =    58.073  mm,
	RW =  -147.971 deg,	RP =     4.474 deg,	RR =    97.124 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    21.051  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.600  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   170.877  mm,	RY =  -391.439  mm,	RZ =   114.062  mm,
	RW =  -148.469 deg,	RP =     7.450 deg,	RR =    96.414 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =   246.941  mm,	RY =  -374.673  mm,	RZ =   352.334  mm,
	RW =  -148.469 deg,	RP =     7.450 deg,	RR =    96.414 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    36.546  mm,	RY =  -201.114  mm,	RZ =   442.414  mm,
	RW =  -148.469 deg,	RP =     7.450 deg,	RR =    96.414 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1095.849  mm,	RY =  -844.470  mm,	RZ = -1400.287  mm,
	RW =   131.617 deg,	RP =     7.190 deg,	RR =   145.319 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
