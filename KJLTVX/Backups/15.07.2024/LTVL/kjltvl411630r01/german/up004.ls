/PROG  UP004
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Dejar en ST1640";
PROG_GRÖßE	= 5466;
ERSTELL		= TAG 17-04-03  ZEIT 10:20:36;
GEÄNDERT	= TAG 22-04-04  ZEIT 01:56:50;
DATEI_NAME	= UP003;
VERSION		= 0;
ZEILEN		= 23;
SPEICHERGR.	= 10094;
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
   1:  !Apagar Perfil Lib. 77 vs ST1640 ;
   2:  !Encender Anticol. 3 vs 1670R01 ;
   3:  BENUTZER_NUM=0 ;
   4:  WKZ_NUM=1 ;
   5:  TRAGLST[1] ;
   6:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
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
     20:  WARTE (!E[62] [&] E[61] [&] E[77] [&] M[1] [&] M[32] [&] M[33])    ;
     21:  A[77]=AUS ;
     22:  !Encender Anticolisiones ;
     23:  A[83]=AN ;
     24:  AUFRUF MAKRO020    ;
     25:  WARTE (E[23])    ;
     26:  A[23]=AN ;
     27:  FB-PSPS (E[43] [&] E[61] [&] !E[62] [&] E[77] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   7:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] E[61] [&] !E[62] [&] E[77] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   8:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] E[61] [&] !E[62] [&] E[77] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
   9:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] E[61] [&] !E[62] [&] E[77] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  10:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] E[61] [&] !E[62] [&] E[77] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  11:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] E[77] [&] M[1] [&] M[30] [&] M[32] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  12:  !En Posicion ST1640 ;
  13:  !Dejar Pieza en ST1640 ;
  14:  !Fin de Trabajo 4 ;
  15:L P[7] 1500mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  WARTE ((E[62] [&] !E[61]) [+] E[15])    ;
      4:  A[75]=AN ;
      5:  AUFRUF MAKRO004    ;
      6:  TIMER[14]=(TIMER[13]) ;
      7:  TIMER[14]=STOPP ;
      8:  TIMER[13]=RESET ;
      9:  TIMER[13]=START ;
     10:  WARTE (E[76])    ;
     11:  A[75]=AUS ;
     12:  F[1]=(AN) ;
     13:  AUFRUF MAKRO342    ;
     14:  AUFRUF MAKRO340    ;
     15:  WARTE (M[31])    ;
     16:  WARTE (E[23])    ;
     17:  A[23]=AN ;
     18:  FB-PSPS (E[43] [&] !E[61] [&] E[62] [&] E[76] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  16:  TRAGLST[1] ;
  17:L P[8] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] !E[61] [&] E[62] [&] E[76] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  18:J P[9] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] !E[61] [&] E[62] [&] E[76] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  19:J P[10] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[43] [&] !E[61] [&] E[62] [&] E[76] [&] M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  20:J P[11] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[43]=AN ;
      3:  A[77]=AN ;
      4:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
  21:  !Encender Perfil Lib 77 vs ST1640 ;
  22:  !Apagar Anticol. 3 vs 1670R01 ;
  23:J P[12] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23]=AUS ;
      3:  TIMER[6]=STOPP ;
      4:  WARTE (E[23])    ;
      5:  A[23]=AN ;
      6:  FB-PSPS (M[2] [&] M[30] [&] M[31] [&] M[33] [&] M[95] [&] M[96]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -464.787  mm,	Y =  -676.745  mm,	Z =  1035.419  mm,
	W =   142.550 deg,	P =    72.302 deg,	R =  -130.575 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =  -455.461  mm,	Y =  -359.288  mm,	Z =   860.844  mm,
	W =   130.748 deg,	P =    76.086 deg,	R =  -142.803 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =    70.276  mm,	Y =  -538.675  mm,	Z =   754.105  mm,
	W =   121.289 deg,	P =    77.472 deg,	R =   -87.607 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =   526.387  mm,	Y =   329.667  mm,	Z =   430.864  mm,
	W =   108.270 deg,	P =    89.028 deg,	R =   -68.623 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =   921.565  mm,	Y =  1531.320  mm,	Z =   207.973  mm,
	W =   -90.700 deg,	P =    89.698 deg,	R =    89.832 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =   921.564  mm,	Y =  1531.339  mm,	Z =   -73.306  mm,
	W =   -90.866 deg,	P =    89.712 deg,	R =    89.709 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =   921.566  mm,	Y =  1534.950  mm,	Z =  -123.322  mm,
	W =   -90.880 deg,	P =    89.712 deg,	R =    89.695 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =   921.565  mm,	Y =  1533.739  mm,	Z =   -73.306  mm,
	W =   -90.869 deg,	P =    89.712 deg,	R =    89.706 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
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
	X =   921.566  mm,	Y =  1531.320  mm,	Z =   207.973  mm,
	W =   -90.701 deg,	P =    89.698 deg,	R =    89.831 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   526.387  mm,	Y =   329.667  mm,	Z =   430.864  mm,
	W =   108.270 deg,	P =    89.028 deg,	R =   -68.623 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    70.276  mm,	Y =  -538.675  mm,	Z =   754.105  mm,
	W =   121.289 deg,	P =    77.472 deg,	R =   -87.607 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -464.787  mm,	Y =  -676.745  mm,	Z =  1035.419  mm,
	W =   142.550 deg,	P =    72.302 deg,	R =  -130.575 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
