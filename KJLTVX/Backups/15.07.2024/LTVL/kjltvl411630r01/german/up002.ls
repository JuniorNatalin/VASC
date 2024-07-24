/PROG  UP002
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Soldadura Est.";
PROG_GRÖßE	= 15414;
ERSTELL		= TAG 96-03-22  ZEIT 17:39:12;
GEÄNDERT	= TAG 23-11-09  ZEIT 10:27:50;
DATEI_NAME	= UP002;
VERSION		= 0;
ZEILEN		= 64;
SPEICHERGR.	= 28958;
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
   7:  !5QA803091_003_C_PS_0001 ;
   8:  !Punto de Sol. No. 5668 ;
   9:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5668,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  12:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  13:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  14:  !5QA803091_003_C_PS_0002 ;
  15:  !Punto de Sol. No. 5669 ;
  16:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5669,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  17:  !5QA803091_003_C_PS_0003 ;
  18:  !Punto de Sol. No. 5670 ;
  19:J P[10] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5670,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  20:  !5QA803091_003_C_PS_0013 ;
  21:  !Punto de Sol. No. 5675 ;
  22:J P[11] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5675,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  23:  !5QA803091_003_C_PS_0017 ;
  24:  !Punto de Sol. No. 5676 ;
  25:J P[12] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5676,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  26:  !5QA803091_003_C_PS_0022 ;
  27:  !Punto de Sol. No. 5679 ;
  28:J P[13] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5679,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  29:J P[14] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  30:J P[15] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  31:J P[16] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  32:J P[17] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  33:J P[18] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  34:J P[19] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  35:J P[20] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  36:J P[21] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (E[23])    ;
      4:  A[23]=AN ;
      5:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  37:J P[22] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  38:  !5QA803091_003_C_PS_0007 ;
  39:  !Punto de Sol. No. 5672 ;
  40:J P[23] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5672,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  41:  !5QA803091_003_C_PS_0018 ;
  42:  !Punto de Sol. No. 5677 ;
  43:J P[24] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5677,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  44:  !5QA803091_003_C_PS_0019 ;
  45:  !Punto de Sol. No. 5678 ;
  46:J P[25] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5678,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  47:  !5QA803091_003_C_PS_0010 ;
  48:  !Punto de Sol. No. 5674 ;
  49:J P[26] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5674,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  50:  !5QA803091_003_C_PS_0006 ;
  51:  !Punto de Sol. No. 5671 ;
  52:J P[27] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5671,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  53:J P[28] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  54:J P[29] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  55:J P[30] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  56:J P[31] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  57:J P[32] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  58:  !5QA803091_003_C_PS_0008 ;
  59:  !Punto de Sol. No. 5673 ;
  60:  !Fin de Trabajo 2 ;
  61:J P[33] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[11]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5673,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2]=i[197] ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WENN (!E[145] [&] !E[129]),AUFRUF MAKRO002 ;
      9:  WARTE (E[23])    ;
     10:  A[23]=AN ;
     11:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  62:J P[34] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  63:J P[35] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  64:J P[36] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
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
	RX =   638.799  mm,	RY =  -506.953  mm,	RZ =     -.309  mm,
	RW =    79.961 deg,	RP =    87.782 deg,	RR =   172.951 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   602.026  mm,	RY =  -454.273  mm,	RZ =    -3.441  mm,
	RW =   176.082 deg,	RP =     8.387 deg,	RR =   -92.975 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    61.300  mm
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
	RX =   613.747  mm,	RY =  -458.435  mm,	RZ =    -3.897  mm,
	RW =   176.215 deg,	RP =     8.405 deg,	RR =   -93.362 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   613.813  mm,	RY =  -457.296  mm,	RZ =   -32.274  mm,
	RW =   176.215 deg,	RP =     8.405 deg,	RR =   -93.362 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   656.137  mm,	RY =  -460.073  mm,	RZ =   -30.630  mm,
	RW =   176.215 deg,	RP =     8.405 deg,	RR =   -93.363 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   715.948  mm,	RY =  -460.071  mm,	RZ =   -32.792  mm,
	RW =   176.215 deg,	RP =     8.405 deg,	RR =   -93.363 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   687.975  mm,	RY =  -461.127  mm,	RZ =   -17.982  mm,
	RW =   176.216 deg,	RP =     8.405 deg,	RR =   -93.363 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   522.401  mm,	RY =  -409.657  mm,	RZ =   -36.400  mm,
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
	RX =   531.006  mm,	RY =  -405.149  mm,	RZ =   -38.501  mm,
	RW =   170.262 deg,	RP =     7.881 deg,	RR =    86.370 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    24.500  mm
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
	RX =   647.983  mm,	RY =  -411.895  mm,	RZ =   -41.266  mm,
	RW =   158.301 deg,	RP =     8.802 deg,	RR =    85.935 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   611.336  mm,	RY =  -407.015  mm,	RZ =   -27.487  mm,
	RW =   162.080 deg,	RP =     8.438 deg,	RR =    85.755 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   566.011  mm,	RY =  -406.769  mm,	RZ =   -45.516  mm,
	RW =   159.183 deg,	RP =     8.322 deg,	RR =    86.011 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    25.000  mm
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
	RX =   525.406  mm,	RY =  -402.252  mm,	RZ =   -13.483  mm,
	RW =   160.529 deg,	RP =     8.169 deg,	RR =    86.466 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    23.900  mm
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
	J1=   110.000  mm
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
	RX =   560.536  mm,	RY =  -349.224  mm,	RZ =     1.150  mm,
	RW =   -74.234 deg,	RP =    87.084 deg,	RR =   166.638 deg
   GP2:
	UF : 1, UT : 2,	
	J1=    24.800  mm
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
	J1=   110.000  mm
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
