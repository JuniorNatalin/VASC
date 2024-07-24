/PROG  UP002
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est 1";
PROG_SIZE	= 9298;
CREATE		= DATE 96-03-31  TIME 20:23:40;
MODIFIED	= DATE 24-04-10  TIME 21:02:30;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 16910;
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
     24:  !Basculante 1 en Pos. de Reposo ;
     25:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     26:  WAIT (M[96])    ;
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
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   9:   ;
  10:  !5QA802035_002_B_PS_0008 ;
  11:  !Punto de Sol. No. 5701 ;
  12:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5701,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  13:  !5QA802035_028_AC_PS_0009 ;
  14:  !Punto de Sol. No. 5704 ;
  15:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5704,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  16:  !5QA802035_002_B_PS_0007 ;
  17:  !Punto de Sol. No. 5703 ;
  18:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5703,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  19:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  20:   ;
  21:  !5QA802035_028_AC_PS_0001 ;
  22:  !Punto de Sol. No. 5706 ;
  23:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5706,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  24:J P[11] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  25:  !5QA802035_028_AC_PS_0008 ;
  26:  !Punto de Sol. No. 5705 ;
  27:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5705,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  28:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  29:  !5QA802035_002_B_PS_0001 ;
  30:  !Punto de Sol. No. 5707 ;
  31:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5707,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  32:  !5QA802035_002_B_PS_0006 ;
  33:  !Punto de Sol. No. 5702 ;
  34:  !Fin de Trabajo 2 ;
  35:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5702,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  36:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  37:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  38:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  39:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  40:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1442.578  mm,	RY =   589.361  mm,	RZ =   830.918  mm,
	RW =    36.146 deg,	RP =    27.794 deg,	RR =  -164.600 deg
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
	RX = -1427.226  mm,	RY =   871.234  mm,	RZ =  -175.723  mm,
	RW =    78.227 deg,	RP =    38.753 deg,	RR =  -146.942 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   242.218  mm,	RY =   -93.754  mm,	RZ =   102.051  mm,
	RW =   118.061 deg,	RP =     7.691 deg,	RR =   -96.982 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   265.251  mm,	RY =   380.932  mm,	RZ =   106.135  mm,
	RW =   119.315 deg,	RP =     7.691 deg,	RR =   -96.982 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   151.274  mm,	RY =   380.362  mm,	RZ =   112.915  mm,
	RW =   116.677 deg,	RP =     6.723 deg,	RR =   -94.179 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    60.848  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   151.305  mm,	RY =   371.969  mm,	RZ =   118.019  mm,
	RW =   116.834 deg,	RP =     7.050 deg,	RR =   -92.969 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   101.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    83.164  mm,	RY =   380.453  mm,	RZ =   133.964  mm,
	RW =   114.607 deg,	RP =     1.995 deg,	RR =  -100.178 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.600  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   101.100  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   102.916  mm,	RY =   377.366  mm,	RZ =   125.698  mm,
	RW =   109.347 deg,	RP =     2.070 deg,	RR =   -99.402 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   102.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    93.153  mm,	RY =   381.529  mm,	RZ =   116.662  mm,
	RW =   110.412 deg,	RP =     1.908 deg,	RR =   -99.278 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    22.728  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    78.897  mm,	RY =   382.313  mm,	RZ =    96.219  mm,
	RW =   113.601 deg,	RP =     1.487 deg,	RR =   -99.113 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   101.300  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    69.098  mm,	RY =   385.313  mm,	RZ =   106.665  mm,
	RW =   113.172 deg,	RP =      .982 deg,	RR =   -99.818 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    31.600  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.327  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    65.484  mm,	RY =   384.985  mm,	RZ =   104.114  mm,
	RW =   113.040 deg,	RP =      .814 deg,	RR =  -100.057 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.600  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    74.714  mm,	RY =   386.177  mm,	RZ =    99.429  mm,
	RW =   113.503 deg,	RP =     1.372 deg,	RR =   -99.521 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    36.300  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   105.708  mm,	RY =   381.421  mm,	RZ =    78.901  mm,
	RW =   115.641 deg,	RP =     5.897 deg,	RR =   -96.577 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.300  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   141.795  mm,	RY =   376.735  mm,	RZ =    86.087  mm,
	RW =   115.474 deg,	RP =     7.232 deg,	RR =   -97.161 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.004  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   138.330  mm,	RY =   384.559  mm,	RZ =    99.067  mm,
	RW =   115.567 deg,	RP =     7.177 deg,	RR =   -97.150 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    60.018  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   264.798  mm,	RY =   377.795  mm,	RZ =   129.552  mm,
	RW =   118.061 deg,	RP =     7.691 deg,	RR =   -96.982 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   177.143  mm,	RY =   -90.655  mm,	RZ =   106.949  mm,
	RW =   118.061 deg,	RP =     7.690 deg,	RR =   -96.982 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
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
	RX = -1476.771  mm,	RY =   938.840  mm,	RZ =   -58.818  mm,
	RW =    78.227 deg,	RP =    38.752 deg,	RR =  -146.941 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1442.576  mm,	RY =   589.357  mm,	RZ =   830.916  mm,
	RW =    36.146 deg,	RP =    27.794 deg,	RR =  -164.600 deg
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
