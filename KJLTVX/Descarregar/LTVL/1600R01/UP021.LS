/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Soldar en ST1600";
PROG_SIZE	= 14004;
CREATE		= DATE 03-01-30  TIME 10:54:58;
MODIFIED	= DATE 23-07-09  TIME 12:59:24;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 60;
MEMORY_SIZE	= 28728;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1] ;
   4:  !Apagar Perfil Lib. 80 vs ST1600 ;
   5:  !Apagar Perfil Lib. 79 vs ST1600 ;
   6:  !Encender Anticol. 1 vs 1550R01 ;
   7:  !Encender Anticol. 5 vs 1610R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[79]=ON ;
      8:  DO[80]=ON ;
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
     19:  DO[80]=OFF ;
     20:  DO[79]=OFF ;
     21:  !Encender Anticolisiones ;
     22:  DO[81]=ON ;
     23:  DO[83]=ON ;
     24:  CALL MAKRO020    ;
     25:  WAIT (DI[23])    ;
     26:  DO[23]=ON ;
     27:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  14:  !Punto de Sol. No.10128  ;
  15:  !5qa803091b_p0007_g0210004800 ;
  16:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10128,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  17:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:J P[12] 100% CNT80 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  22:   ;
  23:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  25:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:  !Punto de Sol. No. 10129 ;
  27:  !5qa803091b_p0007_g0210004000 ;
  28:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10129,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-1) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  37:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:  !Punto de Sol. No. 10130 ;
  39:  !5qa803091b_p0007_g0210003700 ;
  40:J P[26] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10130,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-13) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  41:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:  !Punto de Sol. No. 10131 ;
  49:  !Fin de Trabajo 1 ;
  50:  !5qa803091b_p0007_g0210004200 ;
  51:J P[34] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10131,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-11) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  52:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  55:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:  !Encender Perfil Lib 80 vs ST1600 ;
  57:  !Encender Perfil Lib 79 vs ST1600 ;
  58:  !Apagar Anticol. 1 vs 1550R01 ;
  59:  !Apagar Anticol. 5 vs 1610R01 ;
  60:J P[39] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[43]=ON ;
      6:  DO[79]=ON ;
      7:  DO[80]=ON ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -38.153  mm,	Y = -1594.078  mm,	Z =   984.359  mm,
	W =   174.731 deg,	P =   -20.680 deg,	R =   131.689 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1014.249  mm,	Y =  -523.706  mm,	Z =   529.876  mm,
	W =   138.963 deg,	P =   -66.599 deg,	R =   149.106 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   928.645  mm,	Y =  -593.794  mm,	Z =   397.815  mm,
	W =   169.251 deg,	P =   -66.974 deg,	R =   132.892 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   833.682  mm,	Y =  -566.898  mm,	Z =   -60.712  mm,
	W =   167.401 deg,	P =   -72.924 deg,	R =   132.823 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   790.711  mm,	Y =  -552.203  mm,	Z =   -81.532  mm,
	W =   166.012 deg,	P =   -85.259 deg,	R =   132.152 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   686.749  mm,	Y =  -441.041  mm,	Z =   -79.946  mm,
	W =   177.185 deg,	P =   -85.258 deg,	R =   132.151 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   671.374  mm,	Y =  -430.555  mm,	Z =   -72.832  mm,
	W =   128.806 deg,	P =   -88.616 deg,	R =  -179.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   686.784  mm,	Y =  -441.023  mm,	Z =   -79.946  mm,
	W =   175.223 deg,	P =   -85.258 deg,	R =   132.152 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   790.711  mm,	Y =  -552.205  mm,	Z =   -81.532  mm,
	W =  -176.306 deg,	P =   -74.248 deg,	R =   117.864 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   833.683  mm,	Y =  -566.898  mm,	Z =   -60.712  mm,
	W =   167.720 deg,	P =   -72.924 deg,	R =   132.823 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   892.769  mm,	Y =  -577.859  mm,	Z =   311.883  mm,
	W =   161.818 deg,	P =   -66.974 deg,	R =   132.892 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.633  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   560.735  mm,	Y =  -405.455  mm,	Z =   461.678  mm,
	W =  -125.030 deg,	P =   -83.178 deg,	R =    34.620 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.242  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   580.611  mm,	Y =  -569.028  mm,	Z =   -12.870  mm,
	W =   175.772 deg,	P =   -73.605 deg,	R =    94.617 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.242  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   581.387  mm,	Y =  -495.491  mm,	Z =   -84.738  mm,
	W =   172.753 deg,	P =   -80.504 deg,	R =    97.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.242  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   581.121  mm,	Y =  -447.564  mm,	Z =   -88.276  mm,
	W =   167.011 deg,	P =   -84.594 deg,	R =   103.347 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.242  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   566.760  mm,	Y =  -445.063  mm,	Z =   -74.789  mm,
	W =   104.999 deg,	P =   -89.000 deg,	R =   180.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   581.121  mm,	Y =  -447.564  mm,	Z =   -88.276  mm,
	W =   167.011 deg,	P =   -84.594 deg,	R =   103.347 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.242  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   581.387  mm,	Y =  -495.491  mm,	Z =   -84.738  mm,
	W =   172.753 deg,	P =   -80.504 deg,	R =    97.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.242  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   580.611  mm,	Y =  -569.028  mm,	Z =   -12.870  mm,
	W =   175.772 deg,	P =   -73.605 deg,	R =    94.617 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.242  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   598.856  mm,	Y =  -383.301  mm,	Z =   463.841  mm,
	W =   162.426 deg,	P =   -84.265 deg,	R =   107.068 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   126.917  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   594.689  mm,	Y =   -63.599  mm,	Z =   671.459  mm,
	W =  -170.596 deg,	P =   -49.112 deg,	R =    91.253 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   126.917  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.819  mm,	Y =  -378.336  mm,	Z =   295.996  mm,
	W =  -179.188 deg,	P =   -15.847 deg,	R =   100.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   126.917  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   706.643  mm,	Y =  -381.384  mm,	Z =   271.323  mm,
	W =  -176.906 deg,	P =   -14.163 deg,	R =    98.850 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.633  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   622.368  mm,	Y =  -397.277  mm,	Z =   122.969  mm,
	W =  -151.221 deg,	P =     3.921 deg,	R =    90.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    98.141  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   543.372  mm,	Y =  -407.314  mm,	Z =   -20.576  mm,
	W =  -151.222 deg,	P =     3.922 deg,	R =    90.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    98.141  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   541.103  mm,	Y =  -401.759  mm,	Z =   -24.868  mm,
	W =  -150.139 deg,	P =     8.000 deg,	R =    87.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   543.372  mm,	Y =  -407.314  mm,	Z =   -20.576  mm,
	W =  -151.222 deg,	P =     3.922 deg,	R =    90.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    98.141  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   622.383  mm,	Y =  -397.280  mm,	Z =   122.971  mm,
	W =  -151.221 deg,	P =     3.922 deg,	R =    90.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    98.141  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   539.556  mm,	Y =  -154.340  mm,	Z =   510.385  mm,
	W =   179.117 deg,	P =   -30.749 deg,	R =    87.368 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   559.520  mm,	Y =  -311.448  mm,	Z =   505.872  mm,
	W =   148.193 deg,	P =     2.148 deg,	R =   179.946 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.555  mm,	Y =  -463.019  mm,	Z =   473.764  mm,
	W =   179.645 deg,	P =    32.976 deg,	R =   -93.566 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.607  mm,	Y =  -469.828  mm,	Z =    65.762  mm,
	W =   179.698 deg,	P =     7.977 deg,	R =   -93.414 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.593  mm,	Y =  -462.948  mm,	Z =   -25.962  mm,
	W =   179.700 deg,	P =     7.977 deg,	R =   -93.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   581.112  mm,	Y =  -464.925  mm,	Z =   -26.337  mm,
	W =  -169.660 deg,	P =     8.014 deg,	R =   -93.232 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.593  mm,	Y =  -462.948  mm,	Z =   -25.962  mm,
	W =   179.700 deg,	P =     7.977 deg,	R =   -93.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.607  mm,	Y =  -469.828  mm,	Z =    65.762  mm,
	W =   179.698 deg,	P =     7.977 deg,	R =   -93.414 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   584.535  mm,	Y =  -451.273  mm,	Z =   529.091  mm,
	W =   179.645 deg,	P =    32.976 deg,	R =   -93.566 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -175.138  mm,	Y =  -954.654  mm,	Z =   838.009  mm,
	W =   154.288 deg,	P =      .833 deg,	R =  -166.936 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -38.153  mm,	Y = -1594.078  mm,	Z =   984.359  mm,
	W =   174.731 deg,	P =   -20.680 deg,	R =   131.689 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
};
/END
