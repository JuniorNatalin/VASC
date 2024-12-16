/PROG  UP021
/ATTR
OWNER		= engenhar;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 28820;
CREATE		= DATE 03-01-27  TIME 14:50:28;
MODIFIED	= DATE 24-06-29  TIME 20:37:10;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 139;
MEMORY_SIZE	= 59248;
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
   3:   ;
   4:  PAYLOAD[1] ;
   5:   ;
   6:  !Esp. Lib. Sold. en ST1350 ;
   7:  !Apagar Perfil Libre ST1350 ;
   8:  !Anticol. 9 vs R1340R01 EIN ;
   9:  !Anticol. 11 vs R1360R01 EIN ;
  10:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[16]=ON ;
      4:  TIMER[3]=RESET ;
      5:  TIMER[3]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[76]=ON ;
     10:  !Lib. de Anticolisiones ;
     11:  DO[41]=ON ;
     12:  DO[42]=ON ;
     13:  DO[43]=ON ;
     14:  DO[44]=ON ;
     15:  DO[45]=ON ;
     16:  DO[46]=ON ;
     17:  DO[49]=ON ;
     18:  DO[50]=ON ;
     19:  DO[51]=ON ;
     20:  DO[52]=ON ;
     21:  !Apagar Pos. Base ;
     22:  DO[15]=OFF ;
     23:  !Robot en Trayectoria ;
     24:  DO[16]=ON ;
     25:  !Lib. Soldadura ;
     26:  WAIT (DI[80] AND DI[76])    ;
     27:  DO[80]=OFF ;
     28:  DO[76]=OFF ;
     29:  !Solicitar Anticolisiones ;
     30:  DO[89]=ON ;
     31:  DO[91]=ON ;
     32:  CALL MAKRO020    ;
     33:  WAIT (DI[23])    ;
     34:  DO[23]=ON ;
     35:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  13:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  14:   ;
  15:  !Punto de Sol. No. 13075 ;
  16:  ! 5qf803296_p0002_b0210003700_R ;
  17:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13075,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+20) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  DO[81]=ON ;
      9:  CALL MAKRO020    ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  18:   ;
  19:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  20:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:   ;
  22:  !Punto de Sol. No. 13076 ;
  23:  ! 5qf803296_p0002_b0210003800_R ;
  24:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  ! S-PUNKT= NAO DEFINIDO - DEFINIR ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13076,Fzg_Typ=7,EIN/AUS=ON) ;
      6:  GO[2]=(R[197]+20) ;
      7:  WAIT (!DI[129] OR DI[26])    ;
      8:  CALL MAKRO080    ;
      9:  DO[81]=ON ;
     10:  CALL MAKRO020    ;
     11:  WAIT (DI[23])    ;
     12:  DO[23]=ON ;
     13:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  25:   ;
  26:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:   ;
  32:  !Punto de Sol. No. 13068 ;
  33:  !Encender Anticol. 1 vs R1350R03 ;
  34:  ! 5qf803296_p0002_b0210003600_R ;
  35:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13068,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+20) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  DO[81]=ON ;
      9:  CALL MAKRO020    ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (DI[41] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:   ;
  37:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:   ;
  40:  !Punto de Sol. No. 13069 ;
  41:  !Encender Anticol. 2 vs R1350R03 ;
  42:  ! 5qf803296_p0002_b0210002500_R ;
  43:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13069,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+20) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  DO[82]=ON ;
      9:  CALL MAKRO020    ;
     10:  WAIT (DI[23])    ;
     11:  DO[23]=ON ;
     12:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:   ;
  45:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  49:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:   ;
  51:  !Punto de Sol. No. 13070 ;
  52:  ! 5qa803296_009_jps0009_X ;
  53:J P[23] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13070,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+20) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:   ;
  55:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  58:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  59:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  62:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:   ;
  64:  !Punto de Sol. No. 13071 ;
  65:  ! 5qf803296_p0002_b0210003000_R ;
  66:J P[32] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13071,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  67:   ;
  68:J P[33] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  69:J P[34] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  70:J P[35] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  71:   ;
  72:   ;
  73:  !Punto de Sol. No. 13072 ;
  74:  ! 5qf803296_p0002_b0210003400_R ;
  75:J P[36] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13072,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  76:   ;
  77:J P[37] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  78:J P[38] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  79:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  80:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  81:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  82:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  83:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  84:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  85:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  86:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  87:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  88:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  89:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  90:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  91:J P[51] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  92:J P[52] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  93:   ;
  94:  !Punto de Sol. No. 13073 ;
  95:  !Apagar Anticol. 1 vs R1350R03 ;
  96:  ! 5qf803296_p0002_b0210002300_R ;
  97:J P[53] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13073,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+3) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  DO[41]=ON ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  98:   ;
  99:J P[54] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 100:J P[55] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 101:   ;
 102:J P[56] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
       ------ ;
 103:   ;
 104:J P[57] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 105:J P[58] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 106:J P[59] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 107:J P[60] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 108:J P[61] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 109:J P[62] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 110:J P[63] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 111:J P[64] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 112:J P[65] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 113:J P[66] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 114:J P[67] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 115:J P[68] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 116:J P[69] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 117:J P[70] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[42] AND DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 118:   ;
 119:  !Apagar Anticol. 2 vs R1350R03 ;
 120:   ;
 121:  !Punto de Sol. No. 13074 ;
 122:  ! 5qf803296_p0002_b0210001900_R ;
 123:J P[71] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[42]=ON ;
      4:  WAIT (!DI[16] AND DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13074,Fzg_Typ=7,EIN/AUS=ON) ;
      6:  GO[2]=(R[197]+3) ;
      7:  WAIT (!DI[129] OR DI[26])    ;
      8:  CALL MAKRO080    ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 124:  !Fin de Trabajo 1 ;
 125:   ;
 126:J P[72] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 127:J P[73] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 128:J P[74] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 129:J P[75] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 130:J P[76] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 131:J P[77] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 132:J P[78] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 133:J P[79] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 134:J P[80] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[49] AND DI[51] AND DI[76] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
 135:   ;
 136:  !Encender Perfil Libre ST1350 ;
 137:  !Apagar Anticol.  9 vs R1340R01 ;
 138:  !Apagar Anticol. 11 vs R1360R01 ;
 139:J P[81] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[49]=ON ;
      5:  DO[51]=ON ;
      6:  DO[80]=ON ;
      7:  DO[76]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  3518.486  mm,	Y =   583.950  mm,	Z =  1029.248  mm,
	W =   -30.000 deg,	P =     0.000 deg,	R =   180.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2398.363  mm,	Y =   504.292  mm,	Z =   418.422  mm,
	W =   -37.249 deg,	P =   -57.690 deg,	R =   158.236 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   110.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.208  mm,	Y =   544.994  mm,	Z =   -85.778  mm,
	W =   107.238 deg,	P =   -88.785 deg,	R =   -17.334 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1457.413  mm,	Y =   282.379  mm,	Z =  -104.032  mm,
	W =   107.238 deg,	P =   -88.785 deg,	R =   -17.334 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1452.987  mm,	Y =   246.592  mm,	Z =   -82.716  mm,
	W =   107.236 deg,	P =   -88.785 deg,	R =   -17.332 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    13.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1452.745  mm,	Y =   249.356  mm,	Z =   -96.469  mm,
	W =   107.341 deg,	P =   -88.786 deg,	R =   -17.436 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    47.100  mm
};
P[7]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1452.155  mm,	Y =   160.492  mm,	Z =  -118.661  mm,
	W =   107.331 deg,	P =   -88.786 deg,	R =   -17.427 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1428.759  mm,	Y =   144.644  mm,	Z =   -70.151  mm,
	W =    94.729 deg,	P =   -79.988 deg,	R =    -4.839 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    22.931  mm
};
P[9]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1452.155  mm,	Y =   160.492  mm,	Z =  -118.661  mm,
	W =   107.331 deg,	P =   -88.786 deg,	R =   -17.426 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.208  mm,	Y =   544.994  mm,	Z =   -85.778  mm,
	W =   107.238 deg,	P =   -88.785 deg,	R =   -17.334 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1141.362  mm,	Y =   442.225  mm,	Z =   375.595  mm,
	W =    47.080 deg,	P =   -76.002 deg,	R =    48.610 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1094.970  mm,	Y =   354.376  mm,	Z =   -81.406  mm,
	W =   103.690 deg,	P =   -90.000 deg,	R =     0.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1116.355  mm,	Y =   281.442  mm,	Z =   -64.919  mm,
	W =  -145.733 deg,	P =   -89.754 deg,	R =   -97.265 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    18.133  mm
};
P[14]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1164.976  mm,	Y =   248.059  mm,	Z =   -60.215  mm,
	W =  -140.825 deg,	P =   -89.648 deg,	R =   -96.443 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    15.021  mm
};
P[15]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1095.349  mm,	Y =   271.452  mm,	Z =   -72.116  mm,
	W =    95.555 deg,	P =   -89.546 deg,	R =     1.827 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   988.063  mm,	Y =   296.168  mm,	Z =   -68.433  mm,
	W =    76.479 deg,	P =   -88.979 deg,	R =      .426 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   971.706  mm,	Y =   252.414  mm,	Z =   -64.505  mm,
	W =    83.336 deg,	P =   -88.888 deg,	R =    -9.975 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    33.675  mm
};
P[18]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   953.329  mm,	Y =   293.187  mm,	Z =   -62.918  mm,
	W =   100.419 deg,	P =   -88.878 deg,	R =   -30.341 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    66.072  mm
};
P[19]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1077.453  mm,	Y =   625.748  mm,	Z =   -61.620  mm,
	W =   178.817 deg,	P =   -87.597 deg,	R =  -111.324 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
};
P[20]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   611.154  mm,	Y =   621.246  mm,	Z =   -66.588  mm,
	W =     8.569 deg,	P =   -87.305 deg,	R =    -3.782 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   115.000  mm
};
P[21]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   490.385  mm,	Y =   609.588  mm,	Z =   -51.466  mm,
	W =   -25.030 deg,	P =   -87.062 deg,	R =    29.852 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   115.000  mm
};
P[22]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   422.298  mm,	Y =   607.456  mm,	Z =   -48.438  mm,
	W =   -60.113 deg,	P =   -84.650 deg,	R =    65.015 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   115.000  mm
};
P[23]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   422.294  mm,	Y =   607.416  mm,	Z =   -42.078  mm,
	W =   -60.113 deg,	P =   -84.650 deg,	R =    65.015 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
};
P[24]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   422.298  mm,	Y =   607.456  mm,	Z =   -48.438  mm,
	W =   -60.113 deg,	P =   -84.650 deg,	R =    65.015 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   115.000  mm
};
P[25]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   490.385  mm,	Y =   609.588  mm,	Z =   -51.466  mm,
	W =   -25.030 deg,	P =   -87.062 deg,	R =    29.852 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   115.000  mm
};
P[26]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   611.154  mm,	Y =   621.247  mm,	Z =   -66.588  mm,
	W =     8.569 deg,	P =   -87.305 deg,	R =    -3.782 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   115.000  mm
};
P[27]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   676.329  mm,	Y =   482.394  mm,	Z =  -108.536  mm,
	W =   -21.569 deg,	P =   -64.003 deg,	R =    90.170 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   110.000  mm
};
P[28]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   775.575  mm,	Y =   293.211  mm,	Z =  -120.302  mm,
	W =     9.967 deg,	P =   -44.560 deg,	R =    85.227 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   110.000  mm
};
P[29]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.745  mm,	Y =   221.078  mm,	Z =  -109.671  mm,
	W =     8.974 deg,	P =   -39.390 deg,	R =    81.350 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   109.500  mm
};
P[30]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   758.779  mm,	Y =   164.235  mm,	Z =   -68.144  mm,
	W =     8.974 deg,	P =   -39.389 deg,	R =    81.350 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   109.500  mm
};
P[31]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   777.806  mm,	Y =   168.018  mm,	Z =   -34.926  mm,
	W =     9.338 deg,	P =   -28.021 deg,	R =    87.136 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   109.500  mm
};
P[32]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   778.517  mm,	Y =   177.852  mm,	Z =   -29.735  mm,
	W =     9.170 deg,	P =   -23.885 deg,	R =    87.805 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    21.000  mm
};
P[33]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   781.562  mm,	Y =   177.159  mm,	Z =   -32.383  mm,
	W =    13.889 deg,	P =   -25.839 deg,	R =    87.541 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
};
P[34]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   581.671  mm,	Y =   180.574  mm,	Z =   -43.208  mm,
	W =   -32.783 deg,	P =   -24.510 deg,	R =    84.327 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
};
P[35]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   549.524  mm,	Y =   178.206  mm,	Z =   -36.906  mm,
	W =   -31.508 deg,	P =   -26.276 deg,	R =    81.318 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    78.800  mm
};
P[36]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   530.360  mm,	Y =   187.717  mm,	Z =   -27.939  mm,
	W =   -30.624 deg,	P =   -27.258 deg,	R =    79.386 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    78.000  mm
};
P[37]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.631  mm,	Y =   172.586  mm,	Z =   -30.409  mm,
	W =   -10.349 deg,	P =   -26.109 deg,	R =    84.213 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    56.080  mm
};
P[38]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   781.562  mm,	Y =   177.159  mm,	Z =   -32.383  mm,
	W =    13.889 deg,	P =   -25.839 deg,	R =    87.541 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
};
P[39]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   778.287  mm,	Y =   178.674  mm,	Z =   -35.441  mm,
	W =    13.889 deg,	P =   -25.839 deg,	R =    87.541 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    17.700  mm
};
P[40]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   777.806  mm,	Y =   168.018  mm,	Z =   -34.926  mm,
	W =     9.338 deg,	P =   -28.021 deg,	R =    87.136 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   109.500  mm
};
P[41]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   758.779  mm,	Y =   164.235  mm,	Z =   -68.144  mm,
	W =     8.974 deg,	P =   -39.389 deg,	R =    81.350 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   109.500  mm
};
P[42]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.745  mm,	Y =   221.078  mm,	Z =  -109.671  mm,
	W =     8.974 deg,	P =   -39.390 deg,	R =    81.350 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   109.500  mm
};
P[43]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   775.574  mm,	Y =   293.211  mm,	Z =  -120.302  mm,
	W =     9.967 deg,	P =   -44.560 deg,	R =    85.227 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   110.000  mm
};
P[44]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   676.328  mm,	Y =   673.907  mm,	Z =  -108.535  mm,
	W =   -21.569 deg,	P =   -64.003 deg,	R =    90.170 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   110.000  mm
};
P[45]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1037.152  mm,	Y =   617.703  mm,	Z =  -114.372  mm,
	W =   -17.193 deg,	P =   -70.694 deg,	R =   103.157 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[46]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1033.160  mm,	Y =   137.986  mm,	Z =   -99.104  mm,
	W =   -17.193 deg,	P =   -70.695 deg,	R =   103.158 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[47]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1033.160  mm,	Y =   137.986  mm,	Z =   -99.104  mm,
	W =    -9.647 deg,	P =   -54.329 deg,	R =    94.741 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[48]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.073  mm,	Y =   166.408  mm,	Z =   -62.112  mm,
	W =    -8.235 deg,	P =   -46.978 deg,	R =    92.918 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[49]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.074  mm,	Y =   166.407  mm,	Z =   -62.113  mm,
	W =    -7.060 deg,	P =   -37.338 deg,	R =    91.175 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    38.853  mm
};
P[50]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1044.766  mm,	Y =   172.519  mm,	Z =   -55.512  mm,
	W =    -6.617 deg,	P =   -31.998 deg,	R =    90.396 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    38.853  mm
};
P[51]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1044.765  mm,	Y =   172.518  mm,	Z =   -55.513  mm,
	W =    -6.261 deg,	P =   -26.364 deg,	R =    89.669 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    38.853  mm
};
P[52]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1042.821  mm,	Y =   175.182  mm,	Z =   -34.252  mm,
	W =    -6.320 deg,	P =   -16.940 deg,	R =    90.081 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    17.000  mm
};
P[53]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1042.847  mm,	Y =   177.265  mm,	Z =   -33.668  mm,
	W =    -6.321 deg,	P =   -16.942 deg,	R =    90.082 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    16.700  mm
};
P[54]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1042.821  mm,	Y =   175.182  mm,	Z =   -34.252  mm,
	W =    -6.320 deg,	P =   -16.940 deg,	R =    90.081 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[55]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1044.765  mm,	Y =   172.518  mm,	Z =   -55.513  mm,
	W =    -6.261 deg,	P =   -26.364 deg,	R =    89.669 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[56]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1027.020  mm,	Y =   177.229  mm,	Z =   -57.945  mm,
	W =    -6.659 deg,	P =   -30.878 deg,	R =    90.035 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[57]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1044.766  mm,	Y =   172.519  mm,	Z =   -55.512  mm,
	W =    -6.617 deg,	P =   -31.998 deg,	R =    90.396 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[58]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.075  mm,	Y =   166.407  mm,	Z =   -62.113  mm,
	W =    -7.060 deg,	P =   -37.338 deg,	R =    91.175 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    55.000  mm
};
P[59]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.074  mm,	Y =   166.408  mm,	Z =   -62.112  mm,
	W =    -8.235 deg,	P =   -46.978 deg,	R =    92.918 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[60]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1033.160  mm,	Y =   137.986  mm,	Z =   -99.104  mm,
	W =    -9.648 deg,	P =   -54.329 deg,	R =    94.741 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[61]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1033.160  mm,	Y =   137.986  mm,	Z =   -99.104  mm,
	W =   -17.193 deg,	P =   -70.695 deg,	R =   103.158 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[62]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1037.152  mm,	Y =   617.703  mm,	Z =  -114.372  mm,
	W =   -17.193 deg,	P =   -70.694 deg,	R =   103.157 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   112.248  mm
};
P[63]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1424.239  mm,	Y =   736.252  mm,	Z =  -118.728  mm,
	W =   -61.440 deg,	P =   -74.301 deg,	R =   113.721 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[64]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1334.371  mm,	Y =   289.352  mm,	Z =  -105.086  mm,
	W =   -56.278 deg,	P =   -54.111 deg,	R =   113.549 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[65]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1326.131  mm,	Y =   178.969  mm,	Z =  -113.874  mm,
	W =   -51.010 deg,	P =   -51.118 deg,	R =   107.076 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[66]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1321.190  mm,	Y =   129.314  mm,	Z =   -79.209  mm,
	W =   -48.885 deg,	P =   -49.670 deg,	R =   104.167 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[67]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1289.880  mm,	Y =   127.141  mm,	Z =   -52.577  mm,
	W =   -41.848 deg,	P =   -43.043 deg,	R =    94.469 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[68]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1299.932  mm,	Y =   131.342  mm,	Z =   -44.152  mm,
	W =   -36.208 deg,	P =   -38.541 deg,	R =    91.700 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[69]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1284.511  mm,	Y =   149.103  mm,	Z =   -58.386  mm,
	W =   -30.816 deg,	P =   -31.419 deg,	R =    84.007 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[70]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.562  mm,	Y =   155.508  mm,	Z =   -52.175  mm,
	W =   -32.368 deg,	P =   -24.387 deg,	R =    77.698 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[71]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1259.867  mm,	Y =   165.228  mm,	Z =   -33.803  mm,
	W =   -27.848 deg,	P =   -20.674 deg,	R =    65.418 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    20.200  mm
};
P[72]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.562  mm,	Y =   155.508  mm,	Z =   -52.175  mm,
	W =   -32.368 deg,	P =   -24.387 deg,	R =    77.698 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[73]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1284.511  mm,	Y =   149.103  mm,	Z =   -58.386  mm,
	W =   -30.816 deg,	P =   -31.419 deg,	R =    84.007 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[74]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1299.932  mm,	Y =   131.342  mm,	Z =   -44.152  mm,
	W =   -36.208 deg,	P =   -38.541 deg,	R =    91.700 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[75]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1289.880  mm,	Y =   127.141  mm,	Z =   -52.577  mm,
	W =   -41.848 deg,	P =   -43.043 deg,	R =    94.469 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[76]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1321.190  mm,	Y =   129.314  mm,	Z =   -79.209  mm,
	W =   -48.885 deg,	P =   -49.670 deg,	R =   104.167 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[77]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1326.131  mm,	Y =   178.969  mm,	Z =  -113.874  mm,
	W =   -51.010 deg,	P =   -51.118 deg,	R =   107.076 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[78]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1334.371  mm,	Y =   289.352  mm,	Z =  -105.086  mm,
	W =   -56.278 deg,	P =   -54.111 deg,	R =   113.549 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   120.000  mm
};
P[79]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1390.563  mm,	Y =   424.932  mm,	Z =  -127.666  mm,
	W =   -58.056 deg,	P =   -51.961 deg,	R =   116.838 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   118.051  mm
};
P[80]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1497.185  mm,	Y =   725.888  mm,	Z =    49.301  mm,
	W =   -57.951 deg,	P =   -51.480 deg,	R =   117.473 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   117.874  mm
};
P[81]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  3518.484  mm,	Y =   583.954  mm,	Z =  1029.237  mm,
	W =   -30.000 deg,	P =     0.000 deg,	R =   180.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
};
/END
