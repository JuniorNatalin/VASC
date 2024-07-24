/PROG  UP004
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 7124;
CREATE		= DATE 96-06-02  TIME 17:17:58;
MODIFIED	= DATE 21-04-30  TIME 07:29:32;
FILE_NAME	= UP004;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 12496;
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
     14:  DO[71]=OFF ;
     15:  DO[70]=OFF ;
     16:  DO[69]=OFF ;
     17:  DO[68]=OFF ;
     18:  DO[67]=OFF ;
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
     34:  DO[23]=ON ;
     35:  !Marca 6 Estado de Garra ;
     36:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     37:  !M[22]=(M[32] AND M[36] AND M[37] ;
     38:  !M[40] AND M[41] AND M[43] AND ;
     39:  !M[63] ;
     40:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:  !5QA802035_011_L_PS_0003 ;
   9:  !Punto de Sol. No. 5528 ;
  10:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5528,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  11:  !5QA802035_011_L_PS_0007 ;
  12:  !Punto de Sol. No. 5527 ;
  13:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5527,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  14:  !5QA802035_011_L_PS_0006 ;
  15:  !Punto de Sol. No. 5526 ;
  16:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5526,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:  !5QA802035_011_L_PS_0005 ;
  18:  !Punto de Sol. No. 5525 ;
  19:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5525,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:  !5QA802035_011_L_PS_0004 ;
  21:  !Punto de Sol. No. 5524 ;
  22:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5524,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:  !5QA802035_011_L_PS_0002 ;
  24:  !Punto de Sol. No. 5523 ;
  25:  !Fin de Trabajo 3 ;
  26:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5523,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[22] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =  1179.616  mm,	RY =    -2.375  mm,	RZ = -1173.937  mm,
	RW =  -172.372 deg,	RP =   -49.712 deg,	RR =  -101.703 deg
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
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX = -1011.453  mm,	RY =  -773.184  mm,	RZ =      .962  mm,
	RW =   162.138 deg,	RP =      .654 deg,	RR =   101.907 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =    66.947  mm,	RY =  -515.379  mm,	RZ =   140.015  mm,
	RW =   132.138 deg,	RP =      .654 deg,	RR =   101.907 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =    45.572  mm,	RY =  -457.682  mm,	RZ =   133.974  mm,
	RW =   132.138 deg,	RP =      .654 deg,	RR =   101.907 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =    50.524  mm,	RY =  -391.172  mm,	RZ =   116.506  mm,
	RW =   132.084 deg,	RP =     2.451 deg,	RR =    99.918 deg
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
P[6]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =    33.451  mm,	RY =  -394.588  mm,	RZ =   128.248  mm,
	RW =   132.084 deg,	RP =     2.451 deg,	RR =    99.918 deg
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
P[7]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =    21.222  mm,	RY =  -397.174  mm,	RZ =   150.244  mm,
	RW =   131.965 deg,	RP =     -.206 deg,	RR =    99.505 deg
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
P[8]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =    -2.420  mm,	RY =  -401.349  mm,	RZ =   157.542  mm,
	RW =   129.999 deg,	RP =      .000 deg,	RR =    99.758 deg
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
P[9]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =   -35.676  mm,	RY =  -407.540  mm,	RZ =   165.624  mm,
	RW =   138.012 deg,	RP =    -1.163 deg,	RR =    99.942 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    23.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =   -65.511  mm,	RY =  -412.712  mm,	RZ =   166.634  mm,
	RW =   128.132 deg,	RP =     -.169 deg,	RR =   102.009 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    23.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =   -46.060  mm,	RY =  -451.641  mm,	RZ =   176.793  mm,
	RW =   128.093 deg,	RP =     -.216 deg,	RR =   102.942 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =   -72.303  mm,	RY =  -519.792  mm,	RZ =   172.132  mm,
	RW =   128.146 deg,	RP =      .680 deg,	RR =   102.120 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -933.556  mm,	RY =  -758.301  mm,	RZ =   -26.063  mm,
	RW =   153.146 deg,	RP =      .680 deg,	RR =   102.120 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 1',
	RX =  1179.616  mm,	RY =    -2.375  mm,	RZ = -1173.937  mm,
	RW =  -172.372 deg,	RP =   -49.712 deg,	RR =  -101.703 deg
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
