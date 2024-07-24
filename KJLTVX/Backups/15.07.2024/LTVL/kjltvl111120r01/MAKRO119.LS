/PROG  MAKRO119
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "SP2_Diagnosefunk";
PROG_GRÖßE	= 1176;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-07-04  ZEIT 12:21:32;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 42;
SPEICHERGR.	= 1508;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !SP2_Diagnosefunktion ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 000 ;
   5:  !letzte  Aenderung 19.01.2017 LZ ;
   6:  !F156 = Sammelstoerung SP2 an BMS ;
   7:  !Abfrage Energiesparmodus ist AUS ;
   8:  A[161:SZ2 Proc. Activo]=(AN) ;
   9:  F[271:Aux. Ciclo Makros]=(AUS) ;
  10:  TIMER[10]=((-2)) ;
  11:  WARTE (!E[866:SZ2 *Ahorro Energía] [+] (TIMER[10]>=0))    ;
  12:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  13:  WARTE (!E[866:SZ2 *Ahorro Energía])    ;
  14:  F[156:SP2 Avería General]=(AUS) ;
  15:  !Auswertung EZ2/SP2 i.O. ;
  16:  TIMER[10]=((-2)) ;
  17:  F[271:Aux. Ciclo Makros]=(E[944:SZ2 Avería General] [&] (E[937:SZ2 Falla Desgaste Caps] [+] E[938:SZ2 Falla Caps/Geometr.])) ;
  18:  WARTE (E[865:SZ2 Preparado] [&] E[873:SZ2 En Autom. (Control)] [&] E[874:SZ2 Referenciada (Pinza)] [&] (!E[944:SZ2 Avería General] [+] (E[929:SZ2 Preaviso Pinza] [&] E[944:SZ2 Avería General]) [+] (E[924:SZ2 Falla Diag. (Func.)] [&] 
    :  E[944:SZ2 Avería General]) [+] F[271:Aux. Ciclo Makros]) [+] (TIMER[10]>=0))    ;
  19:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  20:  WARTE (E[865:SZ2 Preparado] [&] E[873:SZ2 En Autom. (Control)] [&] E[874:SZ2 Referenciada (Pinza)] [&] (!E[944:SZ2 Avería General] [+] (E[929:SZ2 Preaviso Pinza] [&] E[944:SZ2 Avería General]) [+] (E[924:SZ2 Falla Diag. (Func.)] [&] 
    :  E[944:SZ2 Avería General]) [+] F[271:Aux. Ciclo Makros]))    ;
  21:  F[156:SP2 Avería General]=(AUS) ;
  22:  !Warte auf keine ;
  23:  !Zutrittsanforderung ;
  24:  WARTE (E[23:Sin Sol.Acceso] [&] !A[4038:Mov. de Prg. Activo])    ;
  25:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  26:  !START  DIAGNOSE  SP2 ;
  27:  TIMER[10]=((-6)) ;
  28:  A[875:SZ2 Lib. Posicionar]=(AN) ;
  29:  A[925:SZ2 Func. Diagnóstico]=(AN) ;
  30:  WARTE (E[875:SZ2 Posicionam. Activo] [&] E[925:SZ2 FuncDiagOK] [&] !E[924:SZ2 Falla Diag. (Func.)] [&] (!E[944:SZ2 Avería General] [+] F[271:Aux. Ciclo Makros]) [+] (TIMER[10]>=0))    ;
  31:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  32:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
  33:  WARTE (E[875:SZ2 Posicionam. Activo] [&] E[925:SZ2 FuncDiagOK] [&] !E[924:SZ2 Falla Diag. (Func.)] [&] (!E[944:SZ2 Avería General] [+] F[271:Aux. Ciclo Makros]))    ;
  34:  F[156:SP2 Avería General]=(AUS) ;
  35:  F[271:Aux. Ciclo Makros]=(AUS) ;
  36:  A[875:SZ2 Lib. Posicionar]=(AUS) ;
  37:  WARTE (!E[875:SZ2 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
  38:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  39:  WARTE (!E[875:SZ2 Posicionam. Activo])    ;
  40:  F[156:SP2 Avería General]=(AUS) ;
  41:  A[925:SZ2 Func. Diagnóstico]=(AUS) ;
  42:  A[161:SZ2 Proc. Activo]=(AUS) ;
/POS
/END
