/PROG  UP001
/ATTR
EIGN.		= AUROM;
KOMMENTAR	= "Soldar en ST1120";
PROG_GRÖßE	= 17302;
ERSTELL		= TAG 96-06-10  ZEIT 20:13:44;
GEÄNDERT	= TAG 23-08-22  ZEIT 13:16:16;
DATEI_NAME	= UP001;
VERSION		= 0;
ZEILEN		= 61;
SPEICHERGR.	= 34634;
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
   1:  BENUTZER_NUM=1 ;
   2:  WKZ_NUM=1 ;
   3:  TRAGLST[1] ;
   4:J P[1] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[3]=RESET ;
      4:  TIMER[3]=START ;
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
     17:  !Apagar Pos. Base ;
     18:  A[15:PF0 Robot (Punto Cero)]=AUS ;
     19:  !Robot en Trayectoria ;
     20:  A[16:SAK Robot (En camino)]=AN ;
     21:  WARTE (E[80:Cortina Abajo] [&] E[79:1120 Soldar])    ;
     22:  A[80:PL>Cortina Seg.]=AUS ;
     23:  A[79:PL>1120 Herramienta]=AUS ;
     24:  A[57:Lib. 24 PLS Libre]=AUS ;
     25:  WARTE (E[23:Sin Sol.Acceso])    ;
     26:  A[23:Bloquear Rejas de Seg.]=AN ;
     27:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
   5:J P[2] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
   6:J P[3] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
   7:J P[4] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
   8:J P[5] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
   9:J P[6] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  10:J P[7] 100% CNT25 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  11:J P[8] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  12:  !5QA802035_027_AB_PS_0002 ;
  13:  !Punto de Sol. No. 5517 ;
  14:J P[9] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5517,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2:SP1 Compensación]=(i[197]) ;
      6:  WARTE (!E[129:SZ1 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23:Sin Sol.Acceso])    ;
      9:  A[23:Bloquear Rejas de Seg.]=AN ;
     10:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  15:J P[10] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  16:J P[11] 100% CNT25 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  17:J P[12] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  18:J P[13] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  19:J P[14] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  20:J P[15] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  21:J P[16] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  22:J P[17] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  23:J P[18] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  24:J P[19] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  25:  !5QA802035_027_AB_PS_0005 ;
  26:  !Punto de Sol. No. 5518 ;
  27:J P[20] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5518,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2:SP1 Compensación]=(i[197]+1) ;
      6:  WARTE (!E[129:SZ1 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23:Sin Sol.Acceso])    ;
      9:  A[23:Bloquear Rejas de Seg.]=AN ;
     10:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  28:J P[21] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  29:J P[22] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  30:J P[23] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  31:J P[24] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  32:  !5QA802035_011_L_PS_0009 ;
  33:  !Punto de Sol. No. 5516 ;
  34:J P[25] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5516,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2:SP1 Compensación]=(i[197]) ;
      6:  WARTE (!E[129:SZ1 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23:Sin Sol.Acceso])    ;
      9:  A[23:Bloquear Rejas de Seg.]=AN ;
     10:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  35:J P[26] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  36:J P[27] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  37:J P[28] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  38:J P[29] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  39:J P[30] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  40:J P[31] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  41:J P[32] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  42:J P[33] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  43:J P[34] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  44:J P[35] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  45:J P[36] 100% CNT50 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  46:  !5QA802035_001_A_PS_0008 ;
  47:  !Punto de Sol. No. 5515 ;
  48:J P[37] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5515,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2:SP1 Compensación]=(i[197]) ;
      6:  WARTE (!E[129:SZ1 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WARTE (E[23:Sin Sol.Acceso])    ;
      9:  A[23:Bloquear Rejas de Seg.]=AN ;
     10:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  49:J P[38] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  50:  !5QA802035_001_A_PS_0001 ;
  51:  !Punto de Sol. No. 5514 ;
  52:  !Fin de Trabajo 1 ;
  53:J P[39] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS WKZ_Offset ,PR[11] Offset,PR[12]    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  WARTE (!E[16:Paro Correcciones] [&] E[23:Sin Sol.Acceso])    ;
      4:  AUFRUF VW_USER(Basic1,EZSP,Nr1,ProgNr=99, , ,S-Punkt=5514,Fzg_Typ=3,EIN/AUS=AN) ;
      5:  gA[2:SP1 Compensación]=(i[197]) ;
      6:  WARTE (!E[129:SZ1 Sin Fuerza] [+] E[26:Conf.Repetir])    ;
      7:  AUFRUF MAKRO080    ;
      8:  WENN (!E[145:SK1 Sin Soldadura] [&] !E[129:SZ1 Sin Fuerza]),AUFRUF MAKRO001 ;
      9:  WARTE (E[23:Sin Sol.Acceso])    ;
     10:  A[23:Bloquear Rejas de Seg.]=AN ;
     11:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  54:J P[40] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  55:J P[41] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  56:J P[42] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] E[79:1120 Soldar] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]
       :  ) ;
       ------ ;
  57:J P[43] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[78:Ctrl.1120 Cil.]=AN ;
      3:  FB-PSPS (E[80:Cortina Abajo] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  58:J P[44] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  59:J P[45] 100% CNT100 ACC100 ZEIT VOR   0.00sek,P-SPS    ;
      1:  FB-PSPS (E[80:Cortina Abajo] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
  60:  !Posicion De Salto ;
  61:J P[46] 100% CNT0 ACC100 ZEIT VOR    .10sek,P-SPS    ;
      1:  FB-PSPS (AN) ;
      2:  A[23:Bloquear Rejas de Seg.]=AUS ;
      3:  TIMER[3]=STOPP ;
      4:  WARTE (E[23:Sin Sol.Acceso])    ;
      5:  A[23:Bloquear Rejas de Seg.]=AN ;
      6:  FB-PSPS (E[80:Cortina Abajo] [&] M[2:Garra Vacia] [&] M[30:Seg. de Máquina] [&] M[31:Gpo.Suj. 1 Abierto] [&] M[33:Gpo.Suj. 2 Abierto] [&] M[95:Seguridad SP1] [&] M[102:Seguridad SP2] [&] M[103:KS2 En Reposo]) ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   950.692  mm,	Y =  1172.599  mm,	Z =  4505.112  mm,
	W =   -48.429 deg,	P =    23.656 deg,	R =    42.815 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  1054.409  mm,	Y =  1681.744  mm,	Z =  3150.066  mm,
	W =   -40.639 deg,	P =    51.707 deg,	R =    52.972 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   218.351  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   101.068  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -344.966  mm,	Y =  -490.858  mm,	Z =   983.696  mm,
	W =   158.707 deg,	P =    22.388 deg,	R =   120.572 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   224.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -110.484  mm,	Y =  -546.469  mm,	Z =   324.761  mm,
	W =   128.459 deg,	P =      .252 deg,	R =   104.513 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   224.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -61.595  mm,	Y =  -494.149  mm,	Z =   240.455  mm,
	W =   137.290 deg,	P =    10.643 deg,	R =    98.484 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   211.334  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -44.806  mm,	Y =  -448.350  mm,	Z =   220.014  mm,
	W =   135.855 deg,	P =      .253 deg,	R =   104.512 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   184.118  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    58.909  mm,	Y =  -401.090  mm,	Z =   152.594  mm,
	W =   129.648 deg,	P =      .253 deg,	R =   104.512 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   118.200  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    75.171  mm,	Y =  -390.661  mm,	Z =   119.968  mm,
	W =   137.632 deg,	P =      .254 deg,	R =   104.511 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   101.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    84.345  mm,	Y =  -385.211  mm,	Z =   119.076  mm,
	W =   136.333 deg,	P =     2.600 deg,	R =   102.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.300  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   106.600  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    75.034  mm,	Y =  -390.135  mm,	Z =   119.965  mm,
	W =   137.632 deg,	P =      .254 deg,	R =   104.511 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   102.900  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    59.654  mm,	Y =  -403.980  mm,	Z =   152.604  mm,
	W =   129.652 deg,	P =     -.774 deg,	R =   103.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   136.200  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -44.805  mm,	Y =  -448.350  mm,	Z =   220.014  mm,
	W =   135.855 deg,	P =      .253 deg,	R =   104.512 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   184.118  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -61.595  mm,	Y =  -494.149  mm,	Z =   240.455  mm,
	W =   137.290 deg,	P =    10.643 deg,	R =    98.484 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   211.334  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -110.484  mm,	Y =  -546.469  mm,	Z =   324.761  mm,
	W =   128.459 deg,	P =      .252 deg,	R =   104.513 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   211.334  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -199.651  mm,	Y =  -609.213  mm,	Z =   574.533  mm,
	W =   124.434 deg,	P =      .251 deg,	R =   104.513 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -56.867  mm,	Y =  -881.581  mm,	Z =   781.234  mm,
	W =   118.667 deg,	P =    17.320 deg,	R =   107.993 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   174.542  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   136.281  mm,	Y = -1098.211  mm,	Z =   314.949  mm,
	W =   125.715 deg,	P =    34.265 deg,	R =   148.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    -4.846  mm,	Y =  -516.273  mm,	Z =   158.480  mm,
	W =   132.906 deg,	P =    55.857 deg,	R =   179.278 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    15.636  mm,	Y =  -440.136  mm,	Z =   123.655  mm,
	W =   132.904 deg,	P =    55.857 deg,	R =   179.276 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.700  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.900  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    66.236  mm,	Y =  -414.649  mm,	Z =    87.390  mm,
	W =   132.884 deg,	P =    55.851 deg,	R =   179.250 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   103.200  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    34.437  mm,	Y =  -445.741  mm,	Z =   122.986  mm,
	W =   145.778 deg,	P =    65.405 deg,	R =  -168.189 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.600  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =    -6.262  mm,	Y =  -488.570  mm,	Z =   174.232  mm,
	W =   116.754 deg,	P =    65.404 deg,	R =  -168.183 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -29.399  mm,	Y =  -453.127  mm,	Z =   164.016  mm,
	W =   107.763 deg,	P =    80.231 deg,	R =   174.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   101.176  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -87.311  mm,	Y =  -456.206  mm,	Z =   173.888  mm,
	W =    81.493 deg,	P =    80.230 deg,	R =   174.412 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   101.176  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -90.335  mm,	Y =  -455.916  mm,	Z =   156.223  mm,
	W =    81.494 deg,	P =    80.230 deg,	R =   174.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.300  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -89.795  mm,	Y =  -455.968  mm,	Z =   159.374  mm,
	W =    81.494 deg,	P =    80.230 deg,	R =   174.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    60.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   -71.408  mm,	Y =  -611.623  mm,	Z =   208.103  mm,
	W =   148.355 deg,	P =    78.725 deg,	R =  -117.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    97.500  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =   109.801  mm,	Y = -1172.579  mm,	Z =  -297.416  mm,
	W =   179.066 deg,	P =    51.056 deg,	R =   -84.575 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   289.573  mm,	Y = -2257.289  mm,	Z =   568.711  mm,
	W =   152.860 deg,	P =    76.851 deg,	R =    32.992 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   501.660  mm,	Y =  -249.278  mm,	Z =   654.602  mm,
	W =  -157.291 deg,	P =    13.937 deg,	R =    86.449 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   392.772  mm,	Y =  -339.449  mm,	Z =   393.993  mm,
	W =  -143.269 deg,	P =     2.576 deg,	R =    95.382 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   317.084  mm,	Y =  -363.754  mm,	Z =   301.558  mm,
	W =  -138.857 deg,	P =      .698 deg,	R =    93.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   213.898  mm,	Y =  -387.486  mm,	Z =   186.233  mm,
	W =  -138.756 deg,	P =    -4.371 deg,	R =    89.310 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   145.988  mm,	Y =  -378.889  mm,	Z =   109.030  mm,
	W =  -138.706 deg,	P =    -5.062 deg,	R =    88.701 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   128.081  mm,	Y =  -381.091  mm,	Z =    88.382  mm,
	W =  -138.895 deg,	P =      .962 deg,	R =    93.972 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.300  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   113.237  mm,	Y =  -381.295  mm,	Z =    70.308  mm,
	W =  -138.880 deg,	P =     1.734 deg,	R =    94.646 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    67.700  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   108.520  mm,	Y =  -385.914  mm,	Z =    76.415  mm,
	W =  -138.602 deg,	P =     6.262 deg,	R =    98.626 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.300  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   111.696  mm,	Y =  -387.281  mm,	Z =    72.431  mm,
	W =  -141.632 deg,	P =     5.935 deg,	R =    98.336 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   142.519  mm,	Y =  -380.214  mm,	Z =    79.698  mm,
	W =  -142.343 deg,	P =     7.352 deg,	R =    97.024 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.100  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   103.800  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   148.718  mm,	Y =  -384.677  mm,	Z =    77.305  mm,
	W =  -144.274 deg,	P =      .613 deg,	R =    92.302 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    85.100  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   165.830  mm,	Y =  -395.018  mm,	Z =   120.892  mm,
	W =  -144.199 deg,	P =    -3.494 deg,	R =    89.343 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   116.574  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   201.075  mm,	Y =  -393.061  mm,	Z =   169.981  mm,
	W =  -144.274 deg,	P =      .613 deg,	R =    92.302 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   101.152  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   488.372  mm,	Y =  -379.456  mm,	Z =   507.436  mm,
	W =  -166.646 deg,	P =    27.151 deg,	R =    80.219 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   150.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   477.930  mm,	Y =  -840.093  mm,	Z =   683.771  mm,
	W =  -170.668 deg,	P =    36.461 deg,	R =    74.576 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, -1',
	X =   544.722  mm,	Y = -1293.835  mm,	Z =   562.077  mm,
	W =  -165.196 deg,	P =    45.233 deg,	R =   102.557 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		KONFIG : 'N U T, 0, 0, 0',
	X =  -184.141  mm,	Y = -3059.016  mm,	Z =  1178.475  mm,
	W =     1.989 deg,	P =    75.979 deg,	R =   -87.030 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP3:
	UF : 1, UT : 1,	
	J1=   100.000  mm
   GP4:
	UF : 1, UT : 1,	
	J1=     0.000  mm
};
/END
