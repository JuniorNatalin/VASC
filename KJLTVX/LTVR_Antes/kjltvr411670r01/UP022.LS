/PROG  UP022
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sold. MAG Est.";
PROG_SIZE	= 20736;
CREATE		= DATE 23-07-11  TIME 01:05:32;
MODIFIED	= DATE 24-07-27  TIME 15:01:14;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 96;
MEMORY_SIZE	= 39992;
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
   4:   ;
   5:J P[1] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
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
   6:J P[2] 100% CNT100 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC90 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   8:   ;
   9:  !Cordon de Soldadura 1 ;
  10:  !5QA802035_MA_712_S__MA_0001 ;
  11:L P[4] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=1,NahtNr=1,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  12:L P[5] 9mm/sec CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  13:  !Apagar Antorcha MAG ;
  14:L P[6] 8mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=1,NahtNr=1,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  15:   ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  18:   ;
  19:  !Cordon de Soldadura 2 ;
  20:  !5QA802035_MA_710_M__MA_0001 ;
  21:L P[9] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=2,NahtNr=2,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  22:L P[10] 10mm/sec CNT100 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  23:  !Apagar Antorcha MAG ;
  24:L P[11] 10mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=2,NahtNr=2,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  25:   ;
  26:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  27:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  28:   ;
  29:  !Cordon de Soldadura 3 ;
  30:  !5QA802035_MA_708_BG_MA_0002 ;
  31:L P[14] 200mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=3,NahtNr=6,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  32:  !Apagar Antorcha MAG ;
  33:L P[15] 11mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  34:   ;
  35:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  36:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  37:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  38:   ;
  39:  !Cordon de Soldadura 4 ;
  40:  !5QA802035_MA_708_BG_MA_0003 ;
  41:L P[19] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=4,NahtNr=4,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  42:  !Apagar Antorcha MAG ;
  43:L P[20] 14mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=4,NahtNr=4,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  44:   ;
  45:J P[21] 100% CNT15 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  46:J P[22] 100% CNT15 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  47:   ;
  48:  !Cordon de Soldadura 5 ;
  49:  !5QA802035_MA_702_BA_MA_0001 ;
  50:L P[23] 300mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=5,NahtNr=5,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  51:  !Apagar Antorcha MAG ;
  52:L P[24] 7mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=5,NahtNr=5,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  53:   ;
  54:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  55:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  56:   ;
  57:  !Cordon de Soldadura 6 ;
  58:  !5QA802035_MA_708_BG_MA_0001 ;
  59:L P[27] 150mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  60:  !Apagar Antorcha MAG ;
  61:L P[28] 17mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  62:   ;
  63:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  64:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  65:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  66:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  67:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  68:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  69:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  70:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  71:   ;
  72:  !Cordon de Soldadura 7 ;
  73:  !5QA802035_MA_704_BC_MA_0001 ;
  74:L P[37] 150mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=7,NahtNr=7,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  75:  !Apagar Antorcha MAG ;
  76:L P[38] 12mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=7,NahtNr=7,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  77:   ;
  78:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  79:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  80:J P[41] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  81:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  82:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  83:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  84:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  85:   ;
  86:  !Cordon de Soldadura 8 ;
  87:  !5QA802035_MA_706_BE_MA_0001 ;
  88:L P[46] 100mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=8,NahtNr=8,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND DI[2163] AND !DI[2164] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  89:  !Apagar Antorcha MAG ;
  90:  !Fin de Trabajo 2 ;
  91:L P[47] 13mm/sec CNT0 ACC100 TB   0.00sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=8,NahtNr=8,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  IF (!DI[211]),CALL MAKRO002 ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  92:   ;
  93:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  94:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  95:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  96:J P[51] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[215]=(F[572]) ;
      4:  WAIT (!F[572] OR DI[215] OR DI[216])    ;
      5:  DO[215]=(OFF) ;
      6:  F[573]=(DI[216]) ;
      7:  F[572]=(F[572] AND !DI[216]) ;
      8:  !Revision limpieza MigMag ;
      9:  //IF (DO[12]),R[21]=(R[21]+1) ;
     10:  //F[605]=(OFF) ;
     11:  //F[603]=(F[572] OR F[573] OR (R[21]>=5)) ;
     12:  //F[603]=(F[603] OR F[572] OR F[573]) ;
     13:  //IF (F[603]),R[21]=(0) ;
     14:  //WAIT (DI[2163] AND !DI[2164])    ;
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
	RX =   -83.184  mm,	RY =   497.229  mm,	RZ =  -312.633  mm,
	RW =     3.737 deg,	RP =   -19.819 deg,	RR =  -113.173 deg,
	E1=  1700.430  mm
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
	RX =   -64.714  mm,	RY =   496.253  mm,	RZ =  -310.452  mm,
	RW =     3.739 deg,	RP =   -19.817 deg,	RR =  -113.167 deg,
	E1=  1715.112  mm
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
	RX =   -61.656  mm,	RY =   496.298  mm,	RZ =  -310.852  mm,
	RW =     3.737 deg,	RP =   -19.816 deg,	RR =  -113.169 deg,
	E1=  1715.112  mm
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
	RX =   -37.765  mm,	RY =   491.456  mm,	RZ =  -328.788  mm,
	RW =   -22.372 deg,	RP =   -28.774 deg,	RR =   -99.830 deg,
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
	RX =   -29.744  mm,	RY =   490.557  mm,	RZ =  -336.213  mm,
	RW =   -22.215 deg,	RP =   -29.336 deg,	RR =  -100.006 deg,
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
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -27.375  mm,	RY =   491.508  mm,	RZ =  -341.539  mm,
	RW =   -22.602 deg,	RP =   -30.039 deg,	RR =   -99.899 deg,
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
	RX =   -31.600  mm,	RY =   482.792  mm,	RZ =  -221.377  mm,
	RW =   -10.274 deg,	RP =    -6.980 deg,	RR =  -131.679 deg,
	E1=  1732.944  mm
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
	RX =   -34.164  mm,	RY =   480.757  mm,	RZ =  -241.911  mm,
	RW =   -10.502 deg,	RP =    -6.779 deg,	RR =  -134.035 deg,
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
	RX =   -42.394  mm,	RY =   506.413  mm,	RZ =  -281.248  mm,
	RW =   -16.271 deg,	RP =    41.107 deg,	RR =  -126.658 deg,
	E1=  1732.999  mm
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
	RX =   -45.131  mm,	RY =   482.497  mm,	RZ =  -281.473  mm,
	RW =      .212 deg,	RP =    17.471 deg,	RR =  -113.549 deg,
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
	RX =   -25.692  mm,	RY =   478.606  mm,	RZ =  -284.573  mm,
	RW =      .280 deg,	RP =    16.907 deg,	RR =  -113.377 deg,
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
	RX =    -8.242  mm,	RY =   472.322  mm,	RZ =  -345.177  mm,
	RW =   -23.806 deg,	RP =    11.257 deg,	RR =  -119.121 deg,
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
	RX =     9.619  mm,	RY =   470.353  mm,	RZ =  -355.210  mm,
	RW =   -23.839 deg,	RP =    11.264 deg,	RR =  -119.141 deg,
	E1=  1732.945  mm
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
	RX =    22.412  mm,	RY =   511.264  mm,	RZ =  -357.615  mm,
	RW =   -25.800 deg,	RP =    13.885 deg,	RR =  -119.549 deg,
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
	RX =    64.118  mm,	RY =   470.541  mm,	RZ =  -341.338  mm,
	RW =   -27.542 deg,	RP =    11.452 deg,	RR =  -120.587 deg,
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
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    78.888  mm,	RY =   469.285  mm,	RZ =  -353.332  mm,
	RW =   -27.594 deg,	RP =    11.428 deg,	RR =  -120.699 deg,
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
	RX =    75.343  mm,	RY =   365.641  mm,	RZ =  -312.786  mm,
	RW =    52.709 deg,	RP =    29.016 deg,	RR =    56.835 deg,
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
	RX =    95.702  mm,	RY =   375.441  mm,	RZ =  -324.994  mm,
	RW =    60.923 deg,	RP =    14.553 deg,	RR =    64.301 deg,
	E1=  2505.000  mm
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
	RX =    77.719  mm,	RY =   376.453  mm,	RZ =  -322.020  mm,
	RW =    60.878 deg,	RP =    14.539 deg,	RR =    64.324 deg,
	E1=  2505.000  mm
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
	RX =    76.119  mm,	RY =   370.279  mm,	RZ =  -318.318  mm,
	RW =    60.926 deg,	RP =    14.549 deg,	RR =    64.298 deg,
	E1=  2505.000  mm
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
P[41]{
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
P[42]{
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
P[43]{
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
P[44]{
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
P[45]{
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
P[46]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    52.563  mm,	RY =   395.883  mm,	RZ =  -415.018  mm,
	RW =   114.662 deg,	RP =   -44.922 deg,	RR =   -44.331 deg,
	E1=  2520.908  mm
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
	RX =    38.708  mm,	RY =   395.664  mm,	RZ =  -406.185  mm,
	RW =   114.743 deg,	RP =   -44.858 deg,	RR =   -44.321 deg,
	E1=  2520.911  mm
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
P[49]{
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
P[50]{
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
P[51]{
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
