/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Soldar en ST1150";
PROG_SIZE	= 21350;
CREATE		= DATE 03-01-27  TIME 08:13:02;
MODIFIED	= DATE 23-09-02  TIME 18:17:52;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 103;
MEMORY_SIZE	= 43214;
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
   1: UTOOL_NUM=1 ;
   2: UFRAME_NUM=2 ; 
   3:  PAYLOAD[1] ;
   4:  
   5:  !Encender Anticol. 3 vs 1130R01 ;
   6:  !Apagar Perfil Lib. 80 vs ST1150 ;
   7:  !Apagar Perfil Lib. 79 vs ST1150 ;
   8:  
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
  20:  
  21:  !5qa802035b_036_alps0002_R ;
  22:  !Punto de Sol. No. 11521 ;
  23:J P[10] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11521,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-4) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:   ;
  25:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (DI[23])    ;
      4:  DO[23]=ON ;
      5:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  37:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:   ;
  39:  
  40:  !5qa802035b_024_yps0006_R ;
  41:  !Punto de Sol. No. 11519 ;
  42:J P[24] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11519,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+3) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:   ;
  44:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  49:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  51:   ;
  52:  
  53:  !5qa802035b_066_brps0008_R ;
  54:  !Punto de Sol. No. 11517 ;
  55:J P[32] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11517,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:   ;
  57:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  58:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  59:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  62:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:   ;
  64:  
  65:  !5qa802035b_024_yps0005_R ;
  66:  !Punto de Sol. No. 11518 ;
  67:J P[39] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11518,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  68:   ;
  69:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  70:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  71:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  72:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  73:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  74:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  75:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  76:   ;
  77:  !5qa802035b_066_brps0013_R ;
  78:J P[47] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11520,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  79:   ;
  80:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  81:J P[49] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  82:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  83:  !****************************** ;
  84:  !Encender Perfil Lib 79 vs ST1150 ;
  85:  !Apagar Anticol. 1 vs 1180R01 ;
  86:J P[51] 100% FINE DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  87:J P[52] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  88:J P[53] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  89:   ;
  90:  
  91:  !Fin de Trabajo 1 ;
  92:  !5qa802035b_066_brps0007_R ;
  93:  !Punto de Sol. No. 11522 ;
  94:J P[54] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11522,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  95:J P[55] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  96:J P[56] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[41]=ON ;
      3:  DO[79]=ON ;
      4:  TC_ONLINE (DI[43] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  97:   ;
  98:J P[57] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[41]=ON ;
      3:  DO[79]=ON ;
      4:  TC_ONLINE (DI[43] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  99:   ;
 100:   ;
 101:  !Encender Perfil Lib 80 vs ST1150 ;
 102:  !Apagar Anticol. 3 vs 1130R01 ;
 103:J P[58] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   340.876  mm,	Y =  2462.747  mm,	Z =  1218.840  mm,
	W =   171.605 deg,	P =    29.866 deg,	R =   155.069 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   199.614  mm,	Y =   880.346  mm,	Z =   348.204  mm,
	W =   -98.174 deg,	P =    28.469 deg,	R =   160.709 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.836  mm,	Y =   556.122  mm,	Z =   178.390  mm,
	W =   -97.904 deg,	P =    15.112 deg,	R =   170.654 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    35.885  mm,	Y =   458.827  mm,	Z =   152.688  mm,
	W =  -102.679 deg,	P =    16.017 deg,	R =   173.750 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    42.209  mm,	Y =   444.262  mm,	Z =   146.473  mm,
	W =   -93.837 deg,	P =    15.719 deg,	R =   171.736 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    37.336  mm,	Y =   442.334  mm,	Z =   132.528  mm,
	W =   -91.912 deg,	P =    28.897 deg,	R =   174.855 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.152  mm,	Y =   445.302  mm,	Z =   123.838  mm,
	W =   -92.128 deg,	P =    40.519 deg,	R =   176.612 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    42.726  mm,	Y =   443.760  mm,	Z =   113.209  mm,
	W =   -92.192 deg,	P =    54.665 deg,	R =   176.786 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    47.679  mm,	Y =   440.796  mm,	Z =   110.390  mm,
	W =   -89.219 deg,	P =    54.730 deg,	R =   179.365 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.157  mm,	Y =   431.391  mm,	Z =    93.387  mm,
	W =   -91.030 deg,	P =    54.214 deg,	R =   179.305 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    47.679  mm,	Y =   440.795  mm,	Z =   110.390  mm,
	W =   -89.219 deg,	P =    54.730 deg,	R =   179.365 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    42.727  mm,	Y =   443.760  mm,	Z =   113.209  mm,
	W =   -92.192 deg,	P =    54.665 deg,	R =   176.786 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.153  mm,	Y =   445.303  mm,	Z =   123.838  mm,
	W =   -92.128 deg,	P =    40.519 deg,	R =   176.612 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    38.516  mm,	Y =   445.129  mm,	Z =   131.595  mm,
	W =   -91.923 deg,	P =    30.446 deg,	R =   175.099 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    37.180  mm,	Y =   444.992  mm,	Z =   145.042  mm,
	W =   -93.837 deg,	P =    15.719 deg,	R =   171.736 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    35.885  mm,	Y =   458.828  mm,	Z =   152.688  mm,
	W =  -102.679 deg,	P =    16.017 deg,	R =   173.750 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.837  mm,	Y =   556.122  mm,	Z =   178.390  mm,
	W =   -97.904 deg,	P =    15.112 deg,	R =   170.654 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   151.321  mm,	Y =   704.703  mm,	Z =   325.257  mm,
	W =   -98.174 deg,	P =    28.469 deg,	R =   160.709 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   212.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   257.020  mm,	Y =  1277.995  mm,	Z =   572.480  mm,
	W =  -135.214 deg,	P =    29.891 deg,	R =   140.303 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   163.112  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    86.636  mm,	Y =  1016.248  mm,	Z =   626.311  mm,
	W =   119.292 deg,	P =    -6.392 deg,	R =    -6.440 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   124.653  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -62.378  mm,	Y =   728.100  mm,	Z =   409.703  mm,
	W =  -164.393 deg,	P =   -61.531 deg,	R =  -104.031 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -89.807  mm,	Y =   596.962  mm,	Z =   292.785  mm,
	W =  -179.437 deg,	P =   -74.904 deg,	R =   -81.734 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -70.583  mm,	Y =   473.300  mm,	Z =   269.268  mm,
	W =  -179.438 deg,	P =   -74.904 deg,	R =   -81.734 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -65.068  mm,	Y =   458.000  mm,	Z =   278.769  mm,
	W =  -178.164 deg,	P =   -73.629 deg,	R =   -87.266 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -70.525  mm,	Y =   472.901  mm,	Z =   270.500  mm,
	W =  -179.438 deg,	P =   -74.904 deg,	R =   -81.734 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -131.821  mm,	Y =   866.579  mm,	Z =   382.790  mm,
	W =  -179.438 deg,	P =   -74.905 deg,	R =   -81.734 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -111.813  mm,	Y =   728.847  mm,	Z =   898.778  mm,
	W =  -179.438 deg,	P =   -74.905 deg,	R =   -81.734 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -78.756  mm,	Y =   713.422  mm,	Z =  1356.010  mm,
	W =   103.192 deg,	P =    52.483 deg,	R =    21.796 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -359.237  mm,	Y =   433.126  mm,	Z =   431.833  mm,
	W =   150.901 deg,	P =     -.731 deg,	R =    92.706 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -275.020  mm,	Y =   439.105  mm,	Z =   275.608  mm,
	W =   150.901 deg,	P =     -.731 deg,	R =    92.706 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -242.750  mm,	Y =   448.709  mm,	Z =   185.962  mm,
	W =   149.146 deg,	P =     -.528 deg,	R =    94.893 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -252.194  mm,	Y =   451.627  mm,	Z =   185.589  mm,
	W =   149.634 deg,	P =     -.632 deg,	R =    94.333 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -284.808  mm,	Y =   440.027  mm,	Z =   195.231  mm,
	W =   158.511 deg,	P =      .258 deg,	R =    92.181 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -346.526  mm,	Y =   414.256  mm,	Z =   380.712  mm,
	W =   148.727 deg,	P =      .045 deg,	R =    94.069 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -395.197  mm,	Y =   410.982  mm,	Z =   620.602  mm,
	W =   171.316 deg,	P =      .044 deg,	R =    94.069 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -105.422  mm,	Y =   374.748  mm,	Z =   621.247  mm,
	W =   177.224 deg,	P =    10.525 deg,	R =    82.849 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -96.931  mm,	Y =   424.643  mm,	Z =   312.883  mm,
	W =   173.574 deg,	P =     1.402 deg,	R =    83.382 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -100.193  mm,	Y =   412.503  mm,	Z =   214.974  mm,
	W =   177.268 deg,	P =      .278 deg,	R =    76.091 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -76.367  mm,	Y =   433.521  mm,	Z =   216.962  mm,
	W =   177.419 deg,	P =     2.027 deg,	R =    74.061 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -100.193  mm,	Y =   412.503  mm,	Z =   214.974  mm,
	W =   177.268 deg,	P =      .278 deg,	R =    76.091 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -90.914  mm,	Y =   423.154  mm,	Z =   313.595  mm,
	W =   173.448 deg,	P =      .565 deg,	R =    76.030 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -90.894  mm,	Y =   426.349  mm,	Z =   372.955  mm,
	W =   172.846 deg,	P =      .546 deg,	R =    76.036 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    99.300  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -36.703  mm,	Y =  1041.459  mm,	Z =   600.628  mm,
	W =   172.833 deg,	P =      .564 deg,	R =    76.030 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -178.392  mm,	Y =   893.173  mm,	Z =   315.699  mm,
	W =    99.525 deg,	P =    89.799 deg,	R =     8.405 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -166.974  mm,	Y =   585.626  mm,	Z =   165.665  mm,
	W =    97.448 deg,	P =    89.798 deg,	R =     8.140 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -171.017  mm,	Y =   478.447  mm,	Z =   167.561  mm,
	W =   -97.882 deg,	P =    89.654 deg,	R =   169.027 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[47]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -161.881  mm,	Y =   465.160  mm,	Z =   160.313  mm,
	W =    -8.424 deg,	P =    88.278 deg,	R =   -98.323 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    16.200  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[48]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -171.017  mm,	Y =   478.447  mm,	Z =   167.561  mm,
	W =   -97.882 deg,	P =    89.654 deg,	R =   169.027 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[49]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -170.491  mm,	Y =   586.219  mm,	Z =   181.254  mm,
	W =    99.246 deg,	P =    89.798 deg,	R =     8.127 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   150.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[50]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -166.627  mm,	Y =   789.414  mm,	Z =   212.572  mm,
	W =    99.198 deg,	P =    89.798 deg,	R =     8.079 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   170.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[51]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -241.435  mm,	Y =   965.750  mm,	Z =   -35.497  mm,
	W =   107.697 deg,	P =     -.752 deg,	R =    12.668 deg
   GP2:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[52]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -356.437  mm,	Y =   625.765  mm,	Z =   237.167  mm,
	W =   176.374 deg,	P =   -76.802 deg,	R =   -81.309 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[53]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -255.055  mm,	Y =   486.016  mm,	Z =   244.884  mm,
	W =   178.702 deg,	P =   -77.200 deg,	R =   -85.656 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    98.900  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[54]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -251.865  mm,	Y =   456.049  mm,	Z =   278.509  mm,
	W =  -169.527 deg,	P =   -77.203 deg,	R =   -97.688 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    13.385  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[55]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -255.055  mm,	Y =   486.016  mm,	Z =   244.884  mm,
	W =   178.702 deg,	P =   -77.200 deg,	R =   -85.656 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    98.900  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[56]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -356.437  mm,	Y =   625.765  mm,	Z =   237.167  mm,
	W =   176.374 deg,	P =   -76.802 deg,	R =   -81.309 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[57]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -122.583  mm,	Y =   906.664  mm,	Z =   710.993  mm,
	W =   112.349 deg,	P =   -12.213 deg,	R =   -10.343 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    99.987  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
P[58]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   340.876  mm,	Y =  2462.756  mm,	Z =  1218.839  mm,
	W =   171.604 deg,	P =    29.866 deg,	R =   155.068 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 2, UT : 1,	
	J1=     0.000  mm
};
/END
