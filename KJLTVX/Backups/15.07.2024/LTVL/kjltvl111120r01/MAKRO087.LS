/PROG  MAKRO087
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ1_RESET_REF";
PROG_GRÖßE	= 1422;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:26;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 59;
SPEICHERGR.	= 1686;
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
   1:  !EZ1/SP1  Kappensetzen  2 ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  10.03.2015 CB ;
   6:  !F118  =  Sammelstoerung  EZ1/SP1 ;
   7:  A[129:SZ1 Proc. Activo]=(AN) ;
   8:  TIMER[10]=((-2)) ;
   9:  WARTE (!E[784:SZ1 Avería General] [+] (TIMER[10]>=0))    ;
  10:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  11:  F[303:Falla Reset SZ]=(F[118:SP1 Avería General (PZ1)] [&] !E[769:SZ1 Preaviso Pinza] [&] E[784:SZ1 Avería General]) ;
  12:  !EZ1/SP1 i.O. ;
  13:  WARTE (!E[784:SZ1 Avería General] [+] (E[769:SZ1 Preaviso Pinza] [&] E[784:SZ1 Avería General]) [+] (E[777:SZ1 Falla Desgaste Caps] [&] E[784:SZ1 Avería General]))    ;
  14:  F[303:Falla Reset SZ]=(AUS) ;
  15:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  16:  A[715:SZ1 Lib. Posicionar]=(AN) ;
  17:  !FRG Kompensation AH ;
  18:  F[290:SZ Comp. Mov.Trabajo]=(AN) ;
  19:  !Anwahl Programm EZ1/SP1 und SK1 ;
  20:  WENN (F[64:SZ1 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(61) ;
  21:  WENN (F[65:SZ2 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(62) ;
  22:  WENN (F[66:SZ3 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(63) ;
  23:  WENN (F[67:SZ4 en SP1(p/fresado)]),gA[1:SP1 Num.Prg.]=(64) ;
  24:  gA[1:SP1 Num.Prg.]=(0) ;
  25:  WENN (F[64:SZ1 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(61) ;
  26:  WENN (F[65:SZ2 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(62) ;
  27:  WENN (F[66:SZ3 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(63) ;
  28:  WENN (F[67:SZ4 en SP1(p/fresado)]),gA[3:SK1 Num.Prg.]=(64) ;
  29:  WARTE    .20(sec) ;
  30:  WARTE (E[23:Sin Sol.Acceso])    ;
  31:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  32:  A[717:SZ1 Abrir Pinza]=(AUS) ;
  33:  A[718:SZ1 Cerrar Pinza]=(AN) ;
  34:  TIMER[10]=((-6)) ;
  35:  !Warte EZ1/SP1 geschlossen ;
  36:  WARTE ((!E[717:SZ1 Pinza abierta] [&] E[718:SZ1 Fuerza alcanzada]) [+] (TIMER[10]>=0))    ;
  37:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  38:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
  39:  WARTE (!E[717:SZ1 Pinza abierta] [&] E[718:SZ1 Fuerza alcanzada])    ;
  40:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  41:  A[718:SZ1 Cerrar Pinza]=(AUS) ;
  42:  WARTE    .10(sec) ;
  43:  A[718:SZ1 Cerrar Pinza]=(AN) ;
  44:  TIMER[10]=((-2)) ;
  45:  !Warte EZ1/SP1 offen ;
  46:  WARTE ((E[717:SZ1 Pinza abierta] [&] !E[718:SZ1 Fuerza alcanzada] [&] E[719:SZ1 Compensación Home]) [+] (TIMER[10]>=0))    ;
  47:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  48:  WARTE (E[717:SZ1 Pinza abierta] [&] !E[718:SZ1 Fuerza alcanzada] [&] E[719:SZ1 Compensación Home])    ;
  49:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  50:  A[717:SZ1 Abrir Pinza]=(AUS) ;
  51:  TIMER[10]=((-2)) ;
  52:  A[715:SZ1 Lib. Posicionar]=(AUS) ;
  53:  WARTE (!E[715:SZ1 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
  54:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  55:  WARTE (!E[715:SZ1 Posicionam. Activo])    ;
  56:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  57:  WARTE (E[23:Sin Sol.Acceso])    ;
  58:  A[23:Bloquear Rejas de Seg.]=(AN) ;
  59:  A[129:SZ1 Proc. Activo]=(AUS) ;
/POS
/END
