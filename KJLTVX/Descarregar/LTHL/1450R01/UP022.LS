/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 17188;
CREATE		= DATE 18-09-11  TIME 07:08:34;
MODIFIED	= DATE 24-03-28  TIME 20:16:24;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 90;
MEMORY_SIZE	= 32144;
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
     11:  !Lib. de Anticolisiones ;
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  DO[55]=ON ;
     15:  DO[56]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  !Basculante 1 en Pos. de Reposo ;
     21:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     22:  WAIT (M[96])    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=(ON) ;
     25:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   9:   ;
  10:  !5qa802035b_017_rps0022_L ;
  11:  !Punto de Sol. No. 10107 ;
  12:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10107,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  13:   ;
  14:  !5qa802035b_017_rps0038_L ;
  15:  !Punto de Sol. No. 10108 ;
  16:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10108,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  17:   ;
  18:  !5qa802035b_017_rps0021_L ;
  19:  !Punto de Sol. No. 10109 ;
  20:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10109,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-8) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  21:   ;
  22:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[10] 100% CNT50 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  24:   ;
  25:  !5qa802035b_017_rps005_L ;
  26:  !Punto de Sol. No. 10158 ;
  27:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10158,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  28:   ;
  29:J P[12] 100% CNT50 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  30:   ;
  31:  !5qa802035b_017_rps004_L ;
  32:  !Punto de Sol. No. 10157 ;
  33:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10157,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  34:   ;
  35:  !5qa802035b_017_rps003_L ;
  36:  !Punto de Sol. No. 10156 ;
  37:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10156,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  38:   ;
  39:J P[15] 100% CNT50 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  40:J P[16] 100% CNT30 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  41:J P[17] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  42:   ;
  43:  !5qa802035b_017_rps0009_L ;
  44:  !Punto de Sol. No. 10110 ;
  45:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10110,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  46:   ;
  47:  !5qa802035b_017_rps0010_L ;
  48:  !Punto de Sol. No. 10111 ;
  49:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  50:   ;
  51:  !5qa802035b_017_rps0037_L ;
  52:  !Punto de Sol. No. 10112 ;
  53:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10112,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  54:   ;
  55:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  56:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  57:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  58:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  59:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  60:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  61:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  62:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  63:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  64:   ;
  65:  !5qa802035b_043_asps0001_L ;
  66:  !Punto de Sol. No. 10113 ;
  67:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10113,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  68:   ;
  69:  !5qa802035b_043_asps0003_L ;
  70:  !Punto de Sol. No. 10114 ;
  71:J P[31] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10114,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  72:   ;
  73:  !5qa802035b_043_asps0004_L ;
  74:  !Punto de Sol. No. 10115 ;
  75:J P[32] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10115,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  76:   ;
  77:  !5qa802035b_043_asps0002_L ;
  78:  !Punto de Sol. No. 10116 ;
  79:  !Fin de Trabajo ;
  80:J P[33] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10116,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  81:   ;
  82:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  83:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  84:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  85:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  86:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  87:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  88:   ;
  89:  !Apagar Anticol. 3 vs 1410R01 ;
  90:J P[40] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1889.240  mm,	RY = -1229.666  mm,	RZ = -1106.251  mm,
	RW =   -39.937 deg,	RP =   -60.048 deg,	RR =    89.927 deg
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
	RX = -1326.930  mm,	RY = -1443.968  mm,	RZ =   -74.222  mm,
	RW =   -37.454 deg,	RP =   -18.689 deg,	RR =    86.371 deg
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
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -318.252  mm,	RY =  -668.328  mm,	RZ =   -83.359  mm,
	RW =   -38.114 deg,	RP =    -8.343 deg,	RR =    86.527 deg
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
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -534.109  mm,	RY =  -537.053  mm,	RZ =   160.864  mm,
	RW =   -27.448 deg,	RP =      .665 deg,	RR =    91.284 deg
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
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -543.553  mm,	RY =  -513.997  mm,	RZ =   154.536  mm,
	RW =   -23.796 deg,	RP =    -3.452 deg,	RR =    91.230 deg
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
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -539.777  mm,	RY =  -519.458  mm,	RZ =   161.523  mm,
	RW =   -25.620 deg,	RP =    -1.630 deg,	RR =    89.587 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    21.382  mm
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
	RX =  -520.228  mm,	RY =  -520.144  mm,	RZ =   160.958  mm,
	RW =   -25.761 deg,	RP =    -1.445 deg,	RR =    91.318 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    22.831  mm
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
	RX =  -494.605  mm,	RY =  -520.806  mm,	RZ =   160.911  mm,
	RW =   -26.421 deg,	RP =    -1.092 deg,	RR =    91.997 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    26.276  mm
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
	RX =  -496.866  mm,	RY =  -523.573  mm,	RZ =   152.563  mm,
	RW =   -23.796 deg,	RP =    -3.456 deg,	RR =    91.224 deg
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
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -595.291  mm,	RY =  -547.051  mm,	RZ =   295.086  mm,
	RW =   -20.260 deg,	RP =    -2.550 deg,	RR =    90.628 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   163.607  mm
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
	RX =  -571.946  mm,	RY =  -515.690  mm,	RZ =   298.432  mm,
	RW =   -13.044 deg,	RP =    -2.855 deg,	RR =    90.258 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.977  mm
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
	RX =  -578.549  mm,	RY =  -517.441  mm,	RZ =   303.207  mm,
	RW =   -18.234 deg,	RP =    -2.708 deg,	RR =    90.794 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    35.181  mm
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
	RX =  -596.553  mm,	RY =  -514.152  mm,	RZ =   300.134  mm,
	RW =   -23.440 deg,	RP =    -2.503 deg,	RR =    90.797 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.900  mm
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
	RX =  -620.643  mm,	RY =  -514.572  mm,	RZ =   298.617  mm,
	RW =   -23.441 deg,	RP =    -2.503 deg,	RR =    90.797 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    15.977  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -594.852  mm,	RY =  -547.053  mm,	RZ =   295.280  mm,
	RW =   -24.025 deg,	RP =    -2.504 deg,	RR =    90.794 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   163.607  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -496.866  mm,	RY =  -523.573  mm,	RZ =   152.563  mm,
	RW =   -23.796 deg,	RP =    -3.456 deg,	RR =    91.224 deg
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
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -441.719  mm,	RY =  -530.734  mm,	RZ =   290.593  mm,
	RW =   -30.210 deg,	RP =    -3.456 deg,	RR =    91.224 deg
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
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -454.766  mm,	RY =  -508.406  mm,	RZ =   301.479  mm,
	RW =   -30.302 deg,	RP =    -3.422 deg,	RR =    91.360 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    13.188  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -434.576  mm,	RY =  -507.746  mm,	RZ =   303.385  mm,
	RW =   -30.317 deg,	RP =    -3.433 deg,	RR =    91.321 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    13.200  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -418.240  mm,	RY =  -507.751  mm,	RZ =   302.814  mm,
	RW =   -30.210 deg,	RP =    -3.459 deg,	RR =    91.226 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    13.200  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -416.802  mm,	RY =  -523.789  mm,	RZ =   297.203  mm,
	RW =   -30.210 deg,	RP =    -3.459 deg,	RR =    91.226 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   130.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	RX =  -356.975  mm,	RY =  -511.908  mm,	RZ =   121.859  mm,
	RW =   -30.210 deg,	RP =    -3.459 deg,	RR =    91.226 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   130.000  mm
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
	RX =  -287.164  mm,	RY =  -363.481  mm,	RZ =   -88.006  mm,
	RW =   -27.399 deg,	RP =   -48.271 deg,	RR =    95.482 deg
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
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -358.907  mm,	RY =   -31.699  mm,	RZ =    92.959  mm,
	RW =    -4.293 deg,	RP =   -78.656 deg,	RR =    62.984 deg
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
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -193.343  mm,	RY =   169.155  mm,	RZ =   310.899  mm,
	RW =   143.252 deg,	RP =   -48.764 deg,	RR =   -88.909 deg
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
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -213.133  mm,	RY =   104.513  mm,	RZ =   742.495  mm,
	RW =   148.202 deg,	RP =   -13.665 deg,	RR =   -86.932 deg
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
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -212.924  mm,	RY =  -372.924  mm,	RZ =   670.196  mm,
	RW =   133.165 deg,	RP =     5.939 deg,	RR =   -87.856 deg
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
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -246.618  mm,	RY =  -497.245  mm,	RZ =   365.861  mm,
	RW =   154.397 deg,	RP =     8.753 deg,	RR =   -88.468 deg
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
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -289.552  mm,	RY =  -488.768  mm,	RZ =   265.523  mm,
	RW =   159.915 deg,	RP =     8.753 deg,	RR =   -88.468 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    93.446  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -280.312  mm,	RY =  -504.481  mm,	RZ =   261.284  mm,
	RW =   159.917 deg,	RP =     8.755 deg,	RR =   -88.456 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -257.133  mm,	RY =  -507.278  mm,	RZ =   260.413  mm,
	RW =   159.915 deg,	RP =     8.754 deg,	RR =   -88.472 deg
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
P[32]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -229.811  mm,	RY =  -508.904  mm,	RZ =   258.570  mm,
	RW =   165.866 deg,	RP =     8.376 deg,	RR =   -89.699 deg
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
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -195.018  mm,	RY =  -509.627  mm,	RZ =   267.075  mm,
	RW =   169.878 deg,	RP =     8.376 deg,	RR =   -89.699 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    24.000  mm
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
	RX =  -195.078  mm,	RY =  -499.102  mm,	RZ =   268.626  mm,
	RW =   178.949 deg,	RP =     8.376 deg,	RR =   -89.699 deg
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
P[35]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -163.915  mm,	RY =  -498.522  mm,	RZ =   321.808  mm,
	RW =  -175.200 deg,	RP =     8.377 deg,	RR =   -89.699 deg
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
P[36]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -247.942  mm,	RY =  -473.184  mm,	RZ =   365.324  mm,
	RW =   167.381 deg,	RP =    12.205 deg,	RR =   -65.055 deg
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
P[37]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -247.527  mm,	RY =  -504.516  mm,	RZ =   488.411  mm,
	RW =  -177.438 deg,	RP =    10.947 deg,	RR =   -54.815 deg
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
P[38]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -280.835  mm,	RY =  -362.639  mm,	RZ =   919.181  mm,
	RW =   167.295 deg,	RP =    17.233 deg,	RR =   -62.959 deg
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
P[39]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -361.811  mm,	RY =    78.564  mm,	RZ =  1053.372  mm,
	RW =   163.386 deg,	RP =    16.902 deg,	RR =   -76.242 deg
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
P[40]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1889.246  mm,	RY = -1229.657  mm,	RZ = -1106.250  mm,
	RW =   -39.937 deg,	RP =   -60.048 deg,	RR =    89.927 deg
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
