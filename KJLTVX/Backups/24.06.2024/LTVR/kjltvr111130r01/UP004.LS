/PROG  UP004
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 11664;
CREATE		= DATE 16-10-21  TIME 03:43:44;
MODIFIED	= DATE 23-04-15  TIME 05:11:56;
FILE_NAME	= UP004;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 22332;
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
   2:  UTOOL_NUM=3 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[71]=OFF ;
     14:  DO[70]=OFF ;
     15:  DO[69]=OFF ;
     16:  DO[68]=OFF ;
     17:  DO[67]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[45]=ON ;
     24:  DO[46]=ON ;
     25:  !Apagar Pos. Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  !Basculante 1 en Pos. de Reposo ;
     30:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     31:  WAIT (M[96])    ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  !Marca 7 Estado de Garra ;
     35:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     36:  !M[23]=(M[32] AND M[36] AND M[37] ;
     37:  !AND M[40] AND M[41] AND M[43] ;
     38:  !AND M[63]) ;
     39:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:  !5QA802035_002_B_PS_0003 ;
   9:  !Punto de Sol. No. 5689 ;
  10:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5689,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:  !5QA802035_002_B_PS_0004 ;
  12:  !Punto de Sol. No. 5690 ;
  13:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5690,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:  !5QA802035_012_M_PS_0001 ;
  26:  !Punto de Sol. No. 5695 ;
  27:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5695,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:  !5QA802035_012_M_PS_0002 ;
  29:  !Punto de Sol. No. 5694 ;
  30:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5694,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:  !5QA802035_012_M_PS_0004 ;
  32:  !Punto de Sol. No. 5692 ;
  33:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5692,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:  !5QA802035_012_M_PS_0003 ;
  35:  !Punto de Sol. No. 5693 ;
  36:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5693,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  38:  !5QA802035_012_M_PS_0005 ;
  39:  !Punto de Sol. No. 5691 ;
  40:J P[23] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5691,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  41:  !Fin de Trabajo 3 ;
  42:J P[24] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  43:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  44:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  45:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  46:J P[28] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1249.313  mm,	RY =  1010.108  mm,	RZ = -1064.607  mm,
	RW =    56.710 deg,	RP =    23.125 deg,	RR =  -128.942 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   176.302  mm,	RY =   261.474  mm,	RZ =   -28.689  mm,
	RW =   104.932 deg,	RP =    16.644 deg,	RR =  -176.870 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   199.938  mm,	RY =   310.131  mm,	RZ =   120.908  mm,
	RW =   108.375 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   199.008  mm,	RY =   358.410  mm,	RZ =   105.904  mm,
	RW =   104.358 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   120.982  mm,	RY =   357.342  mm,	RZ =   106.152  mm,
	RW =   104.305 deg,	RP =     3.703 deg,	RR =  -177.614 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    22.100  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   116.837  mm,	RY =   356.954  mm,	RZ =   122.134  mm,
	RW =   104.552 deg,	RP =     3.202 deg,	RR =  -177.311 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    18.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   199.006  mm,	RY =   358.408  mm,	RZ =   105.901  mm,
	RW =   104.358 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   209.465  mm,	RY =   340.563  mm,	RZ =   111.654  mm,
	RW =   104.358 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   176.301  mm,	RY =   261.472  mm,	RZ =   -28.692  mm,
	RW =   104.932 deg,	RP =    16.644 deg,	RR =  -176.870 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =   242.558  mm,	RY =  -720.071  mm,	RZ =   113.882  mm,
	RW =   109.501 deg,	RP =     8.169 deg,	RR =  -131.864 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   358.676  mm,	RY =   183.249  mm,	RZ =  -456.681  mm,
	RW =    38.383 deg,	RP =    28.160 deg,	RR =   -31.996 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   181.183  mm,	RY =   721.044  mm,	RZ =   -80.923  mm,
	RW =    39.993 deg,	RP =    40.402 deg,	RR =   -20.822 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   199.999  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =    72.993  mm,	RY =   638.956  mm,	RZ =    83.166  mm,
	RW =      .249 deg,	RP =    51.684 deg,	RR =   -31.420 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   199.999  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -209.637  mm,	RY =   634.343  mm,	RZ =     3.629  mm,
	RW =  -102.940 deg,	RP =    30.404 deg,	RR =   -96.222 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -83.597  mm,	RY =   534.537  mm,	RZ =    47.391  mm,
	RW =  -116.956 deg,	RP =    11.086 deg,	RR =   -82.064 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =     6.156  mm,	RY =   477.675  mm,	RZ =   149.154  mm,
	RW =  -125.534 deg,	RP =     1.841 deg,	RR =   -93.359 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -28.318  mm,	RY =   493.576  mm,	RZ =   131.724  mm,
	RW =  -120.461 deg,	RP =     5.944 deg,	RR =   -87.890 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =    33.710  mm,	RY =   334.495  mm,	RZ =   127.378  mm,
	RW =  -124.694 deg,	RP =      .800 deg,	RR =  -100.206 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    19.700  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =     6.566  mm,	RY =   338.150  mm,	RZ =   139.505  mm,
	RW =  -125.239 deg,	RP =     -.851 deg,	RR =  -102.033 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    25.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -33.840  mm,	RY =   347.938  mm,	RZ =   162.010  mm,
	RW =  -127.392 deg,	RP =      .022 deg,	RR =  -107.244 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    23.100  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =    -5.464  mm,	RY =   341.277  mm,	RZ =   157.454  mm,
	RW =  -124.552 deg,	RP =     -.708 deg,	RR =  -102.662 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    22.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -45.320  mm,	RY =   350.717  mm,	RZ =   169.614  mm,
	RW =  -121.644 deg,	RP =     -.515 deg,	RR =  -105.476 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    21.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -63.379  mm,	RY =   358.813  mm,	RZ =   172.897  mm,
	RW =  -118.002 deg,	RP =      .001 deg,	RR =  -108.541 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    24.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -52.832  mm,	RY =   422.889  mm,	RZ =   172.011  mm,
	RW =  -121.128 deg,	RP =      .088 deg,	RR =  -108.271 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    81.600  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -153.676  mm,	RY =   469.542  mm,	RZ =    14.640  mm,
	RW =  -123.338 deg,	RP =      .218 deg,	RR =  -108.028 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    98.250  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -296.690  mm,	RY =   578.865  mm,	RZ =    -7.792  mm,
	RW =  -119.474 deg,	RP =    38.150 deg,	RR =  -101.556 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   257.127  mm,	RY =  -135.664  mm,	RZ =  -219.973  mm,
	RW =   -55.152 deg,	RP =    31.385 deg,	RR =   -87.374 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1249.313  mm,	RY =  1010.108  mm,	RZ = -1064.607  mm,
	RW =    56.710 deg,	RP =    23.125 deg,	RR =  -128.942 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
/END
