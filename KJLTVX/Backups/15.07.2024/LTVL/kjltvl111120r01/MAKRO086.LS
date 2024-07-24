/PROG  MAKRO086
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ1_RESET_REF";
PROG_GRÖßE	= 762;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:26;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 30;
SPEICHERGR.	= 1014;
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
   1:  !EZ1  Reset  und  Referenzieren ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  A[129:SZ1 Proc. Activo]=(AN) ;
   7:  A[715:SZ1 Lib. Posicionar]=(AN) ;
   8:  !Abfrage Energiesparmodus ist AUS ;
   9:  TIMER[10]=((-2)) ;
  10:  WARTE (!E[706:SZ1 *Ahorro Energía] [+] (TIMER[10]>=0))    ;
  11:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  12:  WARTE (!E[706:SZ1 *Ahorro Energía])    ;
  13:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  14:  F[303:Falla Reset SZ]=(AN) ;
  15:  TIMER[10]=((-.5)) ;
  16:  WARTE (E[705:SZ1 Preparado] [+] (TIMER[10]>=0))    ;
  17:  F[303:Falla Reset SZ]=(AUS) ;
  18:  TIMER[10]=((-.5)) ;
  19:  WARTE (!A[705:SZ1 Reset Falla] [&] (TIMER[10]>=0))    ;
  20:  A[714:SZ1 Referenciar]=(AN) ;
  21:  WARTE (!E[714:SZ1 Referenciada (Pinza)])    ;
  22:  WARTE (E[705:SZ1 Preparado] [&] E[714:SZ1 Referenciada (Pinza)])    ;
  23:  A[714:SZ1 Referenciar]=(AUS) ;
  24:  A[715:SZ1 Lib. Posicionar]=(AUS) ;
  25:  TIMER[10]=((-2)) ;
  26:  WARTE (!E[715:SZ1 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
  27:  F[118:SP1 Avería General (PZ1)]=(TIMER[10]>=0) ;
  28:  WARTE (!E[715:SZ1 Posicionam. Activo])    ;
  29:  F[118:SP1 Avería General (PZ1)]=(AUS) ;
  30:  A[129:SZ1 Proc. Activo]=(AUS) ;
/POS
/END
