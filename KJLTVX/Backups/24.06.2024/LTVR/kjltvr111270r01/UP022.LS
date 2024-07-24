/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 19864;
CREATE		= DATE 03-01-27  TIME 13:57:30;
MODIFIED	= DATE 24-05-18  TIME 09:25:48;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 103;
MEMORY_SIZE	= 37432;
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
   2:  UTOOL_NUM=4 ;
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
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  DO[45]=ON ;
     17:  DO[46]=ON ;
     18:  !Apagar Pos. BAse ;
     19:  DO[15]=OFF ;
     20:  !Robot en Trayectoria ;
     21:  DO[16]=ON ;
     22:  !Basculante en Pos. de Reposo ;
     23:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     24:  WAIT (M[96])    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   5:   ;
   6:  !Encender Anticolisiones 1180R01 ;
   7:J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Encender Anticolisiones ;
      4:  DO[89]=ON ;
      5:  CALL MAKRO020    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  10:   ;
  11:  !Punto de Sol. No. 5725 ;
  12:  !5qa802035b_066_brps0003_R ;
  13:J P[5] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11560,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  14:   ;
  15:  !5qa802035b_066_brps0004_R ;
  16:J P[6] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11561,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  17:   ;
  18:J P[7] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  25:   ;
  26:  !Punto de Sol. No. 5736 ;
  27:  !5qa802035b_014_ops0001_R ;
  28:J P[14] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11549,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  29:   ;
  30:  !Apagar Anticolisiones 1180R01 ;
  31:J P[15] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Apagar Anticolisiones ;
      2:  DO[49]=ON ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  32:   ;
  33:  !Punto de Sol. No. 5734 ;
  34:  !5qa802035b_014_ops0004_R ;
  35:J P[16] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11550,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  36:   ;
  37:  !Punto de Sol. No. 5733 ;
  38:  !5qa802035b_014_ops0003_R ;
  39:J P[17] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11551,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  40:   ;
  41:  !Punto de Sol. No. 5735 ;
  42:  !5qa802035b_014_ops0002_R ;
  43:J P[18] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11552,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  44:   ;
  45:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  46:   ;
  47:  !Punto de Sol. No. 5732 ;
  48:  !5qa802035b_030_aeps0003_R ;
  49:J P[20] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11553,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  50:   ;
  51:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  52:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  53:   ;
  54:  !Punto de Sol. No. 5731 ;
  55:  !5qa802035b_030_aeps0008_R ;
  56:J P[23] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11554,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  57:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  58:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  59:   ;
  60:  !Punto de Sol. No. 5729 ;
  61:  !5qa802035b_030_aeps0007_R ;
  62:J P[26] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11555,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  63:   ;
  64:  !Punto de Sol. No. 5730 ;
  65:  !5qa802035b_030_aeps0001_R ;
  66:J P[27] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11556,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  67:J P[28] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  68:   ;
  69:J P[29] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  70:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  71:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  72:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  73:   ;
  74:  !Punto de Sol. No. 5728 ;
  75:  !5qa802035b_024_yps0007_R ;
  76:J P[33] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11557,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  77:   ;
  78:  !Encender Anticolisiones 1180R01 ;
  79:J P[34] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Encender Anticolisiones ;
      4:  DO[89]=ON ;
      5:  CALL MAKRO020    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  80:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  81:   ;
  82:  !Punto de Sol. No. 5727 ;
  83:  !5qa802035b_062_bpps0004_R ;
  84:J P[36] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11558,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  85:   ;
  86:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  87:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  88:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  89:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  90:   ;
  91:  !Punto de Sol. No. 5724 ;
  92:  !Fin de Trabajo 2 ;
  93:  !5qa802035b_008_hps0001_R ;
  94:J P[41] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11559,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  95:   ;
  96:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  97:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  98:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND DI[49]) ;
       ------ ;
  99:   ;
 100:  !Apagar Anticolisiones 1180R01 ;
 101:J P[45] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  !Apagar Anticolisiones ;
      2:  DO[49]=ON ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
 102:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
 103:J P[47] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   966.595  mm,	RY =  1224.875  mm,	RZ =  -913.916  mm,
	RW =    31.102 deg,	RP =   -35.675 deg,	RR =    30.602 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =    66.573  mm,	RY =  1142.156  mm,	RZ =  -613.126  mm,
	RW =     2.142 deg,	RP =   -19.187 deg,	RR =   110.593 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   119.688  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -154.178  mm,	RY =   596.732  mm,	RZ =   217.313  mm,
	RW =   179.921 deg,	RP =   -77.724 deg,	RR =   -97.644 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   119.700  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -108.885  mm,	RY =   482.669  mm,	RZ =   247.275  mm,
	RW =   173.864 deg,	RP =   -78.114 deg,	RR =   -94.065 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -118.298  mm,	RY =   464.582  mm,	RZ =   263.833  mm,
	RW =   170.735 deg,	RP =   -78.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.900  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -145.256  mm,	RY =   465.984  mm,	RZ =   268.198  mm,
	RW =   166.710 deg,	RP =   -78.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    17.600  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -108.885  mm,	RY =   482.669  mm,	RZ =   247.275  mm,
	RW =   173.864 deg,	RP =   -78.114 deg,	RR =   -94.065 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -35.503  mm,	RY =   563.140  mm,	RZ =   301.279  mm,
	RW =   177.578 deg,	RP =   -78.188 deg,	RR =  -101.712 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   341.384  mm,	RY =   812.424  mm,	RZ =   115.786  mm,
	RW =    66.801 deg,	RP =   -81.618 deg,	RR =    10.014 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -251.332  mm,	RY =   315.344  mm,	RZ =   -91.188  mm,
	RW =     3.366 deg,	RP =     1.526 deg,	RR =    92.486 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   564.831  mm,	RY =   250.353  mm,	RZ =   709.649  mm,
	RW =   128.786 deg,	RP =    48.605 deg,	RR =   -68.577 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   242.718  mm,	RY =   547.931  mm,	RZ =    -4.298  mm,
	RW =    83.000 deg,	RP =   -57.340 deg,	RR =      .000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   175.875  mm,	RY =   431.300  mm,	RZ =     6.125  mm,
	RW =    83.000 deg,	RP =   -57.341 deg,	RR =     -.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   175.468  mm,	RY =   443.811  mm,	RZ =    15.120  mm,
	RW =    87.721 deg,	RP =   -57.340 deg,	RR =     -.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    25.800  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   175.633  mm,	RY =   409.218  mm,	RZ =     6.280  mm,
	RW =    87.800 deg,	RP =   -57.341 deg,	RR =      .000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   176.328  mm,	RY =   421.983  mm,	RZ =    12.194  mm,
	RW =    87.754 deg,	RP =   -57.340 deg,	RR =      .000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    18.218  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   161.689  mm,	RY =   424.002  mm,	RZ =    21.578  mm,
	RW =    87.722 deg,	RP =   -57.340 deg,	RR =     -.001 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    17.132  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   161.869  mm,	RY =   443.738  mm,	RZ =    23.083  mm,
	RW =    87.721 deg,	RP =   -57.340 deg,	RR =     -.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    25.800  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   149.871  mm,	RY =   425.571  mm,	RZ =    18.139  mm,
	RW =    83.748 deg,	RP =   -57.311 deg,	RR =      .846 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    35.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   136.236  mm,	RY =   433.242  mm,	RZ =    34.434  mm,
	RW =    89.812 deg,	RP =   -54.924 deg,	RR =      .182 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   131.674  mm,	RY =   420.801  mm,	RZ =    32.207  mm,
	RW =    83.618 deg,	RP =   -54.691 deg,	RR =     1.630 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    22.002  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   122.194  mm,	RY =   411.413  mm,	RZ =    35.605  mm,
	RW =    87.047 deg,	RP =   -57.517 deg,	RR =     -.056 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    40.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   118.819  mm,	RY =   421.657  mm,	RZ =    40.847  mm,
	RW =    91.022 deg,	RP =   -52.996 deg,	RR =    -1.281 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    22.500  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   120.442  mm,	RY =   408.950  mm,	RZ =    33.093  mm,
	RW =    87.047 deg,	RP =   -57.517 deg,	RR =     -.055 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    22.100  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   105.714  mm,	RY =   410.942  mm,	RZ =    22.991  mm,
	RW =    77.986 deg,	RP =   -56.878 deg,	RR =      .016 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   100.877  mm,	RY =   419.112  mm,	RZ =    49.471  mm,
	RW =    91.094 deg,	RP =   -52.563 deg,	RR =    -2.243 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    23.200  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   103.535  mm,	RY =   436.763  mm,	RZ =    52.021  mm,
	RW =    90.090 deg,	RP =   -56.745 deg,	RR =     -.107 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   103.090  mm,	RY =   430.971  mm,	RZ =    43.778  mm,
	RW =    90.083 deg,	RP =   -56.741 deg,	RR =     -.098 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   117.200  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   104.412  mm,	RY =   478.117  mm,	RZ =    57.222  mm,
	RW =    88.764 deg,	RP =   -57.182 deg,	RR =    -1.326 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   117.745  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   130.027  mm,	RY =   669.970  mm,	RZ =    14.285  mm,
	RW =    79.276 deg,	RP =   -59.050 deg,	RR =      .854 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =   122.801  mm,	RY =   687.629  mm,	RZ =   290.836  mm,
	RW =     4.491 deg,	RP =   -88.998 deg,	RR =    84.506 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -92.104  mm,	RY =   508.345  mm,	RZ =   270.214  mm,
	RW =  -169.375 deg,	RP =   -77.999 deg,	RR =   -90.639 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =   -82.995  mm,	RY =   458.677  mm,	RZ =   264.644  mm,
	RW =   175.326 deg,	RP =   -78.003 deg,	RR =   -90.304 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    13.900  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -85.539  mm,	RY =   471.930  mm,	RZ =   262.488  mm,
	RW =  -169.375 deg,	RP =   -77.999 deg,	RR =   -90.639 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -171.868  mm,	RY =   498.403  mm,	RZ =   269.675  mm,
	RW =   178.000 deg,	RP =   -78.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -183.049  mm,	RY =   478.715  mm,	RZ =   267.369  mm,
	RW =  -167.307 deg,	RP =   -77.116 deg,	RR =   -97.191 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.200  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -165.012  mm,	RY =   483.293  mm,	RZ =   263.243  mm,
	RW =   174.754 deg,	RP =   -78.535 deg,	RR =   -91.329 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    55.149  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -128.951  mm,	RY =   498.749  mm,	RZ =   256.824  mm,
	RW =   152.185 deg,	RP =   -84.493 deg,	RR =   -85.819 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -390.972  mm,	RY =   630.572  mm,	RZ =   285.125  mm,
	RW =   162.678 deg,	RP =   -79.130 deg,	RR =   -89.784 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -420.383  mm,	RY =   507.542  mm,	RZ =   272.002  mm,
	RW =   162.900 deg,	RP =   -78.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -425.692  mm,	RY =   501.313  mm,	RZ =   277.854  mm,
	RW =  -178.506 deg,	RP =   -78.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    16.800  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -420.383  mm,	RY =   507.542  mm,	RZ =   272.002  mm,
	RW =   162.900 deg,	RP =   -78.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -394.675  mm,	RY =   592.289  mm,	RZ =   286.447  mm,
	RW =   162.922 deg,	RP =   -77.994 deg,	RR =   -90.024 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =  -359.176  mm,	RY =   616.791  mm,	RZ =   381.434  mm,
	RW =   175.109 deg,	RP =   -76.784 deg,	RR =  -100.525 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, -1, 0',
	RX =   -57.739  mm,	RY =   752.385  mm,	RZ =  1178.937  mm,
	RW =   162.898 deg,	RP =   -78.001 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -104.304  mm,	RY = -1980.667  mm,	RZ =   200.709  mm,
	RW =   102.702 deg,	RP =    37.509 deg,	RR =  -166.343 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   111.659  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[47]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX =   966.595  mm,	RY =  1224.875  mm,	RZ =  -913.916  mm,
	RW =    31.102 deg,	RP =   -35.675 deg,	RR =    30.602 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
/END
