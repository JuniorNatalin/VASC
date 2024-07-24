/PROG  MAKRO116
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ2_RESET_REF";
PROG_GRÖßE	= 758;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:28;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 30;
SPEICHERGR.	= 1010;
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
   1:  !EZ2  Reset  und  Referenzieren ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  A[161:SZ2 Proc. Activo]=(AN) ;
   7:  A[875:SZ2 Lib. Posicionar]=(AN) ;
   8:  !Abfrage Energiesparmodus ist AUS ;
   9:  TIMER[10]=((-2)) ;
  10:  WARTE (!E[866:SZ2 *Ahorro Energía] [+] (TIMER[10]>=0))    ;
  11:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  12:  WARTE (!E[866:SZ2 *Ahorro Energía])    ;
  13:  F[156:SP2 Avería General]=(AUS) ;
  14:  F[303:Falla Reset SZ]=(AN) ;
  15:  TIMER[10]=((-3)) ;
  16:  WARTE (E[865:SZ2 Preparado] [+] (TIMER[10]>=0))    ;
  17:  F[303:Falla Reset SZ]=(AUS) ;
  18:  TIMER[10]=((-2)) ;
  19:  WARTE (!A[865:SZ2 Reset Falla] [&] (TIMER[10]>=0))    ;
  20:  A[874:SZ2 Referenciar]=(AN) ;
  21:  WARTE (!E[874:SZ2 Referenciada (Pinza)])    ;
  22:  WARTE (E[865:SZ2 Preparado] [&] E[874:SZ2 Referenciada (Pinza)])    ;
  23:  A[874:SZ2 Referenciar]=(AUS) ;
  24:  A[875:SZ2 Lib. Posicionar]=(AUS) ;
  25:  TIMER[10]=((-2)) ;
  26:  WARTE (!E[875:SZ2 Posicionam. Activo] [+] (TIMER[10]>=0))    ;
  27:  F[156:SP2 Avería General]=(TIMER[10]>=0) ;
  28:  WARTE (!E[875:SZ2 Posicionam. Activo])    ;
  29:  F[156:SP2 Avería General]=(AUS) ;
  30:  A[161:SZ2 Proc. Activo]=(AUS) ;
/POS
/END
