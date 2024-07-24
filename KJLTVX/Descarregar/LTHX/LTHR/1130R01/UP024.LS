/PROG  UP024
/ATTR
OWNER		= GME;
COMMENT		= "SOLDADURA EST.";
PROG_SIZE	= 12272;
CREATE		= DATE 03-01-27  TIME 13:55:44;
MODIFIED	= DATE 24-04-23  TIME 21:55:14;
FILE_NAME	= UP024;
VERSION		= 0;
LINE_COUNT	= 51;
MEMORY_SIZE	= 23548;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000001 00000000;
/APPL
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=5 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  CALL MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  DO[80]=ON ;
      8:  DO[78]=OFF ;
      9:  DO[77]=ON ;
     10:  DO[75]=OFF ;
     11:  DO[74]=ON ;
     12:  DO[73]=ON ;
     13:  DO[71]=OFF ;
     14:  DO[70]=OFF ;
     15:  DO[69]=OFF ;
     16:  DO[68]=OFF ;
     17:  DO[67]=OFF ;
     18:  !Lib. de Anticolisiones ;
     19:  DO[41]=ON ;
     20:  DO[42]=ON ;
     21:  DO[43]=ON ;
     22:  DO[44]=ON ;
     23:  DO[45]=ON ;
     24:  DO[46]=ON ;
     25:  !Apagar Pos. Base ;
     26:  DO[15]=OFF ;
     27:  !Robot en Trayectoria ;
     28:  DO[16]=ON ;
     29:  !Basculante 1 en Pos. de Reposo ;
     30:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     31:  WAIT (M[96])    ;
     32:  WAIT (DI[23])    ;
     33:  DO[23]=ON ;
     34:  !Marca 7 Estado de Garra ;
     35:  !Valvula 1,2,3&5 en V, 4,6&7 en R ;
     36:  !M[23]=(M[32] AND M[36] AND M[37] ;
     37:  !AND M[40] AND M[41] AND M[43] ;
     38:  !AND M[63]) ;
     39:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
   8:   ;
   9:  !Punto de Sol. No. 5689 ;
  10:  !5qa802035b_002_bps0003_R ;
  11:J P[5] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11510,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  12:  !Punto de Sol. No. 5690 ;
  13:  !5qa802035b_002_bps0004_R ;
  14:J P[6] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11511,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  15:J P[7] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  16:J P[8] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  17:J P[9] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  18:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  19:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  20:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  21:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  22:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  23:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  24:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  25:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  26:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  27:   ;
  28:  !Punto de Sol. No. 5695 ;
  29:  !5qa802035b_012_mps0001_R ;
  30:J P[19] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11512,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  31:  !Punto de Sol. No. 5694 ;
  32:  !5qa802035b_012_mps0002_R ;
  33:J P[20] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11513,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  35:   ;
  36:  !Punto de Sol. No. 5692 ;
  37:  !5qa802035b_012_mps0004_R ;
  38:J P[22] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11514,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  39:  !Punto de Sol. No. 5693 ;
  40:  !5qa802035b_012_mps0003_R ;
  41:J P[23] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11515,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  42:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  43:  !Punto de Sol. No. 5691 ;
  44:  !5qa802035b_012_mps0005_R ;
  45:J P[25] 100% CNT0 ACC100 DB    0.0mm,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=11516,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  46:  !Fin de Trabajo 3 ;
  47:J P[26] 100% CNT0 ACC100 TB    0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  IF (!DI[145] AND !DI[129]),CALL MAKRO003 ;
      4:  WAIT (DI[23])    ;
      5:  DO[23]=ON ;
      6:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  48:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  49:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[6]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[23] AND M[30] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1249.313  mm,	RY =  1010.108  mm,	RZ = -1064.607  mm,
	RW =    56.710 deg,	RP =    23.125 deg,	RR =  -128.942 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   176.302  mm,	RY =   261.474  mm,	RZ =   -28.689  mm,
	RW =   104.932 deg,	RP =    16.644 deg,	RR =  -176.870 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   199.938  mm,	RY =   310.131  mm,	RZ =   120.908  mm,
	RW =   108.375 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   199.008  mm,	RY =   358.410  mm,	RZ =   105.904  mm,
	RW =   104.358 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   149.364  mm,	RY =   377.379  mm,	RZ =   101.109  mm,
	RW =   104.595 deg,	RP =     6.205 deg,	RR =  -176.986 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    14.800  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   146.003  mm,	RY =   373.361  mm,	RZ =   118.651  mm,
	RW =   104.574 deg,	RP =     6.200 deg,	RR =  -176.986 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    14.500  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   199.006  mm,	RY =   358.408  mm,	RZ =   105.901  mm,
	RW =   104.358 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   209.465  mm,	RY =   340.563  mm,	RZ =   111.654  mm,
	RW =   104.358 deg,	RP =     6.144 deg,	RR =  -176.983 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   176.301  mm,	RY =   261.472  mm,	RZ =   -28.692  mm,
	RW =   104.932 deg,	RP =    16.644 deg,	RR =  -176.870 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 1',
	RX =   242.558  mm,	RY =  -720.071  mm,	RZ =   113.882  mm,
	RW =   109.501 deg,	RP =     8.169 deg,	RR =  -131.864 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   358.676  mm,	RY =   183.249  mm,	RZ =  -456.681  mm,
	RW =    38.383 deg,	RP =    28.160 deg,	RR =   -31.996 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   200.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   181.183  mm,	RY =   721.044  mm,	RZ =   -80.923  mm,
	RW =    39.993 deg,	RP =    40.402 deg,	RR =   -20.822 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   199.999  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =    72.993  mm,	RY =   638.956  mm,	RZ =    83.166  mm,
	RW =      .249 deg,	RP =    51.684 deg,	RR =   -31.420 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   199.999  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -15.314  mm,	RY =   604.898  mm,	RZ =   158.331  mm,
	RW =   -51.766 deg,	RP =    47.980 deg,	RR =   -65.859 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   182.215  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -209.637  mm,	RY =   634.343  mm,	RZ =     3.629  mm,
	RW =  -102.940 deg,	RP =    30.404 deg,	RR =   -96.222 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -83.597  mm,	RY =   534.537  mm,	RZ =    47.391  mm,
	RW =  -116.956 deg,	RP =    11.086 deg,	RR =   -82.064 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =     6.156  mm,	RY =   477.675  mm,	RZ =   149.154  mm,
	RW =  -125.534 deg,	RP =     1.841 deg,	RR =   -93.359 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   160.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =    33.647  mm,	RY =   344.866  mm,	RZ =   133.911  mm,
	RW =  -122.441 deg,	RP =    -4.178 deg,	RR =   -99.966 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    66.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =    32.995  mm,	RY =   345.110  mm,	RZ =   132.575  mm,
	RW =  -122.688 deg,	RP =    -3.620 deg,	RR =   -99.712 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    15.900  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =    15.686  mm,	RY =   346.492  mm,	RZ =   143.765  mm,
	RW =  -122.692 deg,	RP =    -3.611 deg,	RR =   -99.708 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    16.100  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =     2.782  mm,	RY =   352.400  mm,	RZ =   157.764  mm,
	RW =  -121.406 deg,	RP =     1.818 deg,	RR =  -106.362 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    15.600  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =     2.780  mm,	RY =   352.400  mm,	RZ =   157.765  mm,
	RW =  -121.407 deg,	RP =     1.818 deg,	RR =  -106.362 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    15.601  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -27.549  mm,	RY =   359.562  mm,	RZ =   160.164  mm,
	RW =  -130.493 deg,	RP =     -.264 deg,	RR =  -107.893 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    23.400  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -45.187  mm,	RY =   367.711  mm,	RZ =   169.452  mm,
	RW =  -130.491 deg,	RP =     -.265 deg,	RR =  -107.890 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    16.083  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -42.848  mm,	RY =   364.966  mm,	RZ =   174.445  mm,
	RW =  -130.491 deg,	RP =     -.265 deg,	RR =  -107.887 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    17.400  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   -52.832  mm,	RY =   422.889  mm,	RZ =   172.011  mm,
	RW =  -121.128 deg,	RP =      .087 deg,	RR =  -108.271 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    81.600  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -153.676  mm,	RY =   469.542  mm,	RZ =    14.640  mm,
	RW =  -123.338 deg,	RP =      .218 deg,	RR =  -108.028 deg
   GP2:
	UF : 1, UT : 5,	
	J1=    98.250  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =  -296.690  mm,	RY =   578.865  mm,	RZ =    -7.792  mm,
	RW =  -119.474 deg,	RP =    38.150 deg,	RR =  -101.556 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX =   257.127  mm,	RY =  -135.664  mm,	RZ =  -219.973  mm,
	RW =   -55.152 deg,	RP =    31.385 deg,	RR =   -87.374 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 5,		CONFIG : 'N U T, 0, 0, 0',
	RX = -1249.313  mm,	RY =  1010.108  mm,	RZ = -1064.607  mm,
	RW =    56.710 deg,	RP =    23.125 deg,	RR =  -128.942 deg
   GP2:
	UF : 1, UT : 5,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 5,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 5,	
	J1=     0.000  mm
};
/END
