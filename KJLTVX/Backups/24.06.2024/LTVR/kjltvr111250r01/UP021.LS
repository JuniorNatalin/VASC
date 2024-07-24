/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldar en ST1250";
PROG_SIZE	= 18588;
CREATE		= DATE 23-02-12  TIME 09:34:30;
MODIFIED	= DATE 23-10-08  TIME 00:02:22;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 89;
MEMORY_SIZE	= 37016;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil Lib. 80 vs ST1250 ;
   5:  !Apagar Perfil Lib. 79 vs ST1250 ;
   6:  !Encender Anticol. 1 vs 1220R01 ;
   7:  !Encender Anticol. 3 vs 1270R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[79]=ON ;
      9:  !Lib de Anticolisiones ;
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
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:   ;
  13:  !5QA802035_014_O_PS_0005 ;
  14:  !Punto de Sol. No. 11542 ;
  15:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11542,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  16:   ;
  17:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  18:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  23:   ;
  24:  !5QA802035_034_AJ_PS_0002 ;
  25:  !Punto de Sol. No. 11546;
  26:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11546,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:   ;
  28:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:   ;
  35:  !5QA802035_030_AE_PS_0002 ;
  36:  !Punto de Sol. No. 11543 ;
  37:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11543,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:   ;
  39:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  40:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  41:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:   ;
  45:  !5QA802035_008_H_PS_0003 ;
  46:  !Punto de Sol. No. 5719 ;
  47:J P[25] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11544,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+15) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:   ;
  49:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  51:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  52:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:   ;
  54:  !5QA802035_008_H_PS_0002 ;
  55:  !Punto de Sol. No. 11545 ;
  56:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11545,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+15) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:   ;
  58:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  59:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  62:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  64:   ;
  65:  !5QA802035_008_H_PS_0005 ;
  66:  !Punto de Sol. No. 11548 ;
  67:J P[37] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11548,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  68:   ;
  69:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  70:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  71:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  72:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  73:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  74:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  75:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  76:   ;
  77:  !5QA802035_008_H_PS_0009 ;
  78:  !Punto de Sol. No. 11547 ;
  79:  !Fin de Trabajo 1 ;
  80:J P[45] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11547,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  81:   ;
  82:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  83:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  84:  !Encender Perfil Lib 79 vs ST1250 ;
  85:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[79]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[43] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  86:  !Encender Perfil Lib 80 vs ST1250 ;
  87:  !Apagar Anticol. 1 vs 1220R01 ;
  88:  !Apagar Anticol. 3 vs 1270R01 ;
  89:J P[49] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[79]=ON ;
      5:  DO[80]=ON ;
      6:  DO[41]=ON ;
      7:  DO[43]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1207.795  mm,	Y =  1488.962  mm,	Z =  1352.160  mm,
	W =  -172.233 deg,	P =   -29.474 deg,	R =   159.593 deg
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
	X =   578.808  mm,	Y =   205.838  mm,	Z =   282.991  mm,
	W =   137.794 deg,	P =   -81.307 deg,	R =  -153.038 deg
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
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   370.754  mm,	Y =   279.646  mm,	Z =    32.376  mm,
	W =   -20.472 deg,	P =   -76.059 deg,	R =     6.055 deg
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
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   220.515  mm,	Y =   349.212  mm,	Z =    53.491  mm,
	W =   -18.676 deg,	P =   -67.235 deg,	R =    -5.868 deg
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
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   188.447  mm,	Y =   358.732  mm,	Z =    65.652  mm,
	W =   -18.672 deg,	P =   -67.236 deg,	R =    -5.871 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.400  mm
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
	X =   193.682  mm,	Y =   357.797  mm,	Z =    54.864  mm,
	W =   -25.616 deg,	P =   -67.211 deg,	R =    -2.659 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.700  mm
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
	X =   373.504  mm,	Y =   290.790  mm,	Z =    31.405  mm,
	W =   -20.472 deg,	P =   -76.059 deg,	R =     6.055 deg
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
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   442.657  mm,	Y =   287.275  mm,	Z =   323.658  mm,
	W =   -20.472 deg,	P =   -76.059 deg,	R =     6.055 deg
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
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   224.459  mm,	Y =   393.943  mm,	Z =   239.625  mm,
	W =   126.400 deg,	P =   -19.382 deg,	R =   -97.637 deg
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
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   204.502  mm,	Y =   370.113  mm,	Z =   199.123  mm,
	W =   140.680 deg,	P =    -5.217 deg,	R =  -104.097 deg
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
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   152.702  mm,	Y =   378.918  mm,	Z =   156.784  mm,
	W =   140.403 deg,	P =     1.058 deg,	R =   -96.485 deg
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
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   148.077  mm,	Y =   378.256  mm,	Z =   122.786  mm,
	W =   135.840 deg,	P =     3.245 deg,	R =   -94.727 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.000  mm
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
	X =   152.702  mm,	Y =   378.918  mm,	Z =   156.784  mm,
	W =   140.403 deg,	P =     1.058 deg,	R =   -96.485 deg
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
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   204.502  mm,	Y =   370.113  mm,	Z =   199.123  mm,
	W =   140.680 deg,	P =    -5.217 deg,	R =  -104.097 deg
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
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   315.658  mm,	Y =   675.356  mm,	Z =   445.988  mm,
	W =   139.892 deg,	P =   -11.614 deg,	R =   -77.554 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
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
	X =   161.772  mm,	Y =   638.545  mm,	Z =   217.716  mm,
	W =   140.135 deg,	P =   -57.414 deg,	R =   -44.088 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   119.500  mm
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
	X =   134.794  mm,	Y =   461.927  mm,	Z =    44.888  mm,
	W =   100.144 deg,	P =   -57.882 deg,	R =    -9.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   119.000  mm
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
	X =   118.836  mm,	Y =   450.599  mm,	Z =    37.166  mm,
	W =   100.144 deg,	P =   -57.882 deg,	R =    -9.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   119.000  mm
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
	X =   126.197  mm,	Y =   416.283  mm,	Z =    35.259  mm,
	W =    94.471 deg,	P =   -55.905 deg,	R =    -2.915 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.925  mm
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
	X =   118.836  mm,	Y =   450.599  mm,	Z =    37.166  mm,
	W =   100.144 deg,	P =   -57.882 deg,	R =    -9.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   119.000  mm
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
	X =   128.292  mm,	Y =   461.927  mm,	Z =    44.888  mm,
	W =   100.144 deg,	P =   -57.882 deg,	R =    -9.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   119.000  mm
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
	X =   161.772  mm,	Y =   638.545  mm,	Z =   217.716  mm,
	W =   140.135 deg,	P =   -57.414 deg,	R =   -44.088 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   119.500  mm
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
	X =   -98.817  mm,	Y =   590.256  mm,	Z =   305.773  mm,
	W =   166.766 deg,	P =   -82.057 deg,	R =   -89.113 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   119.500  mm
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
	X =  -189.259  mm,	Y =   494.866  mm,	Z =   270.332  mm,
	W =   155.588 deg,	P =   -82.057 deg,	R =   -89.113 deg
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
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -181.107  mm,	Y =   491.089  mm,	Z =   273.569  mm,
	W =   163.187 deg,	P =   -78.612 deg,	R =   -96.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.700  mm
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
	X =  -189.259  mm,	Y =   494.866  mm,	Z =   270.332  mm,
	W =   155.588 deg,	P =   -82.057 deg,	R =   -89.113 deg
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
	X =  -163.996  mm,	Y =   734.816  mm,	Z =   302.458  mm,
	W =   172.356 deg,	P =   -82.057 deg,	R =   -89.113 deg
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
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -395.251  mm,	Y =   763.085  mm,	Z =   308.196  mm,
	W =   172.356 deg,	P =   -82.057 deg,	R =   -89.113 deg
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
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -429.861  mm,	Y =   474.160  mm,	Z =   267.964  mm,
	W =   172.356 deg,	P =   -82.057 deg,	R =   -89.113 deg
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
	X =  -422.264  mm,	Y =   467.170  mm,	Z =   269.783  mm,
	W =   176.293 deg,	P =   -78.216 deg,	R =   -93.100 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -429.861  mm,	Y =   474.160  mm,	Z =   267.964  mm,
	W =   172.355 deg,	P =   -82.057 deg,	R =   -89.113 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -395.251  mm,	Y =   763.085  mm,	Z =   308.196  mm,
	W =   172.356 deg,	P =   -82.057 deg,	R =   -89.113 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -425.801  mm,	Y =   407.811  mm,	Z =   716.317  mm,
	W =   178.919 deg,	P =     -.307 deg,	R =    93.864 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -424.002  mm,	Y =   445.469  mm,	Z =   259.143  mm,
	W =   173.953 deg,	P =     -.760 deg,	R =    92.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -419.151  mm,	Y =   440.986  mm,	Z =   235.195  mm,
	W =   174.284 deg,	P =    -1.368 deg,	R =    90.342 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -390.086  mm,	Y =   440.870  mm,	Z =   247.302  mm,
	W =   161.440 deg,	P =    -1.368 deg,	R =    90.341 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -382.381  mm,	Y =   450.650  mm,	Z =   249.389  mm,
	W =   160.953 deg,	P =     1.113 deg,	R =    89.899 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.400  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -390.086  mm,	Y =   440.870  mm,	Z =   247.302  mm,
	W =   161.440 deg,	P =    -1.368 deg,	R =    90.341 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -419.150  mm,	Y =   440.986  mm,	Z =   235.195  mm,
	W =   174.284 deg,	P =    -1.368 deg,	R =    90.342 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -424.002  mm,	Y =   445.469  mm,	Z =   259.143  mm,
	W =   173.953 deg,	P =     -.760 deg,	R =    92.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -425.801  mm,	Y =   407.811  mm,	Z =   716.317  mm,
	W =   178.919 deg,	P =     -.307 deg,	R =    93.864 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -123.723  mm,	Y =   450.826  mm,	Z =   711.412  mm,
	W =  -165.515 deg,	P =     -.408 deg,	R =    88.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -197.380  mm,	Y =   447.659  mm,	Z =   295.870  mm,
	W =  -165.516 deg,	P =     -.408 deg,	R =    88.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -215.749  mm,	Y =   449.535  mm,	Z =   255.119  mm,
	W =  -159.508 deg,	P =     -.816 deg,	R =    89.582 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -224.639  mm,	Y =   450.533  mm,	Z =   246.768  mm,
	W =  -159.588 deg,	P =     1.881 deg,	R =    89.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -215.749  mm,	Y =   449.535  mm,	Z =   255.119  mm,
	W =  -159.508 deg,	P =     -.816 deg,	R =    89.582 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -197.380  mm,	Y =   447.659  mm,	Z =   295.870  mm,
	W =  -165.516 deg,	P =     -.408 deg,	R =    88.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   -53.471  mm,	Y =   440.988  mm,	Z =   699.883  mm,
	W =  -165.515 deg,	P =     -.408 deg,	R =    88.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
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
	X =  1207.795  mm,	Y =  1488.962  mm,	Z =  1352.161  mm,
	W =  -172.233 deg,	P =   -29.474 deg,	R =   159.593 deg
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
