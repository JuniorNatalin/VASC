/PROG  UP001
/ATTR
OWNER		= AUROM;
COMMENT		= "Soldar ST1250";
PROG_SIZE	= 17908;
CREATE		= DATE 96-03-27  TIME 20:31:00;
MODIFIED	= DATE 24-07-15  TIME 03:43:18;
FILE_NAME	= UP001;
VERSION		= 0;
LINE_COUNT	= 77;
MEMORY_SIZE	= 35632;
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
   1:  !Apagar Perfil Lib. 80 vs ST1250 ;
   2:  !Apagar Perfil Lib. 79 vs ST1250 ;
   3:  !Encender Anticol. 1 vs 1220R01 ;
   4:  !Encender Anticol. 3 vs 1270R01 ;
   5:  UFRAME_NUM=1 ;
   6:  UTOOL_NUM=1 ;
   7:  PAYLOAD[1] ;
   8:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  DO[16]=ON ;
      4:  TIMER[3]=RESET ;
      5:  TIMER[3]=START ;
      6:  CALL MAKRO050    ;
      7:  !Lib. de Herramientas ;
      8:  DO[80]=ON ;
      9:  DO[79]=ON ;
     10:  !Lib. de Anticolisiones ;
     11:  DO[41]=ON ;
     12:  DO[42]=ON ;
     13:  DO[43]=ON ;
     14:  DO[44]=ON ;
     15:  !Apagar Pos. Base ;
     16:  DO[15]=OFF ;
     17:  !Robot en Trayectoria ;
     18:  DO[16]=ON ;
     19:  WAIT (DI[79] AND DI[80])    ;
     20:  DO[80]=OFF ;
     21:  DO[79]=OFF ;
     22:  !Encender Anticolisiones ;
     23:  DO[81]=ON ;
     24:  DO[83]=ON ;
     25:  CALL MAKRO020    ;
     26:  WAIT (DI[23])    ;
     27:  DO[23]=ON ;
     28:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  11:  !5QA802035_007_G_PS_0004 ;
  12:  !Punto de Sol. No. 5550 ;
  13:J P[4] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5550,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
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
  18:  !5QA802035_007_G_PS_0006 ;
  19:  !Punto de Sol. No. 5552 ;
  20:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5552,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+5) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  21:J P[10] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  22:J P[11] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  23:J P[12] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  24:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  25:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  26:   ;
  27:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  28:   ;
  29:   ;
  30:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  31:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  32:  !5QA802035_007_G_PS_0001 ;
  33:  !Punto de Sol. No. 5551 ;
  34:J P[18] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5551,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-12) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  35:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  36:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  37:J P[21] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  38:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  39:   ;
  40:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  41:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  42:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  43:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  44:J P[27] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  45:  !5QA802035_029_AD_PS_0004 ;
  46:  !Punto de Sol. No. 5553 ;
  47:J P[28] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5553,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+2) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  48:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  49:  !5QA802035_029_AD_PS_0006 ;
  50:  !Punto de Sol. No. 5554 ;
  51:J P[30] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5554,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+2) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  52:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  53:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  54:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  55:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  56:J P[35] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  57:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  58:  !5QA802035_013_N_PS_0009 ;
  59:  !Punto de Sol. No. 5556 ;
  60:J P[37] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5556,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]+2) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  61:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  62:J P[39] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  63:J P[40] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  64:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  65:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  66:  !5QA802035_047_AW_PS_0001 ;
  67:  !Punto de Sol. No. 5555 ;
  68:  !Fin de Trabajo 1 ;
  69:J P[43] 100% CNT0 ACC100 TB    .10sec,P-SPS Tool_Offset,PR[11] Offset,PR[12]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5555,Fzg_Typ=3,EIN/AUS=ON) ;
      5:  GO[2]=(R[197]-12) ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO001 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  70:J P[44] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  71:J P[45] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (DI[41] AND DI[43] AND DI[79] AND DI[80] AND M[30] AND M[95]) ;
       ------ ;
  72:  !Encender Perfil Lib 79 vs ST1250 ;
  73:J P[46] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[79]=ON ;
      3:  TC_ONLINE (DI[41] AND DI[43] AND DI[80] AND M[95]) ;
       ------ ;
  74:  !Encender Perfil Lib 80 vs ST1250 ;
  75:  !Apagar Anticolision 1 vs 1220R01 ;
  76:  !Apagar Anticolision 3 vs 1270R01 ;
  77:J P[47] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[3]=STOP ;
      4:  DO[41]=ON ;
      5:  DO[43]=ON ;
      6:  DO[80]=ON ;
      7:  WAIT (DI[23])    ;
      8:  DO[23]=ON ;
      9:  TC_ONLINE (M[30] AND M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1800.239  mm,	Y =  -755.139  mm,	Z =  1100.745  mm,
	W =  -171.745 deg,	P =   -29.428 deg,	R =  -150.626 deg
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
	X =  -310.481  mm,	Y =  -689.220  mm,	Z =   268.362  mm,
	W =  -166.449 deg,	P =   -85.484 deg,	R =    93.049 deg
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
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -355.469  mm,	Y =  -494.717  mm,	Z =   267.855  mm,
	W =  -166.433 deg,	P =   -85.486 deg,	R =    93.033 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    61.100  mm
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
	X =  -355.566  mm,	Y =  -493.716  mm,	Z =   272.544  mm,
	W =  -166.524 deg,	P =   -85.485 deg,	R =    93.125 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.500  mm
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
	X =  -354.000  mm,	Y =  -499.924  mm,	Z =   260.777  mm,
	W =  -166.433 deg,	P =   -85.486 deg,	R =    93.033 deg
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
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -248.349  mm,	Y =  -683.421  mm,	Z =   268.167  mm,
	W =   177.525 deg,	P =   -85.484 deg,	R =    93.049 deg
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
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -148.280  mm,	Y =  -650.395  mm,	Z =   276.984  mm,
	W =   165.639 deg,	P =   -84.000 deg,	R =    95.745 deg
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
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -121.506  mm,	Y =  -475.219  mm,	Z =   258.946  mm,
	W =   165.639 deg,	P =   -84.000 deg,	R =    95.745 deg
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
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -123.920  mm,	Y =  -476.309  mm,	Z =   254.014  mm,
	W =   165.530 deg,	P =   -84.000 deg,	R =    95.859 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.600  mm
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
	X =  -121.506  mm,	Y =  -475.219  mm,	Z =   258.946  mm,
	W =   165.639 deg,	P =   -84.000 deg,	R =    95.745 deg
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
	X =  -160.606  mm,	Y =  -762.801  mm,	Z =   288.609  mm,
	W =  -119.569 deg,	P =   -77.716 deg,	R =    20.305 deg
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
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -310.481  mm,	Y =  -689.220  mm,	Z =   268.362  mm,
	W =  -166.449 deg,	P =   -85.484 deg,	R =    93.049 deg
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
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   357.528  mm,	Y =  -907.472  mm,	Z =   478.036  mm,
	W =   179.237 deg,	P =   -10.184 deg,	R =  -161.991 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   118.000  mm
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
	X =  -203.556  mm,	Y =  -517.294  mm,	Z =   481.867  mm,
	W =  -179.691 deg,	P =    -9.799 deg,	R =   -87.675 deg
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
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -233.657  mm,	Y =  -412.484  mm,	Z =   378.408  mm,
	W =   178.282 deg,	P =      .101 deg,	R =   -88.132 deg
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
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -231.553  mm,	Y =  -411.311  mm,	Z =   282.169  mm,
	W =   178.281 deg,	P =      .098 deg,	R =   -88.132 deg
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
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -233.695  mm,	Y =  -411.259  mm,	Z =   210.922  mm,
	W =   178.281 deg,	P =      .098 deg,	R =   -88.132 deg
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
	X =  -236.054  mm,	Y =  -428.048  mm,	Z =   208.330  mm,
	W =   178.373 deg,	P =      .129 deg,	R =   -88.204 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.900  mm
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
	X =  -237.432  mm,	Y =  -406.548  mm,	Z =   207.369  mm,
	W =   178.281 deg,	P =      .098 deg,	R =   -88.132 deg
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
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -229.340  mm,	Y =  -407.920  mm,	Z =   253.798  mm,
	W =   178.281 deg,	P =      .098 deg,	R =   -88.132 deg
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
	X =  -229.468  mm,	Y =  -413.471  mm,	Z =   461.186  mm,
	W =   178.281 deg,	P =      .098 deg,	R =   -88.132 deg
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
	X =   447.596  mm,	Y =  -881.458  mm,	Z =   570.435  mm,
	W =   179.431 deg,	P =    -1.625 deg,	R =  -162.089 deg
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
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   146.072  mm,	Y =  -815.977  mm,	Z =   230.000  mm,
	W =  -119.568 deg,	P =   -77.716 deg,	R =    20.305 deg
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
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   158.608  mm,	Y =  -515.940  mm,	Z =   124.142  mm,
	W =  -144.417 deg,	P =   -63.080 deg,	R =    45.696 deg
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
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   144.850  mm,	Y =  -471.468  mm,	Z =    64.985  mm,
	W =  -144.088 deg,	P =   -54.736 deg,	R =    44.967 deg
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
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   132.287  mm,	Y =  -443.259  mm,	Z =     2.836  mm,
	W =  -137.564 deg,	P =   -60.253 deg,	R =    37.901 deg
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
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   134.548  mm,	Y =  -404.462  mm,	Z =    25.886  mm,
	W =   -96.815 deg,	P =   -58.419 deg,	R =      .546 deg
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
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.214  mm,	Y =  -415.779  mm,	Z =    30.498  mm,
	W =   -99.517 deg,	P =   -58.426 deg,	R =      .543 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
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
	X =   122.561  mm,	Y =  -411.304  mm,	Z =    43.872  mm,
	W =   -87.423 deg,	P =   -58.419 deg,	R =      .546 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.800  mm
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
	X =   106.623  mm,	Y =  -420.189  mm,	Z =    49.058  mm,
	W =   -87.423 deg,	P =   -58.419 deg,	R =      .547 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.500  mm
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
	X =   115.327  mm,	Y =  -414.008  mm,	Z =    37.588  mm,
	W =   -87.423 deg,	P =   -58.419 deg,	R =      .547 deg
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
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   120.797  mm,	Y =  -446.389  mm,	Z =    34.020  mm,
	W =  -102.389 deg,	P =   -57.612 deg,	R =    18.152 deg
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
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   207.403  mm,	Y =  -623.288  mm,	Z =   247.706  mm,
	W =  -124.184 deg,	P =   -50.769 deg,	R =    44.817 deg
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
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   466.269  mm,	Y =  -310.010  mm,	Z =   393.118  mm,
	W =    22.790 deg,	P =   -75.952 deg,	R =    -7.465 deg
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
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   370.849  mm,	Y =  -297.507  mm,	Z =     8.502  mm,
	W =    22.790 deg,	P =   -75.952 deg,	R =    -7.465 deg
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
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   201.302  mm,	Y =  -356.046  mm,	Z =    48.577  mm,
	W =    26.724 deg,	P =   -75.956 deg,	R =    -7.464 deg
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
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   196.916  mm,	Y =  -363.565  mm,	Z =    60.322  mm,
	W =    19.774 deg,	P =   -67.161 deg,	R =     7.053 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   201.302  mm,	Y =  -356.046  mm,	Z =    48.577  mm,
	W =    26.724 deg,	P =   -75.956 deg,	R =    -7.464 deg
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
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   370.849  mm,	Y =  -297.507  mm,	Z =     8.502  mm,
	W =    22.790 deg,	P =   -75.952 deg,	R =    -7.465 deg
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
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   466.269  mm,	Y =  -310.010  mm,	Z =   393.118  mm,
	W =    22.790 deg,	P =   -75.952 deg,	R =    -7.465 deg
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
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   332.543  mm,	Y =  -377.690  mm,	Z =   332.881  mm,
	W =  -159.325 deg,	P =    -8.256 deg,	R =   102.742 deg
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
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   153.073  mm,	Y =  -381.127  mm,	Z =   140.002  mm,
	W =  -152.415 deg,	P =     2.436 deg,	R =    98.624 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    99.900  mm
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
	X =   149.857  mm,	Y =  -378.890  mm,	Z =   140.106  mm,
	W =  -143.351 deg,	P =     2.197 deg,	R =    98.963 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   151.677  mm,	Y =  -380.946  mm,	Z =   140.055  mm,
	W =  -152.413 deg,	P =     2.434 deg,	R =    98.622 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   212.728  mm,	Y =  -386.460  mm,	Z =   209.692  mm,
	W =  -159.325 deg,	P =    -8.256 deg,	R =   102.742 deg
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
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   537.970  mm,	Y =  -765.059  mm,	Z =   516.919  mm,
	W =  -159.625 deg,	P =   -13.535 deg,	R =   128.203 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1800.239  mm,	Y =  -755.139  mm,	Z =  1100.745  mm,
	W =  -171.745 deg,	P =   -29.428 deg,	R =  -150.626 deg
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
