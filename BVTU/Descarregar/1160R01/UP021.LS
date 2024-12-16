/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 29958;
CREATE		= DATE 23-12-23  TIME 14:16:26;
MODIFIED	= DATE 24-06-29  TIME 15:49:12;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 120;
MEMORY_SIZE	= 62274;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:  !Espera Lib. Soldar en ST1160 ;
   5:  !Apagar Perfil Libre vs ST1160 ;
   6:  !Encender Anticol. 1 zu R1150R01 ;
   7:  !Encender Anticol. 5 zu R1170R01 ;
   8:J P[1] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  !Lib. de Anticolisiones ;
      9:  DO[41]=ON ;
     10:  DO[42]=ON ;
     11:  DO[45]=ON ;
     12:  DO[46]=ON ;
     13:  !Apagar Posicion Base ;
     14:  DO[15]=OFF ;
     15:  !Robot en Trayectoria ;
     16:  DO[16]=ON ;
     17:  !Espera Liberacion ;
     18:  WAIT (DI[80])    ;
     19:  DO[80]=OFF ;
     20:  !Solicitar Anticolisiones ;
     21:  DO[81]=ON ;
     22:  DO[85]=ON ;
     23:  CALL MAKRO020    ;
     24:  WAIT (DI[23])    ;
     25:  DO[23]=ON ;
     26:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  15:   ;
  16:  !5qa803296_010_kps0004_X ;
  17:  !Punto de Sol. No. 13001 ;
  18:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13001,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  20:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  22:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  23:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:J P[17] 100% CNT30 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:   ;
  31:  !5qa803296_007_gps0020_X ;
  32:  !Punto de Sol. No. 13002 ;
  33:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13002,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+11) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:J P[23] 100% CNT30 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  37:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  40:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  41:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:  !5qa803296_007_gps0018_X ;
  45:  !Punto de Sol. No. 13003 ;
  46:J P[31] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13003,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  49:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  51:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  52:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:  !5qa803296_010_kps0005_X ;
  55:  !Punto de Sol. No. 13004 ;
  56:J P[39] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13004,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-12) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  58:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  59:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  62:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:  !5qa803296_007_gps0024_X ;
  64:  !Punto de Sol. No. 13005 ;
  65:J P[46] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13005,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-14) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  66:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  67:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  68:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  69:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  70:J P[51] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  71:  !5qa803296_007_gps0001_X ;
  72:  !Punto de Sol. No. 13006 ;
  73:J P[52] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13006,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-13) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  74:J P[53] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  75:J P[54] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  76:J P[55] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  77:J P[56] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  78:J P[57] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  79:J P[58] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  80:J P[59] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  81:J P[60] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  82:  !5qa803296_010_kps0006_X ;
  83:  !Punto de Sol. No. 13007 ;
  84:J P[61] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13007,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+12) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  85:J P[62] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  86:J P[63] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  87:J P[64] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  88:J P[65] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  89:   ;
  90:J P[66] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  91:J P[67] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  92:J P[68] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  93:J P[69] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  94:   ;
  95:  !5qa803296_007_gps0025_X ;
  96:  !Punto de Sol. No. 13008 ;
  97:J P[70] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13008,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  98:J P[71] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  99:J P[72] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 100:J P[73] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 101:J P[74] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 102:J P[75] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 103:   ;
 104:  !5qa803296_007_gps0011_X ;
 105:  !Punto de Sol. No. 13009 ;
 106:  !Fin de Trabajo 1 ;
 107:J P[76] 100% CNT0 ACC100 TB   0.00sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13009,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 108:J P[77] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 109:J P[78] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 110:J P[79] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 111:J P[80] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 112:J P[81] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 113:J P[82] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 114:  !Encender Perfil Libre vs ST1160 ;
 115:  !Apagar Anticol. 5 vs R1170R01 ;
 116:J P[83] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[80]=ON ;
      3:  DO[45]=ON ;
      4:  TC_ONLINE (DI[41] AND M[30] AND M[95]) ;
       ------ ;
 117:J P[84] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[30] AND M[95]) ;
       ------ ;
 118:J P[85] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND M[30] AND M[95]) ;
       ------ ;
 119:  !Apagar Anticol. 1 vs R1150R01 ;
 120:J P[86] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  3363.532  mm,	Y =   387.904  mm,	Z =   626.618  mm,
	W =    -3.105 deg,	P =    11.500 deg,	R =   -97.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  2456.425  mm,	Y =   385.650  mm,	Z =   131.277  mm,
	W =     -.005 deg,	P =    80.000 deg,	R =  -168.025 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1767.491  mm,	Y =   109.823  mm,	Z =   165.809  mm,
	W =     -.002 deg,	P =    80.000 deg,	R =  -168.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1678.078  mm,	Y =    73.250  mm,	Z =   202.867  mm,
	W =     -.001 deg,	P =    80.000 deg,	R =  -168.023 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1526.188  mm,	Y =    71.638  mm,	Z =   163.428  mm,
	W =   168.020 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1387.965  mm,	Y =    35.813  mm,	Z =   156.218  mm,
	W =   142.827 deg,	P =    89.948 deg,	R =   -26.030 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   229.129  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1327.874  mm,	Y =    32.941  mm,	Z =   152.985  mm,
	W =    52.171 deg,	P =    89.993 deg,	R =  -116.917 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   229.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1326.875  mm,	Y =    32.943  mm,	Z =   146.042  mm,
	W =   178.895 deg,	P =    89.715 deg,	R =     9.807 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1327.874  mm,	Y =    32.941  mm,	Z =   152.985  mm,
	W =    52.084 deg,	P =    89.993 deg,	R =  -117.003 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   229.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1387.965  mm,	Y =    35.813  mm,	Z =   156.218  mm,
	W =   142.821 deg,	P =    89.948 deg,	R =   -26.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   229.129  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1526.188  mm,	Y =    71.638  mm,	Z =   163.429  mm,
	W =   168.020 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1678.078  mm,	Y =    73.249  mm,	Z =   202.867  mm,
	W =     -.002 deg,	P =    80.000 deg,	R =  -168.023 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1791.390  mm,	Y =   121.169  mm,	Z =   200.825  mm,
	W =     -.002 deg,	P =    80.000 deg,	R =  -168.023 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  2031.349  mm,	Y =   373.684  mm,	Z =   -12.570  mm,
	W =   -30.180 deg,	P =    82.449 deg,	R =   177.575 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.056  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1897.199  mm,	Y =   344.560  mm,	Z =  -483.190  mm,
	W =   -30.180 deg,	P =    82.449 deg,	R =   177.576 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.056  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   496.801  mm,	Y =   376.435  mm,	Z =  -438.323  mm,
	W =   -30.180 deg,	P =    82.449 deg,	R =   177.576 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.056  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   556.540  mm,	Y =   373.909  mm,	Z =    12.703  mm,
	W =   -30.178 deg,	P =    82.448 deg,	R =   177.577 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.056  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   536.490  mm,	Y =   330.715  mm,	Z =    19.812  mm,
	W =   -29.416 deg,	P =    82.208 deg,	R =   178.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   107.404  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   493.494  mm,	Y =   257.287  mm,	Z =     1.676  mm,
	W =   -28.367 deg,	P =    81.704 deg,	R =   179.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   494.379  mm,	Y =   258.150  mm,	Z =    -4.583  mm,
	W =   -28.383 deg,	P =    81.701 deg,	R =   179.926 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   493.494  mm,	Y =   257.287  mm,	Z =     1.676  mm,
	W =   -28.367 deg,	P =    81.704 deg,	R =   179.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   536.490  mm,	Y =   330.715  mm,	Z =    19.812  mm,
	W =   -29.416 deg,	P =    82.208 deg,	R =   178.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   107.404  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   556.540  mm,	Y =   373.909  mm,	Z =    12.703  mm,
	W =   -30.178 deg,	P =    82.448 deg,	R =   177.577 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.056  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   496.801  mm,	Y =   376.435  mm,	Z =  -438.323  mm,
	W =   -30.180 deg,	P =    82.449 deg,	R =   177.576 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.056  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   765.045  mm,	Y =   535.082  mm,	Z =  -177.986  mm,
	W =    22.239 deg,	P =    54.421 deg,	R =  -134.352 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   170.592  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.828  mm,	Y =   735.651  mm,	Z =  -554.061  mm,
	W =    67.860 deg,	P =    31.265 deg,	R =  -114.887 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   455.416  mm,	Y =  -259.506  mm,	Z =  -982.556  mm,
	W =   130.832 deg,	P =   -72.561 deg,	R =  -160.455 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   573.486  mm,	Y =  -316.637  mm,	Z =  -407.561  mm,
	W =  -120.304 deg,	P =   -90.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   573.380  mm,	Y =  -316.617  mm,	Z =  -117.540  mm,
	W =   -27.000 deg,	P =   -85.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   514.680  mm,	Y =  -222.687  mm,	Z =   -45.919  mm,
	W =   -32.294 deg,	P =   -84.999 deg,	R =     -.001 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   499.763  mm,	Y =  -210.950  mm,	Z =    -3.331  mm,
	W =   -32.295 deg,	P =   -84.999 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   514.680  mm,	Y =  -222.687  mm,	Z =   -45.919  mm,
	W =   -32.294 deg,	P =   -84.999 deg,	R =     -.001 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   573.384  mm,	Y =  -316.616  mm,	Z =  -117.540  mm,
	W =   -27.000 deg,	P =   -85.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   573.482  mm,	Y =  -316.637  mm,	Z =  -407.561  mm,
	W =     0.000 deg,	P =   -86.243 deg,	R =   -30.304 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   455.403  mm,	Y =  -259.517  mm,	Z =  -982.549  mm,
	W =   130.830 deg,	P =   -72.560 deg,	R =  -160.453 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   -39.049  mm,	Y =  -410.925  mm,	Z =  -933.376  mm,
	W =    71.802 deg,	P =   -79.840 deg,	R =   -88.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1370.765  mm,	Y =   -71.818  mm,	Z =  -192.602  mm,
	W =      .744 deg,	P =    -7.621 deg,	R =   -89.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1386.238  mm,	Y =   -63.894  mm,	Z =    64.350  mm,
	W =    -1.398 deg,	P =    -6.969 deg,	R =   -89.560 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1384.928  mm,	Y =   -75.894  mm,	Z =   131.776  mm,
	W =    -1.405 deg,	P =    -8.927 deg,	R =   -89.512 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1386.238  mm,	Y =   -63.894  mm,	Z =    64.350  mm,
	W =    -1.398 deg,	P =    -6.969 deg,	R =   -89.560 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1370.885  mm,	Y =   -65.358  mm,	Z =   -68.355  mm,
	W =     -.329 deg,	P =    -7.450 deg,	R =   -89.621 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   761.638  mm,	Y =  -255.941  mm,	Z =  -171.365  mm,
	W =    22.022 deg,	P =    -1.489 deg,	R =   -87.943 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   692.317  mm,	Y =  -184.897  mm,	Z =  -291.048  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.839 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   623.282  mm,	Y =  -130.241  mm,	Z =  -105.176  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.839 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   472.962  mm,	Y =   -93.591  mm,	Z =    20.443  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.840 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   473.603  mm,	Y =  -135.562  mm,	Z =    33.874  mm,
	W =    48.909 deg,	P =   -16.440 deg,	R =   -89.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.500  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   472.962  mm,	Y =   -93.591  mm,	Z =    20.443  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.840 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   476.749  mm,	Y =   -91.095  mm,	Z =   -77.852  mm,
	W =    45.978 deg,	P =   -26.190 deg,	R =   -76.964 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   421.065  mm,	Y =   -96.618  mm,	Z =   -14.214  mm,
	W =    50.884 deg,	P =   -21.831 deg,	R =   -81.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   298.187  mm,	Y =   -65.244  mm,	Z =    68.211  mm,
	W =    50.884 deg,	P =   -21.831 deg,	R =   -81.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   305.719  mm,	Y =  -114.629  mm,	Z =    88.221  mm,
	W =    50.884 deg,	P =   -21.832 deg,	R =   -81.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   275.177  mm,	Y =  -111.690  mm,	Z =   106.542  mm,
	W =    50.882 deg,	P =   -21.830 deg,	R =   -81.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     9.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   305.719  mm,	Y =  -114.629  mm,	Z =    88.221  mm,
	W =    50.884 deg,	P =   -21.832 deg,	R =   -81.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   298.188  mm,	Y =   -65.244  mm,	Z =    68.211  mm,
	W =    50.884 deg,	P =   -21.831 deg,	R =   -81.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   477.795  mm,	Y =   -75.036  mm,	Z =   -35.175  mm,
	W =    48.320 deg,	P =   -20.319 deg,	R =   -82.883 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   490.735  mm,	Y =  -119.743  mm,	Z =   -23.401  mm,
	W =    49.197 deg,	P =   -20.452 deg,	R =   -83.696 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   776.569  mm,	Y =   303.266  mm,	Z =  -694.631  mm,
	W =    63.378 deg,	P =   -20.304 deg,	R =   -96.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1100.702  mm,	Y =     3.444  mm,	Z =  -249.669  mm,
	W =    -3.559 deg,	P =    -6.395 deg,	R =    93.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1357.749  mm,	Y =    49.687  mm,	Z =  -110.301  mm,
	W =     8.793 deg,	P =    -7.052 deg,	R =    90.553 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1388.271  mm,	Y =    63.127  mm,	Z =    75.704  mm,
	W =    10.504 deg,	P =    -7.095 deg,	R =    89.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1384.613  mm,	Y =    76.798  mm,	Z =   127.829  mm,
	W =    10.581 deg,	P =    -9.698 deg,	R =    89.144 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1388.331  mm,	Y =    72.416  mm,	Z =    76.860  mm,
	W =    10.504 deg,	P =    -7.095 deg,	R =    89.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1377.245  mm,	Y =    49.863  mm,	Z =    23.220  mm,
	W =     8.845 deg,	P =    -7.049 deg,	R =    90.514 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =  1355.307  mm,	Y =    25.937  mm,	Z =  -131.480  mm,
	W =     5.469 deg,	P =    -6.932 deg,	R =    92.315 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   645.507  mm,	Y =   625.322  mm,	Z =  -842.792  mm,
	W =   -56.712 deg,	P =    -3.190 deg,	R =    84.911 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 1, 0',
	X =   684.880  mm,	Y =   851.805  mm,	Z =  -315.955  mm,
	W =   -51.840 deg,	P =    -1.306 deg,	R =    81.031 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 1',
	X =   644.877  mm,	Y =   150.849  mm,	Z =  -190.654  mm,
	W =   -50.392 deg,	P =   -31.522 deg,	R =    84.908 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 1',
	X =   472.613  mm,	Y =   126.841  mm,	Z =   -50.181  mm,
	W =   -50.392 deg,	P =   -31.522 deg,	R =    84.908 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 1',
	X =   478.212  mm,	Y =   167.778  mm,	Z =    10.590  mm,
	W =   -50.390 deg,	P =   -31.523 deg,	R =    84.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 1',
	X =   466.764  mm,	Y =   183.401  mm,	Z =    31.012  mm,
	W =   -50.391 deg,	P =   -31.523 deg,	R =    84.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 1',
	X =   478.212  mm,	Y =   167.778  mm,	Z =    10.590  mm,
	W =   -50.390 deg,	P =   -31.523 deg,	R =    84.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   497.945  mm,	Y =   151.399  mm,	Z =   -40.947  mm,
	W =   -27.462 deg,	P =   -37.334 deg,	R =    67.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   380.099  mm,	Y =   117.796  mm,	Z =     2.381  mm,
	W =   -18.879 deg,	P =   -34.888 deg,	R =    55.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   259.371  mm,	Y =   139.228  mm,	Z =     4.495  mm,
	W =   -15.973 deg,	P =   -31.713 deg,	R =    44.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   248.342  mm,	Y =   161.431  mm,	Z =   105.908  mm,
	W =   -15.973 deg,	P =   -31.713 deg,	R =    44.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   246.654  mm,	Y =   168.758  mm,	Z =   150.627  mm,
	W =   -19.124 deg,	P =   -30.365 deg,	R =    44.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   248.810  mm,	Y =   169.892  mm,	Z =   151.575  mm,
	W =   -19.124 deg,	P =   -30.365 deg,	R =    44.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     9.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   248.342  mm,	Y =   161.431  mm,	Z =   105.908  mm,
	W =   -15.973 deg,	P =   -31.713 deg,	R =    44.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   211.852  mm,	Y =   168.267  mm,	Z =    31.559  mm,
	W =   -15.973 deg,	P =   -31.713 deg,	R =    44.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =   506.290  mm,	Y =   128.277  mm,	Z =   -49.009  mm,
	W =   -36.807 deg,	P =   -24.898 deg,	R =    86.210 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 1',
	X =   561.720  mm,	Y =   159.775  mm,	Z =  -110.794  mm,
	W =   -48.044 deg,	P =   -31.700 deg,	R =    89.192 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 1',
	X =   624.006  mm,	Y =   206.236  mm,	Z =  -127.362  mm,
	W =   -50.392 deg,	P =   -31.522 deg,	R =    84.908 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =   840.888  mm,	Y =   761.739  mm,	Z =  -754.155  mm,
	W =   -53.810 deg,	P =    49.359 deg,	R =   120.167 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   185.648  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  1900.029  mm,	Y =  1457.002  mm,	Z =  -498.817  mm,
	W =    36.812 deg,	P =    30.053 deg,	R =  -148.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   237.766  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  2620.511  mm,	Y =  1502.808  mm,	Z =  -122.942  mm,
	W =    27.072 deg,	P =    -4.323 deg,	R =  -127.072 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   269.758  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  3363.532  mm,	Y =   387.904  mm,	Z =   626.618  mm,
	W =    -3.105 deg,	P =    11.500 deg,	R =   -97.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
/END
