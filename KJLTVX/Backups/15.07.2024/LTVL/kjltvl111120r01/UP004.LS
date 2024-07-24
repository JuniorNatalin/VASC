/PROG  UP004
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Depositar ST1125";
PROG_GRÖßE	= 4074;
ERSTELL		= TAG 96-06-10  ZEIT 20:14:12;
GEÄNDERT	= TAG 23-01-22  ZEIT 07:44:26;
DATEI_NAME	= UP004;
VERSION		= 0;
ZEILEN		= 17;
SPEICHERGR.	= 7234;
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
   1:  BENUTZER_NUM=0 ;
   2:  WKZ_NUM=2 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[6]=RESET ;
      4:  TIMER[6]=START ;
      5:  AUFRUF MAKRO050    ;
      6:  !Lib. de Herramientas ;
      7:  A[80:PL>Cortina Seg.]=AN ;
      8:  A[79:PL>1120 Herramienta]=AN ;
      9:  A[78:Ctrl.1120 Cil.]=AUS ;
     10:  A[77:Pos.Tomar 1120]=AUS ;
     11:  A[76:PL>1125 Depósito]=AN ;
     12:  A[74:Pos.Dejar 1125]=AUS ;
     13:  A[57:Lib. 24 PLS Libre]=AN ;
     14:  !Lib. de Anticolisiones ;
     15:  A[41:Blq>1130R01(1)]=AN ;
     16:  A[42:Blq>1130R01(2)]=AN ;
     17:  !Apagar Posicion Base ;
     18:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     19:  !Robot en Trayectoria ;
     20:  A[16:SAK Robot (En camino)]=AN ;
     21:  WARTE (M[1:Garra Llena] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] E[76:1125 Ent.c/Pza.] [&] !E[62:1125 Llena KT] [&] E[61:1125 Vacía /KT])    ;
     22:  A[76:PL>1125 Depósito]=AUS ;
     23:  !Encendier Anticolisiones ;
     24:  A[81:Sol>1130R01(1)]=AN ;
     25:  AUFRUF MAKRO020    ;
     26:  WARTE (E[23:Sin Sol.Acceso])    ;
     27:  A[23:Bloquear Rejas de Seg.]=AN ;
     28:  FB-PSPS (E[41:Lib>1130R01(1)] [&] E[61:1125 Vacía /KT] [&] !E[62:1125 Llena KT] [&] E[76:1125 Ent.c/Pza.] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41:Lib>1130R01(1)] [&] E[61:1125 Vacía /KT] [&] !E[62:1125 Llena KT] [&] E[76:1125 Ent.c/Pza.] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41:Lib>1130R01(1)] [&] E[76:1125 Ent.c/Pza.] [&] M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] 
       :  M[103:KS2 En Reposo]) ;
       ------ ;
   7:  !En Pos. Deposito ST1125 ;
   8:  !Fin de Trabajo 4 ;
   9:  !Deposito en ST1125 ;
  10:L P[4] 2000mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE ((E[62:1125 Llena KT] [&] !E[61:1125 Vacía /KT]) [+] E[15:Prueba de funcionamiento])    ;
      4:  F[1:Selecc.Gpo.  1]=(AN) ;
      5:  AUFRUF MAKRO342    ;
      6:  AUFRUF MAKRO340    ;
      7:  WARTE (M[31:Gpo.Suj. 1 Abierto])    ;
      8:  A[74:Pos.Dejar 1125]=AN ;
      9:  AUFRUF MAKRO004    ;
     10:  WARTE (E[75:1125 Sal.s/Pza.])    ;
     11:  A[74:Pos.Dejar 1125]=AUS ;
     12:  WARTE (E[23:Sin Sol.Acceso])    ;
     13:  A[23:Bloquear Rejas de Seg.]=AN ;
     14:  FB-PSPS (E[41:Lib>1130R01(1)] [&] !E[61:1125 Vacía /KT] [&] E[62:1125 Llena KT] [&] E[75:1125 Sal.s/Pza.] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] 
       :  M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  11:  TRAGLST[2] ;
  12:L P[5] 2000mm/sek CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41:Lib>1130R01(1)] [&] !E[61:1125 Vacía /KT] [&] E[62:1125 Llena KT] [&] E[75:1125 Sal.s/Pza.] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  13:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[41:Lib>1130R01(1)] [&] !E[61:1125 Vacía /KT] [&] E[62:1125 Llena KT] [&] E[75:1125 Sal.s/Pza.] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] 
       :  M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  14:  !Encender Perfil Libre vs ST1320 ;
  15:  !Apagar Anticol. 1 vs 1130R01 ;
  16:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[41:Blq>1130R01(1)]=AN ;
      3:  A[76:PL>1125 Depósito]=AN ;
      4:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  17:J P[8] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[6]=STOPP ;
      4:  WARTE (E[23:Sin Sol.Acceso])    ;
      5:  A[23:Bloquear Rejas de Seg.]=AN ;
      6:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1526.015  mm,	Y =  1261.103  mm,	Z =  1804.779  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =   989.950  mm,	Y =  3350.556  mm,	Z =     2.799  mm,
	W =  -179.947 deg,	P =     -.913 deg,	R =    45.134 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   102.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =   987.259  mm,	Y =  3349.092  mm,	Z =  -452.963  mm,
	W =   179.918 deg,	P =    -1.459 deg,	R =    45.199 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   103.500  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =   987.259  mm,	Y =  3349.093  mm,	Z =  -544.301  mm,
	W =   179.918 deg,	P =    -1.458 deg,	R =    45.199 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   103.500  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =   933.049  mm,	Y =  3294.503  mm,	Z =  -548.728  mm,
	W =   179.918 deg,	P =    -1.459 deg,	R =    45.199 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.200  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   103.500  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =   838.140  mm,	Y =  3198.031  mm,	Z =  -548.734  mm,
	W =  -179.947 deg,	P =     -.913 deg,	R =    45.134 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.100  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   102.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1586.079  mm,	Y =  2243.980  mm,	Z =  1260.977  mm,
	W =  -152.152 deg,	P =   -10.121 deg,	R =    -6.231 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.035  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.702  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 2,		KONFIG : 'N U T, 0, 0, 0',
	X =  1526.015  mm,	Y =  1261.103  mm,	Z =  1804.779  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 2,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 2,	
	J1=     0.000  mm
};
/END
