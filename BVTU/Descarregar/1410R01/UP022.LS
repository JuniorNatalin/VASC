/PROG  UP022
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 16358;
CREATE		= DATE 16-07-03  TIME 07:53:12;
MODIFIED	= DATE 24-06-29  TIME 09:33:56;
FILE_NAME	= R1410R01;
VERSION		= 0;
LINE_COUNT	= 67;
MEMORY_SIZE	= 31038;
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
      8:  DO[79]=OFF ;
      9:  DO[78]=OFF ;
     10:  DO[76]=ON ;
     11:  DO[74]=OFF ;
     12:  !Lib. de Anticolisiones ;
     13:  DO[41]=ON ;
     14:  DO[42]=ON ;
     15:  DO[43]=ON ;
     16:  DO[44]=ON ;
     17:  DO[45]=ON ;
     18:  DO[46]=ON ;
     19:  !Apagar Pos. Base ;
     20:  DO[15]=OFF ;
     21:  !Robot en Trayectoria ;
     22:  DO[16]=ON ;
     23:  !Fresador en Pos. Base ;
     24:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     25:  WAIT (M[96])    ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  10:  !5qa803296_004_dps0001_X ;
  11:  !Punto de Sol. No. 13117 ;
  12:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13117,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  13:  !5qa803296_004_dps0002_X ;
  14:  !Punto de Sol. No. 13118 ;
  15:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13118,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  17:  !5qf803296_p0004_d0210004200_R ;
  18:  !Punto de Sol. No. 13119 ;
  19:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13119,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  21:  !5qf803296_p0004_d0210004100_R ;
  22:  !Punto de Sol. No. 13120 ;
  23:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13120,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  25:  !5qa803296_017_rps0001_X ;
  26:  !Punto de Sol. No. 13121 ;
  27:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13121,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  28:  !5qa803296_017_rps0007_X ;
  29:  !Punto de Sol. No. 13122 ;
  30:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13122,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  31:  !5qa803296_017_rps0002_X ;
  32:  !Punto de Sol. No. 13123 ;
  33:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13123,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  34:  !5qa803296_017_rps0003_X ;
  35:  !Punto de Sol. No. 13124 ;
  36:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13124,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  37:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  38:  !5qa803296_017_rps0005_X ;
  39:  !Punto de Sol. No. 13125 ;
  40:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13125,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  41:  !5qa803296_017_rps0006_X ;
  42:  !Punto de Sol. No. 13126 ;
  43:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13126,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  44:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  45:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  46:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  47:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  49:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  52:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  53:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  54:  !5qf803296_p0003_c0210003900_L ;
  55:  !Punto de Sol. No. 13127 ;
  56:J P[31] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13127,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  57:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  58:  !5qa803296_003_cps0001_X ;
  59:  !Punto de Sol. No. 13128 ;
  60:  !Fin de Trabajo 2 ;
  61:J P[33] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13128,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  62:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  63:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  64:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  65:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  66:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
  67:J P[39] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -435.401  mm,	RY =   376.993  mm,	RZ =   340.482  mm,
	RW =  -113.567 deg,	RP =    23.614 deg,	RR =  -139.821 deg
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
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   122.430  mm,	RY =   227.631  mm,	RZ =   258.807  mm,
	RW =  -111.444 deg,	RP =    51.849 deg,	RR =  -101.983 deg
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
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   209.742  mm,	RY =   235.526  mm,	RZ =   238.507  mm,
	RW =  -111.444 deg,	RP =    51.849 deg,	RR =  -101.983 deg
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
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   245.693  mm,	RY =   203.193  mm,	RZ =   181.209  mm,
	RW =  -111.445 deg,	RP =    51.849 deg,	RR =  -101.984 deg
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
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   362.183  mm,	RY =   169.265  mm,	RZ =    92.926  mm,
	RW =  -111.445 deg,	RP =    51.849 deg,	RR =  -101.984 deg
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
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   452.072  mm,	RY =   154.228  mm,	RZ =    52.875  mm,
	RW =  -106.798 deg,	RP =    38.604 deg,	RR =   -95.486 deg
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
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   445.182  mm,	RY =   160.018  mm,	RZ =    35.460  mm,
	RW =  -108.395 deg,	RP =    38.196 deg,	RR =   -96.196 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.700  mm
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
	RX =   471.246  mm,	RY =   157.575  mm,	RZ =    29.668  mm,
	RW =  -112.234 deg,	RP =    38.142 deg,	RR =   -96.763 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.900  mm
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
	RX =   486.562  mm,	RY =   169.527  mm,	RZ =    34.351  mm,
	RW =  -114.131 deg,	RP =    37.157 deg,	RR =   -95.285 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    38.732  mm
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
	RX =   491.846  mm,	RY =   178.309  mm,	RZ =     8.671  mm,
	RW =  -120.131 deg,	RP =    33.984 deg,	RR =   -94.285 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.700  mm
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
	RX =   478.187  mm,	RY =   180.071  mm,	RZ =    15.582  mm,
	RW =  -121.950 deg,	RP =    34.680 deg,	RR =   -95.710 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    35.760  mm
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
	RX =   446.523  mm,	RY =   178.296  mm,	RZ =    13.608  mm,
	RW =  -125.800 deg,	RP =    36.053 deg,	RR =   -98.725 deg
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
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   405.653  mm,	RY =   180.561  mm,	RZ =    30.944  mm,
	RW =  -124.882 deg,	RP =    33.663 deg,	RR =   -99.060 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    35.393  mm
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
	RX =   389.549  mm,	RY =   175.709  mm,	RZ =    26.227  mm,
	RW =  -124.629 deg,	RP =    33.076 deg,	RR =   -99.129 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.900  mm
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
	RX =   362.394  mm,	RY =   182.071  mm,	RZ =    38.489  mm,
	RW =  -131.594 deg,	RP =    30.317 deg,	RR =  -103.965 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.900  mm
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
	RX =   339.923  mm,	RY =   181.781  mm,	RZ =    43.983  mm,
	RW =  -140.375 deg,	RP =    32.398 deg,	RR =  -115.772 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    22.300  mm
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
	RX =   308.656  mm,	RY =   186.950  mm,	RZ =    54.864  mm,
	RW =  -136.323 deg,	RP =    34.840 deg,	RR =  -114.012 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.200  mm
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
	RX =   290.938  mm,	RY =   185.422  mm,	RZ =    76.068  mm,
	RW =  -141.783 deg,	RP =    31.687 deg,	RR =  -120.020 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    33.810  mm
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
	RX =   271.004  mm,	RY =   190.078  mm,	RZ =    77.355  mm,
	RW =  -144.759 deg,	RP =    29.788 deg,	RR =  -124.441 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.500  mm
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
	RX =   251.343  mm,	RY =   189.746  mm,	RZ =    91.665  mm,
	RW =  -140.237 deg,	RP =    26.966 deg,	RR =  -120.365 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.400  mm
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
	RX =   284.200  mm,	RY =   180.282  mm,	RZ =    99.507  mm,
	RW =  -134.786 deg,	RP =    31.544 deg,	RR =  -115.731 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
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
	RX =   245.694  mm,	RY =   203.196  mm,	RZ =   181.206  mm,
	RW =  -111.445 deg,	RP =    51.849 deg,	RR =  -101.984 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   209.743  mm,	RY =   235.527  mm,	RZ =   238.505  mm,
	RW =  -111.444 deg,	RP =    51.849 deg,	RR =  -101.983 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   122.430  mm,	RY =   227.633  mm,	RZ =   258.804  mm,
	RW =  -111.444 deg,	RP =    51.849 deg,	RR =  -101.983 deg
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
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -58.299  mm,	RY =   187.166  mm,	RZ =   401.203  mm,
	RW =   164.891 deg,	RP =    62.887 deg,	RR =  -176.258 deg
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
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   223.574  mm,	RY =  -223.187  mm,	RZ =   265.547  mm,
	RW =   158.481 deg,	RP =    50.639 deg,	RR =   147.276 deg
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
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   248.256  mm,	RY =  -197.772  mm,	RZ =   129.674  mm,
	RW =   144.649 deg,	RP =    49.912 deg,	RR =   129.820 deg
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
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   374.543  mm,	RY =  -156.852  mm,	RZ =    51.956  mm,
	RW =   133.280 deg,	RP =    47.484 deg,	RR =   114.017 deg
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
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   499.397  mm,	RY =  -178.948  mm,	RZ =    24.565  mm,
	RW =   135.661 deg,	RP =    49.625 deg,	RR =   117.193 deg
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
P[30]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   501.005  mm,	RY =  -141.546  mm,	RZ =    14.214  mm,
	RW =   119.465 deg,	RP =    19.630 deg,	RR =    90.000 deg
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
P[31]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   495.019  mm,	RY =  -128.526  mm,	RZ =     9.262  mm,
	RW =   120.640 deg,	RP =    18.952 deg,	RR =    90.538 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   476.206  mm,	RY =  -130.366  mm,	RZ =    43.500  mm,
	RW =   119.596 deg,	RP =    21.125 deg,	RR =    91.490 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    32.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   476.184  mm,	RY =  -112.812  mm,	RZ =    42.781  mm,
	RW =   119.227 deg,	RP =    22.226 deg,	RR =    91.405 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.300  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   392.206  mm,	RY =  -139.746  mm,	RZ =    78.978  mm,
	RW =   119.465 deg,	RP =    19.630 deg,	RR =    90.000 deg
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
P[35]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   499.397  mm,	RY =  -178.948  mm,	RZ =    24.565  mm,
	RW =   135.661 deg,	RP =    49.625 deg,	RR =   117.193 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   374.544  mm,	RY =  -156.852  mm,	RZ =    51.959  mm,
	RW =   133.280 deg,	RP =    47.484 deg,	RR =   114.017 deg
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
P[37]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   243.250  mm,	RY =  -191.769  mm,	RZ =   120.385  mm,
	RW =   144.649 deg,	RP =    49.912 deg,	RR =   129.820 deg
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
P[38]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   208.855  mm,	RY =  -213.728  mm,	RZ =   244.218  mm,
	RW =   158.481 deg,	RP =    50.639 deg,	RR =   147.276 deg
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
P[39]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -435.401  mm,	RY =   376.993  mm,	RZ =   340.482  mm,
	RW =  -113.567 deg,	RP =    23.614 deg,	RR =  -139.821 deg
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
/END
