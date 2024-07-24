/PROG  UP002
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 9274;
CREATE		= DATE 96-06-23  TIME 20:26:52;
MODIFIED	= DATE 24-05-29  TIME 09:33:28;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 17410;
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
      2:  DO[23]=(OFF) ;
      3:  DO[16]=(ON) ;
      4:  TIMER[4]=RESET ;
      5:  TIMER[4]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[78]=OFF ;
     10:  DO[77]=ON ;
     11:  DO[75]=OFF ;
     12:  DO[74]=ON ;
     13:  DO[73]=ON ;
     14:  DO[72]=OFF ;
     15:  DO[71]=OFF ;
     16:  DO[69]=OFF ;
     17:  !Lib. de Anticolisiones ;
     18:  DO[41]=ON ;
     19:  DO[42]=ON ;
     20:  DO[43]=ON ;
     21:  DO[44]=ON ;
     22:  DO[45]=ON ;
     23:  DO[46]=ON ;
     24:  !Apagar Pos. Base ;
     25:  DO[15]=OFF ;
     26:  !Robot en Trayectoria ;
     27:  DO[16]=ON ;
     28:  !Basculante 1 en Pos. de Reposo ;
     29:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     30:  WAIT (M[96])    ;
     31:  WAIT (DI[23])    ;
     32:  DO[23]=ON ;
     33:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
   7:  !5QA802035_001_A_PS_0004 ;
   8:  !Punto de Sol. No. 5549 ;
   9:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5549,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  10:  !5QA802035_001_A_PS_0005 ;
  11:  !Punto de Sol. No. 5548 ;
  12:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5548,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  16:  !5QA802035_001_A_PS_0009 ;
  17:  !Punto de Sol. No. 5547 ;
  18:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5547,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  24:   ;
  25:  !5QA802035_023_X_PS_0001 ;
  26:  !Punto de Sol. No. 5546 ;
  27:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5546,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  30:  !5QA802035_035_AK_PS_0003 ;
  31:  !Punto de Sol. No. 5545 ;
  32:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5545,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=(ON) ;
     10:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  33:  !Fin de Trabajo 2 ;
  34:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
  36:  !Lib. de Anticolision 3 vs 1180R0 ;
  37:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=(ON) ;
      7:  TC_ONLINE (M[3] AND M[30] AND M[32] AND M[33] AND M[24] AND M[41] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	RX =   282.995  mm,	RY = -2781.176  mm,	RZ =   355.059  mm,
	RW =    -4.423 deg,	RP =    52.106 deg,	RR =    45.170 deg
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
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   201.045  mm,	RY =   181.884  mm,	RZ =     -.937  mm,
	RW =    73.323 deg,	RP =    -6.144 deg,	RR =    -3.017 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   172.144  mm,	RY =  -158.476  mm,	RZ =   100.754  mm,
	RW =    73.323 deg,	RP =    -6.144 deg,	RR =    -3.017 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   176.746  mm,	RY =  -360.976  mm,	RZ =   103.131  mm,
	RW =    73.193 deg,	RP =    -5.798 deg,	RR =    -1.871 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    13.800  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   174.344  mm,	RY =  -360.652  mm,	RZ =   123.293  mm,
	RW =    72.253 deg,	RP =    -5.934 deg,	RR =    -2.356 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    16.300  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   170.198  mm,	RY =  -155.582  mm,	RZ =   120.208  mm,
	RW =    72.323 deg,	RP =    -6.144 deg,	RR =    -3.017 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   143.708  mm,	RY =  -104.980  mm,	RZ =    32.618  mm,
	RW =    56.021 deg,	RP =   -57.658 deg,	RR =     -.025 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   142.408  mm,	RY =  -404.823  mm,	RZ =    30.787  mm,
	RW =    35.581 deg,	RP =   -57.658 deg,	RR =     -.024 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   141.867  mm,	RY =  -403.263  mm,	RZ =    38.407  mm,
	RW =    35.581 deg,	RP =   -57.658 deg,	RR =     -.024 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    20.500  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   137.014  mm,	RY =  -403.261  mm,	RZ =    30.742  mm,
	RW =    35.581 deg,	RP =   -57.658 deg,	RR =     -.024 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 3,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 3,		CONFIG : 'F U T, 0, 0, 0',
	RX =   521.750  mm,	RY =   258.290  mm,	RZ =  -206.526  mm,
	RW =    56.022 deg,	RP =   -57.658 deg,	RR =     -.026 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =   -15.248  mm,	RY =  -407.837  mm,	RZ =  -395.058  mm,
	RW =     -.000 deg,	RP =     -.004 deg,	RR =   -80.024 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =   -15.395  mm,	RY =  -407.691  mm,	RZ =   184.875  mm,
	RW =     -.001 deg,	RP =     -.006 deg,	RR =   -80.024 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =   -16.115  mm,	RY =  -403.595  mm,	RZ =   219.585  mm,
	RW =     -.001 deg,	RP =     -.006 deg,	RR =   -80.024 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =    -6.606  mm,	RY =  -410.025  mm,	RZ =   185.349  mm,
	RW =     -.006 deg,	RP =     -.008 deg,	RR =   -80.027 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    18.900  mm
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
	RX =   -10.390  mm,	RY =  -406.811  mm,	RZ =   184.875  mm,
	RW =     -.001 deg,	RP =     -.006 deg,	RR =   -80.024 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =   -86.145  mm,	RY =  -419.124  mm,	RZ =   178.288  mm,
	RW =    -6.468 deg,	RP =    -5.533 deg,	RR =   -75.115 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =   -83.521  mm,	RY =  -421.697  mm,	RZ =   182.577  mm,
	RW =    -6.335 deg,	RP =    -3.397 deg,	RR =   -76.523 deg
   GP2:
	UF : 1, UT : 3,	
	J1=    26.700  mm
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
	RX =   -86.145  mm,	RY =  -419.124  mm,	RZ =   178.288  mm,
	RW =    -6.468 deg,	RP =    -5.533 deg,	RR =   -75.115 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =   -85.973  mm,	RY =  -419.306  mm,	RZ =   -21.704  mm,
	RW =    -6.468 deg,	RP =    -5.532 deg,	RR =   -75.115 deg
   GP2:
	UF : 1, UT : 3,	
	J1=   120.000  mm
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
	RX =   282.995  mm,	RY = -2781.176  mm,	RZ =   355.059  mm,
	RW =    -4.423 deg,	RP =    52.106 deg,	RR =    45.170 deg
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
