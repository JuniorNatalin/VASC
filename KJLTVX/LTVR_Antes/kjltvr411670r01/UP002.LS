/PROG  UP002
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sold. MAG Est.";
PROG_SIZE	= 20278;
CREATE		= DATE 23-02-08  TIME 07:16:54;
MODIFIED	= DATE 24-07-19  TIME 18:36:08;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 78;
MEMORY_SIZE	= 39102;
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
   4:J P[1] 100% CNT0 ACC90 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[72]=OFF ;
     13:  !RoboterVerriegelungen ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Grundstellung Aus ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (M[1])    ;
     21:  DO[1878]=OFF ;
     22:  DO[1879]=ON ;
     23:  DO[1880]=OFF ;
     24:  WAIT ((!DI[1878] AND DI[1879] AND !DI[1880]))    ;
     25:  WAIT (DI[2163] AND !DI[2164] AND M[1] AND M[32] AND M[33])    ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   7:  !Cordon de Soldadura 1 ;
   8:  !5QA802035_MA_712_S__MA_0001 ;
   9:L P[4] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=1,NahtNr=1,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  10:L P[5] 9mm/sec CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  11:  !Apagar Antorcha MAG ;
  12:L P[6] 8mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=1,NahtNr=1,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  14:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  15:  !Cordon de Soldadura 2 ;
  16:  !5QA802035_MA_710_M__MA_0001 ;
  17:L P[9] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=2,NahtNr=2,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  18:L P[10] 10mm/sec CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  19:  !Apagar Antorcha MAG ;
  20:L P[11] 10mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=2,NahtNr=2,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  23:  !Cordon de Soldadura 3 ;
  24:  !5QA802035_MA_708_BG_MA_0002 ;
  25:L P[14] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=3,NahtNr=6,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  26:  !Apagar Antorcha MAG ;
  27:L P[15] 10mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  28:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  29:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  30:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  31:  !Cordon de Soldadura 4 ;
  32:  !5QA802035_MA_708_BG_MA_0003 ;
  33:L P[19] 280mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=4,NahtNr=4,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  34:  !Apagar Antorcha MAG ;
  35:L P[20] 10mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=4,NahtNr=4,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  36:J P[21] 100% CNT15 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  37:J P[22] 100% CNT15 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  38:  !Cordon de Soldadura 5 ;
  39:  !5QA802035_MA_702_BA_MA_0001 ;
  40:L P[23] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=5,NahtNr=5,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  41:  !Apagar Antorcha MAG ;
  42:L P[24] 7mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=5,NahtNr=5,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  43:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  44:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  45:  !Cordon de Soldadura 6 ;
  46:  !5QA802035_MA_708_BG_MA_0001 ;
  47:L P[27] 350mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  48:  !Apagar Antorcha MAG ;
  49:L P[28] 12mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  50:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  51:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  52:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  53:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  54:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  55:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  56:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  57:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  58:  !Cordon de Soldadura 7 ;
  59:  !5QA802035_MA_704_BC_MA_0001 ;
  60:L P[37] 180mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=7,NahtNr=7,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  61:  !Apagar Antorcha MAG ;
  62:L P[38] 6mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=7,NahtNr=7,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  63:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  64:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  65:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  66:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  67:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  68:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  69:  !Cordon de Soldadura 8 ;
  70:  !5QA802035_MA_706_BE_MA_0001 ;
  71:L P[45] 150mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=8,NahtNr=8,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  72:  !Apagar Antorcha MAG ;
  73:  !Fin de Trabajo 2 ;
  74:L P[46] 6mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=8,NahtNr=8,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  IF (!DI[211]),CALL MAKRO002 ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  75:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  76:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  77:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  78:J P[50] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[215]=(F[572]) ;
      4:  WAIT (!F[572] OR DI[215] OR DI[216])    ;
      5:  DO[215]=(OFF) ;
      6:  F[573]=(DI[216]) ;
      7:  F[572]=(F[572] AND !DI[216]) ;
      8:  !Revision limpieza MigMag ;
      9:  IF (DO[12]),R[21]=(R[21]+1) ;
     10:  F[605]=(OFF) ;
     11:  F[603]=(F[572] OR F[573] OR (R[21]>=5)) ;
     12:  F[603]=(F[603] OR F[572] OR F[573]) ;
     13:  IF (F[603]),R[21]=(0) ;
     14:  WAIT (DI[2163] AND !DI[2164])    ;
     15:  WAIT (DI[23])    ;
     16:  DO[23]=(ON) ;
     17:  TIMER[5]=STOP ;
     18:  TC_ONLINE (M[30]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  1656.849  mm,	RY =   195.628  mm,	RZ =  1312.627  mm,
	RW =  -161.594 deg,	RP =    56.634 deg,	RR =    17.531 deg,
	E1=  2500.000  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    15.006  mm,	RY =   767.266  mm,	RZ =  -375.797  mm,
	RW =    12.607 deg,	RP =     6.768 deg,	RR =   -99.506 deg,
	E1=  1732.962  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -86.178  mm,	RY =   517.313  mm,	RZ =  -339.182  mm,
	RW =     3.154 deg,	RP =   -21.416 deg,	RR =  -113.960 deg,
	E1=  1732.919  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -79.995  mm,	RY =   501.122  mm,	RZ =  -310.966  mm,
	RW =     3.810 deg,	RP =   -19.643 deg,	RR =  -113.192 deg,
	E1=  1700.013  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -63.048  mm,	RY =   500.736  mm,	RZ =  -310.002  mm,
	RW =     3.749 deg,	RP =   -19.803 deg,	RR =  -113.089 deg,
	E1=  1700.030  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -52.731  mm,	RY =   499.296  mm,	RZ =  -312.301  mm,
	RW =     3.772 deg,	RP =   -19.749 deg,	RR =  -113.173 deg,
	E1=  1700.003  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -61.810  mm,	RY =   519.970  mm,	RZ =  -317.382  mm,
	RW =     3.724 deg,	RP =   -19.615 deg,	RR =  -113.155 deg,
	E1=  1699.992  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -39.143  mm,	RY =   506.722  mm,	RZ =  -336.680  mm,
	RW =   -22.786 deg,	RP =   -28.166 deg,	RR =  -100.170 deg,
	E1=  1728.885  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -36.208  mm,	RY =   492.467  mm,	RZ =  -328.540  mm,
	RW =   -22.466 deg,	RP =   -28.744 deg,	RR =   -99.762 deg,
	E1=  1728.885  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -27.485  mm,	RY =   492.200  mm,	RZ =  -335.530  mm,
	RW =   -22.282 deg,	RP =   -29.313 deg,	RR =   -99.971 deg,
	E1=  1728.885  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -27.757  mm,	RY =   492.869  mm,	RZ =  -342.665  mm,
	RW =   -22.650 deg,	RP =   -30.025 deg,	RR =   -99.904 deg,
	E1=  1728.886  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -36.228  mm,	RY =   549.254  mm,	RZ =  -387.450  mm,
	RW =   -26.426 deg,	RP =   -30.187 deg,	RR =   -98.848 deg,
	E1=  1732.967  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -17.351  mm,	RY =   536.152  mm,	RZ =  -262.049  mm,
	RW =   -12.440 deg,	RP =    -8.851 deg,	RR =  -126.449 deg,
	E1=  1732.967  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -30.395  mm,	RY =   485.973  mm,	RZ =  -217.954  mm,
	RW =   -10.346 deg,	RP =    -6.941 deg,	RR =  -131.692 deg,
	E1=  1732.943  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -33.716  mm,	RY =   485.068  mm,	RZ =  -239.333  mm,
	RW =   -10.548 deg,	RP =    -6.762 deg,	RR =  -134.006 deg,
	E1=  1732.959  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -26.705  mm,	RY =   498.885  mm,	RZ =  -243.548  mm,
	RW =   -11.449 deg,	RP =    -7.074 deg,	RR =  -136.653 deg,
	E1=  1732.967  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -38.878  mm,	RY =   524.811  mm,	RZ =  -308.744  mm,
	RW =   -12.471 deg,	RP =    23.331 deg,	RR =  -119.380 deg,
	E1=  1732.967  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -34.452  mm,	RY =   527.542  mm,	RZ =  -255.656  mm,
	RW =    -6.117 deg,	RP =    22.022 deg,	RR =  -110.186 deg,
	E1=  1732.998  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -43.707  mm,	RY =   486.627  mm,	RZ =  -276.316  mm,
	RW =      .082 deg,	RP =    17.527 deg,	RR =  -113.548 deg,
	E1=  1732.979  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -25.546  mm,	RY =   481.585  mm,	RZ =  -280.995  mm,
	RW =      .249 deg,	RP =    16.907 deg,	RR =  -113.292 deg,
	E1=  1732.985  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -27.075  mm,	RY =   515.888  mm,	RZ =  -289.564  mm,
	RW =    -5.326 deg,	RP =    21.056 deg,	RR =  -111.432 deg,
	E1=  1732.995  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =     4.888  mm,	RY =   499.030  mm,	RZ =  -331.834  mm,
	RW =   -20.958 deg,	RP =    21.045 deg,	RR =  -117.731 deg,
	E1=  1732.979  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    -6.337  mm,	RY =   475.424  mm,	RZ =  -342.965  mm,
	RW =   -23.896 deg,	RP =    11.244 deg,	RR =  -119.277 deg,
	E1=  1728.805  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =     9.511  mm,	RY =   472.255  mm,	RZ =  -352.607  mm,
	RW =   -23.927 deg,	RP =    11.263 deg,	RR =  -119.250 deg,
	E1=  1732.972  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    31.239  mm,	RY =   511.267  mm,	RZ =  -357.613  mm,
	RW =   -25.800 deg,	RP =    13.886 deg,	RR =  -119.549 deg,
	E1=  1732.970  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
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
	RX =    71.328  mm,	RY =   499.323  mm,	RZ =  -342.808  mm,
	RW =   -28.065 deg,	RP =    10.317 deg,	RR =  -122.995 deg,
	E1=  1732.958  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
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
	RX =    64.761  mm,	RY =   470.961  mm,	RZ =  -339.667  mm,
	RW =   -27.884 deg,	RP =    10.970 deg,	RR =  -121.702 deg,
	E1=  1732.959  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
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
	RX =    79.380  mm,	RY =   469.224  mm,	RZ =  -351.798  mm,
	RW =   -27.869 deg,	RP =    10.634 deg,	RR =  -122.030 deg,
	E1=  1732.960  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
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
	RX =    78.593  mm,	RY =   512.905  mm,	RZ =  -356.996  mm,
	RW =   -28.093 deg,	RP =    10.307 deg,	RR =  -130.346 deg,
	E1=  1732.971  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
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
	RX =   143.643  mm,	RY =   726.924  mm,	RZ =  -426.666  mm,
	RW =   -19.767 deg,	RP =    21.023 deg,	RR =  -121.383 deg,
	E1=  1732.977  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
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
	RX =  -296.004  mm,	RY =   181.344  mm,	RZ =  -858.278  mm,
	RW =    37.317 deg,	RP =    31.897 deg,	RR =   -23.912 deg,
	E1=  1732.977  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
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
	RX =  -247.666  mm,	RY =  -397.782  mm,	RZ = -1120.381  mm,
	RW =    33.492 deg,	RP =    25.174 deg,	RR =     2.833 deg,
	E1=  1732.977  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -12.362  mm,	RY =  -456.215  mm,	RZ =  -387.087  mm,
	RW =    64.991 deg,	RP =    27.506 deg,	RR =    77.456 deg,
	E1=  1732.977  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -12.362  mm,	RY =  -456.215  mm,	RZ =  -387.087  mm,
	RW =    64.991 deg,	RP =    27.506 deg,	RR =    77.456 deg,
	E1=  1732.977  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  -150.769  mm,	RY =  -141.992  mm,	RZ =  -462.779  mm,
	RW =    61.112 deg,	RP =    25.139 deg,	RR =    68.934 deg,
	E1=  1980.497  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    75.342  mm,	RY =   365.642  mm,	RZ =  -316.898  mm,
	RW =    52.709 deg,	RP =    29.016 deg,	RR =    56.836 deg,
	E1=  2512.504  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    91.861  mm,	RY =   381.224  mm,	RZ =  -322.305  mm,
	RW =    52.778 deg,	RP =    28.919 deg,	RR =    58.973 deg,
	E1=  2504.999  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    73.627  mm,	RY =   383.061  mm,	RZ =  -318.756  mm,
	RW =    52.008 deg,	RP =    29.009 deg,	RR =    58.960 deg,
	E1=  2504.998  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    35.338  mm,	RY =   336.925  mm,	RZ =  -322.705  mm,
	RW =    59.143 deg,	RP =    35.363 deg,	RR =    56.071 deg,
	E1=  2644.536  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    11.613  mm,	RY =   270.869  mm,	RZ =  -274.242  mm,
	RW =    58.132 deg,	RP =    16.796 deg,	RR =    72.743 deg,
	E1=  2512.493  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -12.317  mm,	RY =   250.498  mm,	RZ =  -593.356  mm,
	RW =    53.176 deg,	RP =     4.323 deg,	RR =    80.249 deg,
	E1=  2512.493  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    12.640  mm,	RY =   251.101  mm,	RZ =  -559.284  mm,
	RW =    79.738 deg,	RP =   -53.763 deg,	RR =     1.390 deg,
	E1=  2512.493  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    97.092  mm,	RY =   344.681  mm,	RZ =  -468.227  mm,
	RW =   103.123 deg,	RP =   -54.287 deg,	RR =   -27.134 deg,
	E1=  2512.493  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    50.732  mm,	RY =   424.905  mm,	RZ =  -438.848  mm,
	RW =   113.332 deg,	RP =   -43.954 deg,	RR =   -40.735 deg,
	E1=  2512.491  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    53.827  mm,	RY =   395.256  mm,	RZ =  -412.661  mm,
	RW =   110.997 deg,	RP =   -46.198 deg,	RR =   -39.414 deg,
	E1=  2520.893  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    39.802  mm,	RY =   394.913  mm,	RZ =  -401.703  mm,
	RW =   111.189 deg,	RP =   -46.267 deg,	RR =   -39.505 deg,
	E1=  2520.909  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[47]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    40.971  mm,	RY =   407.337  mm,	RZ =  -441.776  mm,
	RW =   118.289 deg,	RP =   -42.067 deg,	RR =   -46.819 deg,
	E1=  2514.902  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[48]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -30.775  mm,	RY =   568.768  mm,	RZ =  -521.923  mm,
	RW =   106.771 deg,	RP =   -46.339 deg,	RR =   -31.489 deg,
	E1=  2512.492  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[49]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    40.876  mm,	RY =   646.082  mm,	RZ =  1250.724  mm,
	RW =   160.895 deg,	RP =    33.204 deg,	RR =   -24.695 deg,
	E1=  1926.893  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[50]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  1656.849  mm,	RY =   195.628  mm,	RZ =  1312.627  mm,
	RW =  -161.594 deg,	RP =    56.634 deg,	RR =    17.531 deg,
	E1=  2500.000  mm
   GP2:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
