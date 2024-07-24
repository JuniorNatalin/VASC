/PROG  UP022
/ATTR
EIGN.		= GME;
KOMMENTAR	= "Soldadura Est.";
PROG_GRÖßE	= 15630;
ERSTELL		= TAG 96-03-22  ZEIT 17:39:12;
GEÄNDERT	= TAG 24-02-17  ZEIT 13:17:12;
DATEI_NAME	= UP022;
VERSION		= 0;
ZEILEN		= 79;
SPEICHERGR.	= 29114;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000001 00000000;
/APPL
/MN
   1:  BENUTZER_NUM=1 ;
   2:  WKZ_NUM=2 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[4]=RESET ;
      4:  TIMER[4]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  A[78]=AUS ;
      9:  A[77]=AN ;
     10:  A[75]=AUS ;
     11:  !Lib. de Anticolisiones ;
     12:  A[41]=AN ;
     13:  A[42]=AN ;
     14:  A[43]=AN ;
     15:  A[44]=AN ;
     16:  !Apagar Pos. Base ;
     17:  A[15]=AUS ;
     18:  !Robot en Trayectoria ;
     19:  A[16]=AN ;
     20:  !Basculante 1 en Pos. de Reposo ;
     21:  WENN (!E[842] [&] A[12]),AUFRUF MAKRO072 ;
     22:  WARTE (M[96])    ;
     23:  WARTE (E[23])    ;
     24:  A[23]=AN ;
     25:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:   ;
   8:  !5qa803091b_p0007_g0210002900_L ;
   9:  !Punto de Sol. No. 10144 ;
  10:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10144,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  11:   ;
  12:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  16:   ;
  17:  !5qa803091b_p0007_g0210003000_L ;
  18:  !Punto de Sol. No. 10145 ;
  19:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10145,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  20:   ;
  21:  !5qa803091b_p0007_g0210003100_L ;
  22:  !Punto de Sol. No. 10146 ;
  23:J P[10] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10146,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  24:   ;
  25:  !5qa803091b_p0007_g0210004100_L ;
  26:  !Punto de Sol. No. 10147 ;
  27:J P[11] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10147,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  28:  !5qa803091b_p0007_g0210004500_L ;
  29:  !Punto de Sol. No. 10148 ;
  30:J P[12] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10148,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  31:   ;
  32:  !5qa803091b_p0007_g0210005000_L ;
  33:  !Punto de Sol. No. 10149 ;
  34:J P[13] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10149,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  35:   ;
  36:J P[14] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  37:J P[15] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  38:J P[16] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  39:J P[17] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  40:J P[18] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  41:J P[19] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  42:J P[20] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  43:J P[21] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  44:J P[22] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  45:   ;
  46:  !5qa803091b_p0007_g0210003500_L ;
  47:  !Punto de Sol. No. 10151 ;
  48:J P[23] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10151,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  49:   ;
  50:  !5qa803091b_p0007_g0210004600_L ;
  51:  !Punto de Sol. No. 10155 ;
  52:J P[24] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10155,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  53:   ;
  54:  !5qa803091b_p0007_g0210004700_L ;
  55:  !Punto de Sol. No. 10154 ;
  56:J P[25] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10154,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  57:   ;
  58:  !5qa803091b_p0007_g0210003800_L ;
  59:  !Punto de Sol. No. 10153 ;
  60:J P[26] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10153,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  61:   ;
  62:  !5qa803091b_p0007_g0210003400_L ;
  63:  !Punto de Sol. No. 10152 ;
  64:J P[27] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10152,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  65:   ;
  66:J P[28] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  67:J P[29] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  68:J P[30] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  69:J P[31] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  70:J P[32] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  71:   ;
  72:  !5qa803091b_p0007_g0210003600_L ;
  73:  !Punto de Sol. No. 10150 ;
  74:  !Fin de Trabajo 2 ;
  75:J P[33] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=10150,Fzg_Typ=7,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WENN (!E[145] [&] !E[129]),AUFRUF MAKRO002 ;
      9:  WARTE (E[23])    ;
     10:  A[23]=AN ;
     11:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  76:   ;
  77:J P[34] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  78:J P[35] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  79:J P[36] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[4]=STOPP ;
      4:  WARTE (E[23])    ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  A[23]=AN ;
      7:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =    96.133  mm,	RY =   710.305  mm,	RZ =  -974.871  mm,
	RW =    24.764 deg,	RP =    43.648 deg,	RR =   155.567 deg
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
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =  1041.991  mm,	RY =  -802.863  mm,	RZ =  -334.129  mm,
	RW =    86.975 deg,	RP =    87.630 deg,	RR =  -165.025 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   527.454  mm,	RY =  -583.990  mm,	RZ =    13.846  mm,
	RW =    87.000 deg,	RP =    87.629 deg,	RR =   180.000 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   608.665  mm,	RY =  -506.840  mm,	RZ =      .683  mm,
	RW =    76.584 deg,	RP =    87.826 deg,	RR =   169.572 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    33.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   648.618  mm,	RY =  -583.991  mm,	RZ =    13.851  mm,
	RW =    86.992 deg,	RP =    87.629 deg,	RR =   179.992 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   612.651  mm,	RY =  -546.971  mm,	RZ =    82.432  mm,
	RW =   167.251 deg,	RP =    29.904 deg,	RR =   -94.504 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   623.228  mm,	RY =  -443.679  mm,	RZ =    75.822  mm,
	RW =   168.953 deg,	RP =     7.963 deg,	RR =   -93.941 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    80.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   601.769  mm,	RY =  -459.554  mm,	RZ =    -3.446  mm,
	RW =   176.615 deg,	RP =     8.413 deg,	RR =   -92.849 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    79.950  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   608.274  mm,	RY =  -460.308  mm,	RZ =      .459  mm,
	RW =   176.433 deg,	RP =     8.429 deg,	RR =   -94.013 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    32.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   607.250  mm,	RY =  -455.761  mm,	RZ =   -32.686  mm,
	RW =   176.526 deg,	RP =     8.757 deg,	RR =   -93.448 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    33.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   656.206  mm,	RY =  -457.399  mm,	RZ =   -32.156  mm,
	RW =   176.522 deg,	RP =     6.571 deg,	RR =   -92.221 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    33.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   717.709  mm,	RY =  -461.802  mm,	RZ =   -28.856  mm,
	RW =   176.793 deg,	RP =     8.498 deg,	RR =   -90.794 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    33.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   695.107  mm,	RY =  -458.997  mm,	RZ =   -21.285  mm,
	RW =   176.667 deg,	RP =     9.404 deg,	RR =   -90.793 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    33.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   609.395  mm,	RY =  -443.680  mm,	RZ =    75.824  mm,
	RW =   168.953 deg,	RP =     7.963 deg,	RR =   -93.941 deg
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
P[15]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   334.899  mm,	RY = -1066.744  mm,	RZ =   842.653  mm,
	RW =  -169.143 deg,	RP =   -11.279 deg,	RR =  -114.565 deg
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
P[16]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =   -52.136  mm,	RY = -1238.678  mm,	RZ =  1242.359  mm,
	RW =  -172.155 deg,	RP =   -10.753 deg,	RR =  -126.771 deg
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
P[17]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 1',
	RX =  1250.781  mm,	RY = -1225.714  mm,	RZ =  1064.868  mm,
	RW =   173.993 deg,	RP =    -4.687 deg,	RR =   -65.899 deg
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
P[18]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =  1749.384  mm,	RY =  -620.268  mm,	RZ =   946.537  mm,
	RW =   165.819 deg,	RP =     -.897 deg,	RR =   -31.500 deg
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
P[19]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =  1654.572  mm,	RY =   498.808  mm,	RZ =   921.800  mm,
	RW =   165.819 deg,	RP =     -.897 deg,	RR =    18.500 deg
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
P[20]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   579.242  mm,	RY =   -86.169  mm,	RZ =    72.828  mm,
	RW =   167.364 deg,	RP =     5.490 deg,	RR =    86.676 deg
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
P[21]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   520.693  mm,	RY =  -411.452  mm,	RZ =    40.790  mm,
	RW =   170.262 deg,	RP =     7.881 deg,	RR =    86.371 deg
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
P[22]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   522.401  mm,	RY =  -411.455  mm,	RZ =     2.046  mm,
	RW =   170.262 deg,	RP =     7.881 deg,	RR =    86.370 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    99.534  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   530.581  mm,	RY =  -399.278  mm,	RZ =    -5.525  mm,
	RW =   170.450 deg,	RP =     5.570 deg,	RR =    87.797 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    32.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   642.087  mm,	RY =  -410.166  mm,	RZ =   -43.238  mm,
	RW =   153.618 deg,	RP =     8.005 deg,	RR =    87.066 deg
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
P[25]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   606.339  mm,	RY =  -404.814  mm,	RZ =   -31.237  mm,
	RW =   153.420 deg,	RP =     6.114 deg,	RR =    86.428 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    29.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   574.024  mm,	RY =  -406.990  mm,	RZ =   -44.849  mm,
	RW =   153.581 deg,	RP =     7.262 deg,	RR =    86.997 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    33.400  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   535.174  mm,	RY =  -405.976  mm,	RZ =   -39.656  mm,
	RW =   164.973 deg,	RP =     5.885 deg,	RR =    88.483 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    38.600  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   525.366  mm,	RY =  -407.316  mm,	RZ =    -5.750  mm,
	RW =   164.646 deg,	RP =     7.424 deg,	RR =    85.982 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   101.440  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   539.095  mm,	RY =  -403.986  mm,	RZ =    42.786  mm,
	RW =   161.855 deg,	RP =     7.410 deg,	RR =    85.533 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    74.800  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   538.083  mm,	RY =    25.641  mm,	RZ =   -23.750  mm,
	RW =   161.671 deg,	RP =     7.370 deg,	RR =    85.649 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    75.903  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   372.943  mm,	RY =   484.361  mm,	RZ =   459.721  mm,
	RW =   177.271 deg,	RP =    -7.778 deg,	RR =    77.772 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    75.903  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   559.376  mm,	RY =  -255.039  mm,	RZ =    12.117  mm,
	RW =   -26.875 deg,	RP =    86.191 deg,	RR =  -145.850 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   560.374  mm,	RY =  -344.945  mm,	RZ =      .119  mm,
	RW =   -95.448 deg,	RP =    86.900 deg,	RR =   145.358 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    32.700  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =   559.376  mm,	RY =  -255.039  mm,	RZ =    12.117  mm,
	RW =   -26.875 deg,	RP =    86.191 deg,	RR =  -145.850 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.500  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =  1213.536  mm,	RY =  -525.465  mm,	RZ =  -686.554  mm,
	RW =   123.044 deg,	RP =    74.391 deg,	RR =   -76.284 deg
   GP2:
	UF : 1, UT : 2,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 2,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 2,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	RX =    96.133  mm,	RY =   710.305  mm,	RZ =  -974.871  mm,
	RW =    24.764 deg,	RP =    43.648 deg,	RR =   155.567 deg
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
