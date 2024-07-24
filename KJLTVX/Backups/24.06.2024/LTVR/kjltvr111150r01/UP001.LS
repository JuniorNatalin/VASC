/PROG  UP001
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldar en ST1150";
PROG_SIZE	= 19474;
CREATE		= DATE 17-05-07  TIME 13:09:08;
MODIFIED	= DATE 23-03-12  TIME 12:22:06;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 88;
MEMORY_SIZE	= 39418;
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
   1:  !PROGRAMA NUEVO!!! ;
   2:  !Apagar Perfil Lib. 80 vs ST1150 ;
   3:  !Apagar Perfil Lib. 79 vs ST1150 ;
   4:  !Encender Anticol. 1 vs 1180R01 ;
   5:  !Encender Anticol. 3 vs 1130R01 ;
   6:  UFRAME_NUM=1 ;
   7:  UTOOL_NUM=1 ;
   8:  PAYLOAD[1] ;
   9:   ;
  10:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  !Lib. de Anticolisiones ;
     10:  DO[41]=ON ;
     11:  DO[42]=ON ;
     12:  DO[43]=ON ;
     13:  DO[44]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[79] AND DI[80])    ;
     19:  DO[79]=OFF ;
     20:  DO[80]=OFF ;
     21:  !Encender Anticolisiones ;
     22:  DO[81]=ON ;
     23:  DO[83]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:J P[3] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=(OFF) ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=(ON) ;
      5:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  13:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  14:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  15:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:   ;
  20:  !P5 ;
  21:  !5QA802035_036_AL_PS_0002 ;
  22:  !Punto de Sol. No. 5698 ;
  23:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5698,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-4) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  25:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  37:   ;
  38:  !P1 ;
  39:  !5QA802035_024_Y_PS_0006 ;
  40:  !Punto de Sol. No. 5699 ;
  41:J P[24] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5699,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+3) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  49:   ;
  50:  !P2 ;
  51:  !5QA802035_010_K_PS_0004 ;
  52:  !Punto de Sol. No. 5696 ;
  53:J P[32] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5696,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  55:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  58:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  59:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:   ;
  62:  !P3 ;
  63:  !5QA802035_024_Y_PS_0005 ;
  64:  !Punto de Sol. No. 5700 ;
  65:J P[40] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5700,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  66:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  67:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  68:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  69:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  70:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  71:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  72:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  73:   ;
  74:  !P4 ;
  75:  !Fin de Trabajo 1 ;
  76:  !5QA802035_010_K_PS_0003 ;
  77:  !Punto de Sol. No. 5697 ;
  78:J P[48] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5697,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  79:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  80:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  81:J P[51] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  82:  !****************************** ;
  83:  !Encender Perfil Lib 79 vs ST1150 ;
  84:  !Apagar Anticol. 1 vs 1180R01 ;
  85:J P[52] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[41]=ON ;
      3:  DO[79]=ON ;
      4:  TC_ONLINE (DI[43] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  86:  !Encender Perfil Lib 80 vs ST1150 ;
  87:  !Apagar Anticol. 3 vs 1130R01 ;
  88:J P[53] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[43]=ON ;
      5:  DO[79]=ON ;
      6:  DO[80]=ON ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   343.667  mm,	Y =  2460.803  mm,	Z =  1218.797  mm,
	W =   171.605 deg,	P =    29.866 deg,	R =   155.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   202.405  mm,	Y =   878.402  mm,	Z =   348.161  mm,
	W =   -98.174 deg,	P =    28.469 deg,	R =   160.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    43.627  mm,	Y =   554.178  mm,	Z =   178.347  mm,
	W =   -97.904 deg,	P =    15.112 deg,	R =   170.654 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    38.676  mm,	Y =   456.883  mm,	Z =   152.645  mm,
	W =  -102.679 deg,	P =    16.017 deg,	R =   173.750 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.000  mm,	Y =   442.318  mm,	Z =   146.430  mm,
	W =   -93.837 deg,	P =    15.719 deg,	R =   171.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    39.774  mm,	Y =   435.605  mm,	Z =   132.345  mm,
	W =   -91.912 deg,	P =    28.897 deg,	R =   174.855 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    47.943  mm,	Y =   443.358  mm,	Z =   123.795  mm,
	W =   -92.128 deg,	P =    40.519 deg,	R =   176.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.517  mm,	Y =   441.816  mm,	Z =   113.166  mm,
	W =   -92.192 deg,	P =    54.665 deg,	R =   176.786 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    50.470  mm,	Y =   438.852  mm,	Z =   110.347  mm,
	W =   -89.219 deg,	P =    54.730 deg,	R =   179.365 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.997  mm,	Y =   423.088  mm,	Z =   100.762  mm,
	W =   -90.734 deg,	P =    55.910 deg,	R =   174.754 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    50.470  mm,	Y =   438.851  mm,	Z =   110.347  mm,
	W =   -89.219 deg,	P =    54.730 deg,	R =   179.365 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.518  mm,	Y =   441.816  mm,	Z =   113.166  mm,
	W =   -92.192 deg,	P =    54.665 deg,	R =   176.786 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    47.944  mm,	Y =   443.359  mm,	Z =   123.795  mm,
	W =   -92.128 deg,	P =    40.519 deg,	R =   176.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    39.774  mm,	Y =   435.605  mm,	Z =   132.345  mm,
	W =   -91.912 deg,	P =    28.897 deg,	R =   174.855 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.000  mm,	Y =   442.318  mm,	Z =   146.430  mm,
	W =   -93.837 deg,	P =    15.719 deg,	R =   171.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    38.676  mm,	Y =   456.884  mm,	Z =   152.645  mm,
	W =  -102.679 deg,	P =    16.017 deg,	R =   173.750 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    43.628  mm,	Y =   554.178  mm,	Z =   178.347  mm,
	W =   -97.904 deg,	P =    15.112 deg,	R =   170.654 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   154.112  mm,	Y =   702.759  mm,	Z =   325.214  mm,
	W =   -98.174 deg,	P =    28.469 deg,	R =   160.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   259.811  mm,	Y =  1276.051  mm,	Z =   572.437  mm,
	W =  -135.214 deg,	P =    29.891 deg,	R =   140.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   163.112  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    89.427  mm,	Y =  1014.304  mm,	Z =   626.268  mm,
	W =   119.292 deg,	P =    -6.392 deg,	R =    -6.440 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.653  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -59.587  mm,	Y =   726.156  mm,	Z =   409.660  mm,
	W =  -164.393 deg,	P =   -61.531 deg,	R =  -104.031 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -87.016  mm,	Y =   595.018  mm,	Z =   292.742  mm,
	W =  -179.437 deg,	P =   -74.904 deg,	R =   -81.734 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -67.792  mm,	Y =   471.356  mm,	Z =   269.225  mm,
	W =  -179.438 deg,	P =   -74.904 deg,	R =   -81.734 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -68.522  mm,	Y =   457.434  mm,	Z =   277.322  mm,
	W =  -179.426 deg,	P =   -75.235 deg,	R =   -81.746 deg
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
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -67.734  mm,	Y =   470.957  mm,	Z =   270.457  mm,
	W =  -179.438 deg,	P =   -74.904 deg,	R =   -81.734 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
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
	X =  -129.030  mm,	Y =   864.635  mm,	Z =   382.747  mm,
	W =  -179.438 deg,	P =   -74.905 deg,	R =   -81.734 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -109.022  mm,	Y =   726.903  mm,	Z =   898.735  mm,
	W =  -179.438 deg,	P =   -74.905 deg,	R =   -81.734 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -75.965  mm,	Y =   711.478  mm,	Z =  1355.967  mm,
	W =   103.192 deg,	P =    52.483 deg,	R =    21.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -356.446  mm,	Y =   431.182  mm,	Z =   431.790  mm,
	W =   150.901 deg,	P =     -.731 deg,	R =    92.706 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -272.229  mm,	Y =   437.161  mm,	Z =   275.565  mm,
	W =   150.901 deg,	P =     -.731 deg,	R =    92.706 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -239.959  mm,	Y =   446.765  mm,	Z =   185.919  mm,
	W =   149.146 deg,	P =     -.528 deg,	R =    94.893 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -239.786  mm,	Y =   445.615  mm,	Z =   185.817  mm,
	W =   149.136 deg,	P =     -.297 deg,	R =    95.890 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.200  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -282.017  mm,	Y =   438.083  mm,	Z =   195.188  mm,
	W =   158.511 deg,	P =      .258 deg,	R =    92.181 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -343.735  mm,	Y =   412.312  mm,	Z =   380.669  mm,
	W =   148.727 deg,	P =      .045 deg,	R =    94.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -391.982  mm,	Y =   408.497  mm,	Z =   672.155  mm,
	W =   171.316 deg,	P =      .045 deg,	R =    94.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -100.342  mm,	Y =   360.290  mm,	Z =   647.922  mm,
	W =   177.224 deg,	P =    10.525 deg,	R =    82.849 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -94.140  mm,	Y =   422.699  mm,	Z =   312.840  mm,
	W =   173.574 deg,	P =     1.402 deg,	R =    83.382 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -95.238  mm,	Y =   417.102  mm,	Z =   271.791  mm,
	W =   175.094 deg,	P =      .794 deg,	R =    80.338 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -97.402  mm,	Y =   410.559  mm,	Z =   214.931  mm,
	W =   177.268 deg,	P =      .278 deg,	R =    76.091 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -84.110  mm,	Y =   418.861  mm,	Z =   210.110  mm,
	W =   177.122 deg,	P =     -.475 deg,	R =    74.117 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    54.200  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -97.402  mm,	Y =   410.559  mm,	Z =   214.931  mm,
	W =   177.268 deg,	P =      .278 deg,	R =    76.091 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -94.140  mm,	Y =   422.699  mm,	Z =   312.840  mm,
	W =   176.617 deg,	P =      .565 deg,	R =    76.030 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -104.234  mm,	Y =   427.825  mm,	Z =   526.106  mm,
	W =   174.510 deg,	P =      .535 deg,	R =    76.060 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -33.912  mm,	Y =  1039.515  mm,	Z =   600.585  mm,
	W =   172.833 deg,	P =      .564 deg,	R =    76.030 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -175.601  mm,	Y =   891.229  mm,	Z =   315.656  mm,
	W =    99.525 deg,	P =    89.799 deg,	R =     8.405 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -175.153  mm,	Y =   583.549  mm,	Z =   165.584  mm,
	W =    97.443 deg,	P =    89.798 deg,	R =     8.136 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -173.772  mm,	Y =   476.803  mm,	Z =   167.552  mm,
	W =   -97.878 deg,	P =    89.654 deg,	R =   169.031 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -174.411  mm,	Y =   466.258  mm,	Z =   163.145  mm,
	W =   151.604 deg,	P =    88.492 deg,	R =    58.497 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.900  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -173.772  mm,	Y =   476.803  mm,	Z =   167.552  mm,
	W =   -97.878 deg,	P =    89.654 deg,	R =   169.031 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -167.700  mm,	Y =   584.275  mm,	Z =   181.211  mm,
	W =    99.246 deg,	P =    89.798 deg,	R =     8.127 deg
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
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -163.836  mm,	Y =   787.470  mm,	Z =   212.529  mm,
	W =    99.198 deg,	P =    89.798 deg,	R =     8.079 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   259.811  mm,	Y =  1276.051  mm,	Z =   572.437  mm,
	W =  -135.214 deg,	P =    29.891 deg,	R =   140.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   163.112  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   343.667  mm,	Y =  2460.812  mm,	Z =  1218.796  mm,
	W =   171.604 deg,	P =    29.866 deg,	R =   155.068 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
/END
