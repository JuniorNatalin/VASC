/PROG  UP207
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Prueba TCP SP2";
PROG_GRÖßE	= 3760;
ERSTELL		= TAG 16-10-11  ZEIT 00:16:50;
GEÄNDERT	= TAG 17-02-10  ZEIT 17:45:04;
DATEI_NAME	= UP210;
VERSION		= 0;
ZEILEN		= 16;
SPEICHERGR.	= 7368;
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
   1:  WKZ_NUM=24 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  AUFRUF MAKRO050    ;
      4:  WARTE (A[11:Manual/A Pasos])    ;
      5:  WARTE (E[23:Sin Sol.Acceso])    ;
      6:  A[23:Bloquear Rejas de Seg.]=AN ;
      7:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   7:J P[4] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   8:  !Posicion Prueba TCP ;
   9:  !SP2 ;
  10:  !X=2406.821 Y=1486.825 Z=480.313 ;
  11:  !W=-88.833 P=57.031 R=31.000 ;
  12:L P[5] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[17:Conf.Mantenim.])    ;
      4:  WARTE (E[23:Sin Sol.Acceso])    ;
      5:  A[23:Bloquear Rejas de Seg.]=AN ;
      6:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  13:L P[6] 400mm/sek CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  14:J P[7] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  15:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  16:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (A[11:Manual/A Pasos] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   706.246  mm,	Y =  1223.254  mm,	Z =  1744.113  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =  1574.893  mm,	Y =  1533.613  mm,	Z =  1271.537  mm,
	W =  -140.657 deg,	P =    41.606 deg,	R =    -8.844 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =  2236.628  mm,	Y =  1319.156  mm,	Z =   834.708  mm,
	W =   -90.373 deg,	P =    57.055 deg,	R =    28.869 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =  2414.779  mm,	Y =  1462.496  mm,	Z =   487.775  mm,
	W =   -90.373 deg,	P =    57.055 deg,	R =    28.869 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =  2406.821  mm,	Y =  1486.825  mm,	Z =   480.313  mm,
	W =   -88.833 deg,	P =    57.031 deg,	R =    31.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =  2414.779  mm,	Y =  1462.496  mm,	Z =   487.775  mm,
	W =   -90.373 deg,	P =    57.055 deg,	R =    28.869 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =  2236.628  mm,	Y =  1319.156  mm,	Z =   834.708  mm,
	W =   -90.373 deg,	P =    57.055 deg,	R =    28.869 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =  1574.893  mm,	Y =  1533.613  mm,	Z =  1271.537  mm,
	W =  -140.657 deg,	P =    41.606 deg,	R =    -8.844 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 24,		KONFIG : 'N U T, 0, 0, 0',
	X =   706.246  mm,	Y =  1223.254  mm,	Z =  1744.113  mm,
	W =  -135.000 deg,	P =     0.000 deg,	R =   -30.000 deg
   GP2:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 24,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 24,	
	J1=     0.000  mm
};
/END
