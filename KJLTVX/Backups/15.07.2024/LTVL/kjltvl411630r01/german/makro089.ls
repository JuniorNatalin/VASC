/PROG  MAKRO089
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "SP1_Diagnosefunk";
PROG_GRÖßE	= 1196;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-07-04  ZEIT 12:36:56;
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
   8:  A[129]=(AN) ;
   9:  F[271]=(AUS) ;
  10:  TIMER[10]=((-2)) ;
  11:  WARTE (!E[706] [+] (TIMER[10]>=0))    ;
  12:  F[118]=(TIMER[10]>=0) ;
  13:  WARTE (!E[706])    ;
  14:  F[118]=(AUS) ;
  15:  !Auswertung EZ1/SP1 i.O. ;
  16:  TIMER[10]=((-2)) ;
  17:  F[271]=(E[784] [&] (E[777] [+] E[778])) ;
  18:  WARTE (E[705] [&] E[713] [&] E[714] [&] (!E[784] [+] (E[769] [&] E[784]) [+] (E[764] [&] E[784]) [+] F[271]) [+] (TIMER[10]>=0))    ;
  19:  F[118]=(TIMER[10]>=0) ;
  20:  WARTE (E[705] [&] E[713] [&] E[714] [&] (!E[784] [+] (E[769] [&] E[784]) [+] (E[764] [&] E[784]) [+] F[271]))    ;
  21:  F[118]=(AUS) ;
  22:  !Warte auf keine ;
  23:  !Zutrittsanforderung ;
  24:  WARTE (E[23] [&] !A[4038])    ;
  25:  A[23]=(AN) ;
  26:  !START  DIAGNOSE  SP1 ;
  27:  TIMER[10]=((-6)) ;
  28:  A[715]=(AN) ;
  29:  A[765]=(AN) ;
  30:  WARTE (E[715] [&] E[765] [&] !E[764] [&] (!E[784] [+] F[271]) [+] (TIMER[10]>=0))    ;
  31:  F[118]=(TIMER[10]>=0) ;
  32:  A[23]=(AUS) ;
  33:  WARTE (E[715] [&] E[765] [&] !E[764] [&] (!E[784] [+] F[271]))    ;
  34:  F[118]=(AUS) ;
  35:  F[271]=(AUS) ;
  36:  A[715]=(AUS) ;
  37:  TIMER[10]=((-2)) ;
  38:  WARTE (!E[715] [+] (TIMER[10]>=0))    ;
  39:  F[118]=((TIMER[10]>=0)) ;
  40:  WARTE (!E[715])    ;
  41:  F[118]=(AUS) ;
  42:  A[765]=(AUS) ;
  43:  A[129]=(AUS) ;
/POS
/END
