/PROG  UP021
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldadura VW336";
PROG_SIZE	= 14804;
CREATE		= DATE 96-03-23  TIME 13:52:24;
MODIFIED	= DATE 24-06-30  TIME 12:26:58;
FILE_NAME	= R_1400R0;
VERSION		= 0;
LINE_COUNT	= 72;
MEMORY_SIZE	= 26788;
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
   4:  !Espera Lib. Soldadura ST1400 ;
   5:  !Apagar Perfil Libre ST1400 ;
   6:  !Encender Anticol. 1 vs R11390R01 ;
   7:  !Encender Anticol. 5 vs R11410R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  !Lib. de Anticolisiones ;
      9:  DO[41]=ON ;
     10:  DO[42]=ON ;
     11:  DO[45]=ON ;
     12:  DO[46]=ON ;
     13:  !Apagar Pos. Base ;
     14:  DO[15]=OFF ;
     15:  !Robot en Trayectoria ;
     16:  DO[16]=ON ;
     17:  WAIT (DI[80])    ;
     18:  DO[80]=OFF ;
     19:  !Lib. de Anticolisiones ;
     20:  DO[81]=ON ;
     21:  DO[85]=ON ;
     22:  CALL MAKRO020    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:  !5qa803296_002_bps0010_X ;
  12:  !Punto de Sol. No. 13103 ;
  13:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13103,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  14:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  15:  !5qa803296_002_bps0007_X ;
  16:  !Punto de Sol. No. 13104 ;
  17:J P[6] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13104,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  18:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:  !5qa803296_002_bps0006_X ;
  20:  !Punto de Sol. No. 13105 ;
  21:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13105,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  22:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  23:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:  !5qa803296_001_aps0006_X ;
  25:  !Punto de Sol. No. 13106 ;
  26:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13106,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:  !5qa803296_001_aps0005_X ;
  29:  !Punto de Sol. No. 13107 ;
  30:J P[13] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13107,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:  !5qa803296_001_aps0008_X ;
  32:  !Punto de Sol. No. 13108 ;
  33:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13108,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:  !5qa803296_001_aps0001_X ;
  37:  !Punto de Sol. No. 13109 ;
  38:J P[17] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13109,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  40:   ;
  41:  !5qa803296_016_qps0001_X ;
  42:  !Punto de Sol. No. 13110 ;
  43:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13110,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:  !5qa803296_016_qps0002_X ;
  45:  !Punto de Sol. No. 13111 ;
  46:J P[20] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:  !5qa803296_016_qps0004_X ;
  48:  !Punto de Sol. No. 13112 ;
  49:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13112,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:  !5qa803296_016_qps0006_X ;
  51:  !Punto de Sol. No. 13113 ;
  52:J P[22] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13113,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:  !5qa803296_016_qps0007_X ;
  54:  !Punto de Sol. No. 13114 ;
  55:J P[23] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13114,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:  !5qa803296_016_qps0005_X ;
  57:  !Punto de Sol. No. 13115 ;
  58:J P[24] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13115,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  59:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:  !5qf803296_p0003_c0210003800_L ;
  61:  !Punto de Sol. No. 13116 ;
  62:  !Fin de Trabajo 1 ;
  63:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13116,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+0) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  64:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  65:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  66:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  67:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  68:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  69:  !Encender Perfil Libre ST1400 ;
  70:  !Apagar Anticol. 1 vs R11390R01 ;
  71:  !Apagar Anticol. 5 vs R11410R01 ;
  72:J P[32] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[41]=ON ;
      4:  DO[45]=ON ;
      5:  DO[80]=ON ;
      6:  TIMER[3]=STOP ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -823.718  mm,	Y =   289.835  mm,	Z =   370.517  mm,
	W =   169.739 deg,	P =    -4.254 deg,	R =   171.688 deg
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
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   196.133  mm,	Y =   261.686  mm,	Z =   391.527  mm,
	W =  -177.879 deg,	P =     9.854 deg,	R =   179.773 deg
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
	X =   216.055  mm,	Y =   271.933  mm,	Z =   175.281  mm,
	W =  -178.313 deg,	P =     6.358 deg,	R =   179.542 deg
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
	X =   192.517  mm,	Y =   269.966  mm,	Z =   104.173  mm,
	W =  -177.869 deg,	P =     2.902 deg,	R =   179.906 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.300  mm
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
	X =   203.128  mm,	Y =   259.258  mm,	Z =   116.097  mm,
	W =  -177.870 deg,	P =     3.320 deg,	R =   179.920 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    31.402  mm
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
	X =   190.821  mm,	Y =   245.325  mm,	Z =   120.356  mm,
	W =  -177.867 deg,	P =     3.905 deg,	R =   179.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.500  mm
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
	X =   202.375  mm,	Y =   238.908  mm,	Z =   128.542  mm,
	W =  -177.866 deg,	P =     4.345 deg,	R =   179.956 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    35.346  mm
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
	X =   189.913  mm,	Y =   221.737  mm,	Z =   120.862  mm,
	W =  -177.863 deg,	P =     5.483 deg,	R =   180.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.100  mm
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
	X =   194.066  mm,	Y =   258.436  mm,	Z =   301.815  mm,
	W =  -177.879 deg,	P =     9.853 deg,	R =   179.773 deg
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
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   208.390  mm,	Y =  -176.236  mm,	Z =   307.160  mm,
	W =  -177.863 deg,	P =     5.482 deg,	R =  -180.000 deg
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
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   187.181  mm,	Y =  -153.651  mm,	Z =   122.205  mm,
	W =  -177.748 deg,	P =     5.432 deg,	R =  -178.810 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.200  mm
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
	X =   199.685  mm,	Y =  -170.650  mm,	Z =   126.612  mm,
	W =  -177.805 deg,	P =     5.457 deg,	R =  -179.398 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.764  mm
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
	X =   188.595  mm,	Y =  -188.367  mm,	Z =   116.664  mm,
	W =  -177.862 deg,	P =     5.480 deg,	R =  -179.997 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.700  mm
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
	X =   190.776  mm,	Y =  -223.392  mm,	Z =   100.829  mm,
	W =  -177.865 deg,	P =     4.535 deg,	R =   179.965 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.100  mm
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
	X =   204.779  mm,	Y =  -236.587  mm,	Z =   105.980  mm,
	W =  -177.307 deg,	P =    13.890 deg,	R =   165.956 deg
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
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   224.891  mm,	Y =  -158.023  mm,	Z =   127.748  mm,
	W =   154.049 deg,	P =    27.903 deg,	R =   121.085 deg
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
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   240.766  mm,	Y =  -122.902  mm,	Z =    87.692  mm,
	W =   138.952 deg,	P =    21.752 deg,	R =   107.522 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.700  mm
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
	X =   253.800  mm,	Y =  -127.851  mm,	Z =    90.808  mm,
	W =   138.694 deg,	P =    22.476 deg,	R =   106.375 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.963  mm
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
	X =   256.236  mm,	Y =  -123.104  mm,	Z =    81.194  mm,
	W =   138.249 deg,	P =    23.290 deg,	R =   105.105 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.400  mm
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
	X =   277.033  mm,	Y =  -120.843  mm,	Z =    68.261  mm,
	W =   137.083 deg,	P =    23.799 deg,	R =   106.652 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.800  mm
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
	X =   304.535  mm,	Y =  -120.203  mm,	Z =    50.771  mm,
	W =   136.678 deg,	P =    25.066 deg,	R =    96.738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.400  mm
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
	X =   341.388  mm,	Y =  -134.637  mm,	Z =    40.665  mm,
	W =   130.523 deg,	P =    22.990 deg,	R =    93.012 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.300  mm
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
	X =   366.381  mm,	Y =  -136.108  mm,	Z =    35.759  mm,
	W =   128.075 deg,	P =    19.636 deg,	R =    90.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.400  mm
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
	X =   391.832  mm,	Y =  -138.452  mm,	Z =    30.206  mm,
	W =   127.157 deg,	P =    19.631 deg,	R =    89.999 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.600  mm
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
	X =   422.910  mm,	Y =  -134.915  mm,	Z =    30.100  mm,
	W =   124.705 deg,	P =    19.702 deg,	R =    89.776 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    36.695  mm
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
	X =   446.955  mm,	Y =  -141.537  mm,	Z =    17.434  mm,
	W =   122.158 deg,	P =    19.641 deg,	R =    89.977 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    31.100  mm
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
	X =   443.935  mm,	Y =  -144.521  mm,	Z =    30.321  mm,
	W =   122.154 deg,	P =    19.640 deg,	R =    89.973 deg
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
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   318.326  mm,	Y =  -160.534  mm,	Z =    68.542  mm,
	W =   140.198 deg,	P =    31.351 deg,	R =   103.915 deg
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
	X =   318.326  mm,	Y =  -160.534  mm,	Z =    68.542  mm,
	W =   140.198 deg,	P =    31.351 deg,	R =   103.915 deg
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
	X =   224.354  mm,	Y =  -204.261  mm,	Z =   192.284  mm,
	W =   142.781 deg,	P =    34.523 deg,	R =   108.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   160.000  mm
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
	X =    68.421  mm,	Y =  -171.866  mm,	Z =   348.484  mm,
	W =   154.977 deg,	P =    31.386 deg,	R =   118.576 deg
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
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -823.718  mm,	Y =   289.835  mm,	Z =   370.517  mm,
	W =   169.739 deg,	P =    -4.254 deg,	R =   171.688 deg
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
/END
