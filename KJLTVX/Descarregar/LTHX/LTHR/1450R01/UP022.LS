/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 20466;
CREATE		= DATE 96-03-28  TIME 16:49:56;
MODIFIED	= DATE 23-12-27  TIME 08:39:10;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 79;
MEMORY_SIZE	= 39998;
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
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     25:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  10:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  11:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  12:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  13:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  14:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  16:  !5qa802035b_018_sps0020_R ;
  17:  !Punto de Sol. No. 11614 ;
  18:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11614,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  24:  !5qa802035b_018_sps0030_R ;
  25:  !Punto de Sol. No. 11615 ;
  26:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11615,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  27:  !5qa802035b_018_sps0029_R ;
  28:  !Punto de Sol. No. 11616 ;
  29:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11616,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  30:  !5qa802035b_018_sps0028_R ;
  31:  !Punto de Sol. No. 11617 ;
  32:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11617,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  33:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  36:  !5qa802035b_018_sps0025_R ;
  37:  !Punto de Sol. No. 11618 ;
  38:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11618,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  39:  !5qa802035b_018_sps0026_R ;
  40:  !Punto de Sol. No. 11619 ;
  41:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11619,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  42:  !5qa802035b_044_atps0002_R ;
  43:  !Punto de Sol. No. 11620 ;
  44:J P[27] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11620,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  45:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  46:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  47:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  49:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  52:  !5qa802035b_040_apps0007_R ;
  53:  !Punto de Sol. No. 11621 ;
  54:J P[35] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11621,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  55:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  56:  !5qa802035b_040_apps0006_R ;
  57:  !Punto de Sol. No. 11622 ;
  58:J P[37] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11622,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  59:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  60:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  61:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  62:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  63:  !5qa802035b_018_sps0008_R ;
  64:  !Punto de Sol. No. 11625 ;
  65:J P[42] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11625,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  66:  !5qa802035b_018_sps0009_R ;
  67:  !Punto de Sol. No. 11623 ;
  68:J P[43] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11623,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  69:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  70:  !5qa802035b_018_sps0010_R ;
  71:  !Punto de Sol. No. 11624 ;
  72:J P[45] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11624,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  73:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  74:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  75:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  76:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  77:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  78:J P[51] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
  79:J P[52] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[36] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   182.126  mm,	RY =    26.584  mm,	RZ = -1588.058  mm,
	RW =   -74.999 deg,	RP =    75.000 deg,	RR =  -179.999 deg
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
	RX =    24.276  mm,	RY =  -883.946  mm,	RZ =   156.370  mm,
	RW =     -.292 deg,	RP =     2.392 deg,	RR =   -96.345 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
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
	RX =    10.892  mm,	RY =  -255.931  mm,	RZ =    64.605  mm,
	RW =     6.737 deg,	RP =     1.082 deg,	RR =   -95.902 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -485.113  mm,	RY =   655.763  mm,	RZ =  -137.978  mm,
	RW =     6.152 deg,	RP =      .049 deg,	RR =   -89.932 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -493.301  mm,	RY =   626.750  mm,	RZ =   -88.630  mm,
	RW =     6.804 deg,	RP =      .061 deg,	RR =   -89.930 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -517.861  mm,	RY =   605.932  mm,	RZ =    55.570  mm,
	RW =     8.819 deg,	RP =      .063 deg,	RR =   -89.925 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -540.330  mm,	RY =   554.500  mm,	RZ =   166.123  mm,
	RW =    10.578 deg,	RP =      .049 deg,	RR =   -89.932 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -555.672  mm,	RY =   530.449  mm,	RZ =   224.949  mm,
	RW =     9.872 deg,	RP =    -2.259 deg,	RR =   -90.389 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -575.902  mm,	RY =   530.863  mm,	RZ =   231.945  mm,
	RW =     9.872 deg,	RP =    -2.259 deg,	RR =   -90.389 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -580.903  mm,	RY =   522.407  mm,	RZ =   256.242  mm,
	RW =     9.595 deg,	RP =    -3.224 deg,	RR =   -90.545 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -601.177  mm,	RY =   528.094  mm,	RZ =   297.591  mm,
	RW =    14.178 deg,	RP =     -.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
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
	RX =  -600.344  mm,	RY =   520.093  mm,	RZ =   297.179  mm,
	RW =    14.178 deg,	RP =     -.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    30.000  mm
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
	RX =  -599.454  mm,	RY =   522.617  mm,	RZ =   292.186  mm,
	RW =    14.160 deg,	RP =    -1.428 deg,	RR =   -89.396 deg
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
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -600.346  mm,	RY =   528.094  mm,	RZ =   294.300  mm,
	RW =    14.178 deg,	RP =     -.000 deg,	RR =   -90.000 deg
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
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -580.741  mm,	RY =   539.112  mm,	RZ =   255.302  mm,
	RW =     9.595 deg,	RP =    -3.224 deg,	RR =   -90.545 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -561.064  mm,	RY =   544.470  mm,	RZ =   158.433  mm,
	RW =    10.578 deg,	RP =      .050 deg,	RR =   -89.932 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   180.000  mm
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
	RX =  -544.182  mm,	RY =   531.201  mm,	RZ =   146.251  mm,
	RW =     2.178 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    40.000  mm
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
	RX =  -537.342  mm,	RY =   523.200  mm,	RZ =   150.731  mm,
	RW =     2.178 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    30.000  mm
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
	RX =  -535.161  mm,	RY =   524.005  mm,	RZ =   155.027  mm,
	RW =     1.994 deg,	RP =      .961 deg,	RR =   -90.392 deg
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
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -507.085  mm,	RY =   522.093  mm,	RZ =   151.629  mm,
	RW =     2.226 deg,	RP =     1.131 deg,	RR =   -90.635 deg
   GP2:
	UF : 1, UT : 2,	
	J1=     9.900  mm
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
	RX =  -475.386  mm,	RY =   522.370  mm,	RZ =   151.668  mm,
	RW =     2.228 deg,	RP =     -.385 deg,	RR =   -90.213 deg
   GP2:
	UF : 1, UT : 2,	
	J1=     7.600  mm
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
	RX =  -476.772  mm,	RY =   531.199  mm,	RZ =   149.953  mm,
	RW =     2.178 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
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
	RX =  -470.778  mm,	RY =   535.098  mm,	RZ =   294.306  mm,
	RW =     2.178 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
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
	RX =  -470.781  mm,	RY =   522.098  mm,	RZ =   294.306  mm,
	RW =     2.178 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    30.000  mm
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
	RX =  -471.899  mm,	RY =   523.604  mm,	RZ =   292.599  mm,
	RW =     2.178 deg,	RP =    -1.039 deg,	RR =   -90.625 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.000  mm
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
	RX =  -439.191  mm,	RY =   522.065  mm,	RZ =   295.298  mm,
	RW =     2.189 deg,	RP =     -.687 deg,	RR =   -90.905 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.000  mm
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
	RX =  -417.765  mm,	RY =   523.826  mm,	RZ =   293.155  mm,
	RW =     2.178 deg,	RP =    -1.076 deg,	RR =   -90.744 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.000  mm
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
	RX =  -419.894  mm,	RY =   530.096  mm,	RZ =   296.049  mm,
	RW =     2.178 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
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
	RX =  -291.655  mm,	RY =   538.880  mm,	RZ =   131.078  mm,
	RW =     2.178 deg,	RP =     0.000 deg,	RR =   -90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
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
	RX =  -201.335  mm,	RY =   567.584  mm,	RZ =   -32.887  mm,
	RW =     2.179 deg,	RP =     0.000 deg,	RR =   -90.000 deg
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
P[31]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -495.498  mm,	RY =  -176.283  mm,	RZ =   -12.896  mm,
	RW =     -.260 deg,	RP =     7.917 deg,	RR =  -124.206 deg
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
P[32]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1021.110  mm,	RY =   600.758  mm,	RZ =  -208.722  mm,
	RW =   -82.316 deg,	RP =    37.629 deg,	RR =  -175.052 deg
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
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -420.092  mm,	RY =   727.597  mm,	RZ =   384.622  mm,
	RW =  -178.742 deg,	RP =    84.000 deg,	RR =    89.983 deg
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
P[34]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -409.006  mm,	RY =   528.909  mm,	RZ =   358.635  mm,
	RW =   161.276 deg,	RP =    84.000 deg,	RR =    90.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
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
	RX =  -407.633  mm,	RY =   539.070  mm,	RZ =   311.955  mm,
	RW =   173.388 deg,	RP =    85.266 deg,	RR =   102.095 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.600  mm
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
	RX =  -391.327  mm,	RY =   543.477  mm,	RZ =   311.237  mm,
	RW =   172.101 deg,	RP =    87.034 deg,	RR =   103.107 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.619  mm
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
	RX =  -386.819  mm,	RY =   550.136  mm,	RZ =   314.138  mm,
	RW =   157.438 deg,	RP =    85.163 deg,	RR =    89.901 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -404.742  mm,	RY =   587.209  mm,	RZ =   355.358  mm,
	RW =   161.257 deg,	RP =    84.000 deg,	RR =    89.984 deg
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
P[39]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -293.592  mm,	RY =   516.226  mm,	RZ =   382.118  mm,
	RW =  -166.896 deg,	RP =     3.440 deg,	RR =    94.015 deg
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
P[40]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -317.516  mm,	RY =   514.350  mm,	RZ =   319.036  mm,
	RW =  -163.009 deg,	RP =     2.925 deg,	RR =    93.427 deg
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
P[41]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -327.190  mm,	RY =   515.066  mm,	RZ =   294.158  mm,
	RW =  -158.995 deg,	RP =     3.441 deg,	RR =    94.016 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    30.000  mm
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
	RX =  -329.921  mm,	RY =   518.422  mm,	RZ =   296.733  mm,
	RW =  -159.571 deg,	RP =     4.589 deg,	RR =    87.573 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.000  mm
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
	RX =  -299.682  mm,	RY =   518.565  mm,	RZ =   294.990  mm,
	RW =  -174.360 deg,	RP =     7.611 deg,	RR =    90.834 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.000  mm
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
	RX =  -286.266  mm,	RY =   514.481  mm,	RZ =   297.617  mm,
	RW =   179.383 deg,	RP =     7.345 deg,	RR =    91.180 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.941  mm
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
	RX =  -268.400  mm,	RY =   519.669  mm,	RZ =   292.122  mm,
	RW =   160.523 deg,	RP =     6.753 deg,	RR =    90.428 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.000  mm
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
	RX =  -271.563  mm,	RY =   513.536  mm,	RZ =   292.692  mm,
	RW =   160.165 deg,	RP =    14.898 deg,	RR =    88.460 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
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
	RX =  -280.769  mm,	RY =   513.142  mm,	RZ =   319.351  mm,
	RW =   158.439 deg,	RP =    26.838 deg,	RR =    83.643 deg
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
P[48]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -294.546  mm,	RY =   525.283  mm,	RZ =   368.502  mm,
	RW =   160.636 deg,	RP =     8.516 deg,	RR =    90.778 deg
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
P[49]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -358.191  mm,	RY =   551.095  mm,	RZ =   546.679  mm,
	RW =   160.636 deg,	RP =     8.516 deg,	RR =    90.778 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
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
	RX =  -348.025  mm,	RY =  1530.380  mm,	RZ =   332.418  mm,
	RW =  -164.364 deg,	RP =     8.516 deg,	RR =    90.777 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
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
	RX = -1411.111  mm,	RY =  1476.009  mm,	RZ =   124.573  mm,
	RW =  -115.777 deg,	RP =     8.877 deg,	RR =   130.705 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[52]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	RX =   182.126  mm,	RY =    26.581  mm,	RZ = -1588.058  mm,
	RW =   -74.999 deg,	RP =    75.000 deg,	RR =  -179.999 deg
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
