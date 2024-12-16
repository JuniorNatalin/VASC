/PROG  UP021
/ATTR
OWNER		= engenhar;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 23716;
CREATE		= DATE 03-01-27  TIME 14:47:48;
MODIFIED	= DATE 24-06-29  TIME 21:06:16;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 109;
MEMORY_SIZE	= 47976;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:  !Esp. Lib. Sold. en ST1350 ;
   5:  !Perfil Libre ST1350 AUS ;
   6:  !Encender Anticol.  2 vs R1350R04 ;
   7:  !Encender Anticol.  7 vs R1340R01 ;
   8:  !Encender Anticol. 13 vs R1360R01 ;
   9:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[76]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[41]=ON ;
     11:  DO[42]=ON ;
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  DO[45]=ON ;
     15:  DO[46]=ON ;
     16:  DO[47]=ON ;
     17:  DO[48]=ON ;
     18:  DO[53]=ON ;
     19:  DO[54]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  !Lib. Soldadura ;
     25:  WAIT (DI[80] AND DI[76])    ;
     26:  DO[80]=OFF ;
     27:  DO[76]=OFF ;
     28:  !Solicitar Anticolisiones ;
     29:  DO[82]=ON ;
     30:  DO[87]=ON ;
     31:  DO[93]=ON ;
     32:  CALL MAKRO020    ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  13:   ;
  14:  !Punto de Sol. No. 13059 ;
  15:  !5qf803296_p0002_b0210002700_R ;
  16:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13059,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  17:   ;
  18:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:   ;
  20:  !Punto de Sol. No. 13060 ;
  21:  !5qf803296_p0002_b0210002600_R ;
  22:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13060,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  23:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
       ------ ;
  25:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
       ------ ;
  26:   ;
  27:  !Punto de Sol. No. 13061 ;
  28:  !5qf803296_p0004_d0210004300_R ;
  29:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13061,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:   ;
  31:J P[12] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:   ;
  36:  !Apagar Anticol. 2 vs R1350R04 ;
  37:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[42]=ON ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  40:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  41:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:  !Punto de Sol. No. 13062 ;
  47:  !5qa803296_009_jps0007_X ;
  48:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13062,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+7) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  49:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  51:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  52:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  55:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:  !Punto de Sol. No. 13063 ;
  57:  !Encender Anticol. 3 vs R1350R01 ;
  58:  !5qa803296_002_bps0004_X ;
  59:J P[33] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13063,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+7) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  DO[83]=ON ;
      9:  CALL MAKRO020    ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  62:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  64:   ;
  65:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  66:   ;
  67:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  68:   ;
  69:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  70:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  71:  !Punto de Sol. No. 13064 ;
  72:  !5qa803296_002_bps0001_X ;
  73:J P[42] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13064,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+4) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  74:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  75:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  76:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  77:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[43] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  78:  !Apagar   Anticol. 3 vs Rob1350R0 ;
  79:  !Encender Anticol. 1 vs Rob1350R0 ;
  80:J P[47] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[43]=ON ;
      4:  DO[81]=ON ;
      5:  CALL MAKRO020    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  81:J P[48] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  82:   ;
  83:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  84:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  85:J P[51] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  86:J P[52] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  87:  !Punto de Sol. No. 13065 ;
  88:  !5qa803296_002_bps0008_X ;
  89:J P[53] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13065,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  90:  !Punto de Sol. No. 13066 ;
  91:  !5qa803296_002_bps0009_X ;
  92:J P[54] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13066,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  93:J P[55] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  94:J P[56] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  95:J P[57] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  96:J P[58] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  97:  !Punto de Sol. No. 13067 ;
  98:  !5qa803296_009_jps0002_X ;
  99:J P[59] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13067,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 100:J P[60] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 101:J P[61] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 102:J P[62] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 103:J P[63] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 104:  !Encender Perfil Libre ST1350 ;
 105:J P[64] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[76]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[47] AND DI[53] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 106:  !Apagar Anticol.  1 vs R1350R04 ;
 107:  !Apagar Anticol.  7 vs R1340R01 ;
 108:  !Apagar Anticol. 13 vs R1360R01 ;
 109:J P[65] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[47]=ON ;
      6:  DO[53]=ON ;
      7:  DO[80]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -618.289  mm,	Y =  1242.525  mm,	Z =   517.194  mm,
	W =  -173.858 deg,	P =     5.086 deg,	R =  -178.812 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    88.114  mm,	Y =   421.562  mm,	Z =   706.828  mm,
	W =   -99.346 deg,	P =   -66.711 deg,	R =   175.471 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   701.257  mm,	Y =   521.241  mm,	Z =   308.934  mm,
	W =    92.077 deg,	P =   -88.798 deg,	R =      .065 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   777.818  mm,	Y =   428.799  mm,	Z =  -103.372  mm,
	W =   101.072 deg,	P =   -88.799 deg,	R =      .027 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   121.224  mm
};
P[5]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   811.358  mm,	Y =   269.357  mm,	Z =   -55.572  mm,
	W =    93.657 deg,	P =   -88.751 deg,	R =     2.928 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    24.253  mm
};
P[6]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   748.616  mm,	Y =   270.601  mm,	Z =   -57.444  mm,
	W =    85.977 deg,	P =   -88.807 deg,	R =     6.078 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    18.096  mm
};
P[7]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   715.025  mm,	Y =   275.420  mm,	Z =   -50.832  mm,
	W =    86.576 deg,	P =   -88.800 deg,	R =     3.067 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    23.400  mm
};
P[8]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.412  mm,	Y =   339.956  mm,	Z =   -72.240  mm,
	W =    93.228 deg,	P =   -88.677 deg,	R =      .024 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   611.128  mm,	Y =   467.349  mm,	Z =   -61.661  mm,
	W =    65.902 deg,	P =   -88.677 deg,	R =      .026 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   544.513  mm,	Y =   341.356  mm,	Z =   -67.288  mm,
	W =    64.288 deg,	P =   -81.805 deg,	R =      .012 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    93.400  mm
};
P[11]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   498.731  mm,	Y =   296.328  mm,	Z =   -36.786  mm,
	W =    64.304 deg,	P =   -81.800 deg,	R =     -.001 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    16.800  mm
};
P[12]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   544.800  mm,	Y =   341.400  mm,	Z =   -66.196  mm,
	W =    64.400 deg,	P =   -81.848 deg,	R =     -.070 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    93.309  mm
};
P[13]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   621.064  mm,	Y =   394.377  mm,	Z =   -75.103  mm,
	W =    64.288 deg,	P =   -81.805 deg,	R =      .012 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   595.452  mm,	Y =   410.640  mm,	Z =   343.617  mm,
	W =  -133.622 deg,	P =   -79.586 deg,	R =  -146.192 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   401.111  mm,	Y =   657.866  mm,	Z =   802.240  mm,
	W =  -141.404 deg,	P =   -46.946 deg,	R =  -139.799 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    76.958  mm,	Y =   524.502  mm,	Z =  1059.175  mm,
	W =  -155.688 deg,	P =   -48.453 deg,	R =  -107.849 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   150.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   172.169  mm,	Y =   458.222  mm,	Z =  1192.900  mm,
	W =  -163.360 deg,	P =   -70.738 deg,	R =   -80.397 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   153.732  mm
};
P[18]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   104.571  mm,	Y =   480.943  mm,	Z =  1151.383  mm,
	W =   117.923 deg,	P =   -35.844 deg,	R =     6.433 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   153.732  mm
};
P[19]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -335.220  mm,	Y =   527.901  mm,	Z =   597.918  mm,
	W =   148.085 deg,	P =   -21.740 deg,	R =   -16.027 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   159.736  mm
};
P[20]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -577.824  mm,	Y =   317.794  mm,	Z =   827.507  mm,
	W =   137.206 deg,	P =   -25.413 deg,	R =   -15.807 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   159.736  mm
};
P[21]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -13.873  mm,	Y =   614.979  mm,	Z =   261.358  mm,
	W =   146.750 deg,	P =   -56.383 deg,	R =    10.114 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   174.805  mm
};
P[22]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   101.126  mm,	Y =   570.539  mm,	Z =   194.967  mm,
	W =   128.937 deg,	P =   -67.020 deg,	R =    28.192 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[23]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   222.053  mm,	Y =   493.287  mm,	Z =    38.555  mm,
	W =   148.676 deg,	P =   -71.768 deg,	R =    12.388 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   222.575  mm
};
P[24]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   227.117  mm,	Y =   462.724  mm,	Z =    -6.905  mm,
	W =   161.398 deg,	P =   -71.892 deg,	R =      .972 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[25]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   331.591  mm,	Y =   474.316  mm,	Z =    -2.099  mm,
	W =   162.688 deg,	P =   -71.054 deg,	R =     -.496 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    52.268  mm
};
P[26]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   227.117  mm,	Y =   462.724  mm,	Z =    -6.905  mm,
	W =   161.398 deg,	P =   -71.892 deg,	R =      .972 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[27]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   206.771  mm,	Y =   503.283  mm,	Z =    80.843  mm,
	W =   148.676 deg,	P =   -71.768 deg,	R =    12.388 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[28]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   101.121  mm,	Y =   570.540  mm,	Z =   194.967  mm,
	W =   128.937 deg,	P =   -67.020 deg,	R =    28.192 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[29]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -62.170  mm,	Y =   499.460  mm,	Z =   137.424  mm,
	W =   167.300 deg,	P =   -49.711 deg,	R =   -10.031 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[30]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -30.206  mm,	Y =   330.619  mm,	Z =   110.564  mm,
	W =   166.175 deg,	P =   -43.500 deg,	R =   -15.234 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[31]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   175.222  mm,	Y =   295.533  mm,	Z =   -14.400  mm,
	W =   162.121 deg,	P =   -58.441 deg,	R =    -8.196 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[32]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   284.869  mm,	Y =   296.507  mm,	Z =    -2.605  mm,
	W =   157.924 deg,	P =   -68.073 deg,	R =     -.913 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[33]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   295.977  mm,	Y =   299.909  mm,	Z =     7.177  mm,
	W =   157.591 deg,	P =   -68.459 deg,	R =     -.609 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    48.483  mm
};
P[34]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   284.869  mm,	Y =   296.507  mm,	Z =    -2.605  mm,
	W =   157.924 deg,	P =   -68.073 deg,	R =     -.913 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[35]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   175.222  mm,	Y =   295.533  mm,	Z =   -14.400  mm,
	W =   162.121 deg,	P =   -58.441 deg,	R =    -8.196 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[36]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -30.204  mm,	Y =   330.619  mm,	Z =   110.563  mm,
	W =   166.175 deg,	P =   -43.500 deg,	R =   -15.234 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[37]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -80.225  mm,	Y =   420.116  mm,	Z =   352.921  mm,
	W =   150.026 deg,	P =   -30.901 deg,	R =    19.806 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[38]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -213.760  mm,	Y =   194.056  mm,	Z =   427.786  mm,
	W =   140.231 deg,	P =    -9.425 deg,	R =    51.561 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   179.901  mm
};
P[39]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   107.064  mm,	Y =   117.066  mm,	Z =   259.497  mm,
	W =   144.123 deg,	P =   -14.008 deg,	R =    63.328 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   179.901  mm
};
P[40]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   219.975  mm,	Y =   167.301  mm,	Z =    93.320  mm,
	W =   146.731 deg,	P =   -17.959 deg,	R =    72.661 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   179.901  mm
};
P[41]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   229.160  mm,	Y =   180.678  mm,	Z =    72.336  mm,
	W =   146.115 deg,	P =   -18.460 deg,	R =    72.586 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   179.901  mm
};
P[42]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   231.725  mm,	Y =   191.599  mm,	Z =    82.807  mm,
	W =   146.115 deg,	P =   -18.463 deg,	R =    72.587 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    90.482  mm
};
P[43]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   229.160  mm,	Y =   180.678  mm,	Z =    72.336  mm,
	W =   146.115 deg,	P =   -18.460 deg,	R =    72.586 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   179.901  mm
};
P[44]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   113.868  mm,	Y =   124.064  mm,	Z =   280.978  mm,
	W =   152.106 deg,	P =   -10.053 deg,	R =    67.110 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[45]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.289  mm,	Y =   132.329  mm,	Z =   437.762  mm,
	W =   142.895 deg,	P =   -10.053 deg,	R =    67.110 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[46]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    66.047  mm,	Y =   499.884  mm,	Z =   659.672  mm,
	W =   138.463 deg,	P =    -3.879 deg,	R =    63.691 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[47]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -217.663  mm,	Y =   506.673  mm,	Z =   487.697  mm,
	W =   150.241 deg,	P =   -15.666 deg,	R =    16.098 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   163.483  mm
};
P[48]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -246.981  mm,	Y =   239.596  mm,	Z =   701.520  mm,
	W =   165.233 deg,	P =   -42.812 deg,	R =   -42.609 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   157.575  mm
};
P[49]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -309.232  mm,	Y =   904.468  mm,	Z =   355.433  mm,
	W =  -171.724 deg,	P =   -13.524 deg,	R =   -79.418 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   139.548  mm
};
P[50]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -145.078  mm,	Y =   564.321  mm,	Z =   377.317  mm,
	W =  -151.536 deg,	P =     2.490 deg,	R =   173.248 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[51]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   267.177  mm,	Y =   402.885  mm,	Z =   430.269  mm,
	W =  -147.807 deg,	P =     5.481 deg,	R =   179.999 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   201.758  mm
};
P[52]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   195.522  mm,	Y =   304.994  mm,	Z =   154.723  mm,
	W =  -147.806 deg,	P =     5.483 deg,	R =   180.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[53]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   186.292  mm,	Y =   269.533  mm,	Z =    99.793  mm,
	W =  -147.874 deg,	P =     5.382 deg,	R =   179.881 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    15.625  mm
};
P[54]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   188.608  mm,	Y =   240.184  mm,	Z =    79.029  mm,
	W =  -147.874 deg,	P =     5.382 deg,	R =   179.881 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    12.625  mm
};
P[55]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   195.522  mm,	Y =   304.994  mm,	Z =   154.723  mm,
	W =  -147.806 deg,	P =     5.483 deg,	R =   180.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[56]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   180.930  mm,	Y =   400.842  mm,	Z =   306.357  mm,
	W =  -147.806 deg,	P =     5.482 deg,	R =   179.999 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[57]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   350.434  mm,	Y =   560.808  mm,	Z =   323.617  mm,
	W =  -177.943 deg,	P =    11.946 deg,	R =   152.144 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[58]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   354.421  mm,	Y =   554.648  mm,	Z =   112.327  mm,
	W =   178.142 deg,	P =     4.940 deg,	R =   151.568 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[59]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   308.027  mm,	Y =   578.288  mm,	Z =    42.283  mm,
	W =   178.033 deg,	P =     4.787 deg,	R =   150.358 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    27.766  mm
};
P[60]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   313.992  mm,	Y =   574.895  mm,	Z =    42.984  mm,
	W =   178.033 deg,	P =     4.787 deg,	R =   150.360 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    46.916  mm
};
P[61]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   354.421  mm,	Y =   554.648  mm,	Z =   112.327  mm,
	W =   178.142 deg,	P =     4.940 deg,	R =   151.568 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[62]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   350.434  mm,	Y =   560.808  mm,	Z =   323.617  mm,
	W =  -177.943 deg,	P =    11.946 deg,	R =   152.144 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[63]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   189.064  mm,	Y =   594.021  mm,	Z =   372.817  mm,
	W =  -176.972 deg,	P =    11.191 deg,	R =   155.579 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[64]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -208.239  mm,	Y =   759.388  mm,	Z =   467.933  mm,
	W =  -175.034 deg,	P =     8.871 deg,	R =   164.913 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
P[65]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -618.289  mm,	Y =  1242.523  mm,	Z =   517.191  mm,
	W =  -173.858 deg,	P =     5.086 deg,	R =  -178.812 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   180.000  mm
};
/END
