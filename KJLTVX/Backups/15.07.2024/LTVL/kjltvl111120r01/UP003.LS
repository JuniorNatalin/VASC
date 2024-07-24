/PROG  UP003
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Soldadura Est.";
PROG_GRÖßE	= 6166;
ERSTELL		= TAG 96-06-10  ZEIT 20:14:02;
GEÄNDERT	= TAG 24-07-14  ZEIT 18:29:52;
DATEI_NAME	= UP003;
VERSION		= 0;
ZEILEN		= 25;
SPEICHERGR.	= 11150;
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
   1:  BENUTZER_NUM=2 ;
   2:  WKZ_NUM=3 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[5]=RESET ;
      4:  TIMER[5]=START ;
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
     21:  !Basculante 2 en Pos. de Reposo ;
     22:  WENN (!E[1002:KS2BE2R Reposo  Bascul.] [&] A[12:Automático]),AUFRUF MAKRO102 ;
     23:  WARTE (M[103:KS2 En Reposo])    ;
     24:  WARTE (E[23:Sin Sol.Acceso])    ;
     25:  A[23:Bloquear Rejas de Seg.]=AN ;
     26:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
   9:  !5QA802035_027_AB_PS_0008 ;
  10:  !Punto de Sol. No. 5521 ;
  11:J P[6] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[21]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5521,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[5:SZ2 Compensación]=(i[198]) ;
      6:  WARTE (!E[161:SZ2 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO110    ;
      8:  WARTE (E[23:Sin Sol.Acceso])    ;
      9:  A[23:Bloquear Rejas de Seg.]=AN ;
     10:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  12:  !5QA802035_027_AB_PS_0009 ;
  13:  !Punto de Sol. No. 5522 ;
  14:J P[7] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[21]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5522,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[5:SZ2 Compensación]=(i[198]) ;
      6:  WARTE (!E[161:SZ2 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO110    ;
      8:  WARTE (E[23:Sin Sol.Acceso])    ;
      9:  A[23:Bloquear Rejas de Seg.]=AN ;
     10:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  15:  !5QA802035_027_AB_PS_0007 ;
  16:  !Punto de Sol. No. 5520 ;
  17:J P[8] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[21]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5520,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[5:SZ2 Compensación]=(i[198]) ;
      6:  WARTE (!E[161:SZ2 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO110    ;
      8:  WARTE (E[23:Sin Sol.Acceso])    ;
      9:  A[23:Bloquear Rejas de Seg.]=AN ;
     10:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  18:  !5QA802035_027_AB_PS_0006 ;
  19:  !Punto de Sol. No. 5519 ;
  20:  !Fin de Trabajo 3 ;
  21:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS Offset,PR[21]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=99, , ,S-Punkt=5519,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[5:SZ2 Compensación]=(i[198]) ;
      6:  WARTE (!E[161:SZ2 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO110    ;
      8:  WENN (!E[145:SK1 Sin Soldadura] [&] !E[129:SZ1 Sin Fuerza]),AUFRUF MAKRO003 ;
      9:  WARTE (E[23:Sin Sol.Acceso])    ;
     10:  A[23:Bloquear Rejas de Seg.]=AN ;
     11:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  22:J P[10] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  23:J P[11] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  24:J P[12] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  25:J P[13] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[5]=STOPP ;
      4:  WARTE (E[23:Sin Sol.Acceso])    ;
      5:  AUFRUF VW_USER(Basic1,EZSP,Nr2,ProgNr=31, , ,S-Punkt=31, ,EIN/AUS=1) ;
      6:  A[23:Bloquear Rejas de Seg.]=AN ;
      7:  FB-PSPS (M[1:Garra Llena] [&] M[30:Seg. de Máquina] [&] M[32:Gpo.Suj. 1 Cerrado] [&] M[33:Gpo.Suj. 2 Abierto]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, 0',
	RX =   220.966  mm,	RY =  -149.051  mm,	RZ = -1783.343  mm,
	RW =     4.609 deg,	RP =   -21.812 deg,	RR =    66.408 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =   231.591  mm,	RY =  -146.790  mm,	RZ =    53.220  mm,
	RW =   -37.181 deg,	RP =    38.685 deg,	RR =   171.272 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =   332.783  mm,	RY =  -290.564  mm,	RZ =    73.819  mm,
	RW =   -15.141 deg,	RP =    53.863 deg,	RR =   179.277 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   180.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =   280.577  mm,	RY =  -422.838  mm,	RZ =   156.586  mm,
	RW =   -13.009 deg,	RP =    55.901 deg,	RR =   179.987 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   180.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =   202.001  mm,	RY =  -433.586  mm,	RZ =    97.318  mm,
	RW =   -13.009 deg,	RP =    55.901 deg,	RR =   179.987 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   180.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =    93.217  mm,	RY =  -436.456  mm,	RZ =    76.832  mm,
	RW =   -17.452 deg,	RP =    54.296 deg,	RR =   174.604 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   102.400  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    23.400  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =    84.633  mm,	RY =  -424.690  mm,	RZ =    84.663  mm,
	RW =   -16.447 deg,	RP =    54.209 deg,	RR =   174.611 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    24.200  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =    92.415  mm,	RY =  -410.446  mm,	RZ =    79.094  mm,
	RW =   -12.815 deg,	RP =    53.503 deg,	RR =   176.597 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    23.200  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =    74.995  mm,	RY =  -442.425  mm,	RZ =    91.230  mm,
	RW =   -21.235 deg,	RP =    55.293 deg,	RR =   174.850 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=    21.400  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =   201.141  mm,	RY =  -421.247  mm,	RZ =    91.428  mm,
	RW =   -13.006 deg,	RP =    55.900 deg,	RR =   179.985 deg
   GP2:
	UF : 2, UT : 3,	
	J1=    -3.200  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.900  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =   248.713  mm,	RY =  -367.544  mm,	RZ =    78.769  mm,
	RW =   -13.009 deg,	RP =    55.901 deg,	RR =   179.987 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, -1',
	RX =   231.591  mm,	RY =  -146.790  mm,	RZ =    53.220  mm,
	RW =   -37.181 deg,	RP =    38.685 deg,	RR =   171.272 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 2, UT : 3,		KONFIG : 'N U T, 0, 0, 0',
	RX =   220.966  mm,	RY =  -149.051  mm,	RZ = -1783.343  mm,
	RW =     4.609 deg,	RP =   -21.812 deg,	RR =    66.408 deg
   GP2:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP3:
	UF : 2, UT : 3,	
	J1=   100.000  mm
   GP4:
	UF : 2, UT : 3,	
	J1=     0.000  mm
};
/END
