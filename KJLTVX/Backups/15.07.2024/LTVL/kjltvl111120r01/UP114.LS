/PROG  UP114
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Mant. SP2";
PROG_GRÖßE	= 2596;
ERSTELL		= TAG 17-07-04  ZEIT 12:22:10;
GEÄNDERT	= TAG 22-05-29  ZEIT 17:34:24;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 9;
SPEICHERGR.	= 4020;
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
      4:  !Lib. Herramientas ;
      5:  A[80:PL>Cortina Seg.]=AN ;
      6:  A[79:PL>1120 Herramienta]=AN ;
      7:  A[78:Ctrl.1120 Cil.]=AUS ;
      8:  A[77:Pos.Tomar 1120]=AUS ;
      9:  A[76:PL>1125 Depósito]=AN ;
     10:  A[74:Pos.Dejar 1125]=AUS ;
     11:  !Lib. de Anticolisiones ;
     12:  A[41:Blq>1130R01(1)]=AN ;
     13:  A[42:Blq>1130R01(2)]=AN ;
     14:  !Apagar Posicion Base ;
     15:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     16:  !Robot en Trayectoria ;
     17:  A[16:SAK Robot (En camino)]=AN ;
     18:  WARTE (E[23:Sin Sol.Acceso])    ;
     19:  A[23:Bloquear Rejas de Seg.]=AN ;
     20:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   5:  !Posicion de Mantenimiento ;
   6:J P[2] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  F[281:Apa.Med.Folge124  SPx]=(AN) ;
      4:  WENN (E[164:SZ2 Sel.1/5.Pinza]),SPRUNG LABEL[1] ;
      5:  WENN (A[12:Automático]),AUFRUF MAKRO103 ;
      6:  AUFRUF MAKRO119    ;
      7:  AUFRUF MAKRO119    ;
      8:  A[17:Rob.En Mantenimiento]=AN ;
      9:  WARTE (E[17:Conf.Mantenim.])    ;
     10:  A[17:Rob.En Mantenimiento]=AUS ;
     11:  WENN (A[12:Automático]),AUFRUF MAKRO102 ;
     12:  LABEL[1] ;
     13:  gA[19:Pto.De Proceso]=51 ;
     14:  AUFRUF MAKRO119    ;
     15:  A[17:Rob.En Mantenimiento]=AN ;
     16:  WARTE (E[17:Conf.Mantenim.])    ;
     17:  WENN (E[164:SZ2 Sel.1/5.Pinza] [&] !E[165:SZ2 Sel.2/6.Pinza] [&] !E[166:SZ2 Sel.3/7.Pinza] [&] !E[167:SZ2 Sel.4/8.Pinza]),AUFRUF MAKRO111 ;
     18:  LABEL[2] ;
     19:  WARTE (!F[143:SZ2 Falla Medición] [+] E[26:Conf.Repetir])    ;
     20:  WENN (F[143:SZ2 Falla Medición]),AUFRUF MAKRO111 ;
     21:  WENN (F[143:SZ2 Falla Medición]),SPRUNG LABEL[2] ;
     22:  A[17:Rob.En Mantenimiento]=AUS ;
     23:  gA[19:Pto.De Proceso]=0 ;
     24:  F[281:Apa.Med.Folge124  SPx]=(AUS) ;
     25:  WARTE (!E[164:SZ2 Sel.1/5.Pinza] [&] !E[165:SZ2 Sel.2/6.Pinza] [&] !E[166:SZ2 Sel.3/7.Pinza] [&] !E[167:SZ2 Sel.4/8.Pinza])    ;
     26:  WARTE (E[23:Sin Sol.Acceso])    ;
     27:  A[23:Bloquear Rejas de Seg.]=AN ;
     28:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   7:  !Fresado SP2 despues de ;
   8:  !mantenimiento ;
   9:J P[3] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  F[298:NoRepetirSoldNOK]=(AUS) ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr2 Service,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      5:  WARTE    .10(sec) ;
      6:  F[139:SP2 Fres.Ciclico]=((E[946:SK2 Fres.Cíclico Req.] [&] !E[948:SK2 Fres.Inicial Req.]) [+] (!E[948:SK2 Fres.Inicial Req.] [&] E[162:SZ2 Sel.Fresar])) ;
      7:  F[138:SP2 Fres.Inicial]=(E[948:SK2 Fres.Inicial Req.] [&] !F[139:SP2 Fres.Ciclico]) ;
      8:  gA[5:SZ2 Compensación]=(i[198]+20) ;
      9:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO115 ;
     10:  WENN (F[138:SP2 Fres.Inicial] [+] F[139:SP2 Fres.Ciclico]),AUFRUF MAKRO114 ;
     11:  WARTE (M[103:KS2 En Reposo])    ;
     12:  WARTE (E[23:Sin Sol.Acceso])    ;
     13:  A[23:Bloquear Rejas de Seg.]=AN ;
     14:  FB-PSPS (M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
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
	J1=   100.000  mm
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
