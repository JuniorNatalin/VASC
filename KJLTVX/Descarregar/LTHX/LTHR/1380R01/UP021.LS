/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Soldar en ST1380";
PROG_SIZE	= 16628;
CREATE		= DATE 96-03-27  TIME 17:38:26;
MODIFIED	= DATE 23-07-08  TIME 19:36:58;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 32884;
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
   4:  !Apagar Perfil Lib. 80 vs ST1380 ;
   5:  !Apagar Perfil Lib. 79 vs ST1380 ;
   6:  !Encender Anticol. 1 vs 1390R01 ;
   7:  !Encender Anticol. 5 vs 1370R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
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
     12:  DO[45]=ON ;
     13:  DO[46]=ON ;
     14:  !Apagar Pos. Base ;
     15:  DO[15]=OFF ;
     16:  !Robot en Trayectoria ;
     17:  DO[16]=ON ;
     18:  WAIT (DI[79] AND DI[80])    ;
     19:  DO[79]=OFF ;
     20:  DO[80]=OFF ;
     21:  !Encender Anticolisiones ;
     22:  DO[81]=ON ;
     23:  DO[85]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:  !5qa802035b_018_sps0012_R ;
  12:  !Punto de Sol. No. 11581 ;
  13:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11581,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+30) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  14:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  15:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  16:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  17:  !5qa802035b_038_anps0001_R ;
  18:  !Punto de Sol. No. 11582 ;
  19:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11582,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  25:  !5qa802035b_018_sps0017_R ;
  26:  !Punto de Sol. No. 11583 ;
  27:J P[14] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11583,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:  !5qa802035b_040_apps0005_R ;
  32:  !Punto de Sol. No. 11584 ;
  33:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11584,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+4) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  37:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:  !5qa802035b_018_sps0015_R ;
  40:  !Punto de Sol. No. 11585 ;
  41:J P[24] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11585,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  49:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:  !5qa802035b_018_sps0032_R ;
  51:  !Punto de Sol. No. 11586 ;
  52:J P[33] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11586,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  55:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  58:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  59:  !5qa802035b_018_sps0022_R ;
  60:  !Punto de Sol. No. 11587 ;
  61:  !Fin de Trabajo 1 ;
  62:J P[40] 100% CNT0 ACC100 TB    0.00sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11587,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  64:  !Encender Perfil Lib 79 vs ST1380 ;
  65:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[79]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  66:  !Encender Perfil Lib 80 vs ST1380 ;
  67:  !Apagar Anticol. 1 vs 1390R01 ;
  68:  !Apagar Anticol. 5 vs 1370R01 ;
  69:J P[43] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[45]=ON ;
      6:  DO[80]=ON ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.941  mm,	Y =  1143.296  mm,	Z =   988.501  mm,
	W =  -170.484 deg,	P =      .143 deg,	R =  -129.760 deg
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
	X =   107.351  mm,	Y =   534.607  mm,	Z =   440.144  mm,
	W =   175.674 deg,	P =   -11.190 deg,	R =   -88.320 deg
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
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    91.578  mm,	Y =   490.353  mm,	Z =   218.876  mm,
	W =   175.674 deg,	P =   -11.190 deg,	R =   -88.320 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.000  mm
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
	X =    92.177  mm,	Y =   473.039  mm,	Z =   223.434  mm,
	W =   175.537 deg,	P =   -11.930 deg,	R =   -87.606 deg
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
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    92.180  mm,	Y =   512.430  mm,	Z =   214.573  mm,
	W =   175.674 deg,	P =   -11.190 deg,	R =   -88.320 deg
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
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    68.985  mm,	Y =   509.246  mm,	Z =   166.627  mm,
	W =  -171.097 deg,	P =    -3.536 deg,	R =  -103.914 deg
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
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    59.481  mm,	Y =   471.604  mm,	Z =    50.879  mm,
	W =  -175.098 deg,	P =    -3.536 deg,	R =  -103.914 deg
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
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    57.723  mm,	Y =   463.153  mm,	Z =    72.309  mm,
	W =  -175.009 deg,	P =    -3.254 deg,	R =  -105.440 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.900  mm
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
	X =    59.481  mm,	Y =   471.604  mm,	Z =    50.879  mm,
	W =  -175.098 deg,	P =    -3.536 deg,	R =  -103.914 deg
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
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    71.979  mm,	Y =   521.337  mm,	Z =   165.861  mm,
	W =  -171.097 deg,	P =    -3.536 deg,	R =  -103.914 deg
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
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -217.307  mm,	Y =   587.248  mm,	Z =   495.770  mm,
	W =  -175.547 deg,	P =    -2.541 deg,	R =   -91.127 deg
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
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -201.138  mm,	Y =   562.732  mm,	Z =   282.640  mm,
	W =  -175.545 deg,	P =    -2.541 deg,	R =   -91.127 deg
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
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -191.627  mm,	Y =   514.860  mm,	Z =   149.923  mm,
	W =  -168.547 deg,	P =    -2.540 deg,	R =   -91.127 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000  mm
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
	X =  -189.968  mm,	Y =   492.222  mm,	Z =   154.652  mm,
	W =  -169.741 deg,	P =    -2.443 deg,	R =   -90.964 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.600  mm
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
	X =  -191.819  mm,	Y =   505.090  mm,	Z =   150.357  mm,
	W =  -168.547 deg,	P =    -2.540 deg,	R =   -91.127 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000  mm
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
	X =  -203.536  mm,	Y =   557.459  mm,	Z =   312.340  mm,
	W =  -175.545 deg,	P =    -2.541 deg,	R =   -91.127 deg
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
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -299.323  mm,	Y =   546.047  mm,	Z =   325.103  mm,
	W =  -179.076 deg,	P =   -32.378 deg,	R =  -113.195 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
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
	X =  -303.983  mm,	Y =   531.473  mm,	Z =   344.386  mm,
	W =  -177.497 deg,	P =   -37.761 deg,	R =  -114.654 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    11.000  mm
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
	X =  -299.323  mm,	Y =   546.047  mm,	Z =   325.103  mm,
	W =  -179.076 deg,	P =   -32.378 deg,	R =  -113.195 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
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
	X =  -261.269  mm,	Y =   615.336  mm,	Z =   486.323  mm,
	W =  -170.792 deg,	P =   -15.132 deg,	R =  -105.783 deg
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
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -461.346  mm,	Y =   545.030  mm,	Z =   451.604  mm,
	W =  -176.083 deg,	P =     0.000 deg,	R =   -90.000 deg
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
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.719  mm,	Y =   565.268  mm,	Z =   323.889  mm,
	W =  -176.080 deg,	P =      .001 deg,	R =   -90.000 deg
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
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -442.346  mm,	Y =   545.228  mm,	Z =   142.116  mm,
	W =  -176.083 deg,	P =     0.000 deg,	R =   -90.000 deg
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
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -443.027  mm,	Y =   515.919  mm,	Z =   157.473  mm,
	W =  -176.083 deg,	P =     -.530 deg,	R =   -89.929 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.600  mm
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
	X =  -442.347  mm,	Y =   545.227  mm,	Z =   142.116  mm,
	W =  -176.083 deg,	P =     0.000 deg,	R =   -90.000 deg
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
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -457.720  mm,	Y =   565.268  mm,	Z =   323.892  mm,
	W =  -176.080 deg,	P =      .001 deg,	R =   -90.000 deg
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
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -461.452  mm,	Y =   571.551  mm,	Z =   430.005  mm,
	W =  -176.083 deg,	P =     0.000 deg,	R =   -90.000 deg
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
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -601.556  mm,	Y =   559.356  mm,	Z =   432.106  mm,
	W =   172.874 deg,	P =      .001 deg,	R =   -90.000 deg
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
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -619.986  mm,	Y =   534.880  mm,	Z =   279.124  mm,
	W =  -168.902 deg,	P =      .410 deg,	R =   -90.163 deg
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
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -612.573  mm,	Y =   533.062  mm,	Z =   214.886  mm,
	W =  -166.148 deg,	P =      .003 deg,	R =   -90.001 deg
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
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -597.348  mm,	Y =   529.464  mm,	Z =   148.111  mm,
	W =  -164.129 deg,	P =     0.000 deg,	R =   -90.000 deg
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
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -596.700  mm,	Y =   519.714  mm,	Z =   145.829  mm,
	W =  -164.129 deg,	P =     0.000 deg,	R =   -90.000 deg
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
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -597.496  mm,	Y =   515.756  mm,	Z =   160.614  mm,
	W =  -164.144 deg,	P =      .876 deg,	R =   -91.102 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.000  mm
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
	X =  -596.700  mm,	Y =   519.714  mm,	Z =   145.829  mm,
	W =  -164.129 deg,	P =     0.000 deg,	R =   -90.000 deg
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
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -612.574  mm,	Y =   533.062  mm,	Z =   214.886  mm,
	W =  -166.148 deg,	P =      .003 deg,	R =   -90.001 deg
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
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -619.986  mm,	Y =   534.880  mm,	Z =   279.124  mm,
	W =  -168.902 deg,	P =      .410 deg,	R =   -90.163 deg
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
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -601.556  mm,	Y =   559.355  mm,	Z =   432.106  mm,
	W =   172.874 deg,	P =      .001 deg,	R =   -90.000 deg
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
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -555.758  mm,	Y =   500.311  mm,	Z =   466.553  mm,
	W =  -172.904 deg,	P =      .654 deg,	R =    84.759 deg
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
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -550.964  mm,	Y =   513.387  mm,	Z =   294.305  mm,
	W =  -158.614 deg,	P =     0.000 deg,	R =    90.000 deg
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
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.080  mm,	Y =   517.007  mm,	Z =   301.670  mm,
	W =  -158.588 deg,	P =    -2.887 deg,	R =    89.486 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.700  mm
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
	X =  -550.964  mm,	Y =   516.301  mm,	Z =   294.304  mm,
	W =  -158.614 deg,	P =     0.000 deg,	R =    90.000 deg
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
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -478.301  mm,	Y =   516.301  mm,	Z =   479.853  mm,
	W =  -158.614 deg,	P =     0.000 deg,	R =    90.000 deg
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
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.941  mm,	Y =  1143.296  mm,	Z =   988.501  mm,
	W =  -170.484 deg,	P =      .143 deg,	R =  -129.760 deg
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
