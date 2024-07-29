/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est 1";
PROG_SIZE	= 15352;
CREATE		= DATE 03-01-27  TIME 13:56:04;
MODIFIED	= DATE 24-06-01  TIME 09:49:38;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 29208;
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
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     14:  DO[41]=ON ;
     15:  DO[42]=ON ;
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[45]=ON ;
     19:  DO[46]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  !Basculante 1 en Pos. de Reposo ;
     25:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     26:  WAIT (M[96])    ;
     27:  WAIT (DI[23])    ;
     28:  DO[23]=ON ;
     29:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
   9:   ;
  10:  !Punto de Sol. No. 11523 ;
  11:  !5qa802035b_002_bps0008_R ;
  12:J P[6] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11523,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  13:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
       ------ ;
  14:   ;
  15:  !Punto de Sol. No. 11524 ;
  16:  !5qa802035b_028_acps0009_R ;
  17:J P[8] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11524,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  18:   ;
  19:  !Punto de Sol. No. 11525 ;
  20:  !5qa802035b_002_bps0007_R ;
  21:J P[9] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11525,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  22:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  23:   ;
  24:  !Punto de Sol. No. 11526 ;
  25:  !5qa802035b_028_acps0001_R ;
  26:J P[11] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11526,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+15) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  27:   ;
  28:  !Punto de Sol. No. 11527 ;
  29:  !5qa802035b_028_acps0008_R ;
  30:J P[12] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11527,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+14) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  31:   ;
  32:  !Punto de Sol. No. 11528 ;
  33:  !5qa802035b_002_bps0001_R ;
  34:J P[13] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11528,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  35:   ;
  36:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  37:   ;
  32:  !Punto de Sol. No. 11529 ;
  38:  !5qa802035b_002_bps0006_R ;
  39:J P[15] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11529,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  40:   ;
  41:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  42:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  43:J P[18] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  44:J P[19] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  45:J P[20] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  46:J P[21] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  47:J P[22] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  48:J P[23] 100% CNT20 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  49:J P[24] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  50:J P[25] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  51:J P[26] 100% CNT20 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  52:J P[27] 100% CNT20 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  53:J P[28] 100% CNT20 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  54:   ;
  32:  !Punto de Sol. No. 11530 ;
  55:  !5qa802035b_066_brps0005_R ;
  56:J P[29] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11530,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  57:   ;
  58:  !Punto de Sol. No. 11531 ;
  59:  !Fin de Trabajo 2 ;
  60:  !5qa802035b_066_brps0006_R ;
  61:J P[30] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11531,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  62:   ;
  63:J P[31] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  64:J P[32] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  65:J P[33] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  66:J P[34] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  67:J P[35] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  68:J P[36] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
  69:J P[37] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=11531,Fzg_Typ=7,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1442.578  mm,	RY =   589.361  mm,	RZ =   830.918  mm,
	RW =    36.146 deg,	RP =    27.794 deg,	RR =  -164.600 deg
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
	RX = -1427.226  mm,	RY =   871.234  mm,	RZ =  -175.723  mm,
	RW =    78.227 deg,	RP =    38.753 deg,	RR =  -146.942 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   160.000  mm
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
	RX =   242.218  mm,	RY =   -93.754  mm,	RZ =   102.051  mm,
	RW =   118.061 deg,	RP =     7.691 deg,	RR =   -96.982 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   160.000  mm
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
	RX =   265.251  mm,	RY =   380.932  mm,	RZ =   106.135  mm,
	RW =   119.315 deg,	RP =     7.691 deg,	RR =   -96.982 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   160.000  mm
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
	RX =   151.274  mm,	RY =   380.362  mm,	RZ =   112.915  mm,
	RW =   111.677 deg,	RP =     6.723 deg,	RR =   -94.179 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   107.216  mm
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
	RX =   152.633  mm,	RY =   367.622  mm,	RZ =   108.911  mm,
	RW =   115.081 deg,	RP =     7.699 deg,	RR =   -96.851 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    21.700  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     -.300  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   118.574  mm,	RY =   373.278  mm,	RZ =   111.826  mm,
	RW =   114.469 deg,	RP =     6.362 deg,	RR =   -97.291 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    19.414  mm
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
	RX =    80.495  mm,	RY =   379.252  mm,	RZ =   137.226  mm,
	RW =   112.862 deg,	RP =     2.499 deg,	RR =   -98.929 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    33.087  mm
   GP3:
	UF : 1, UT : 4,	
	J1=    -1.800  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   102.040  mm,	RY =   376.098  mm,	RZ =   133.562  mm,
	RW =   113.806 deg,	RP =     3.809 deg,	RR =   -99.849 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    22.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     -.200  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   100.890  mm,	RY =   378.106  mm,	RZ =   116.546  mm,
	RW =   110.412 deg,	RP =     1.908 deg,	RR =   -99.278 deg
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
P[11]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =    83.523  mm,	RY =   379.114  mm,	RZ =   100.002  mm,
	RW =   116.277 deg,	RP =     2.942 deg,	RR =   -98.644 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     4.400  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =    64.138  mm,	RY =   382.260  mm,	RZ =   107.127  mm,
	RW =   112.841 deg,	RP =     1.464 deg,	RR =   -98.874 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    20.300  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     3.200  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   110.010  mm,	RY =   379.523  mm,	RZ =    81.882  mm,
	RW =   115.975 deg,	RP =     5.731 deg,	RR =   -96.688 deg
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
P[14]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   135.626  mm,	RY =   374.396  mm,	RZ =   108.206  mm,
	RW =   113.907 deg,	RP =     7.305 deg,	RR =   -97.201 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    22.600  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     -.400  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   138.013  mm,	RY =   374.130  mm,	RZ =   103.297  mm,
	RW =   113.908 deg,	RP =     7.305 deg,	RR =   -97.215 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    37.412  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     3.900  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   138.330  mm,	RY =   384.559  mm,	RZ =    99.067  mm,
	RW =   115.567 deg,	RP =     7.177 deg,	RR =   -97.150 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    60.018  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   264.798  mm,	RY =   377.795  mm,	RZ =   129.552  mm,
	RW =   118.061 deg,	RP =     7.691 deg,	RR =   -96.982 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   212.170  mm,	RY =   199.358  mm,	RZ =   326.824  mm,
	RW =   112.627 deg,	RP =     8.173 deg,	RR =   -92.201 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   113.382  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =   154.292  mm,	RY =    14.839  mm,	RZ =   478.053  mm,
	RW =   108.620 deg,	RP =     8.698 deg,	RR =   -86.975 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    76.849  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -299.746  mm,	RY =  1036.476  mm,	RZ =  1451.742  mm,
	RW =    94.614 deg,	RP =   -58.287 deg,	RR =   -65.803 deg
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
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -268.633  mm,	RY =  1213.535  mm,	RZ =   677.053  mm,
	RW =   -15.563 deg,	RP =   -80.270 deg,	RR =    77.651 deg
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
P[22]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -236.482  mm,	RY =  1092.009  mm,	RZ =   446.942  mm,
	RW =   177.012 deg,	RP =   -83.050 deg,	RR =   -90.377 deg
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
P[23]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -216.285  mm,	RY =   940.322  mm,	RZ =   359.563  mm,
	RW =   177.012 deg,	RP =   -83.050 deg,	RR =   -90.377 deg
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
P[24]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -283.008  mm,	RY =   740.140  mm,	RZ =   240.622  mm,
	RW =   176.610 deg,	RP =   -73.001 deg,	RR =   -90.163 deg
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
P[25]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -276.112  mm,	RY =   621.535  mm,	RZ =   286.346  mm,
	RW =   132.947 deg,	RP =   -83.536 deg,	RR =   -48.103 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    47.227  mm
   GP3:
	UF : 1, UT : 4,	
	J1=      .725  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -223.620  mm,	RY =   571.609  mm,	RZ =   293.626  mm,
	RW =    86.030 deg,	RP =   -84.236 deg,	RR =    -2.299 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     1.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -219.448  mm,	RY =   531.220  mm,	RZ =   288.603  mm,
	RW =   115.559 deg,	RP =   -86.209 deg,	RR =   -31.779 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    65.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     1.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -218.912  mm,	RY =   467.523  mm,	RZ =   267.421  mm,
	RW =  -179.406 deg,	RP =   -85.372 deg,	RR =   -96.997 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    65.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     1.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -222.324  mm,	RY =   463.097  mm,	RZ =   282.342  mm,
	RW =  -179.405 deg,	RP =   -85.372 deg,	RR =   -96.997 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     1.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -241.804  mm,	RY =   466.709  mm,	RZ =   285.858  mm,
	RW =  -179.406 deg,	RP =   -85.372 deg,	RR =   -96.997 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    22.600  mm
   GP3:
	UF : 1, UT : 4,	
	J1=      .997  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -231.075  mm,	RY =   479.716  mm,	RZ =   284.060  mm,
	RW =  -179.406 deg,	RP =   -85.371 deg,	RR =   -96.997 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   107.936  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     1.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -223.620  mm,	RY =   571.609  mm,	RZ =   293.626  mm,
	RW =    86.030 deg,	RP =   -84.236 deg,	RR =    -2.299 deg
   GP2:
	UF : 1, UT : 4,	
	J1=   115.200  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     1.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -216.285  mm,	RY =   940.322  mm,	RZ =   359.563  mm,
	RW =   177.012 deg,	RP =   -83.050 deg,	RR =   -90.377 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    29.995  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -236.482  mm,	RY =  1092.009  mm,	RZ =   446.943  mm,
	RW =   177.012 deg,	RP =   -83.050 deg,	RR =   -90.377 deg
   GP2:
	UF : 1, UT : 4,	
	J1=    29.995  mm
   GP3:
	UF : 1, UT : 4,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 4,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -268.633  mm,	RY =  1213.536  mm,	RZ =   677.053  mm,
	RW =   -15.563 deg,	RP =   -80.270 deg,	RR =    77.651 deg
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
P[36]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -370.904  mm,	RY =   649.108  mm,	RZ =  1413.665  mm,
	RW =   105.863 deg,	RP =   -34.213 deg,	RR =   -75.675 deg
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
P[37]{
   GP1:
	UF : 1, UT : 4,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1442.576  mm,	RY =   589.357  mm,	RZ =   830.916  mm,
	RW =    36.146 deg,	RP =    27.794 deg,	RR =  -164.600 deg
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
