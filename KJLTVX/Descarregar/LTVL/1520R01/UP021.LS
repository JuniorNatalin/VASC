/PROG  UP021
/ATTR
OWNER		= GME;
COMMENT		= "Soldar en ST1520";
PROG_SIZE	= 9158;
CREATE		= DATE 22-11-08  TIME 07:55:30;
MODIFIED	= DATE 24-03-28  TIME 20:30:38;
FILE_NAME	= UP021;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 17158;
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
   4:  !Apagar Perfil Lib. 80 vs ST1520 ;
   5:  !Apagar Perfil Lib. 79 vs ST1520 ;
   6:  !Encender Anticol. 1 vs 1550R01 ;
   7:  !Encender Anticol. 5 vs 1500R01 ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
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
  11:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:  !5qa802035b_021_vps0001_L ;
  13:  !Punto de Sol. No. 10124 ;
  14:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10124,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  15:J P[6] 100% CNT20 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  16:  !5qa802035b_021_vps0002_L ;
  17:  !Punto de Sol. No. 10125 ;
  18:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10125,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
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
  25:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:   ;
  27:  !adicional ;
  28:  //J P[15] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=9999,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  //CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:   ;
  30:  !5qa802035b_049_axps0002_L ;
  31:  !Punto de Sol. No. 10126 ;
  32:J P[16] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10126,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:J P[17] 100% CNT50 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  34:  !5qa802035b_017_rps0014_L ;
  35:  !Punto de Sol. No. 10127 ;
  36:  !Fin de Trabajo 1 ;
  37:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10127,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-10) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[45] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  40:  !Encender Perfil Lib 80 vs ST1520 ;
  41:  !Encender Perfil Lib 79 vs ST1520 ;
  42:  !Apagar Anticol. 1 vs 1550R01 ;
  43:  !Apagar Anticol. 5 vs 1500R01 ;
  44:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[45]=ON ;
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
	X = -1688.942  mm,	Y =    43.760  mm,	Z =  1521.234  mm,
	W =    20.882 deg,	P =   -37.542 deg,	R =   106.785 deg
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
	X =  -596.465  mm,	Y =  -509.992  mm,	Z =   544.188  mm,
	W =    72.332 deg,	P =   -36.259 deg,	R =   144.655 deg
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
	X =  -440.139  mm,	Y =  -645.509  mm,	Z =   297.825  mm,
	W =    77.292 deg,	P =   -36.874 deg,	R =   144.721 deg
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
	X =  -333.299  mm,	Y =  -549.650  mm,	Z =   311.850  mm,
	W =    72.333 deg,	P =   -36.258 deg,	R =   144.654 deg
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
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -330.703  mm,	Y =  -556.281  mm,	Z =   337.451  mm,
	W =    84.929 deg,	P =   -34.914 deg,	R =   135.858 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.500  mm
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
	X =  -334.214  mm,	Y =  -549.001  mm,	Z =   312.670  mm,
	W =    72.333 deg,	P =   -36.258 deg,	R =   144.654 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.648  mm
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
	X =  -351.394  mm,	Y =  -581.185  mm,	Z =   337.228  mm,
	W =    78.159 deg,	P =   -36.747 deg,	R =   143.207 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.600  mm
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
	X =  -371.996  mm,	Y =  -591.425  mm,	Z =   323.073  mm,
	W =    72.331 deg,	P =   -36.272 deg,	R =   144.669 deg
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
	X =  -409.705  mm,	Y =  -612.354  mm,	Z =   293.361  mm,
	W =    77.332 deg,	P =   -36.258 deg,	R =   144.655 deg
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
	X =  -470.353  mm,	Y =  -578.928  mm,	Z =   333.704  mm,
	W =    77.332 deg,	P =   -36.259 deg,	R =   144.655 deg
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
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.406  mm,	Y =  -480.158  mm,	Z =   785.583  mm,
	W =    72.331 deg,	P =   -36.259 deg,	R =   144.655 deg
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
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -833.366  mm,	Y =  -872.596  mm,	Z =   900.956  mm,
	W =   153.202 deg,	P =   -25.490 deg,	R =    95.795 deg
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
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -119.368  mm,	Y =  -542.627  mm,	Z =   884.441  mm,
	W =   176.163 deg,	P =   -14.670 deg,	R =   104.835 deg
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
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -119.339  mm,	Y =  -542.565  mm,	Z =   384.479  mm,
	W =   176.163 deg,	P =   -14.669 deg,	R =   104.835 deg
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
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -173.295  mm,	Y =  -524.696  mm,	Z =   300.249  mm,
	W =   179.242 deg,	P =   -13.445 deg,	R =    96.649 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.500  mm
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
	X =  -147.823  mm,	Y =  -521.269  mm,	Z =   294.991  mm,
	W =   179.238 deg,	P =   -13.443 deg,	R =    96.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.000  mm
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
	X =  -137.166  mm,	Y =  -520.246  mm,	Z =   291.274  mm,
	W =   177.607 deg,	P =   -12.941 deg,	R =   100.570 deg
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
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -118.729  mm,	Y =  -515.363  mm,	Z =   295.419  mm,
	W =   175.979 deg,	P =   -14.933 deg,	R =   105.574 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.000  mm
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
	X =  -119.339  mm,	Y =  -542.565  mm,	Z =   384.479  mm,
	W =   176.163 deg,	P =   -14.669 deg,	R =   104.835 deg
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
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -119.369  mm,	Y =  -542.628  mm,	Z =   884.439  mm,
	W =   176.163 deg,	P =   -14.670 deg,	R =   104.835 deg
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
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1688.942  mm,	Y =    43.760  mm,	Z =  1521.234  mm,
	W =    20.882 deg,	P =   -37.542 deg,	R =   106.785 deg
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
