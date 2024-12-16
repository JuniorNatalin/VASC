/PROG  UP022
/ATTR
OWNER		= SHIFT;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 19300;
CREATE		= DATE 16-10-03  TIME 00:53:24;
MODIFIED	= DATE 24-06-29  TIME 17:01:08;
FILE_NAME	= UP802;
VERSION		= 0;
LINE_COUNT	= 76;
MEMORY_SIZE	= 37324;
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
     19:  !Apagar Posicion Base ;
     20:  DO[15]=OFF ;
     21:  !Robot en Trayectoria ;
     22:  DO[16]=ON ;
     23:  !Fresador en Posicion Base ;
     24:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     25:  WAIT (M[96])    ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
   7:  !5qa803296_021_vps0003_X ;
   8:  !Punto de Sol. No. 13010 ;
   9:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13010,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  12:  !5qa803296_007_gps0008_X ;
  13:  !Punto de Sol. No. 13011 ;
  14:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13011,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  16:  !5qa803296_007_gps0003_X ;
  17:  !Punto de Sol. No. 13012 ;
  18:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13012,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  20:  !5qa803296_007_gps0009_X ;
  21:  !Punto de Sol. No. 13013 ;
  22:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13013,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  24:  !5qa803296_007_gps0002_X ;
  25:  !Punto de Sol. No. 13014 ;
  26:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13014,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  28:  !5qa803296_020_ups0003_X ;
  29:  !Punto de Sol. No. 13015 ;
  30:J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13015,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  32:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  33:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  36:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  37:  !5qa803296_007_gps0015_X ;
  38:  !Punto de Sol. No. 13016 ;
  39:J P[22] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13016,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  40:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  41:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  42:  !5qa803296_007_gps0017_X ;
  43:  !Punto de Sol. No. 13017 ;
  44:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13017,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  45:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  46:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  47:  !5qa803296_007_gps0016_X ;
  48:  !Punto de Sol. No. 13018 ;
  49:J P[28] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13018,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  52:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  53:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  54:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  55:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  56:  !Encender Anticol. 4 vs R1150R01 ;
  57:J P[35] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  !Solicitar Anticolisiones ;
      4:  DO[84]=ON ;
      5:  CALL MAKRO020    ;
      6:  WAIT (DI[23])    ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  58:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  59:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  60:  !5qa803296_020_ups0002_X ;
  61:  !Punto de Sol. No. 13019 ;
  62:J P[38] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13019,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  63:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  64:  !5qa803296_020_ups0001_X ;
  65:  !Punto de Sol. No. 13020 ;
  66:  !Fin de Trabajo 2 ;
  67:J P[40] 100% CNT0 ACC100 TB    0.00sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13020,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  68:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  69:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  70:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  71:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  72:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  73:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  74:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[44] AND M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
  75:  !Apagar Antico. 4 vs R1150R01 ;
  76:J P[48] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[44]=ON ;
      4:  TIMER[4]=STOP ;
      5:  WAIT (DI[23])    ;
      6:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      7:  DO[23]=ON ;
      8:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[35] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1523.819  mm,	RY =  -681.058  mm,	RZ =  1568.538  mm,
	RW =   156.119 deg,	RP =   -10.846 deg,	RR =  -168.107 deg
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
	RX =   254.393  mm,	RY =    75.960  mm,	RZ =   293.736  mm,
	RW =  -150.756 deg,	RP =    61.229 deg,	RR =   179.990 deg
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
	RX =   260.980  mm,	RY =    78.962  mm,	RZ =   156.849  mm,
	RW =  -150.756 deg,	RP =    61.229 deg,	RR =   179.990 deg
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
	RX =   255.367  mm,	RY =    77.574  mm,	RZ =   154.214  mm,
	RW =  -152.651 deg,	RP =    60.241 deg,	RR =   177.829 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.100  mm
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
	RX =   262.284  mm,	RY =    78.938  mm,	RZ =   159.141  mm,
	RW =  -150.756 deg,	RP =    61.229 deg,	RR =   179.990 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    34.130  mm
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
	RX =   257.895  mm,	RY =     1.276  mm,	RZ =   154.590  mm,
	RW =  -148.163 deg,	RP =    61.230 deg,	RR =   179.989 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.695  mm
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
	RX =   253.800  mm,	RY =     2.121  mm,	RZ =   151.660  mm,
	RW =  -148.734 deg,	RP =    59.840 deg,	RR =   179.375 deg
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
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   246.879  mm,	RY =    -3.491  mm,	RZ =   162.597  mm,
	RW =  -149.404 deg,	RP =    60.305 deg,	RR =  -179.673 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.701  mm
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
	RX =   234.868  mm,	RY =   -10.601  mm,	RZ =   161.247  mm,
	RW =  -152.994 deg,	RP =    57.555 deg,	RR =   177.855 deg
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
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   251.395  mm,	RY =   -15.196  mm,	RZ =   162.496  mm,
	RW =  -149.238 deg,	RP =    59.921 deg,	RR =  -179.794 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    22.630  mm
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
	RX =   251.824  mm,	RY =   -20.200  mm,	RZ =   151.532  mm,
	RW =  -149.723 deg,	RP =    58.334 deg,	RR =   178.316 deg
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
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   248.600  mm,	RY =   -27.948  mm,	RZ =   167.081  mm,
	RW =  -147.986 deg,	RP =    60.082 deg,	RR =  -179.806 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.521  mm
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
	RX =   235.151  mm,	RY =   -34.361  mm,	RZ =   160.480  mm,
	RW =  -148.640 deg,	RP =    59.482 deg,	RR =   179.342 deg
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
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   252.945  mm,	RY =   -39.738  mm,	RZ =   162.120  mm,
	RW =  -151.062 deg,	RP =    60.198 deg,	RR =  -179.574 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.349  mm
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
	RX =   252.369  mm,	RY =   -49.361  mm,	RZ =   150.758  mm,
	RW =  -156.310 deg,	RP =    59.487 deg,	RR =   176.961 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.500  mm
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
	RX =   264.384  mm,	RY =   -43.186  mm,	RZ =   162.991  mm,
	RW =  -153.823 deg,	RP =    61.229 deg,	RR =   179.991 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.223  mm
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
	RX =   201.359  mm,	RY =     2.303  mm,	RZ =   274.427  mm,
	RW =  -153.826 deg,	RP =    61.229 deg,	RR =   179.973 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    91.357  mm
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
	RX =   132.537  mm,	RY =    45.041  mm,	RZ =   295.725  mm,
	RW =  -153.823 deg,	RP =    61.229 deg,	RR =   179.991 deg
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
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   135.196  mm,	RY =  -200.981  mm,	RZ =   286.815  mm,
	RW =   132.421 deg,	RP =    21.769 deg,	RR =   109.201 deg
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
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   269.402  mm,	RY =  -182.307  mm,	RZ =   166.673  mm,
	RW =   132.421 deg,	RP =    21.769 deg,	RR =   109.200 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.000  mm
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
	RX =   238.898  mm,	RY =   -94.609  mm,	RZ =   129.603  mm,
	RW =   132.421 deg,	RP =    21.768 deg,	RR =   109.201 deg
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
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   238.175  mm,	RY =   -74.915  mm,	RZ =   137.077  mm,
	RW =   132.504 deg,	RP =    21.924 deg,	RR =   109.583 deg
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
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   244.996  mm,	RY =  -112.146  mm,	RZ =   137.014  mm,
	RW =   132.421 deg,	RP =    21.768 deg,	RR =   109.201 deg
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
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   244.961  mm,	RY =  -102.625  mm,	RZ =   105.334  mm,
	RW =   134.709 deg,	RP =    21.935 deg,	RR =   107.731 deg
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
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   243.401  mm,	RY =   -84.202  mm,	RZ =   111.570  mm,
	RW =   135.019 deg,	RP =    18.532 deg,	RR =   108.765 deg
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
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   244.932  mm,	RY =  -122.621  mm,	RZ =   105.296  mm,
	RW =   134.709 deg,	RP =    21.935 deg,	RR =   107.731 deg
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
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   251.428  mm,	RY =  -110.906  mm,	RZ =    80.936  mm,
	RW =   131.430 deg,	RP =    22.472 deg,	RR =   107.139 deg
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
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   254.794  mm,	RY =   -90.462  mm,	RZ =    91.477  mm,
	RW =   131.855 deg,	RP =    19.177 deg,	RR =   107.066 deg
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
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   257.811  mm,	RY =  -105.749  mm,	RZ =    88.343  mm,
	RW =   131.430 deg,	RP =    22.472 deg,	RR =   107.139 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.000  mm
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
	RX =   174.181  mm,	RY =  -191.250  mm,	RZ =   309.610  mm,
	RW =   131.430 deg,	RP =    22.475 deg,	RR =   107.136 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.500  mm
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
	RX =    90.586  mm,	RY =   -92.354  mm,	RZ =   243.716  mm,
	RW =   138.893 deg,	RP =   -12.328 deg,	RR =    70.777 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.366  mm
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
	RX =   127.751  mm,	RY =  -194.500  mm,	RZ =   269.515  mm,
	RW =   144.562 deg,	RP =   -16.398 deg,	RR =    64.190 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.366  mm
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
	RX =    40.099  mm,	RY =  -187.350  mm,	RZ =   156.665  mm,
	RW =   144.939 deg,	RP =   -27.633 deg,	RR =    56.893 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.340  mm
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
	RX =    10.863  mm,	RY =  -141.049  mm,	RZ =   160.024  mm,
	RW =   152.713 deg,	RP =   -34.492 deg,	RR =    44.573 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.314  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =    25.281  mm,	RY =   212.694  mm,	RZ =   199.509  mm,
	RW =   176.366 deg,	RP =   -46.664 deg,	RR =    -2.738 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.739  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =    14.954  mm,	RY =   -42.600  mm,	RZ =   317.424  mm,
	RW =  -129.048 deg,	RP =   -20.169 deg,	RR =   -86.666 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   267.231  mm,	RY =   -91.777  mm,	RZ =   126.554  mm,
	RW =  -129.422 deg,	RP =   -21.504 deg,	RR =   -85.329 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   266.816  mm,	RY =   -97.157  mm,	RZ =   143.364  mm,
	RW =  -130.278 deg,	RP =   -23.305 deg,	RR =   -76.041 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   267.015  mm,	RY =   -92.547  mm,	RZ =   130.153  mm,
	RW =  -134.775 deg,	RP =   -21.932 deg,	RR =   -78.058 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    27.960  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   268.837  mm,	RY =  -106.537  mm,	RZ =   124.216  mm,
	RW =  -133.823 deg,	RP =   -22.849 deg,	RR =   -83.999 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.800  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   268.356  mm,	RY =   -42.515  mm,	RZ =    92.465  mm,
	RW =  -133.099 deg,	RP =   -20.271 deg,	RR =   -87.477 deg
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   233.750  mm,	RY =   -25.286  mm,	RZ =   124.285  mm,
	RW =  -132.222 deg,	RP =   -20.723 deg,	RR =   -87.466 deg
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   134.766  mm,	RY =   -93.552  mm,	RZ =   246.452  mm,
	RW =  -132.221 deg,	RP =   -20.720 deg,	RR =   -87.464 deg
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
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   154.162  mm,	RY =   -10.932  mm,	RZ =   332.560  mm,
	RW =  -138.949 deg,	RP =   -28.255 deg,	RR =   -77.704 deg
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
P[45]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =  -503.271  mm,	RY =  -212.508  mm,	RZ =   243.999  mm,
	RW =   150.429 deg,	RP =   -61.159 deg,	RR =    39.899 deg
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
P[46]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -105.927  mm,	RY = -1261.493  mm,	RZ =   354.539  mm,
	RW =   144.396 deg,	RP =   -59.501 deg,	RR =    82.362 deg
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
P[47]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   683.159  mm,	RY = -1547.620  mm,	RZ =   673.912  mm,
	RW =   145.711 deg,	RP =   -47.161 deg,	RR =   114.353 deg
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
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  1523.820  mm,	RY =  -681.058  mm,	RZ =  1568.538  mm,
	RW =   156.119 deg,	RP =   -10.846 deg,	RR =  -168.107 deg
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
