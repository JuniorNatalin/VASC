/PROG  UP032
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 15630;
CREATE		= DATE 03-01-27  TIME 15:09:28;
MODIFIED	= DATE 24-06-30  TIME 19:22:40;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 82;
MEMORY_SIZE	= 29902;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000001 00000000;
/APPL
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=4 ;
   3:  PAYLOAD[2] ;
   4:   ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  !Fresador en Pos. Base ;
     21:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     22:  WAIT (M[96])    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:   ;
   9:  !Punto de Sol. No. 13141 ;
  10:  ! 5qf803296_p0001_a0210001500_L ;
  11:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13141,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  12:   ;
  13:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  14:   ;
  15:  !Punto de Sol. No. 13142 ;
  16:  ! 5qf803296_p0001_a0210001300_L ;
  17:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13142,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:   ;
  19:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[10] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  23:   ;
  24:  !Punto de Sol. No. 13143 ;
  25:  ! 5qf803296_p0002_b0210003500_R ;
  26:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13143,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  27:   ;
  28:J P[12] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  29:   ;
  30:  !Punto de Sol. No. 13144 ;
  31:  ! 5qf803296_p0002_b0210003300_R ;
  32:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13144,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  33:   ;
  34:  !Punto de Sol. No. 13145 ;
  35:  ! 5qf803296_p0002_b0210003200_R ;
  36:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13145,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  38:   ;
  39:  !Punto de Sol. No. 13073 ;
  40:  ! 5qf803296_p0002_b0210002300_R ;
  41:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13073,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  42:  !Punto de Sol. No. 13098 ;
  43:  ! 5qf803296_p0002_b0210002200_R ;
  44:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13098,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  45:   ;
  46:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  47:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  49:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  52:   ;
  53:  !Punto de Sol. No. 13146 ;
  54:  ! 5qf803296_p0002_b0210003900_R ;
  55:J P[24] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13146,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  56:   ;
  57:  !Punto de Sol. No. 13147 ;
  58:  ! 5qf803296_p0002_b0210004000_R ;
  59:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13147,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
     12:   ;
       ------ ;
  60:   ;
  61:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  62:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  63:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  64:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  65:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  66:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  67:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  68:   ;
  69:  !Punto de Sol. No. 13043 ;
  70:  ! 5qf803296_p0001_a0210000700_L ;
  71:J P[33] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13043,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  72:  !Fin de Trabajo 2 ;
  73:  !Soldadura Est. ;
  74:  !Punto de Sol. No. 13044 ;
  75:  ! 5qf803296_p0001_a0210000800_L ;
  76:J P[34] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13044,Fzg_Typ=8,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  77:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  78:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  79:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  80:   ;
  81:   ;
  82:J P[38] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   341.681  mm,	RY =  -170.477  mm,	RZ =  -671.251  mm,
	RW =    29.745 deg,	RP =   -14.702 deg,	RR =    72.713 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   810.218  mm,	RY =  -319.330  mm,	RZ =  -184.077  mm,
	RW =   -31.768 deg,	RP =    14.654 deg,	RR =    73.559 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   674.696  mm,	RY =  -267.895  mm,	RZ =     9.447  mm,
	RW =   -35.835 deg,	RP =    20.574 deg,	RR =    82.271 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.100  mm
};
P[4]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   534.194  mm,	RY =  -137.057  mm,	RZ =    -5.175  mm,
	RW =   -33.922 deg,	RP =    19.630 deg,	RR =    90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.400  mm
};
P[5]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   595.108  mm,	RY =  -144.293  mm,	RZ =    -9.020  mm,
	RW =   -32.309 deg,	RP =    19.606 deg,	RR =    89.992 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    49.992  mm
};
P[6]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   626.785  mm,	RY =  -138.859  mm,	RZ =    -8.127  mm,
	RW =   -30.179 deg,	RP =    19.630 deg,	RR =    90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.747  mm
};
P[7]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   685.062  mm,	RY =  -254.251  mm,	RZ =    31.938  mm,
	RW =   -35.838 deg,	RP =    20.576 deg,	RR =    82.265 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   652.562  mm,	RY =  -316.782  mm,	RZ =  -142.000  mm,
	RW =   -29.619 deg,	RP =    22.634 deg,	RR =    83.039 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   736.093  mm,	RY =   233.087  mm,	RZ =  -153.490  mm,
	RW =   -18.329 deg,	RP =   -24.088 deg,	RR =    82.290 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   592.163  mm,	RY =   156.068  mm,	RZ =   -59.521  mm,
	RW =   -21.841 deg,	RP =   -25.760 deg,	RR =    83.976 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   573.611  mm,	RY =   180.198  mm,	RZ =   -17.550  mm,
	RW =   -25.123 deg,	RP =   -27.415 deg,	RR =    89.388 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    67.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   598.940  mm,	RY =   169.105  mm,	RZ =    -7.365  mm,
	RW =   -24.903 deg,	RP =   -20.120 deg,	RR =    87.328 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    25.085  mm
};
P[13]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   624.140  mm,	RY =   180.002  mm,	RZ =   -18.613  mm,
	RW =   -26.145 deg,	RP =   -11.774 deg,	RR =    89.522 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.200  mm
};
P[14]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 1',
	RX =   663.479  mm,	RY =   179.354  mm,	RZ =   -16.618  mm,
	RW =   -26.145 deg,	RP =   -11.774 deg,	RR =    89.522 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.200  mm
};
P[15]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   877.573  mm,	RY =   162.108  mm,	RZ =   -23.481  mm,
	RW =   -26.154 deg,	RP =   -11.835 deg,	RR =    89.507 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    83.935  mm
};
P[16]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1039.221  mm,	RY =   178.634  mm,	RZ =   -16.830  mm,
	RW =   -26.146 deg,	RP =   -11.774 deg,	RR =    89.523 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.100  mm
};
P[17]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1086.192  mm,	RY =   176.767  mm,	RZ =   -13.017  mm,
	RW =   -26.147 deg,	RP =   -11.774 deg,	RR =    89.523 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.100  mm
};
P[18]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1092.181  mm,	RY =   142.495  mm,	RZ =   -23.510  mm,
	RW =   -25.899 deg,	RP =   -10.792 deg,	RR =    87.476 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   202.100  mm
};
P[19]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   799.328  mm,	RY =   152.979  mm,	RZ =  -148.312  mm,
	RW =   -19.644 deg,	RP =   -15.527 deg,	RR =    87.103 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1169.510  mm,	RY =   484.618  mm,	RZ =  -199.139  mm,
	RW =   -46.563 deg,	RP =   -59.074 deg,	RR =   142.975 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1197.278  mm,	RY =   238.241  mm,	RZ =  -159.436  mm,
	RW =   -56.610 deg,	RP =   -81.615 deg,	RR =   173.927 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1227.203  mm,	RY =   208.000  mm,	RZ =  -116.273  mm,
	RW =   -58.512 deg,	RP =   -84.525 deg,	RR =   178.276 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   144.379  mm
};
P[23]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1293.679  mm,	RY =   167.592  mm,	RZ =  -102.778  mm,
	RW =   -13.173 deg,	RP =   -81.883 deg,	RR =   133.217 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   171.041  mm
};
P[24]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1320.856  mm,	RY =   158.880  mm,	RZ =   -31.786  mm,
	RW =   -13.173 deg,	RP =   -81.884 deg,	RR =   133.216 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    58.973  mm
};
P[25]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1354.934  mm,	RY =   160.011  mm,	RZ =   -31.783  mm,
	RW =   -13.173 deg,	RP =   -81.883 deg,	RR =   133.217 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    58.973  mm
};
P[26]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1293.679  mm,	RY =   167.592  mm,	RZ =  -102.778  mm,
	RW =   -13.173 deg,	RP =   -81.883 deg,	RR =   133.217 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   171.041  mm
};
P[27]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1190.560  mm,	RY =   353.646  mm,	RZ =  -159.437  mm,
	RW =   -53.994 deg,	RP =   -76.342 deg,	RR =   162.397 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1140.738  mm,	RY =   306.361  mm,	RZ =  -309.046  mm,
	RW =     8.145 deg,	RP =   -68.816 deg,	RR =   105.508 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1026.464  mm,	RY =   196.698  mm,	RZ =  -472.637  mm,
	RW =    12.429 deg,	RP =   -37.550 deg,	RR =   179.067 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   858.589  mm,	RY =  -397.128  mm,	RZ =  -390.268  mm,
	RW =    13.563 deg,	RP =   -44.417 deg,	RR =   -82.219 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   844.980  mm,	RY =  -348.462  mm,	RZ =  -129.968  mm,
	RW =    19.926 deg,	RP =   -75.564 deg,	RR =   -91.270 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   217.082  mm
};
P[32]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   812.301  mm,	RY =  -277.855  mm,	RZ =   -50.700  mm,
	RW =   165.421 deg,	RP =   -85.373 deg,	RR =   127.651 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   217.082  mm
};
P[33]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   795.963  mm,	RY =  -249.271  mm,	RZ =   -35.505  mm,
	RW =   165.421 deg,	RP =   -85.373 deg,	RR =   127.651 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    15.900  mm
};
P[34]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   700.853  mm,	RY =  -248.032  mm,	RZ =   -34.989  mm,
	RW =   152.068 deg,	RP =   -87.519 deg,	RR =   141.028 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    15.700  mm
};
P[35]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   801.900  mm,	RY =  -284.416  mm,	RZ =   -75.871  mm,
	RW =   165.421 deg,	RP =   -85.372 deg,	RR =   127.650 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   217.082  mm
};
P[36]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   844.980  mm,	RY =  -348.462  mm,	RZ =  -129.968  mm,
	RW =    19.926 deg,	RP =   -75.564 deg,	RR =   -91.270 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   217.082  mm
};
P[37]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   858.589  mm,	RY =  -397.128  mm,	RZ =  -390.268  mm,
	RW =    13.563 deg,	RP =   -44.417 deg,	RR =   -82.219 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   341.681  mm,	RY =  -170.477  mm,	RZ =  -671.251  mm,
	RW =    29.745 deg,	RP =   -14.702 deg,	RR =    72.713 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   200.000  mm
};
/END
