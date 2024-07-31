/PROG  UP022
/ATTR
OWNER		= GME;
COMMENT		= "Soldadura Est.";
PROG_SIZE	= 18016;
CREATE		= DATE 96-03-22  TIME 17:32:00;
MODIFIED	= DATE 24-03-16  TIME 15:04:50;
FILE_NAME	= UP022;
VERSION		= 0;
LINE_COUNT	= 77;
MEMORY_SIZE	= 34532;
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
   2:  UTOOL_NUM=2 ;
   3:  PAYLOAD[2] ;
   4:J P[1] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
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
     16:  DO[43]=ON ;
     17:  DO[44]=ON ;
     18:  DO[47]=ON ;
     19:  DO[48]=ON ;
     20:  !Apagar Pos. Base ;
     21:  DO[15]=OFF ;
     22:  !Robot en Trayectoria ;
     23:  DO[16]=ON ;
     24:  !Basculante 1 en Pos. de Reposo ;
     25:  IF (!DI[842] AND DO[12]),CALL MAKRO072 ;
     26:  WAIT (M[96])    ;
     27:  WAIT (DI[23])    ;
     28:  DO[23]=ON ;
     29:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  10:  !5qa803091b_p0007_g0210003300_L ;
  11:  !Punto de Sol. No. 10132 ;
  12:J P[7] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10132,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  13:  !5qa803091b_p0007_g0210003200_L ;
  14:  !Punto de Sol. No. 10133 ;
  15:J P[8] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10133,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  16:  !5qa803091b_p0007_g0210003900_L ;
  17:  !Punto de Sol. No. 10134 ;
  18:J P[9] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10134,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  19:  !5qa803091b_p0007_g0210004300_L ;
  20:  !Punto de Sol. No.10135 ;
  21:J P[10] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10135,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  22:  !5qa803091b_p0007_g0210004400_L ;
  23:  !Punto de Sol. No.10136  ;
  24:J P[11] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10136,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  25:  !5qa803091b_p0007_g0210004900_L ;
  26:  !Punto de Sol. No.10137  ;
  27:J P[12] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10137,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  28:J P[13] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  29:J P[14] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  30:J P[15] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  31:J P[16] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  32:J P[17] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  33:J P[18] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  34:J P[19] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  35:J P[20] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  36:  !5qa802035b_051_ayps0001_L ;
  37:  !Punto de Sol. No.10138 ;
  38:  !No soldar en CKD ;
  39:J P[21] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10138,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  40:J P[22] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  41:J P[23] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  42:J P[24] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  43:J P[25] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  44:J P[26] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  45:  !5qa802035b_049_axps0001_L ;
  46:  !Punto de Sol. No. 10139 ;
  47:  !No soldar en CKD ;
  48:J P[27] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10139,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  49:J P[28] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  50:J P[29] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  51:J P[30] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  52:J P[31] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  53:J P[32] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  54:J P[33] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  55:J P[34] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  56:  !5qa802035b_017_rps0032_L ;
  57:  !Punto de Sol. No. 10140 ;
  58:  !No soldar en CKD ;
  59:J P[35] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10140,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  60:J P[36] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  61:  !5qa802035b_017_rps0033_L ;
  62:  !Punto de Sol. No. 10141 ;
  63:  !No soldar en CKD ;
  64:J P[37] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10141,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  65:J P[38] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  66:  !5qa802035b_017_rps0034_L ;
  67:  !Punto de Sol. No. 10142 ;
  68:J P[39] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10142,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  WAIT (DI[23])    ;
      9:  DO[23]=ON ;
     10:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  69:  !5qa802035b_017_rps0035_L ;
  70:  !Punto de Sol. No. 10143 ;
  71:  !No soldar en CKD ;
  72:  !Fin de Trabajo 2 ;
  73:J P[40] 100% CNT0 ACC100 TB    .10sec,P-SPS Offset,PR[11]    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  WAIT (!DI[16] AND DI[23])    ;
      4:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10143,Fzg_Typ=7,EIN/AUS=ON) ;
      5:  GO[2]=R[197] ;
      6:  WAIT (!DI[129] OR DI[26])    ;
      7:  CALL MAKRO080    ;
      8:  IF (!DI[145] AND !DI[129]),CALL MAKRO002 ;
      9:  WAIT (DI[23])    ;
     10:  DO[23]=ON ;
     11:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  74:J P[41] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  75:J P[42] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  76:J P[43] 100% CNT100 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
  77:J P[44] 100% CNT0 ACC100 TB    .10sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[23]=OFF ;
      3:  TIMER[4]=STOP ;
      4:  WAIT (DI[23])    ;
      5:  CALL VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  DO[23]=ON ;
      7:  TC_ONLINE (M[1] AND M[30] AND M[31] AND M[34] AND M[95] AND M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   328.300  mm,	RY = -1324.916  mm,	RZ =   274.479  mm,
	RW =    32.443 deg,	RP =   -29.061 deg,	RR =  -121.466 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 1, -1',
	RX =   519.496  mm,	RY =  -731.687  mm,	RZ =  -224.689  mm,
	RW =    -2.525 deg,	RP =    -8.585 deg,	RR =   -76.288 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   485.716  mm,	RY =  -556.112  mm,	RZ =  -186.254  mm,
	RW =   -24.761 deg,	RP =   -41.145 deg,	RR =   -81.277 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   502.048  mm,	RY =  -539.125  mm,	RZ =   -77.742  mm,
	RW =   -50.177 deg,	RP =   -73.973 deg,	RR =   -93.621 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   502.051  mm,	RY =  -389.151  mm,	RZ =   -77.744  mm,
	RW =   -50.177 deg,	RP =   -73.972 deg,	RR =   -93.621 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   117.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   502.075  mm,	RY =  -409.038  mm,	RZ =  -117.897  mm,
	RW =   -44.230 deg,	RP =   -83.918 deg,	RR =   -99.480 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   117.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   506.106  mm,	RY =  -420.318  mm,	RZ =   -75.283  mm,
	RW =    48.903 deg,	RP =   -89.181 deg,	RR =   167.237 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   519.981  mm,	RY =  -441.931  mm,	RZ =   -75.200  mm,
	RW =    36.094 deg,	RP =   -88.948 deg,	RR =   179.995 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.900  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   553.334  mm,	RY =  -426.525  mm,	RZ =   -72.527  mm,
	RW =    31.982 deg,	RP =   -89.138 deg,	RR =  -175.906 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.900  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   612.472  mm,	RY =  -428.316  mm,	RZ =   -71.562  mm,
	RW =    67.423 deg,	RP =   -87.896 deg,	RR =   148.655 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    17.200  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   627.141  mm,	RY =  -449.722  mm,	RZ =   -73.177  mm,
	RW =    35.178 deg,	RP =   -88.702 deg,	RR =  -179.091 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.300  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   670.421  mm,	RY =  -451.578  mm,	RZ =   -72.062  mm,
	RW =    33.414 deg,	RP =   -87.358 deg,	RR =  -177.330 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    20.600  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   669.139  mm,	RY =  -460.780  mm,	RZ =   -99.664  mm,
	RW =   -50.126 deg,	RP =   -79.952 deg,	RR =   -95.739 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   670.198  mm,	RY =  -560.962  mm,	RZ =  -138.975  mm,
	RW =   -52.052 deg,	RP =   -74.970 deg,	RR =   -93.857 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   292.238  mm,	RY =  -786.339  mm,	RZ =  -260.289  mm,
	RW =   -26.362 deg,	RP =   -33.671 deg,	RR =  -116.323 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   213.555  mm,	RY = -1302.224  mm,	RZ =  -828.694  mm,
	RW =   -16.146 deg,	RP =     3.811 deg,	RR =  -112.059 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -618.407  mm,	RY =  -396.816  mm,	RZ =  1345.167  mm,
	RW =  -162.961 deg,	RP =   -31.595 deg,	RR =  -111.213 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -418.675  mm,	RY =  -539.805  mm,	RZ =   365.961  mm,
	RW =  -166.939 deg,	RP =    28.987 deg,	RR =   -90.003 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   115.048  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -418.678  mm,	RY =  -484.665  mm,	RZ =   339.379  mm,
	RW =  -166.938 deg,	RP =    21.343 deg,	RR =   -90.003 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   115.048  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -405.325  mm,	RY =  -495.435  mm,	RZ =   297.226  mm,
	RW =  -163.525 deg,	RP =     -.000 deg,	RR =   -89.999 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   117.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -404.671  mm,	RY =  -518.004  mm,	RZ =   296.830  mm,
	RW =  -162.610 deg,	RP =      .038 deg,	RR =   -90.039 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    19.200  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -405.208  mm,	RY =  -509.564  mm,	RZ =   295.943  mm,
	RW =  -163.524 deg,	RP =     -.000 deg,	RR =   -89.997 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -418.750  mm,	RY =  -509.082  mm,	RZ =   359.403  mm,
	RW =  -163.523 deg,	RP =    12.209 deg,	RR =   -89.996 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -349.471  mm,	RY =  -521.233  mm,	RZ =   390.281  mm,
	RW =   171.501 deg,	RP =    11.987 deg,	RR =   -90.306 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -337.183  mm,	RY =  -511.790  mm,	RZ =   373.332  mm,
	RW =   170.388 deg,	RP =     2.584 deg,	RR =   -89.210 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -337.181  mm,	RY =  -511.796  mm,	RZ =   342.526  mm,
	RW =   170.388 deg,	RP =     2.583 deg,	RR =   -89.210 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   110.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -347.777  mm,	RY =  -520.349  mm,	RZ =   297.461  mm,
	RW =   173.108 deg,	RP =     -.290 deg,	RR =   -89.651 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    28.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -332.812  mm,	RY =  -509.607  mm,	RZ =   335.270  mm,
	RW =   173.109 deg,	RP =     -.290 deg,	RR =   -89.652 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -308.416  mm,	RY =  -543.986  mm,	RZ =   371.418  mm,
	RW =  -171.771 deg,	RP =     2.330 deg,	RR =   -94.499 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.226  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =  -380.189  mm,	RY =  -633.741  mm,	RZ =   577.266  mm,
	RW =  -171.771 deg,	RP =     2.331 deg,	RR =   -94.498 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.226  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -22.968  mm,	RY =  -726.007  mm,	RZ =   577.266  mm,
	RW =  -171.771 deg,	RP =     2.331 deg,	RR =   -94.498 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.226  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -22.970  mm,	RY =  -594.968  mm,	RZ =   577.267  mm,
	RW =   172.183 deg,	RP =    20.442 deg,	RR =   -95.295 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.226  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -22.971  mm,	RY =  -485.169  mm,	RZ =   421.262  mm,
	RW =   172.184 deg,	RP =    20.441 deg,	RR =   -95.295 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   116.226  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -72.377  mm,	RY =  -483.652  mm,	RZ =   292.924  mm,
	RW =   161.614 deg,	RP =    13.236 deg,	RR =   -73.605 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   115.952  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -91.566  mm,	RY =  -496.671  mm,	RZ =   290.269  mm,
	RW =   161.868 deg,	RP =    13.239 deg,	RR =   -73.605 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -69.923  mm,	RY =  -484.457  mm,	RZ =   293.398  mm,
	RW =   161.614 deg,	RP =    13.236 deg,	RR =   -73.605 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.100  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -53.420  mm,	RY =  -485.567  mm,	RZ =   289.877  mm,
	RW =   162.530 deg,	RP =    14.709 deg,	RR =   -76.733 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    14.900  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =   -37.518  mm,	RY =  -480.260  mm,	RZ =   285.756  mm,
	RW =   162.384 deg,	RP =    16.079 deg,	RR =   -77.145 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.600  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	RX =    -6.549  mm,	RY =  -477.437  mm,	RZ =   272.412  mm,
	RW =   173.701 deg,	RP =    15.822 deg,	RR =   -87.777 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    18.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 1, 0',
	RX =    32.507  mm,	RY =  -478.331  mm,	RZ =   251.534  mm,
	RW =  -178.653 deg,	RP =    15.484 deg,	RR =   -96.383 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    16.800  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 1, 0',
	RX =    35.762  mm,	RY =  -473.425  mm,	RZ =   577.021  mm,
	RW =  -179.336 deg,	RP =    14.838 deg,	RR =   -98.020 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 1, 0',
	RX =    35.754  mm,	RY =  -967.126  mm,	RZ =   577.034  mm,
	RW =  -179.336 deg,	RP =    14.838 deg,	RR =   -98.020 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 1, 0',
	RX =  1713.254  mm,	RY =  -138.388  mm,	RZ =  1388.117  mm,
	RW =   104.209 deg,	RP =   -24.453 deg,	RR =   -48.527 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    70.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'F U T, 0, 0, -1',
	RX =   328.300  mm,	RY = -1324.916  mm,	RZ =   274.479  mm,
	RW =    32.443 deg,	RP =   -29.061 deg,	RR =  -121.466 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
/END
