/PROG  UP022
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 14980;
CREATE		= DATE 96-03-24  TIME 09:42:34;
MODIFIED	= DATE 24-08-17  TIME 09:41:48;
FILE_NAME	= R1430R01;
VERSION		= 0;
LINE_COUNT	= 68;
MEMORY_SIZE	= 27788;
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
      9:  DO[76]=ON ;
     10:  DO[74]=OFF ;
     11:  !Lib. de Anticolisiones ;
     12:  DO[41]=ON ;
     13:  DO[42]=ON ;
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
     25:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:  !5qa803296_002_bps0003_X ;
   9:  !Punto de Sol. No. 13129 ;
  10:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13129,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:  !5qa803296_002_bps0005_X ;
  13:  !Punto de Sol. No. 13130 ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13130,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  15:  !5qa803296_002_bps0002_X ;
  16:  !Punto de Sol. No. 13131 ;
  17:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13131,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  18:   ;
  19:  !5qf803296_p0024_ga0210000100_R ;
  20:  !Punto de Sol. No. 13132 ;
  21:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13132,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  22:   ;
  23:  !5qf803296_p0024_ga0210000200_R ;
  24:  !Punto de Sol. No. 13133 ;
  25:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13133,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  26:   ;
  27:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  32:  !5qa803296_001_aps0009_X ;
  33:  !Punto de Sol. No. 13134 ;
  34:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13134,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  36:  !5qa803296_001_aps0011_X ;
  37:  !Punto de Sol. No. 13135 ;
  38:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13135,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  39:  !5qa803296_001_aps0003_X ;
  40:  !Punto de Sol. No. 13136 ;
  41:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13136,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  42:   ;
  43:  !5qf803296_p0023_fa0210000100_L ;
  44:  !Punto de Sol. No. 13137 ;
  45:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13137,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  46:   ;
  47:  !5qf803296_p0023_fa0210000200_L ;
  48:  !Punto de Sol. No. 13138 ;
  49:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13138,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  52:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  53:   ;
  54:  !5qa803296_003_cps0002_X ;
  55:  !Punto de Sol. No. 13139 ;
  56:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13139,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  57:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  58:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  59:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  60:  !5qf803296_p0001_a0210001600_L ;
  61:  !Punto de Sol. No. 13140 ;
  62:  !Fin de Trabajo 2 ;
  63:J P[29] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13140,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  64:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  65:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  66:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  67:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  68:J P[34] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  2463.513  mm,	RY =  1857.645  mm,	RZ =   379.482  mm,
	RW =   -54.259 deg,	RP =     9.510 deg,	RR =    83.502 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   268.963  mm,	RY =   418.742  mm,	RZ =  -493.235  mm,
	RW =   -18.376 deg,	RP =    43.080 deg,	RR =  -173.197 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   633.335  mm,	RY =   444.385  mm,	RZ =    95.520  mm,
	RW =   -24.169 deg,	RP =    68.869 deg,	RR =   179.991 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   393.269  mm,	RY =   352.611  mm,	RZ =    41.579  mm,
	RW =   -24.168 deg,	RP =    68.867 deg,	RR =   179.992 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   256.414  mm,	RY =   297.730  mm,	RZ =    45.162  mm,
	RW =   -24.170 deg,	RP =    68.869 deg,	RR =   179.992 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   312.534  mm,	RY =   316.282  mm,	RZ =    33.338  mm,
	RW =   -27.523 deg,	RP =    73.486 deg,	RR =  -179.842 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    28.861  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   346.383  mm,	RY =   308.733  mm,	RZ =    14.101  mm,
	RW =   -31.035 deg,	RP =    76.849 deg,	RR =   179.219 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   390.680  mm,	RY =   307.584  mm,	RZ =     3.295  mm,
	RW =   -27.289 deg,	RP =    77.266 deg,	RR =  -179.979 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   427.172  mm,	RY =   305.910  mm,	RZ =   -10.294  mm,
	RW =   -31.188 deg,	RP =    78.771 deg,	RR =  -179.999 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   465.302  mm,	RY =   302.759  mm,	RZ =   -15.966  mm,
	RW =   -35.306 deg,	RP =    80.021 deg,	RR =  -179.689 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   586.936  mm,	RY =   358.016  mm,	RZ =   -11.117  mm,
	RW =   -35.291 deg,	RP =    80.016 deg,	RR =  -179.677 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    40.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   473.862  mm,	RY =   336.682  mm,	RZ =  -376.763  mm,
	RW =   -20.880 deg,	RP =    63.632 deg,	RR =  -164.671 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    40.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   419.636  mm,	RY =  -324.136  mm,	RZ =  -323.964  mm,
	RW =    13.887 deg,	RP =    53.304 deg,	RR =  -179.743 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   719.672  mm,	RY =  -360.041  mm,	RZ =   -57.787  mm,
	RW =    13.662 deg,	RP =    68.848 deg,	RR =  -179.997 deg
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   378.519  mm,	RY =  -272.873  mm,	RZ =    55.415  mm,
	RW =    13.669 deg,	RP =    68.870 deg,	RR =  -179.992 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
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
	RX =   252.984  mm,	RY =  -239.870  mm,	RZ =    39.546  mm,
	RW =    13.664 deg,	RP =    68.867 deg,	RR =  -179.997 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.000  mm
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
	RX =   303.151  mm,	RY =  -250.032  mm,	RZ =    37.199  mm,
	RW =    17.763 deg,	RP =    71.907 deg,	RR =   179.504 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    29.638  mm
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
	RX =   350.055  mm,	RY =  -246.102  mm,	RZ =     5.929  mm,
	RW =    23.215 deg,	RP =    75.876 deg,	RR =  -179.906 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.100  mm
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
	RX =   386.172  mm,	RY =  -245.997  mm,	RZ =    -3.004  mm,
	RW =    23.365 deg,	RP =    78.145 deg,	RR =   179.987 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.004  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   428.429  mm,	RY =  -246.507  mm,	RZ =   -11.633  mm,
	RW =    17.502 deg,	RP =    78.999 deg,	RR =   176.548 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.800  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   466.953  mm,	RY =  -245.725  mm,	RZ =   -19.060  mm,
	RW =    25.332 deg,	RP =    80.860 deg,	RR =  -178.359 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   473.640  mm,	RY =  -251.994  mm,	RZ =    10.925  mm,
	RW =    23.848 deg,	RP =    80.499 deg,	RR =  -179.863 deg
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
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   528.941  mm,	RY =  -204.835  mm,	RZ =     6.729  mm,
	RW =   -73.471 deg,	RP =    53.457 deg,	RR =    81.770 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   140.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   481.783  mm,	RY =  -159.562  mm,	RZ =    31.820  mm,
	RW =   -68.004 deg,	RP =    29.773 deg,	RR =    87.038 deg
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
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   450.348  mm,	RY =  -111.813  mm,	RZ =    39.974  mm,
	RW =   -66.867 deg,	RP =    20.641 deg,	RR =    89.508 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    12.900  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   481.783  mm,	RY =  -159.562  mm,	RZ =    31.816  mm,
	RW =   -68.004 deg,	RP =    29.773 deg,	RR =    87.038 deg
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
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   727.673  mm,	RY =  -153.403  mm,	RZ =    36.450  mm,
	RW =   -62.157 deg,	RP =    29.828 deg,	RR =    84.607 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    86.907  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   869.883  mm,	RY =  -161.951  mm,	RZ =    16.340  mm,
	RW =   -59.114 deg,	RP =    30.180 deg,	RR =    83.187 deg
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
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   946.613  mm,	RY =  -164.790  mm,	RZ =    -7.339  mm,
	RW =   -57.544 deg,	RP =    30.407 deg,	RR =    82.431 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    15.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   944.754  mm,	RY =  -194.270  mm,	RZ =    38.139  mm,
	RW =   -57.544 deg,	RP =    30.407 deg,	RR =    82.432 deg
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
P[31]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   892.993  mm,	RY =  -270.608  mm,	RZ =    -6.929  mm,
	RW =   -57.545 deg,	RP =    30.407 deg,	RR =    82.430 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   783.929  mm,	RY =  -335.727  mm,	RZ =  -141.407  mm,
	RW =   -51.190 deg,	RP =    30.407 deg,	RR =    82.430 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   170.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =   -82.337  mm,	RY =   439.229  mm,	RZ =  -477.418  mm,
	RW =   -25.888 deg,	RP =    13.161 deg,	RR =   144.189 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  2463.513  mm,	RY =  1857.645  mm,	RZ =   379.482  mm,
	RW =   -54.259 deg,	RP =     9.510 deg,	RR =    83.502 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
