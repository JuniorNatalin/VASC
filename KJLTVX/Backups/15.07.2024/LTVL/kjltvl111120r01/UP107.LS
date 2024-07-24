/PROG  UP107
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Calibracion SP2.";
PROG_GRÖßE	= 2466;
ERSTELL		= TAG 96-03-15  ZEIT 09:24:00;
GEÄNDERT	= TAG 17-02-10  ZEIT 17:44:58;
DATEI_NAME	= UP101;
VERSION		= 0;
ZEILEN		= 8;
SPEICHERGR.	= 3770;
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
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:  !F[293] - Calibracion Fuerza ;
   5:  !F[294] - Calibracion Corriente ;
   6:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  AUFRUF MAKRO050    ;
      4:  !Lib. de Herramientas ;
      5:  A[80:PL>Cortina Seg.]=AN ;
      6:  A[79:PL>1120 Herramienta]=AN ;
      7:  A[78:Ctrl.1120 Cil.]=AUS ;
      8:  A[77:Pos.Tomar 1120]=AUS ;
      9:  A[76:PL>1125 Depósito]=AN ;
     10:  A[74:Pos.Dejar 1125]=AUS ;
     11:  !Lib. de Anticolisiones ;
     12:  A[41:Blq>1130R01(1)]=AN ;
     13:  A[42:Blq>1130R01(2)]=AN ;
     14:  !Apagar Pos. Base ;
     15:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     16:  !Robot en Trayectoria ;
     17:  A[16:SAK Robot (En camino)]=AN ;
     18:  WENN (!E[865:SZ2 Preparado] [&] !E[874:SZ2 Referenciada (Pinza)]),AUFRUF MAKRO116 ;
     19:  WARTE (F[293:SZ Calib.Fuerza] [+] F[294:SZ Calib.Corriente])    ;
     20:  WARTE (E[23:Sin Sol.Acceso])    ;
     21:  A[23:Bloquear Rejas de Seg.]=AN ;
     22:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   7:J P[2] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  !Calibracion de Fuerza ;
      3:  gA[2:SP1 Compensación]=(0) ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=1, , ,S-Punkt=1, ,EIN/AUS=F[293:SZ Calib.Fuerza]) ;
      5:  WARTE (E[3986:ZF Dummy 1 ON] [+] F[294:SZ Calib.Corriente])    ;
      6:  A[875:SZ2 Lib. Posicionar]=(F[293:SZ Calib.Fuerza]) ;
      7:  A[878:SZ2 Cerrar Pinza]=(F[293:SZ Calib.Fuerza]) ;
      8:  TIMER[10]=((-3)) ;
      9:  WARTE (F[294:SZ Calib.Corriente] [+] (TIMER[10]>=0))    ;
     10:  A[878:SZ2 Cerrar Pinza]=AUS ;
     11:  A[877:SZ2 Abrir Pinza]=AN ;
     12:  WARTE (E[717:SZ1 Pinza abierta] [&] !E[718:SZ1 Fuerza alcanzada] [&] E[719:SZ1 Compensación Home])    ;
     13:  A[877:SZ2 Abrir Pinza]=AUS ;
     14:  A[875:SZ2 Lib. Posicionar]=AUS ;
     15:  WARTE (E[3986:ZF Dummy 1 ON] [+] F[294:SZ Calib.Corriente])    ;
     16:  !Calibracion de Corriente ;
     17:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=11, , ,S-Punkt=11, ,EIN/AUS=F[294:SZ Calib.Corriente]) ;
     18:  WARTE (E[3986:ZF Dummy 1 ON] [+] F[293:SZ Calib.Fuerza])    ;
     19:  !Medicion de Campo Magnetico ;
     20:  WENN (F[294:SZ Calib.Corriente]),AUFRUF MAKRO110 ;
     21:  !Lectura del Valor 1 ;
     22:  WARTE (E[3986:ZF Dummy 1 ON] [+] F[293:SZ Calib.Fuerza])    ;
     23:  !Medicion del Campo Magnetio ;
     24:  WENN (F[294:SZ Calib.Corriente]),AUFRUF MAKRO110 ;
     25:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   8:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (E[23:Sin Sol.Acceso])    ;
      4:  A[23:Bloquear Rejas de Seg.]=AN ;
      5:  FB-PSPS (M[30:Seg. de Máquina] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.003  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.003  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=    20.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.003  mm,	Z =  1583.883  mm,
	W =   -90.000 deg,	P =    45.000 deg,	R =    60.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
