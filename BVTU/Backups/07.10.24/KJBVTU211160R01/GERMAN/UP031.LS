/PROG  UP031
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Soldadura VW336";
PROG_GRÖßE	= 17108;
ERSTELL		= TAG 23-12-23  ZEIT 14:16:26;
GEÄNDERT	= TAG 24-06-29  ZEIT 16:41:48;
DATEI_NAME	= UP001;
VERSION		= 0;
ZEILEN		= 69;
SPEICHERGR.	= 34912;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000000 00000000;
/APPL
/MN
   1:  WKZ_NUM=1 ;
   2:  BENUTZER_NUM=1 ;
   3:  TRAGLST[1] ;
   4:  !Espera Lib. Soldar en ST1160 ;
   5:  !Apagar Perfil Libre vs ST1160 ;
   6:  !Encender Anticol. 1 zu R1150R01 ;
   7:  !Encender Anticol. 5 zu R1170R01 ;
   8:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  !Lib. de Anticolisiones ;
      9:  A[41]=AN ;
     10:  A[42]=AN ;
     11:  A[45]=AN ;
     12:  A[46]=AN ;
     13:  !Apagar Posicion Base ;
     14:  A[15]=AUS ;
     15:  !Robot en Trayectoria ;
     16:  A[16]=AN ;
     17:  !Espera Liberacion ;
     18:  WARTE (E[80])    ;
     19:  A[80]=AUS ;
     20:  !Solicitar Anticolisiones ;
     21:  A[81]=AN ;
     22:  A[85]=AN ;
     23:  AUFRUF MAKRO020    ;
     24:  WARTE (E[23])    ;
     25:  A[23]=AN ;
     26:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  12:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  16:  !5qa803296_007_gps0018_X ;
  17:  !Punto de Sol. No. 13003 ;
  18:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13003,Fzg_Typ=8,EIN/AUS=AN) ;
      5:  gA[2]=(i[197]-10) ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  21:J P[12] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  22:J P[13] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  23:J P[14] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  24:J P[15] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  25:J P[16] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  26:  !5qa803296_010_kps0005_X ;
  27:  !Punto de Sol. No. 13004 ;
  28:J P[17] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13004,Fzg_Typ=8,EIN/AUS=AN) ;
      5:  gA[2]=(i[197]-12) ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  29:J P[18] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  30:J P[19] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  31:J P[20] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  32:J P[21] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  33:J P[22] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  34:J P[23] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  35:  !5qa803296_007_gps0024_X ;
  36:  !Punto de Sol. No. 13005 ;
  37:J P[24] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13005,Fzg_Typ=8,EIN/AUS=AN) ;
      5:  gA[2]=(i[197]-14) ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  38:J P[25] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  39:J P[26] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  40:J P[27] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  41:J P[28] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  42:J P[29] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  43:  !5qa803296_007_gps0001_X ;
  44:  !Punto de Sol. No. 13006 ;
  45:J P[30] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13006,Fzg_Typ=8,EIN/AUS=AN) ;
      5:  gA[2]=(i[197]-13) ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  46:J P[31] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  47:J P[32] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  48:J P[33] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  49:J P[34] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  50:J P[35] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  51:J P[36] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  52:J P[37] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  53:J P[38] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  54:  !5qa803296_010_kps0006_X ;
  55:  !Fin de Trabajo 1 ;
  56:  !Punto de Sol. No. 13007 ;
  57:J P[39] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (!E[16] [&] E[23])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=13007,Fzg_Typ=8,EIN/AUS=AN) ;
      5:  gA[2]=(i[197]+5) ;
      6:  WARTE (!E[129] [+] E[26])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WENN (!E[145] [&] !E[129]),AUFRUF MAKRO001 ;
      9:  WARTE (E[23])    ;
     10:  A[23]=AN ;
     11:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
     12:   ;
       ------ ;
  58:J P[40] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  59:J P[41] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  60:J P[42] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  61:J P[43] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] E[45] [&] E[80] [&] M[30] [&] M[95]) ;
       ------ ;
  62:   ;
  63:  !Encender Perfil Libre vs ST1160 ;
  64:  !Apagar Anticol. 5 vs R1170R01 ;
  65:J P[44] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[80]=AN ;
      3:  A[45]=AN ;
      4:  FB-PSPS (E[41] [&] M[30] [&] M[95]) ;
       ------ ;
  66:J P[45] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] M[30] [&] M[95]) ;
       ------ ;
  67:J P[46] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41] [&] M[30] [&] M[95]) ;
       ------ ;
  68:  !Apagar Anticol. 1 vs R1150R01 ;
  69:J P[47] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[3]=STOPP ;
      4:  A[41]=AN ;
      5:  WARTE (E[23])    ;
      6:  A[23]=AN ;
      7:  FB-PSPS (M[30] [&] M[95]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  3363.532  mm,	Y =   387.904  mm,	Z =   626.618  mm,
	W =    -3.105 deg,	P =    11.500 deg,	R =   -97.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'F U T, 0, 0, 0',
	X =  2592.526  mm,	Y =   596.963  mm,	Z =   -61.400  mm,
	W =    18.436 deg,	P =     -.666 deg,	R =   -77.116 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1316.833  mm,	Y =   593.153  mm,	Z =  -483.632  mm,
	W =    22.239 deg,	P =    54.421 deg,	R =  -134.352 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   170.592  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   890.281  mm,	Y =   680.009  mm,	Z =  -640.356  mm,
	W =    67.860 deg,	P =    31.265 deg,	R =  -114.887 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   455.416  mm,	Y =  -259.506  mm,	Z =  -982.556  mm,
	W =   130.832 deg,	P =   -72.561 deg,	R =  -160.455 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   573.486  mm,	Y =  -316.637  mm,	Z =  -407.561  mm,
	W =  -120.304 deg,	P =   -90.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   573.380  mm,	Y =  -316.617  mm,	Z =  -117.540  mm,
	W =   -27.000 deg,	P =   -85.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   514.680  mm,	Y =  -222.687  mm,	Z =   -45.919  mm,
	W =   -32.294 deg,	P =   -84.999 deg,	R =     -.001 deg
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
P[9]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   499.763  mm,	Y =  -210.950  mm,	Z =    -3.331  mm,
	W =   -32.295 deg,	P =   -84.999 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   514.680  mm,	Y =  -222.687  mm,	Z =   -45.919  mm,
	W =   -32.294 deg,	P =   -84.999 deg,	R =     -.001 deg
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
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   573.384  mm,	Y =  -316.616  mm,	Z =  -117.540  mm,
	W =   -27.000 deg,	P =   -85.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   573.482  mm,	Y =  -316.637  mm,	Z =  -407.561  mm,
	W =     0.000 deg,	P =   -86.243 deg,	R =   -30.304 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   455.403  mm,	Y =  -259.517  mm,	Z =  -982.549  mm,
	W =   130.830 deg,	P =   -72.560 deg,	R =  -160.453 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   -39.049  mm,	Y =  -410.925  mm,	Z =  -933.376  mm,
	W =    71.802 deg,	P =   -79.840 deg,	R =   -88.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1370.765  mm,	Y =   -71.818  mm,	Z =  -192.602  mm,
	W =      .744 deg,	P =    -7.621 deg,	R =   -89.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1386.238  mm,	Y =   -63.894  mm,	Z =    64.350  mm,
	W =    -1.398 deg,	P =    -6.969 deg,	R =   -89.560 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1384.928  mm,	Y =   -75.894  mm,	Z =   131.776  mm,
	W =    -1.405 deg,	P =    -8.927 deg,	R =   -89.512 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.800  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1386.238  mm,	Y =   -63.894  mm,	Z =    64.350  mm,
	W =    -1.398 deg,	P =    -6.969 deg,	R =   -89.560 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1370.885  mm,	Y =   -65.358  mm,	Z =   -68.355  mm,
	W =     -.329 deg,	P =    -7.450 deg,	R =   -89.621 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   761.638  mm,	Y =  -255.941  mm,	Z =  -171.365  mm,
	W =    22.022 deg,	P =    -1.489 deg,	R =   -87.943 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   692.317  mm,	Y =  -184.897  mm,	Z =  -291.048  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.839 deg
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
P[22]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   623.282  mm,	Y =  -130.241  mm,	Z =  -105.176  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.839 deg
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
P[23]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   472.962  mm,	Y =   -93.591  mm,	Z =    20.443  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.840 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   473.603  mm,	Y =  -135.562  mm,	Z =    33.874  mm,
	W =    48.909 deg,	P =   -16.440 deg,	R =   -89.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.500  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   472.962  mm,	Y =   -93.591  mm,	Z =    20.443  mm,
	W =    48.914 deg,	P =   -16.441 deg,	R =   -89.840 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   476.749  mm,	Y =   -91.095  mm,	Z =   -77.852  mm,
	W =    45.978 deg,	P =   -26.190 deg,	R =   -76.964 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   421.065  mm,	Y =   -96.618  mm,	Z =   -14.214  mm,
	W =    50.884 deg,	P =   -21.831 deg,	R =   -81.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   298.187  mm,	Y =   -65.244  mm,	Z =    68.211  mm,
	W =    50.884 deg,	P =   -21.831 deg,	R =   -81.334 deg
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
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   305.719  mm,	Y =  -114.629  mm,	Z =    88.221  mm,
	W =    50.884 deg,	P =   -21.832 deg,	R =   -81.334 deg
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
P[30]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   275.177  mm,	Y =  -111.690  mm,	Z =   106.542  mm,
	W =    50.882 deg,	P =   -21.830 deg,	R =   -81.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     9.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   305.719  mm,	Y =  -114.629  mm,	Z =    88.221  mm,
	W =    50.884 deg,	P =   -21.832 deg,	R =   -81.334 deg
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
P[32]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   298.188  mm,	Y =   -65.244  mm,	Z =    68.211  mm,
	W =    50.884 deg,	P =   -21.831 deg,	R =   -81.334 deg
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
P[33]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   477.795  mm,	Y =   -75.036  mm,	Z =   -35.175  mm,
	W =    48.320 deg,	P =   -20.319 deg,	R =   -82.883 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   490.735  mm,	Y =  -119.743  mm,	Z =   -23.401  mm,
	W =    49.197 deg,	P =   -20.452 deg,	R =   -83.696 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =   776.569  mm,	Y =   303.266  mm,	Z =  -694.631  mm,
	W =    63.378 deg,	P =   -20.304 deg,	R =   -96.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1100.702  mm,	Y =     3.444  mm,	Z =  -249.669  mm,
	W =    -3.559 deg,	P =    -6.395 deg,	R =    93.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1357.749  mm,	Y =    49.687  mm,	Z =  -110.301  mm,
	W =     8.793 deg,	P =    -7.052 deg,	R =    90.553 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1388.271  mm,	Y =    63.127  mm,	Z =    75.704  mm,
	W =    10.504 deg,	P =    -7.095 deg,	R =    89.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1384.613  mm,	Y =    76.798  mm,	Z =   127.829  mm,
	W =    10.581 deg,	P =    -9.698 deg,	R =    89.144 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1388.331  mm,	Y =    72.416  mm,	Z =    76.860  mm,
	W =    10.504 deg,	P =    -7.095 deg,	R =    89.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1377.245  mm,	Y =    49.863  mm,	Z =    23.220  mm,
	W =     8.845 deg,	P =    -7.049 deg,	R =    90.514 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1355.307  mm,	Y =    25.937  mm,	Z =  -131.480  mm,
	W =     5.469 deg,	P =    -6.932 deg,	R =    92.315 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 1, 0',
	X =  1103.016  mm,	Y =   507.243  mm,	Z =  -817.712  mm,
	W =   -55.958 deg,	P =    21.985 deg,	R =    99.093 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   250.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =   840.887  mm,	Y =   761.739  mm,	Z =  -754.156  mm,
	W =   -53.810 deg,	P =    49.359 deg,	R =   120.167 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   185.648  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  1900.029  mm,	Y =  1457.002  mm,	Z =  -498.817  mm,
	W =    36.812 deg,	P =    30.053 deg,	R =  -148.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   237.766  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  2620.511  mm,	Y =  1502.808  mm,	Z =  -122.942  mm,
	W =    27.072 deg,	P =    -4.323 deg,	R =  -127.072 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   269.758  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'F U T, 0, 1, 0',
	X =  3363.532  mm,	Y =   387.904  mm,	Z =   626.618  mm,
	W =    -3.105 deg,	P =    11.500 deg,	R =   -97.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   300.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
/END
