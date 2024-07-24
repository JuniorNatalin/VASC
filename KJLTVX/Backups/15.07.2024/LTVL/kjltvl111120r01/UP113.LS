/PROG  UP113
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mant. SP1";
PROG_GRÖßE	= 2758;
ERSTELL		= TAG 03-15-00  ZEIT 13:37:40;
GEÄNDERT	= TAG 24-07-02  ZEIT 02:27:32;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 9;
SPEICHERGR.	= 4966;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 500,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= 1,1,1,1,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  WKZ_NUM=1 ;
   2:  BENUTZER_NUM=0 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
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
     18:  WARTE (E[23:Sin Sol.Acceso])    ;
     19:  A[23:Bloquear Rejas de Seg.]=AN ;
     20:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   6:  !Pos. de Mantenimiento ;
   7:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  F[281:Apa.Med.Folge124  SPx]=(AN) ;
      4:  F[64:SZ1 en SP1(p/fresado)]=(AN) ;
      5:  F[65:SZ2 en SP1(p/fresado)]=(AUS) ;
      6:  F[66:SZ3 en SP1(p/fresado)]=(AUS) ;
      7:  F[67:SZ4 en SP1(p/fresado)]=(AUS) ;
      8:  AUFRUF MAKRO089    ;
      9:  A[17:Rob.En Mantenimiento]=AN ;
     10:  gA[19:Pto.De Proceso]=11 ;
     11:  WARTE (E[17:Conf.Mantenim.])    ;
     12:  WENN (E[132:SZ1 Sel.1/5.Pinza] [&] !E[133:SZ1 Sel.2/6.Pinza] [&] !E[134:SZ1 Sel.3/7.Pinza] [&] !E[135:SZ1 Sel.4/8.Pinza]),AUFRUF MAKRO081 ;
     13:  LABEL[1] ;
     14:  WARTE (!F[85:SZ1 Falla Medición] [+] E[26:Conf.Repetir])    ;
     15:  WENN (F[85:SZ1 Falla Medición]),AUFRUF MAKRO081 ;
     16:  WENN (F[85:SZ1 Falla Medición]),SPRUNG LABEL[1] ;
     17:  A[17:Rob.En Mantenimiento]=AUS ;
     18:  gA[19:Pto.De Proceso]=0 ;
     19:  F[281:Apa.Med.Folge124  SPx]=(AUS) ;
     20:  WARTE (!E[132:SZ1 Sel.1/5.Pinza] [&] !E[133:SZ1 Sel.2/6.Pinza] [&] !E[134:SZ1 Sel.3/7.Pinza] [&] !E[135:SZ1 Sel.4/8.Pinza])    ;
     21:  WARTE (E[23:Sin Sol.Acceso])    ;
     22:  A[23:Bloquear Rejas de Seg.]=AN ;
     23:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   8:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   9:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
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
	X =  -788.350  mm,	Y =  1013.721  mm,	Z =   639.117  mm,
	W =  -179.554 deg,	P =    19.865 deg,	R =   127.340 deg
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
P[3]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X = -1356.935  mm,	Y =   899.500  mm,	Z =  -428.717  mm,
	W =  -176.446 deg,	P =    10.070 deg,	R =   131.993 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     -.300  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -788.350  mm,	Y =  1013.721  mm,	Z =   639.117  mm,
	W =  -179.554 deg,	P =    19.865 deg,	R =   127.340 deg
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
P[5]{
   GP1:
	UF : 0, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -248.953  mm,	Y =  1964.002  mm,	Z =  1583.883  mm,
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
