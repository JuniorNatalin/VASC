/PROG  UP022
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sold. MAG Est.";
PROG_SIZE	= 22198;
CREATE		= DATE 23-12-22  TIME 09:04:08;
MODIFIED	= DATE 24-07-13  TIME 17:54:26;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 92;
MEMORY_SIZE	= 42826;
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
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (M[1])    ;
     21:  DO[1878]=OFF ;
     22:  DO[1879]=ON ;
     23:  DO[1880]=OFF ;
     24:  WAIT ((!DI[1878] AND DI[1879] AND !DI[1880]))    ;
     25:  WAIT (M[1] AND M[32] AND M[33] AND DI[2163] AND !DI[2164])    ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
   7:   ;
   8:  !Cordon de Soldadura 1 ;
   9:  !5QA802035_MA_705_BD_MA_0001 ;
  10:L P[4] 95mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=1,NahtNr=1,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  11:   ;
  12:  !Apagar Antorcha MAG ;
  13:L P[5] 11mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=1,NahtNr=1,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  14:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  15:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  16:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  17:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  18:   ;
  19:  !Cordon de Soldadura 2 ;
  20:  !5QA802035_MA_711_L__MA_0001 ;
  21:L P[10] 160mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=2,NahtNr=2,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  22:  !Apagar Antorcha MAG ;
  23:L P[11] 13mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=2,NahtNr=2,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  24:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  25:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  26:   ;
  27:  !Cordon de Soldadura 3 ;
  28:  !5QA802035_MA_703_BB_MA_0001 ;
  29:L P[14] 200mm/sec CNT0 ACC100 TB    .15sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=3,NahtNr=3,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  30:  !Apagar Antorcha MAG ;
  31:L P[15] 10mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=3,NahtNr=3,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  32:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  33:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  34:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  35:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  36:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  37:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  38:   ;
  39:  !Cordon de Soldadura 4 ;
  40:  !5QA802035_MA_713_AQ_MA_0001 ;
  41:L P[22] 100mm/sec CNT0 ACC100 TB    .15sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=4,NahtNr=4,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  42:  !Apagar Antorcha MAG ;
  43:L P[23] 9mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=4,NahtNr=4,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  44:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  45:   ;
  46:  !Cordon de Soldadura 5 ;
  47:  !5QA802035_MA_709_BH_MA_0001 ;
  48:L P[25] 150mm/sec CNT0 ACC100 TB    .15sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=5,NahtNr=5,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  49:  !Apagar Antorcha MAG ;
  50:L P[26] 6mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=5,NahtNr=5,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  51:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  52:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  53:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  54:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  55:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  56:  !Cordon de Soldadura 6 ;
  57:  !5QA802035_MA_707_BF_MA_0001 ;
  58:L P[32] 150mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  59:  !Apagar Antorcha MAG ;
  60:L P[33] 15mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=6,NahtNr=6,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  61:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  62:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  63:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  64:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  65:  !Cordon de Soldadura 7 ;
  66:  !5QA802035_MA_707_BF_MA0003 ;
  67:L P[38] 185mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=7,NahtNr=7,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  68:  !Apagar Antorcha MAG ;
  69:L P[39] 8mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=7,NahtNr=7,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  70:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  71:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  72:  !Cordon de Soldadura 8 ;
  73:  !5QA802035_MA_701_AZ_MA_0001 ;
  74:L P[42] 150mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=8,NahtNr=8,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  75:  !Apagar Antorcha MAG ;
  76:L P[43] 10mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=8,NahtNr=8,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  77:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  78:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  79:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  80:  !Cordon de Soldadura 9 ;
  81:  !5QA802035_MA_707_BF_MA_0002 ;
  82:L P[47] 175mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  DO[23]=ON ;
      5:  CALL VW_USER(Basic1,MS_Naht,Nr1,Einschalten, ,BrennNr=1,ProgNr=9,NahtNr=9,EIN/AUS=ON) ;
      6:  IF ((DO[12] AND !DI[15]) OR (DO[11] AND DI[211])),CALL MAKRO211 ;
      7:  TC_ONLINE (DI[1874] AND M[1] AND M[30] AND M[32] AND M[33] AND (F[595] OR F[985])) ;
       ------ ;
  83:  !Apagar Antorcha MAG ;
  84:  !Fin de Trabajo 2 ;
  85:L P[48] 8mm/sec CNT0 ACC100 TB    .10sec,P-SPS RTCP    ;
      1:  TC_ONLINE (ON) ;
      2:  CALL VW_USER(Basic1,MS_Naht,Nr1,Ausschalten, ,BrennNr=1,ProgNr=8,NahtNr=8,EIN/AUS=ON) ;
      3:  IF (!DI[15]),CALL MAKRO210 ;
      4:  DO[23]=OFF ;
      5:  IF (!DI[211]),CALL MAKRO002 ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  86:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  87:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  88:J P[51] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  89:J P[52] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  90:J P[53] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  91:J P[54] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[33] AND DI[2163] AND !DI[2164]) ;
       ------ ;
  92:J P[55] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  DO[215]=(F[572]) ;
      4:  WAIT (!F[572] OR DI[215] OR DI[216])    ;
      5:  DO[215]=(OFF) ;
      6:  F[573]=(DI[216]) ;
      7:  F[572]=(F[572] AND !DI[216]) ;
      8:  !Revision limpieza MS1 ;
      9:  IF (DO[12]),R[21]=(R[21]+1) ;
     10:  !MS Estacionario / Reiniciar FK ;
     11:  F[605]=(OFF) ;
     12:  //F[603]=(F[572] OR F[573] OR (R[21]>=1)) ;
     13:  //!Inic. Limpieza Antorcha ;
     14:  //F[603]=(F[603] OR F[572] OR F[573]) ;
     15:  //IF (F[603]),R[21]=(0) ;
     16:  TIMER[5]=STOP ;
     17:  WAIT (DI[23])    ;
     18:  DO[23]=(ON) ;
     19:  TC_ONLINE (M[30]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   122.506  mm,	RY = -1013.350  mm,	RZ =  -786.996  mm,
	RW =    -9.853 deg,	RP =   -52.185 deg,	RR =   -90.004 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -163.402  mm,	RY =  -526.460  mm,	RZ =  -128.259  mm,
	RW =  -132.336 deg,	RP =   -49.598 deg,	RR =    35.817 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    57.073  mm,	RY =  -432.576  mm,	RZ =    42.385  mm,
	RW =  -153.664 deg,	RP =   -42.326 deg,	RR =    60.632 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    68.704  mm,	RY =  -403.647  mm,	RZ =    90.734  mm,
	RW =  -147.641 deg,	RP =   -53.137 deg,	RR =    51.695 deg,
	E1= -1100.034  mm
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    86.776  mm,	RY =  -403.106  mm,	RZ =    80.744  mm,
	RW =  -147.655 deg,	RP =   -53.135 deg,	RR =    51.703 deg,
	E1= -1099.994  mm
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =    48.991  mm,	RY =  -444.265  mm,	RZ =    12.068  mm,
	RW =  -148.986 deg,	RP =   -50.681 deg,	RR =    54.160 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 1',
	RX =  -288.661  mm,	RY =   -54.269  mm,	RZ =  -354.610  mm,
	RW =  -119.623 deg,	RP =   -65.577 deg,	RR =    -3.155 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =    87.641  mm,	RY =  -140.666  mm,	RZ =   142.708  mm,
	RW =   -56.600 deg,	RP =   -15.386 deg,	RR =   -95.212 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -108.551  mm,	RY =  -292.207  mm,	RZ =   204.400  mm,
	RW =   -51.365 deg,	RP =    23.125 deg,	RR =   -83.708 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =   -65.412  mm,	RY =  -436.678  mm,	RZ =   180.893  mm,
	RW =   -52.596 deg,	RP =    22.003 deg,	RR =   -87.281 deg,
	E1= -1099.993  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =   -74.759  mm,	RY =  -438.995  mm,	RZ =   182.166  mm,
	RW =   -52.304 deg,	RP =    22.653 deg,	RR =   -85.376 deg,
	E1= -1095.828  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -119.950  mm,	RY =  -352.545  mm,	RZ =   212.586  mm,
	RW =   -51.326 deg,	RP =    23.141 deg,	RR =   -83.694 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =    85.100  mm,	RY =  -351.383  mm,	RZ =   156.552  mm,
	RW =   -42.063 deg,	RP =    26.958 deg,	RR =  -107.912 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =    91.483  mm,	RY =  -400.986  mm,	RZ =   124.004  mm,
	RW =   -40.403 deg,	RP =    26.595 deg,	RR =  -102.014 deg,
	E1= -1054.612  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =    73.403  mm,	RY =  -405.886  mm,	RZ =   129.007  mm,
	RW =   -40.334 deg,	RP =    26.301 deg,	RR =  -101.980 deg,
	E1= -1054.552  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =    62.252  mm,	RY =  -345.280  mm,	RZ =   138.947  mm,
	RW =   -45.537 deg,	RP =    17.523 deg,	RR =  -112.639 deg,
	E1= -1100.009  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =    10.880  mm,	RY =  -114.176  mm,	RZ =    88.722  mm,
	RW =   -51.208 deg,	RP =    12.599 deg,	RR =   -83.169 deg,
	E1= -1100.003  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 1',
	RX =  -198.330  mm,	RY =    13.272  mm,	RZ =   110.647  mm,
	RW =   -82.451 deg,	RP =    27.419 deg,	RR =   -89.157 deg,
	E1= -1100.000  mm
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
	RX =  1434.342  mm,	RY =  -502.247  mm,	RZ =   953.315  mm,
	RW =   146.820 deg,	RP =    31.496 deg,	RR =  -108.789 deg,
	E1= -1100.000  mm
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
	RX =   -35.776  mm,	RY =  -462.760  mm,	RZ =   450.847  mm,
	RW =   152.062 deg,	RP =    42.040 deg,	RR =  -116.237 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -40.705  mm,	RY =  -435.856  mm,	RZ =   353.966  mm,
	RW =   170.830 deg,	RP =    29.666 deg,	RR =  -128.860 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  -117.450  mm,	RY =  -507.943  mm,	RZ =   279.939  mm,
	RW =   171.466 deg,	RP =    29.821 deg,	RR =  -127.680 deg,
	E1= -1099.975  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  -115.485  mm,	RY =  -510.521  mm,	RZ =   293.767  mm,
	RW =   169.994 deg,	RP =    29.845 deg,	RR =  -127.648 deg,
	E1= -1099.984  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -77.444  mm,	RY =  -474.266  mm,	RZ =   328.849  mm,
	RW =   170.661 deg,	RP =    29.612 deg,	RR =  -128.603 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  -115.981  mm,	RY =  -514.433  mm,	RZ =   307.347  mm,
	RW =   165.237 deg,	RP =    25.919 deg,	RR =  -124.460 deg,
	E1= -1099.996  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  -116.391  mm,	RY =  -513.874  mm,	RZ =   320.703  mm,
	RW =   163.915 deg,	RP =    25.436 deg,	RR =  -125.457 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -67.096  mm,	RY =  -453.259  mm,	RZ =   358.457  mm,
	RW =   166.390 deg,	RP =    30.273 deg,	RR =  -120.512 deg,
	E1= -1100.007  mm
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
	RX =    98.401  mm,	RY =  -525.434  mm,	RZ =   596.266  mm,
	RW =   155.922 deg,	RP =    26.758 deg,	RR =  -119.667 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -31.517  mm,	RY =  -540.221  mm,	RZ =   269.489  mm,
	RW =    73.290 deg,	RP =   -14.123 deg,	RR =   141.744 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -52.328  mm,	RY =  -508.308  mm,	RZ =   279.706  mm,
	RW =    74.376 deg,	RP =   -14.713 deg,	RR =   138.086 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    -7.616  mm,	RY =  -501.101  mm,	RZ =   227.698  mm,
	RW =    81.550 deg,	RP =   -13.753 deg,	RR =   148.125 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   -55.141  mm,	RY =  -470.306  mm,	RZ =   226.130  mm,
	RW =    99.612 deg,	RP =     4.525 deg,	RR =   138.677 deg,
	E1= -1099.995  mm
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
	RX =   -52.395  mm,	RY =  -470.406  mm,	RZ =   246.097  mm,
	RW =    99.607 deg,	RP =     4.527 deg,	RR =   138.676 deg,
	E1= -1099.970  mm
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
	RX =     1.475  mm,	RY =  -538.247  mm,	RZ =   251.939  mm,
	RW =   101.364 deg,	RP =     5.462 deg,	RR =   143.068 deg,
	E1= -1100.000  mm
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
	RX =   -30.578  mm,	RY =  -509.969  mm,	RZ =   194.201  mm,
	RW =    84.693 deg,	RP =    30.618 deg,	RR =   118.381 deg,
	E1= -1100.000  mm
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
	RX =   -28.493  mm,	RY =  -543.450  mm,	RZ =   182.912  mm,
	RW =    53.786 deg,	RP =    36.687 deg,	RR =   105.392 deg,
	E1= -1100.000  mm
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
	RX =    19.802  mm,	RY =  -587.148  mm,	RZ =   213.421  mm,
	RW =    42.301 deg,	RP =    16.151 deg,	RR =   123.993 deg,
	E1= -1100.962  mm
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
	RX =   -59.783  mm,	RY =  -469.633  mm,	RZ =   170.566  mm,
	RW =    41.214 deg,	RP =    23.120 deg,	RR =   117.748 deg,
	E1= -1100.635  mm
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
	RX =   -41.519  mm,	RY =  -466.964  mm,	RZ =   165.940  mm,
	RW =    41.214 deg,	RP =    23.121 deg,	RR =   117.748 deg,
	E1= -1100.635  mm
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
	RX =   -25.472  mm,	RY =  -512.423  mm,	RZ =   166.415  mm,
	RW =    42.298 deg,	RP =    16.151 deg,	RR =   123.991 deg,
	E1= -1100.965  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	RX =   -13.200  mm,	RY =  -532.721  mm,	RZ =   168.127  mm,
	RW =    35.446 deg,	RP =    47.622 deg,	RR =   103.438 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	RX =   -23.300  mm,	RY =  -467.001  mm,	RZ =   111.393  mm,
	RW =    26.889 deg,	RP =    35.133 deg,	RR =    94.292 deg,
	E1= -1100.022  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	RX =   -43.306  mm,	RY =  -469.529  mm,	RZ =   119.787  mm,
	RW =    26.889 deg,	RP =    35.133 deg,	RR =    94.292 deg,
	E1= -1100.022  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 1',
	RX =   -44.319  mm,	RY =  -547.535  mm,	RZ =   144.408  mm,
	RW =    29.049 deg,	RP =    41.871 deg,	RR =    98.693 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =     3.024  mm,	RY =  -564.781  mm,	RZ =    86.269  mm,
	RW =    64.324 deg,	RP =    28.693 deg,	RR =   113.236 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    69.007  mm,	RY =  -507.327  mm,	RZ =    92.064  mm,
	RW =    50.882 deg,	RP =    12.639 deg,	RR =   124.389 deg,
	E1= -1100.000  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    27.964  mm,	RY =  -461.704  mm,	RZ =   131.098  mm,
	RW =    42.108 deg,	RP =    12.320 deg,	RR =   119.224 deg,
	E1= -1100.014  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    43.827  mm,	RY =  -460.063  mm,	RZ =   118.335  mm,
	RW =    42.299 deg,	RP =    12.737 deg,	RR =   119.548 deg,
	E1= -1128.761  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =    77.609  mm,	RY =  -716.260  mm,	RZ =   129.139  mm,
	RW =    54.466 deg,	RP =    21.506 deg,	RR =   136.499 deg,
	E1= -1100.001  mm
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   609.821  mm,	RY = -1025.615  mm,	RZ =   715.106  mm,
	RW =   104.664 deg,	RP =    55.330 deg,	RR =  -159.250 deg,
	E1= -1100.000  mm
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
	RX =  1157.042  mm,	RY = -1309.326  mm,	RZ =   597.656  mm,
	RW =   117.148 deg,	RP =    65.033 deg,	RR =  -117.223 deg,
	E1= -1100.000  mm
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
P[52]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  2896.947  mm,	RY =  -432.289  mm,	RZ =  1060.837  mm,
	RW =   161.900 deg,	RP =    60.413 deg,	RR =    -4.066 deg,
	E1= -1100.000  mm
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
P[53]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -795.806  mm,	RY =  -445.502  mm,	RZ =  2320.582  mm,
	RW =   127.149 deg,	RP =   -43.872 deg,	RR =    56.695 deg,
	E1= -1100.000  mm
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
P[54]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1054.007  mm,	RY = -1354.178  mm,	RZ =   114.809  mm,
	RW =   -71.563 deg,	RP =   -81.724 deg,	RR =   -79.850 deg,
	E1= -1099.544  mm
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
P[55]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   122.506  mm,	RY = -1013.350  mm,	RZ =  -786.996  mm,
	RW =    -9.853 deg,	RP =   -52.185 deg,	RR =   -90.004 deg,
	E1= -1100.000  mm
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
