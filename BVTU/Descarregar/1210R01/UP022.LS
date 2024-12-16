/PROG  UP022
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 28130;
CREATE		= DATE 23-12-23  TIME 15:37:10;
MODIFIED	= DATE 24-06-29  TIME 09:38:08;
FILE_NAME	= UP002;
VERSION		= 0;
LINE_COUNT	= 127;
MEMORY_SIZE	= 55218;
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
   1:  UTOOL_NUM=2 ;
   2:  UFRAME_NUM=1 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     14:  !Apagar Posicion Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  !Fresador en Posicion Base ;
     19:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     20:  WAIT (M[96])    ;
     21:  WAIT (DI[23])    ;
     22:  DO[23]=ON ;
     23:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   6:   ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   9:   ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  14:   ;
  15:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
       ------ ;
  16:   ;
  17:   ;
  18:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
       ------ ;
  19:   ;
  20:  !5qf803296_017_P__PS_0001 ;
  21:  !Punto de Sol. No. 13033 ;
  22:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13033,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
       ------ ;
  24:   ;
  25:  !5qf803296_017_P__PS_0002 ;
  26:  !Punto de Sol. No. 13034 ;
  27:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13034,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  28:   ;
  29:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
       ------ ;
  30:   ;
  31:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
       ------ ;
  32:   ;
  33:  !5qa803296_007_gps0004_X ;
  34:  !Punto de Sol. No. 13021 ;
  35:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13021,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  37:  !5qa803296_007_gps0007_X ;
  38:  !Punto de Sol. No. 13022 ;
  39:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13022,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  40:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  41:  !5qa803296_007_gps0010_X ;
  42:  !Punto de Sol. No. 13023 ;
  43:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13023,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  44:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  45:  !5qa803296_007_gps0005_X ;
  46:  !Punto de Sol. No. 13024 ;
  47:J P[22] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13024,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  49:  !5qa803296_007_gps0006_X ;
  50:  !Punto de Sol. No. 13025 ;
  51:J P[24] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13025,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  52:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  53:  !5qa803296_007_gps0012_X ;
  54:  !Punto de Sol. No. 13026 ;
  55:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13026,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  56:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  57:   ;
  58:  !********************** ;
  59:  !********************** ;
  60:  !5qa803296_021_vps0002_X ;
  61:  !Punto de Sol. No. 13027 ;
  62:J P[28] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13027,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  63:  !********************** ;
  64:  !********************** ;
  65:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  66:   ;
  67:  !********************** ;
  68:  !********************** ;
  69:  !5qa803296_021_vps0001_X ;
  70:  !Punto de Sol. No. 13028 ;
  71:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13028,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  72:  !********************** ;
  73:  !********************** ;
  74:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  75:  !5qa803296_007_gps0013_X ;
  76:  !Punto de Sol. No. 13029 ;
  77:J P[32] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13029,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  78:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  79:  !5qa803296_007_gps0014_X ;
  80:  !Punto de Sol. No. 13030 ;
  81:J P[34] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13030,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  82:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  83:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  84:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  85:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  86:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  87:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  88:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  89:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  90:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  91:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  92:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  93:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  94:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  95:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  96:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  97:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  98:J P[51] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  99:  !5qa803296_010_kps0003_X ;
 100:  !Punto de Sol. No. 13031 ;
 101:J P[52] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13031,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 102:J P[53] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 103:J P[54] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 104:  !5qa803296_010_kps0007_X ;
 105:  !Punto de Sol. No. 13032 ;
 106:  !Fin de Trabajo 2 ;
 107:J P[55] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13032,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 108:J P[56] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 109:J P[57] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 110:J P[58] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 111:J P[59] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 112:J P[60] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 113:J P[61] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 114:J P[62] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 115:J P[63] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 116:J P[64] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 117:J P[65] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 118:J P[66] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 119:J P[67] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 120:J P[68] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 121:J P[69] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 122:   ;
 123:J P[70] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 124:J P[71] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 125:J P[72] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 126:J P[73] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
 127:J P[74] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   900.279  mm,	RY =  1675.057  mm,	RZ = -2369.096  mm,
	RW =     5.405 deg,	RP =   -64.802 deg,	RR =   -11.905 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
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
	RX =  2365.308  mm,	RY =  -643.245  mm,	RZ = -1583.928  mm,
	RW =  -162.721 deg,	RP =   -46.686 deg,	RR =   111.244 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
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
	RX =  2550.534  mm,	RY =  -631.854  mm,	RZ = -1021.659  mm,
	RW =   175.697 deg,	RP =   -34.961 deg,	RR =   125.637 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
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
	RX =  2256.268  mm,	RY =  -552.511  mm,	RZ =   -75.602  mm,
	RW =   168.583 deg,	RP =    -4.629 deg,	RR =   127.198 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
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
	RX =  1831.788  mm,	RY =  -593.182  mm,	RZ =   701.567  mm,
	RW =   152.517 deg,	RP =    10.526 deg,	RR =   128.313 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
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
	RX =    71.481  mm,	RY =  -255.706  mm,	RZ =   939.444  mm,
	RW =   105.440 deg,	RP =    54.604 deg,	RR =   123.525 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
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
	RX =   142.365  mm,	RY =    -3.911  mm,	RZ =   307.545  mm,
	RW =   169.215 deg,	RP =    61.238 deg,	RR =  -179.999 deg
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
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   280.159  mm,	RY =    26.005  mm,	RZ =   231.949  mm,
	RW =   169.214 deg,	RP =    61.238 deg,	RR =   180.000 deg
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
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   305.034  mm,	RY =    21.134  mm,	RZ =   213.987  mm,
	RW =   169.709 deg,	RP =    88.693 deg,	RR =  -179.511 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.187  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   453.436  mm,	RY =   -32.558  mm,	RZ =   142.265  mm,
	RW =   169.713 deg,	RP =    88.692 deg,	RR =  -179.507 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    54.969  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   486.918  mm,	RY =   -35.528  mm,	RZ =   136.993  mm,
	RW =   121.964 deg,	RP =    88.083 deg,	RR =   132.762 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   453.436  mm,	RY =   -32.558  mm,	RZ =   142.265  mm,
	RW =   169.713 deg,	RP =    88.692 deg,	RR =  -179.507 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    54.969  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   417.246  mm,	RY =   -35.307  mm,	RZ =   138.340  mm,
	RW =   141.864 deg,	RP =    87.079 deg,	RR =   152.643 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   305.034  mm,	RY =    21.134  mm,	RZ =   213.987  mm,
	RW =   169.709 deg,	RP =    88.693 deg,	RR =  -179.511 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.187  mm
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
	RX =   241.676  mm,	RY =    25.977  mm,	RZ =   161.847  mm,
	RW =   169.214 deg,	RP =    61.238 deg,	RR =   180.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.300  mm
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
	RX =   238.957  mm,	RY =    33.169  mm,	RZ =   157.061  mm,
	RW =   167.720 deg,	RP =    61.228 deg,	RR =   178.691 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.400  mm
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
	RX =   249.842  mm,	RY =    33.099  mm,	RZ =   159.101  mm,
	RW =   168.614 deg,	RP =    61.331 deg,	RR =   179.250 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.996  mm
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
	RX =   258.173  mm,	RY =    33.130  mm,	RZ =   146.621  mm,
	RW =   169.811 deg,	RP =    61.474 deg,	RR =  -179.999 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.400  mm
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
	RX =   259.924  mm,	RY =    38.924  mm,	RZ =   153.386  mm,
	RW =   168.988 deg,	RP =    61.245 deg,	RR =   179.985 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    22.502  mm
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
	RX =   259.431  mm,	RY =    56.664  mm,	RZ =   146.250  mm,
	RW =   166.600 deg,	RP =    60.894 deg,	RR =   179.876 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.400  mm
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
	RX =   249.654  mm,	RY =    62.073  mm,	RZ =   158.089  mm,
	RW =   163.349 deg,	RP =    60.711 deg,	RR =   179.228 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.766  mm
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
	RX =   239.373  mm,	RY =    67.307  mm,	RZ =   157.107  mm,
	RW =   160.385 deg,	RP =    60.776 deg,	RR =   178.549 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.600  mm
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
	RX =   239.252  mm,	RY =    69.582  mm,	RZ =   163.702  mm,
	RW =   160.223 deg,	RP =    60.673 deg,	RR =   178.541 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.090  mm
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
	RX =   238.257  mm,	RY =    96.778  mm,	RZ =   158.025  mm,
	RW =   158.158 deg,	RP =    61.063 deg,	RR =   177.567 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    15.300  mm
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
	RX =   249.854  mm,	RY =   123.273  mm,	RZ =   159.803  mm,
	RW =  -169.752 deg,	RP =    51.291 deg,	RR =  -154.555 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    39.165  mm
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
	RX =   237.393  mm,	RY =   130.998  mm,	RZ =   143.684  mm,
	RW =  -144.627 deg,	RP =    32.743 deg,	RR =  -135.400 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.400  mm
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
	RX =   248.831  mm,	RY =   134.352  mm,	RZ =   140.694  mm,
	RW =  -144.353 deg,	RP =    31.360 deg,	RR =  -135.227 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    26.534  mm
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
	RX =   257.484  mm,	RY =   124.667  mm,	RZ =   128.556  mm,
	RW =  -143.872 deg,	RP =    30.420 deg,	RR =  -134.670 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.700  mm
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
	RX =   259.698  mm,	RY =   137.560  mm,	RZ =   123.767  mm,
	RW =  -144.172 deg,	RP =    30.158 deg,	RR =  -135.263 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.857  mm
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
	RX =   261.621  mm,	RY =   139.383  mm,	RZ =   107.009  mm,
	RW =  -144.094 deg,	RP =    31.216 deg,	RR =  -135.092 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.100  mm
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
	RX =   256.904  mm,	RY =   148.357  mm,	RZ =   114.805  mm,
	RW =  -144.138 deg,	RP =    29.970 deg,	RR =  -136.275 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    28.362  mm
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
	RX =   241.156  mm,	RY =   147.578  mm,	RZ =   120.898  mm,
	RW =  -142.605 deg,	RP =    30.758 deg,	RR =  -135.924 deg
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
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   255.865  mm,	RY =   158.899  mm,	RZ =   111.349  mm,
	RW =  -144.523 deg,	RP =    30.582 deg,	RR =  -135.657 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    29.312  mm
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
	RX =   261.949  mm,	RY =   161.934  mm,	RZ =    81.123  mm,
	RW =  -147.381 deg,	RP =    30.329 deg,	RR =  -135.084 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.600  mm
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
	RX =   275.415  mm,	RY =   166.125  mm,	RZ =    87.014  mm,
	RW =  -142.046 deg,	RP =    31.714 deg,	RR =  -135.073 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   103.220  mm
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
	RX =   174.964  mm,	RY =   222.360  mm,	RZ =   234.348  mm,
	RW =  -150.585 deg,	RP =    31.810 deg,	RR =  -135.000 deg
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
	RX =   680.853  mm,	RY =   726.994  mm,	RZ =   675.831  mm,
	RW =  -142.045 deg,	RP =    31.714 deg,	RR =  -135.072 deg
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
P[38]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   413.846  mm,	RY =    93.407  mm,	RZ =   593.077  mm,
	RW =  -131.714 deg,	RP =    52.141 deg,	RR =   -92.073 deg
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
P[39]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   523.692  mm,	RY =  -386.828  mm,	RZ =   585.841  mm,
	RW =  -146.508 deg,	RP =    64.060 deg,	RR =   -84.664 deg
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
P[40]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1151.877  mm,	RY =  -866.217  mm,	RZ =   236.496  mm,
	RW =   -92.191 deg,	RP =    87.362 deg,	RR =     2.378 deg
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
P[41]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1192.103  mm,	RY =  -453.203  mm,	RZ =   173.753  mm,
	RW =    10.843 deg,	RP =    89.620 deg,	RR =   100.974 deg
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
P[42]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1175.437  mm,	RY =  -415.776  mm,	RZ =    75.675  mm,
	RW =   164.840 deg,	RP =    89.992 deg,	RR =  -105.165 deg
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
P[43]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1177.521  mm,	RY =  -319.598  mm,	RZ =    47.115  mm,
	RW =     9.950 deg,	RP =    89.995 deg,	RR =    99.946 deg
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
P[44]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1176.592  mm,	RY =  -269.991  mm,	RZ =    62.712  mm,
	RW =  -174.178 deg,	RP =    87.135 deg,	RR =   -84.190 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   185.000  mm
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
	RX =  1176.099  mm,	RY =  -258.655  mm,	RZ =    73.952  mm,
	RW =   167.275 deg,	RP =    89.991 deg,	RR =  -102.730 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   185.000  mm
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
	RX =  1174.708  mm,	RY =  -237.385  mm,	RZ =    75.617  mm,
	RW =   163.553 deg,	RP =    89.993 deg,	RR =  -106.451 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   185.000  mm
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
	RX =  1173.267  mm,	RY =  -154.973  mm,	RZ =    84.661  mm,
	RW =      .042 deg,	RP =    88.490 deg,	RR =    90.043 deg
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
P[48]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1178.188  mm,	RY =  -143.680  mm,	RZ =    75.393  mm,
	RW =   179.985 deg,	RP =    85.068 deg,	RR =   -90.018 deg
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
P[49]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1175.474  mm,	RY =   -90.129  mm,	RZ =   135.442  mm,
	RW =    11.394 deg,	RP =    89.997 deg,	RR =   101.392 deg
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
P[50]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1174.811  mm,	RY =     2.261  mm,	RZ =   135.723  mm,
	RW =      .002 deg,	RP =    89.998 deg,	RR =    90.000 deg
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
P[51]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1330.501  mm,	RY =   -30.112  mm,	RZ =   109.053  mm,
	RW =   -92.328 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[52]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1331.937  mm,	RY =   -30.066  mm,	RZ =   105.438  mm,
	RW =   -92.328 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.800  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[53]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1330.501  mm,	RY =   -30.111  mm,	RZ =   129.056  mm,
	RW =   -92.328 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[54]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1330.502  mm,	RY =      .000  mm,	RZ =   109.053  mm,
	RW =   -89.999 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[55]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1331.774  mm,	RY =     -.005  mm,	RZ =   105.726  mm,
	RW =   -89.999 deg,	RP =    90.000 deg,	RR =     0.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.800  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[56]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1330.501  mm,	RY =      .002  mm,	RZ =   129.057  mm,
	RW =   -89.999 deg,	RP =    90.000 deg,	RR =     0.000 deg
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
P[57]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1174.812  mm,	RY =     2.262  mm,	RZ =   135.725  mm,
	RW =      .002 deg,	RP =    89.998 deg,	RR =    90.000 deg
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
P[58]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1175.474  mm,	RY =   -90.126  mm,	RZ =   135.457  mm,
	RW =      .001 deg,	RP =    89.997 deg,	RR =    90.000 deg
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
P[59]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1178.188  mm,	RY =  -143.680  mm,	RZ =    75.393  mm,
	RW =   179.985 deg,	RP =    85.068 deg,	RR =   -90.018 deg
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
P[60]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1173.267  mm,	RY =  -154.973  mm,	RZ =    84.661  mm,
	RW =      .042 deg,	RP =    88.490 deg,	RR =    90.043 deg
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
P[61]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1174.708  mm,	RY =  -237.385  mm,	RZ =    75.617  mm,
	RW =   163.553 deg,	RP =    89.993 deg,	RR =  -106.451 deg
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
P[62]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1176.099  mm,	RY =  -258.655  mm,	RZ =    73.952  mm,
	RW =   167.275 deg,	RP =    89.991 deg,	RR =  -102.730 deg
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
P[63]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1177.521  mm,	RY =  -319.598  mm,	RZ =    47.115  mm,
	RW =     9.950 deg,	RP =    89.995 deg,	RR =    99.946 deg
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
P[64]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1175.437  mm,	RY =  -415.776  mm,	RZ =    75.675  mm,
	RW =   164.840 deg,	RP =    89.992 deg,	RR =  -105.165 deg
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
P[65]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1122.520  mm,	RY =  -403.687  mm,	RZ =   180.473  mm,
	RW =   139.653 deg,	RP =    72.676 deg,	RR =  -125.240 deg
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
P[66]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =  1057.324  mm,	RY =  -496.882  mm,	RZ =   597.915  mm,
	RW =   168.798 deg,	RP =    65.830 deg,	RR =  -104.188 deg
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
P[67]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   588.175  mm,	RY =  -514.479  mm,	RZ =   695.591  mm,
	RW =   158.994 deg,	RP =    67.329 deg,	RR =  -146.187 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   169.110  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[68]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, -1, 0',
	RX =   138.978  mm,	RY =    -1.330  mm,	RZ =   779.585  mm,
	RW =   145.594 deg,	RP =    69.435 deg,	RR =   160.197 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[69]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    71.481  mm,	RY =  -255.706  mm,	RZ =   939.444  mm,
	RW =   105.440 deg,	RP =    54.604 deg,	RR =   123.525 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[70]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  1831.788  mm,	RY =  -593.182  mm,	RZ =   701.568  mm,
	RW =   152.517 deg,	RP =    10.526 deg,	RR =   128.313 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[71]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  2256.268  mm,	RY =  -552.512  mm,	RZ =   -75.602  mm,
	RW =   168.583 deg,	RP =    -4.629 deg,	RR =   127.198 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[72]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  2550.533  mm,	RY =  -631.854  mm,	RZ = -1021.659  mm,
	RW =   175.697 deg,	RP =   -34.961 deg,	RR =   125.637 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[73]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  2365.308  mm,	RY =  -643.245  mm,	RZ = -1583.928  mm,
	RW =  -162.721 deg,	RP =   -46.686 deg,	RR =   111.244 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[74]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   900.279  mm,	RY =  1675.057  mm,	RZ = -2369.096  mm,
	RW =     5.405 deg,	RP =   -64.802 deg,	RR =   -11.905 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   168.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
