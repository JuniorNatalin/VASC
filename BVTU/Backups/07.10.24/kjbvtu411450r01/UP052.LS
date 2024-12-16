/PROG  UP052
/ATTR
OWNER		= engenhar;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 9458;
CREATE		= DATE 04-05-26  TIME 15:46:54;
MODIFIED	= DATE 24-07-13  TIME 22:36:34;
FILE_NAME	= UP052;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 16714;
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
   2:  UTOOL_NUM=4 ;
   3:  PAYLOAD[2] ;
   4:   ;
   5:J P[1] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[72]=ON ;
     10:  DO[70]=OFF ;
     11:  DO[68]=ON ;
     12:  DO[66]=OFF ;
     13:  !Lib. de Anticolisiones ;
     14:  DO[43]=ON ;
     15:  DO[44]=ON ;
     16:  !Apagar Pos. Base ;
     17:  DO[15]=OFF ;
     18:  !Robot en Trayectoria ;
     19:  DO[16]=ON ;
     20:  !Fresador en Pos. Base ;
     21:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     22:  WAIT (M[96])    ;
     23:  WAIT (DI[23])    ;
     24:  DO[23]=ON ;
     25:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[2] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:  !  5q0803296_ps_011_kps0032 ;
   8:J P[3] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:  !  5q0803296_ps_011_kps0029 ;
  10:J P[4] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  11:  !  5q0803296_ps_011_kps0027 ;
  12:J P[5] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  13:  !  5q0803296_ps_011_kps0023 ;
  14:J P[6] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  15:  !  5q0803296_ps_011_kps0022 ;
  16:J P[7] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[8] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[9] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  19:  !  5q0803296_ps_012_lps0023 ;
  20:J P[10] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  21:  !  5q0803296_ps_012_lps0022 ;
  22:J P[11] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[12] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  24:  !  5q0803296_ps_012_lps0032 ;
  25:J P[13] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[14] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  27:J P[15] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  28:  !  5q0803296_ps_016_pps0004 ;
  29:J P[16] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  30:  !  5q0803296_ps_004_dps0010 ;
  31:J P[17] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11111,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  32:J P[18] 100% CNT50 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  33:J P[19] 100% CNT0 ACC100 DB    0.0mm,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=ON) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[32] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   226.373  mm,	Y =   633.550  mm,	Z =   380.993  mm,
	W =   -22.849 deg,	P =   -24.718 deg,	R =   -70.931 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =    42.129  mm,	Y =  -626.887  mm,	Z =   346.945  mm,
	W =    19.630 deg,	P =     6.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =  -130.691  mm,	Y = -1130.196  mm,	Z =   235.633  mm,
	W =    29.022 deg,	P =     6.075 deg,	R =    90.003 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =  -127.973  mm,	Y =  -979.281  mm,	Z =   221.753  mm,
	W =    31.016 deg,	P =     6.120 deg,	R =    89.996 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =   310.294  mm,	Y =  -837.783  mm,	Z =   186.612  mm,
	W =    33.374 deg,	P =     4.916 deg,	R =   117.267 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =  -118.871  mm,	Y =  -626.887  mm,	Z =   141.945  mm,
	W =    19.630 deg,	P =     6.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =  -117.671  mm,	Y =  -575.108  mm,	Z =   132.523  mm,
	W =    19.630 deg,	P =     6.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =   272.974  mm,	Y =  -581.002  mm,	Z =   321.583  mm,
	W =     8.753 deg,	P =     7.060 deg,	R =    90.511 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   329.187  mm,	Y =  -482.943  mm,	Z =   496.719  mm,
	W =   -21.828 deg,	P =    32.965 deg,	R =    86.129 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   165.541  mm,	Y =  -483.081  mm,	Z =   412.880  mm,
	W =   -14.676 deg,	P =    33.207 deg,	R =    90.115 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   163.553  mm,	Y =  -430.410  mm,	Z =   400.178  mm,
	W =   -21.701 deg,	P =    33.021 deg,	R =    91.000 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =   282.309  mm,	Y =  -767.551  mm,	Z =   569.383  mm,
	W =   -10.496 deg,	P =    33.887 deg,	R =    92.520 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =   161.117  mm,	Y =  -910.442  mm,	Z =   697.643  mm,
	W =   -15.000 deg,	P =    33.201 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 1',
	X =   620.360  mm,	Y =  -857.413  mm,	Z =  1114.964  mm,
	W =   -33.140 deg,	P =    35.545 deg,	R =    84.900 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   138.771  mm,	Y =   191.170  mm,	Z =   872.959  mm,
	W =   -60.461 deg,	P =    37.887 deg,	R =   -55.024 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   -25.134  mm,	Y =    95.349  mm,	Z =   572.929  mm,
	W =   -80.031 deg,	P =    49.511 deg,	R =   -76.964 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   -58.843  mm,	Y =   -51.510  mm,	Z =   493.504  mm,
	W =   -70.832 deg,	P =    56.098 deg,	R =   -67.279 deg
   GP2:
	UF : 1, UT : 6,	
	J1=    30.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  -119.586  mm,	Y =    57.452  mm,	Z =   792.427  mm,
	W =   -71.958 deg,	P =    54.491 deg,	R =   -69.204 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =   226.373  mm,	Y =   633.550  mm,	Z =   380.993  mm,
	W =   -22.849 deg,	P =   -24.718 deg,	R =   -70.931 deg
   GP2:
	UF : 1, UT : 6,	
	J1=   232.000  mm
   GP3:
	UF : 1, UT : 6,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 6,	
	J1=     0.000  mm
};
/END
