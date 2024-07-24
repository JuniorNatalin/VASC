/PROG  UP001
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Tomar de ST1520";
PROG_GRÖßE	= 5250;
ERSTELL		= TAG 96-03-17  ZEIT 19:31:46;
GEÄNDERT	= TAG 23-03-18  ZEIT 12:22:10;
DATEI_NAME	= UP001;
VERSION		= 0;
ZEILEN		= 24;
SPEICHERGR.	= 8778;
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
   1:  !Apagar Perfil Lib. 80 vs ST1520 ;
   2:  !Apagar Perfil Lib. 79 vs ST1520 ;
   3:  !Encender Anticol. 3 vs 1500R01 ;
   4:  !Encender Anticol. 5 vs 1520R01 ;
   5:  BENUTZER_NUM=0 ;
   6:  WKZ_NUM=1 ;
   7:  TRAGLST[1] ;
   8:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=(AUS) ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80]=AN ;
      8:  A[79]=AN ;
      9:  A[78]=AUS ;
     10:  A[77]=AUS ;
     11:  A[76]=AN ;
     12:  A[75]=AUS ;
     13:  A[74]=AUS ;
     14:  A[73]=AN ;
     15:  A[72]=AN ;
     16:  A[70]=AUS ;
     17:  A[69]=AUS ;
     18:  A[68]=AUS ;
     19:  A[67]=AUS ;
     20:  !Lib. de Anticolisiones ;
     21:  A[41]=AN ;
     22:  A[42]=AN ;
     23:  A[43]=AN ;
     24:  A[44]=AN ;
     25:  A[45]=AN ;
     26:  A[46]=AN ;
     27:  A[47]=AN ;
     28:  A[48]=AN ;
     29:  !Apagar Posicion Base ;
     30:  A[15]=AUS ;
     31:  !Roboter auf der Bahn ;
     32:  A[16]=AN ;
     33:  WARTE (!E[65] [&] E[66] [&] E[79] [&] E[80])    ;
     34:  A[80]=AUS ;
     35:  A[79]=AUS ;
     36:  !Encender Anticolisiones ;
     37:  A[83]=AN ;
     38:  A[85]=AN ;
     39:  AUFRUF MAKRO020    ;
     40:  WARTE (E[23])    ;
     41:  A[23]=AN ;
     42:  !Marca de Usuario Suma Anticol. ;
     43:  !M[10] = (DI[43] AND DI[45]) ;
     44:  !Marca de Usuario ST1520 C/Pieza ;
     45:  !M[11] = (!DI[65] AND DI[66]) ;
     46:  !Marca de Usuario Estado de Garra ;
     47:  !M[13] = (M[33] AND M[35] AND M[3 ;
     48:  FB-PSPS (E[79] [&] E[80] [&] M[2] [&] M[10] [&] M[11] [&] M[13] [&] M[30] [&] M[31] [&] M[39] [&] M[43]) ;
       ------ ;
   9:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[79] [&] E[80] [&] M[2] [&] M[10] [&] M[11] [&] M[13] [&] M[30] [&] M[31] [&] M[39] [&] M[43]) ;
       ------ ;
  10:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[79] [&] E[80] [&] M[2] [&] M[10] [&] M[11] [&] M[13] [&] M[30] [&] M[31] [&] M[39] [&] M[43]) ;
       ------ ;
  11:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[79] [&] E[80] [&] M[10] [&] M[11] [&] M[13] [&] M[30] [&] M[31] [&] M[39] [&] M[43]) ;
       ------ ;
  12:  !En Posicion ST1520 ;
  13:  !Tomar Pieza de ST1520 ;
  14:  !Fin de Trabajo 1 ;
  15:L P[5] 1500mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE (M[3])    ;
      4:  A[78]=(AN) ;
      5:  A[77]=(AN) ;
      6:  AUFRUF MAKRO001    ;
      7:  WARTE (E[78])    ;
      8:  A[78]=(AUS) ;
      9:  A[77]=(AUS) ;
     10:  F[5]=(AN) ;
     11:  F[7]=(AN) ;
     12:  AUFRUF MAKRO342    ;
     13:  AUFRUF MAKRO340    ;
     14:  WARTE (M[39] [&] M[43])    ;
     15:  F[1]=(AN) ;
     16:  AUFRUF MAKRO343    ;
     17:  WARTE (M[32])    ;
     18:  WARTE (E[23])    ;
     19:  A[23]=(AN) ;
     20:  FB-PSPS (E[78] [&] E[80] [&] M[3] [&] M[10] [&] M[13] [&] M[30] [&] M[32] [&] M[39] [&] M[43]) ;
       ------ ;
  16:  TRAGLST[2] ;
  17:L P[6] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  !Marca Usuario ST1520 S/Pieza ;
      2:  !M[12] = (DI[65] AND !DI[66]) ;
      3:  FB-PSPS (E[78] [&] E[80] [&] M[3] [&] M[10] [&] M[12] [&] M[13] [&] M[30] [&] M[32] [&] M[39] [&] M[43]) ;
       ------ ;
  18:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[78] [&] E[80] [&] M[3] [&] M[10] [&] M[12] [&] M[13] [&] M[30] [&] M[32] [&] M[39] [&] M[43]) ;
       ------ ;
  19:J P[8] 100% CNT100 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (E[78] [&] E[80] [&] M[3] [&] M[10] [&] M[12] [&] M[13] [&] M[30] [&] M[32] [&] M[39] [&] M[43]) ;
       ------ ;
  20:  !Encender Perfil Lib 80 vs ST1520 ;
  21:  !Encender Perfil Lib 79 vs ST1520 ;
  22:  !Apagar Anticol. 3 vs 1500R01 ;
  23:  !Apagar Anticol. 5 vs 1520R01 ;
  24:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[3]=STOPP ;
      4:  A[43]=AN ;
      5:  A[45]=AN ;
      6:  A[80]=AN ;
      7:  A[79]=AN ;
      8:  WARTE (E[23])    ;
      9:  A[23]=AN ;
     10:  FB-PSPS (M[3] [&] M[30] [&] M[32] [&] M[33] [&] M[35] [&] M[37] [&] M[39] [&] M[41] [&] M[43]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.679  mm,	Y =   564.245  mm,	Z =  2983.021  mm,
	W =  -122.362 deg,	P =   -18.830 deg,	R =    50.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1680.501  mm,	Y =   895.877  mm,	Z =   797.935  mm,
	W =   166.825 deg,	P =    85.884 deg,	R =    13.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1978.868  mm,	Y =   617.996  mm,	Z =   429.555  mm,
	W =   176.182 deg,	P =    89.084 deg,	R =    18.824 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1981.181  mm,	Y =   619.913  mm,	Z =  -117.589  mm,
	W =   176.147 deg,	P =    89.084 deg,	R =    18.822 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1981.108  mm,	Y =   620.048  mm,	Z =  -168.900  mm,
	W =   176.144 deg,	P =    89.084 deg,	R =    18.823 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1981.697  mm,	Y =   618.961  mm,	Z =   242.498  mm,
	W =   176.181 deg,	P =    89.084 deg,	R =    18.823 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1934.833  mm,	Y =  1208.630  mm,	Z =   610.410  mm,
	W =   153.000 deg,	P =    90.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1567.379  mm,	Y =  1118.198  mm,	Z =   793.853  mm,
	W =   166.825 deg,	P =    85.884 deg,	R =    13.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -63.679  mm,	Y =   564.245  mm,	Z =  2983.021  mm,
	W =  -122.362 deg,	P =   -18.830 deg,	R =    50.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
