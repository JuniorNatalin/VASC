/PROG  MAKRO089
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "SP1_Diagnosefunk";
PROG_GRÖßE	= 1196;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-05-30  ZEIT 18:28:34;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 43;
SPEICHERGR.	= 1524;
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
   1:  !SP1_Diagnosefunktion ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 000 ;
   5:  !letzte  Aenderung 19.01.2017 LZ ;
   6:  !F118 = Sammelstoerung SP1 an BMS ;
   7:  !Abfrage Energiesparmodus ist AUS ;
   8:  A[129:SZ1 Proc. Activo]=(AN) ;
   9:  F[271:Aux. Ciclo Makros]=(AUS) ;
  10:  TIMER[10]=((-2)) ;
  11:  WARTE (!E[706:SZ1 *Ahorro Energía] [+] (TIMER[10]>=0))    ;
  12:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  13:  WARTE (!E[706:SZ1 *Ahorro Energía])    ;
  14:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  15:  !Auswertung EZ1/SP1 i.O. ;
  16:  TIMER[10]=((-2)) ;
  17:  F[271:Aux. Ciclo Makros]=(E[784:SZ1 Avería General] [&] (E[777:SZ1 Falla Desgaste Caps] [+] E[778:SZ1 Falla Caps/Geometr.])) ;
  18:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [&] (!E[784:SZ1 Avería General] [+] (E[769:SZ1 Preaviso Pinza] [&] E[784:SZ1 Avería General]) [+] (E[764:SZ1 Falla Diag. (Func.)] [&] 
    :  E[784:SZ1 Avería General]) [+] F[271:Aux. Ciclo Makros]) [+] (TIMER[10]>=0))    ;
  19:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  20:  WARTE (E[705:SZ1 Preparado] [&] E[713:SZ1 En Autom. (Control)] [&] E[714:SZ1 Referenciada (Pinza)] [&] (!E[784:SZ1 Avería General] [+] (E[769:SZ1 Preaviso Pinza] [&] E[784:SZ1 Avería General]) [+] (E[764:SZ1 Falla Diag. (Func.)] [&] 
    :  E[784:SZ1 Avería General]) [+] F[271:Aux. Ciclo Makros]))    ;
  21:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  22:  !Warte auf keine ;
  23:  !Zutrittsanforderung ;
  24:  WARTE (E[23:Sin Sol.Acceso] [&] !A[4038:Mov. de Prg. Activo])    ;
  25:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  26:  !START  DIAGNOSE  SP1 ;
  27:  TIMER[10]=((-6)) ;
  28:  A[715:SZ1 Lib. Posicionar]=(AN) ;
  29:  A[765:SZ1 Func. Diagnóstico]=(AN) ;
  30:  WARTE (E[715:SZ1 Posicionam. Activo] [&] E[765:SZ1 FuncDiagOK] [&] !E[764:SZ1 Falla Diag. (Func.)] [&] (!E[784:SZ1 Avería General] [+] F[271:Aux. Ciclo Makros]) [+] (TIMER[10]>=0))    ;
  31:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  32:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
  33:  WARTE (E[715:SZ1 Posicionam. Activo] [&] E[765:SZ1 FuncDiagOK] [&] !E[764:SZ1 Falla Diag. (Func.)] [&] (!E[784:SZ1 Avería General] [+] F[271:Aux. Ciclo Makros]))    ;
  34:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  35:  F[271:Aux. Ciclo Makros]=(AUS) ;
  36:  A[715:SZ1 Lib. Posicionar]=(AUS) ;
  37:  TIMER[10]=((-2)) ;
  38:  WARTE (!E[715:SZ1 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
  39:  F[118:SP1 Avería General (PZ1)]=((TIMER[10]>=0)) ;
  40:  WARTE (!E[715:SZ1 Posicionam. Activo])    ;
  41:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  42:  A[765:SZ1 Func. Diagnóstico]=(AUS) ;
  43:  A[129:SZ1 Proc. Activo]=(AUS) ;
/POS
/END
