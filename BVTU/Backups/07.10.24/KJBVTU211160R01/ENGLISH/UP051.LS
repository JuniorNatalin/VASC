/PROG  UP051
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura vw371";
PROG_SIZE	= 15858;
CREATE		= DATE 04-05-30  TIME 19:11:18;
MODIFIED	= DATE 24-07-13  TIME 22:55:16;
FILE_NAME	= UP051;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 31702;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=2 ;
   3:  PAYLOAD[1] ;
   4:  !Espera Lib. Soldar en ST1160 ;
   5:  !Apagar Perfil Libre vs ST1160 ;
   6:  !Encender Anticol. 1 zu R1150R01 ;
   7:  !Encender Anticol. 5 zu R1170R01 ;
   8:  ! Encender Anticol. 4 zu R1160R02 ;
   9:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  CALL MAKRO050    ;
      6:  !lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  !Lib. de Anticolisiones ;
      9:  DO[41]=ON ;
     10:  DO[42]=ON ;
     11:  DO[43]=ON ;
     12:  DO[44]=ON ;
     13:  DO[45]=ON ;
     14:  DO[46]=ON ;
     15:  !Apagar Posicion Base ;
     16:  DO[15]=OFF ;
     17:  !Robot en Trayectoria ;
     18:  DO[16]=ON ;
     19:  !Espera Liberacion ;
     20:  WAIT (DI[80])    ;
     21:  DO[80]=OFF ;
     22:  !Solicitar Anticolisiones ;
     23:  DO[81]=ON ;
     24:  DO[82]=ON ;
     25:  DO[83]=ON ;
     26:  DO[84]=ON ;
     27:  DO[85]=ON ;
     28:  CALL MAKRO020    ;
     29:  WAIT (DI[23])    ;
     30:  DO[23]=ON ;
     31:  TC_ONLINE (DI[41] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  12:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  13:  ! 5q0803296_ps_017_qps0010 ;
  14:  ! Punto de Sol. No. 0000 ;
  15:J P[5] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13009,Fzg_Typ=5,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  16:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  17:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  18:  ! Encender Anticol. 2 zu R1160R02 ;
  19:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[82]=ON ;
      4:  CALL MAKRO020    ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  20:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  23:  ! 5q0803296_ps_017_qps0006 ;
  24:  ! Punto de Sol. No. 0000 ;
  25:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13009,Fzg_Typ=5,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  27:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  29:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[44] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  30:  ! Apagar Anticol. 4 vs R1160R02 ;
  31:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[44]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  33:  ! 5q0803296_ps_009_jps0024 ;
  34:  ! Punto de Sol. No. 0000 ;
  35:J P[19] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13009,Fzg_Typ=5,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  37:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:  ! 5q0803296_ps_009_jps0020 ;
  40:  ! Punto de Sol. No. 0000 ;
  41:J P[23] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13009,Fzg_Typ=5,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  46:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  47:  ! 5q0803296_ps_009_jps0025 ;
  48:  ! Punto de Sol. No. 0000 ;
  49:J P[29] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13009,Fzg_Typ=5,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  50:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  51:  ! Prender Anticol. 3 vs 1160R02 ;
  52:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[83]=ON ;
      4:  CALL MAKRO020    ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  55:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:  ! 5q0803296_ps_009_jps0005 ;
  58:  ! Punto de Sol. No. 0000 ;
  59:J P[36] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13009,Fzg_Typ=5,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  60:J P[37] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  62:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[42] AND DI[43] AND DI[45] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  64:  !Encender Perfil Libre vs ST1160 ;
  65:  !Apagar Anticol. 5 vs R1170R01 ;
  66:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[80]=ON ;
      3:  DO[45]=ON ;
      4:  TC_ONLINE (DI[41] AND DI[43] AND DI[44] AND M[30] AND M[95]) ;
       ------ ;
  67:  !Apagar Anticol. 1 vs R1150R01 ;
  68:  ! Apagar Anticol. 2 vs R1160R02 ;
  69:  ! Apagar Anticol. 3 vs R1160R02 ;
  70:J P[42] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  WAIT (DI[23])    ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  2263.186  mm,	Y =    96.318  mm,	Z = -1084.381  mm,
	W =    44.850 deg,	P =   -10.154 deg,	R =   -39.916 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1785.848  mm,	Y =   -65.194  mm,	Z =  -163.375  mm,
	W =      .687 deg,	P =    -5.980 deg,	R =   -87.822 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1576.103  mm,	Y =  -123.897  mm,	Z =  -146.289  mm,
	W =    10.099 deg,	P =   -15.919 deg,	R =   -96.753 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1545.221  mm,	Y =   -61.259  mm,	Z =    59.066  mm,
	W =    10.099 deg,	P =   -15.919 deg,	R =   -96.753 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1540.582  mm,	Y =   -74.130  mm,	Z =    80.899  mm,
	W =     9.858 deg,	P =    -9.956 deg,	R =   -95.677 deg
   GP2:
	UF : 2, UT : 1,	
	J1=    50.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1545.221  mm,	Y =   -61.259  mm,	Z =    59.066  mm,
	W =    10.099 deg,	P =   -15.919 deg,	R =   -96.753 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1576.103  mm,	Y =  -123.897  mm,	Z =  -146.289  mm,
	W =    10.099 deg,	P =   -15.919 deg,	R =   -96.753 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1591.908  mm,	Y =  -129.256  mm,	Z =  -252.221  mm,
	W =    11.056 deg,	P =   -12.382 deg,	R =  -110.181 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1778.171  mm,	Y =   -31.263  mm,	Z =  -234.080  mm,
	W =     4.539 deg,	P =    -1.526 deg,	R =   178.938 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   200.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1525.177  mm,	Y =   118.526  mm,	Z =  -229.187  mm,
	W =     2.127 deg,	P =    -9.217 deg,	R =    94.413 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   200.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1541.328  mm,	Y =    59.680  mm,	Z =    78.316  mm,
	W =    10.321 deg,	P =   -27.735 deg,	R =    98.135 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   200.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1540.673  mm,	Y =    69.266  mm,	Z =    80.845  mm,
	W =    15.285 deg,	P =    -9.217 deg,	R =    94.413 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   150.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1541.332  mm,	Y =    59.680  mm,	Z =    78.315  mm,
	W =    12.843 deg,	P =   -26.730 deg,	R =    92.626 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   200.000  mm
};
P[14]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1525.177  mm,	Y =   118.526  mm,	Z =  -229.187  mm,
	W =     2.127 deg,	P =    -9.217 deg,	R =    94.413 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   200.000  mm
};
P[15]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1400.796  mm,	Y =  -165.628  mm,	Z =  -513.337  mm,
	W =     2.127 deg,	P =    -9.217 deg,	R =    94.413 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   200.000  mm
};
P[16]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 1',
	X =  1024.464  mm,	Y =   122.941  mm,	Z =  -526.158  mm,
	W =     8.421 deg,	P =    24.015 deg,	R =  -175.768 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[17]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   782.006  mm,	Y =  -204.009  mm,	Z =  -206.307  mm,
	W =    52.820 deg,	P =    -9.536 deg,	R =   -75.380 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[18]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   491.144  mm,	Y =   -51.317  mm,	Z =   -56.642  mm,
	W =    56.535 deg,	P =   -19.630 deg,	R =   -90.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[19]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   469.732  mm,	Y =  -134.661  mm,	Z =   -11.889  mm,
	W =    56.535 deg,	P =   -19.630 deg,	R =   -90.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[20]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   377.777  mm,	Y =  -106.241  mm,	Z =   -18.539  mm,
	W =    45.625 deg,	P =   -22.559 deg,	R =   -78.872 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[21]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   240.941  mm,	Y =  -103.122  mm,	Z =    11.942  mm,
	W =    44.454 deg,	P =   -22.478 deg,	R =   -72.869 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[22]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   246.041  mm,	Y =   -61.111  mm,	Z =    60.045  mm,
	W =    44.454 deg,	P =   -22.478 deg,	R =   -72.869 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[23]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   259.270  mm,	Y =  -104.024  mm,	Z =    78.627  mm,
	W =    44.454 deg,	P =   -22.478 deg,	R =   -72.869 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[24]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   246.041  mm,	Y =   -61.111  mm,	Z =    60.045  mm,
	W =    44.454 deg,	P =   -22.478 deg,	R =   -72.869 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[25]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   240.941  mm,	Y =  -103.122  mm,	Z =    11.942  mm,
	W =    44.454 deg,	P =   -22.478 deg,	R =   -72.869 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[26]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   377.777  mm,	Y =  -106.241  mm,	Z =   -18.539  mm,
	W =    45.625 deg,	P =   -22.559 deg,	R =   -78.872 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[27]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   478.002  mm,	Y =  -246.046  mm,	Z =  -466.594  mm,
	W =    10.515 deg,	P =   -82.443 deg,	R =   -44.114 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[28]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   501.071  mm,	Y =  -211.321  mm,	Z =   -79.468  mm,
	W =  -118.175 deg,	P =   -90.000 deg,	R =    90.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[29]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   501.072  mm,	Y =  -211.319  mm,	Z =   -55.319  mm,
	W =  -118.175 deg,	P =   -90.000 deg,	R =    90.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[30]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   501.071  mm,	Y =  -211.321  mm,	Z =   -79.468  mm,
	W =  -118.175 deg,	P =   -90.000 deg,	R =    90.000 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[31]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   478.002  mm,	Y =  -246.046  mm,	Z =  -466.594  mm,
	W =    10.515 deg,	P =   -82.443 deg,	R =   -44.114 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[32]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   399.004  mm,	Y =  -625.552  mm,	Z =  -961.419  mm,
	W =   -68.766 deg,	P =   -51.024 deg,	R =    90.702 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[33]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   603.268  mm,	Y =   -28.935  mm,	Z =  -526.888  mm,
	W =   -47.958 deg,	P =   -14.064 deg,	R =    88.515 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[34]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   345.974  mm,	Y =   162.049  mm,	Z =  -117.347  mm,
	W =   -13.666 deg,	P =   -31.712 deg,	R =    44.928 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[35]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   213.808  mm,	Y =   113.666  mm,	Z =    89.392  mm,
	W =   -13.666 deg,	P =   -31.712 deg,	R =    44.928 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[36]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   247.888  mm,	Y =   147.669  mm,	Z =   119.138  mm,
	W =   -13.666 deg,	P =   -31.712 deg,	R =    44.928 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[37]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   213.808  mm,	Y =   113.666  mm,	Z =    89.392  mm,
	W =   -13.666 deg,	P =   -31.712 deg,	R =    44.928 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[38]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   345.974  mm,	Y =   162.049  mm,	Z =  -117.347  mm,
	W =   -13.666 deg,	P =   -31.712 deg,	R =    44.928 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[39]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   603.847  mm,	Y =   256.447  mm,	Z =  -520.713  mm,
	W =   -13.666 deg,	P =   -31.712 deg,	R =    44.928 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[40]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   843.525  mm,	Y =   649.765  mm,	Z = -1909.600  mm,
	W =   -80.822 deg,	P =   -69.304 deg,	R =    88.295 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[41]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1571.259  mm,	Y =  1980.574  mm,	Z = -2451.153  mm,
	W =   148.309 deg,	P =   -74.133 deg,	R =   167.164 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
P[42]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F U T, 0, 1, 0',
	X =  2263.186  mm,	Y =    96.318  mm,	Z = -1084.381  mm,
	W =    44.850 deg,	P =   -10.154 deg,	R =   -39.916 deg
   GP2:
	UF : 2, UT : 1,	
	J1=   300.000  mm
};
/END
