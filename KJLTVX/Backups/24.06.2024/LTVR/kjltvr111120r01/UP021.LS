/PROG  UP021
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Soldar en ST1120";
PROG_SIZE	= 20666;
CREATE		= DATE 23-02-12  TIME 07:53:42;
MODIFIED	= DATE 24-04-11  TIME 02:48:28;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 82;
MEMORY_SIZE	= 41810;
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
   4:  !Apagar Perfil Lib. 80 vs ST1120 ;
   5:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
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
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  WAIT (M[2] AND M[31] AND M[33] AND DI[79] AND DI[80])    ;
     21:  DO[80]=OFF ;
     22:  DO[79]=OFF ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   6:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   7:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  10:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  11:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  12:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  13:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  14:   ;
  15:  !5QA802035_028_AC_PS_0006 ;
  16:  !Punto de Sol. No. 5682 ;
  17:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11501,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+2) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  18:   ;
  19:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  20:   ;
  21:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  24:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  25:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  26:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  27:   ;
  28:  !5QA802035_012_M_PS_0006 ;
  29:  !Punto de Sol. No. 5680 ;
  30:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11502,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+7) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  31:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  32:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  33:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  34:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  35:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  36:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  37:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  38:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  39:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  40:J P[28] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  41:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  42:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  43:   ;
  44:  !5QA802035_028_AC_PS_0007 ;
  45:  !Punto de Sol. No. 5681 ;
  46:J P[31] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11503,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  47:   ;
  48:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  49:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  50:J P[34] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  51:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  52:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  53:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  54:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  55:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  56:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  57:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  58:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  59:J P[43] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  60:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  61:   ;
  62:  !5QA802035_002_B_PS_0002 ;
  63:  !Punto de Sol. No. 5683 ;
  64:J P[45] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11504,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  65:   ;
  66:  !5QA802035_002_B_PS_0005 ;
  67:  !Punto de Sol. No. 5684 ;
  68:  !Fin de Trabajo 1 ;
  69:J P[46] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11505,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  70:   ;
  71:J P[47] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  72:J P[48] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  73:J P[49] 100% CNT25 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  74:J P[50] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  75:J P[51] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  76:J P[52] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND DI[79] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  77:  !Encender Perfil Lib 78 vs ST1120 ;
  78:J P[53] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[78]=ON ;
      3:  TC_ONLINE (DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  79:J P[54] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  80:J P[55] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
  81:  !Posicion de Pausa ;
  82:J P[56] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (DI[80] AND M[2] AND M[30] AND M[31] AND M[33] AND M[95] AND M[102] AND M[103]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -481.822  mm,	Y = -1545.208  mm,	Z =  3087.819  mm,
	W =   142.036 deg,	P =    -6.897 deg,	R =   -56.944 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -630.564  mm,	Y = -1904.312  mm,	Z =  2987.361  mm,
	W =   112.951 deg,	P =    30.987 deg,	R =   -45.273 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   413.408  mm,	Y = -1074.201  mm,	Z =  2249.984  mm,
	W =    59.181 deg,	P =    82.109 deg,	R =   -21.152 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    99.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.400  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   446.118  mm,	Y =  -416.879  mm,	Z =  1781.033  mm,
	W =   -59.375 deg,	P =    79.292 deg,	R =  -129.669 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -19.537  mm,	Y =   766.733  mm,	Z =   447.783  mm,
	W =  -141.987 deg,	P =    55.068 deg,	R =   172.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -20.556  mm,	Y =   633.429  mm,	Z =   234.550  mm,
	W =  -133.480 deg,	P =    55.361 deg,	R =   179.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.746  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     9.302  mm,	Y =   549.269  mm,	Z =   137.960  mm,
	W =  -133.480 deg,	P =    55.361 deg,	R =   179.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.746  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    33.592  mm,	Y =   454.258  mm,	Z =   123.826  mm,
	W =  -136.373 deg,	P =    55.377 deg,	R =   179.968 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    68.242  mm,	Y =   420.321  mm,	Z =    95.019  mm,
	W =  -136.362 deg,	P =    55.372 deg,	R =   179.979 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.353  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   101.256  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    72.919  mm,	Y =   412.588  mm,	Z =    91.230  mm,
	W =  -136.353 deg,	P =    55.373 deg,	R =   179.987 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   101.700  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    68.242  mm,	Y =   420.321  mm,	Z =    95.019  mm,
	W =  -136.362 deg,	P =    55.372 deg,	R =   179.979 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.353  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   101.256  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    39.622  mm,	Y =   453.404  mm,	Z =   130.986  mm,
	W =  -136.373 deg,	P =    55.377 deg,	R =   179.968 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -42.928  mm,	Y =   547.591  mm,	Z =   190.828  mm,
	W =  -136.373 deg,	P =    55.377 deg,	R =   179.968 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -227.014  mm,	Y =  1055.410  mm,	Z =    83.096  mm,
	W =   163.386 deg,	P =    35.864 deg,	R =   129.360 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -285.592  mm,	Y =   383.743  mm,	Z =   590.617  mm,
	W =   154.519 deg,	P =     0.000 deg,	R =    71.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -118.132  mm,	Y =   373.821  mm,	Z =   278.744  mm,
	W =   154.519 deg,	P =     0.000 deg,	R =    71.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -74.921  mm,	Y =   414.305  mm,	Z =   179.962  mm,
	W =   154.519 deg,	P =     0.000 deg,	R =    71.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -68.414  mm,	Y =   440.271  mm,	Z =   178.973  mm,
	W =   154.524 deg,	P =      .499 deg,	R =    72.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   -74.921  mm,	Y =   414.305  mm,	Z =   179.962  mm,
	W =   154.519 deg,	P =     0.000 deg,	R =    71.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -118.132  mm,	Y =   373.821  mm,	Z =   278.744  mm,
	W =   154.519 deg,	P =     0.000 deg,	R =    71.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -204.377  mm,	Y =   402.748  mm,	Z =   434.780  mm,
	W =   154.519 deg,	P =     0.000 deg,	R =    71.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -249.760  mm,	Y =   502.432  mm,	Z =   591.595  mm,
	W =   154.519 deg,	P =     0.000 deg,	R =    71.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -176.984  mm,	Y =  1132.945  mm,	Z =   574.592  mm,
	W =   144.253 deg,	P =    12.281 deg,	R =   144.298 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -34.350  mm,	Y =   883.190  mm,	Z =   717.615  mm,
	W =  -143.314 deg,	P =    24.371 deg,	R =  -117.995 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -382.125  mm,	Y =   870.895  mm,	Z =   705.499  mm,
	W =  -138.382 deg,	P =    19.716 deg,	R =   -93.233 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -287.304  mm,	Y =   564.244  mm,	Z =   555.486  mm,
	W =  -142.201 deg,	P =      .934 deg,	R =  -100.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -114.745  mm,	Y =   535.670  mm,	Z =   330.114  mm,
	W =  -135.379 deg,	P =      .936 deg,	R =  -100.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    20.771  mm,	Y =   462.463  mm,	Z =   184.260  mm,
	W =  -135.353 deg,	P =      .954 deg,	R =  -100.617 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.509  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    54.215  mm,	Y =   417.603  mm,	Z =   149.365  mm,
	W =  -135.379 deg,	P =      .936 deg,	R =  -100.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   103.736  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    78.537  mm,	Y =   400.697  mm,	Z =   118.597  mm,
	W =  -135.379 deg,	P =      .936 deg,	R =  -100.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    74.703  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    85.206  mm,	Y =   394.192  mm,	Z =   111.702  mm,
	W =  -135.505 deg,	P =     1.008 deg,	R =  -100.526 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.200  mm
   GP3:
	UF : 1, UT : 1,	
	J1=    59.700  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    78.537  mm,	Y =   400.696  mm,	Z =   118.597  mm,
	W =  -135.379 deg,	P =      .936 deg,	R =  -100.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    74.703  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    68.762  mm,	Y =   415.128  mm,	Z =   134.414  mm,
	W =  -135.379 deg,	P =      .935 deg,	R =  -100.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    20.771  mm,	Y =   462.463  mm,	Z =   184.260  mm,
	W =  -135.353 deg,	P =      .954 deg,	R =  -100.617 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.509  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -43.630  mm,	Y =   484.685  mm,	Z =   252.654  mm,
	W =  -135.353 deg,	P =      .953 deg,	R =  -100.617 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.509  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -218.576  mm,	Y =   694.140  mm,	Z =   576.057  mm,
	W =  -143.567 deg,	P =    10.840 deg,	R =   -98.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   195.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -154.549  mm,	Y =   667.166  mm,	Z =   653.102  mm,
	W =  -162.777 deg,	P =    11.892 deg,	R =   -99.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   137.997  mm,	Y =   618.476  mm,	Z =   655.760  mm,
	W =  -177.617 deg,	P =    11.892 deg,	R =   -99.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   556.798  mm,	Y =   658.447  mm,	Z =   477.569  mm,
	W =  -174.400 deg,	P =    14.709 deg,	R =   -90.599 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   299.295  mm,	Y =   503.952  mm,	Z =   352.054  mm,
	W =   150.372 deg,	P =     7.629 deg,	R =   -94.699 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   287.120  mm,	Y =   355.779  mm,	Z =   332.141  mm,
	W =   150.372 deg,	P =     7.629 deg,	R =   -94.699 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   194.641  mm,	Y =   398.368  mm,	Z =   165.975  mm,
	W =   150.372 deg,	P =     7.632 deg,	R =   -94.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    68.811  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   156.818  mm,	Y =   394.157  mm,	Z =    98.990  mm,
	W =   150.619 deg,	P =     2.910 deg,	R =   -92.017 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    77.700  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   147.489  mm,	Y =   391.644  mm,	Z =    82.843  mm,
	W =   150.524 deg,	P =     5.315 deg,	R =   -93.376 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    65.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   154.834  mm,	Y =   392.071  mm,	Z =    83.694  mm,
	W =   150.375 deg,	P =     8.469 deg,	R =   -95.326 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=    81.300  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   142.158  mm,	Y =   398.262  mm,	Z =    50.430  mm,
	W =   148.784 deg,	P =     7.983 deg,	R =   -96.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.700  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   149.851  mm,	Y =   392.962  mm,	Z =    80.908  mm,
	W =   149.285 deg,	P =     7.512 deg,	R =   -92.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   147.489  mm,	Y =   391.644  mm,	Z =    82.844  mm,
	W =   150.524 deg,	P =     5.315 deg,	R =   -93.376 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   155.329  mm,	Y =   397.808  mm,	Z =    96.302  mm,
	W =   150.619 deg,	P =     2.910 deg,	R =   -92.017 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   168.252  mm,	Y =   397.360  mm,	Z =   112.517  mm,
	W =   149.566 deg,	P =     1.466 deg,	R =   -88.649 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   194.641  mm,	Y =   398.367  mm,	Z =   165.975  mm,
	W =   150.372 deg,	P =     7.632 deg,	R =   -94.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   211.980  mm,	Y =   402.849  mm,	Z =   179.865  mm,
	W =   154.307 deg,	P =     1.496 deg,	R =   -88.597 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   361.487  mm,	Y =   418.638  mm,	Z =   457.852  mm,
	W =   154.867 deg,	P =     2.039 deg,	R =   -88.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   509.487  mm,	Y =   713.697  mm,	Z =   528.825  mm,
	W =  -172.355 deg,	P =    20.263 deg,	R =   -49.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -160.752  mm,	Y =  2785.075  mm,	Z =   389.187  mm,
	W =  -155.012 deg,	P =    52.812 deg,	R =   -54.520 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  -204.592  mm,	Y =  3111.863  mm,	Z =   697.749  mm,
	W =  -116.276 deg,	P =    77.844 deg,	R =   -28.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
/END
