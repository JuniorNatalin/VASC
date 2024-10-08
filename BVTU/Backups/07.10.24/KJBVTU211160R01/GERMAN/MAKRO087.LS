/PROG  MAKRO087
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "EZ1_RESET_REF";
PROG_GRÖßE	= 1422;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-04-01  ZEIT 11:17:24;
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
   7:  A[129]=(AN) ;
   8:  TIMER[10]=((-2)) ;
   9:  WARTE (!E[784] [+] (TIMER[10]>=0))    ;
  10:  F[118]=(TIMER[10]>=0) ;
  11:  F[303]=(F[118] [&] !E[769] [&] E[784]) ;
  12:  !EZ1/SP1 i.O. ;
  13:  WARTE (!E[784] [+] (E[769] [&] E[784]) [+] (E[777] [&] E[784]))    ;
  14:  F[303]=(AUS) ;
  15:  F[118]=(AUS) ;
  16:  A[715]=(AN) ;
  17:  !FRG Kompensation AH ;
  18:  F[290]=(AN) ;
  19:  !Anwahl Programm EZ1/SP1 und SK1 ;
  20:  WENN (F[64]),gA[1]=(61) ;
  21:  WENN (F[65]),gA[1]=(62) ;
  22:  WENN (F[66]),gA[1]=(63) ;
  23:  WENN (F[67]),gA[1]=(64) ;
  24:  gA[1]=(0) ;
  25:  WENN (F[64]),gA[3]=(61) ;
  26:  WENN (F[65]),gA[3]=(62) ;
  27:  WENN (F[66]),gA[3]=(63) ;
  28:  WENN (F[67]),gA[3]=(64) ;
  29:  WARTE    .20(sec) ;
  30:  WARTE (E[23])    ;
  31:  A[23]=(AN) ;
  32:  A[717]=(AUS) ;
  33:  A[718]=(AN) ;
  34:  TIMER[10]=((-6)) ;
  35:  !Warte EZ1/SP1 geschlossen ;
  36:  WARTE ((!E[717] [&] E[718]) [+] (TIMER[10]>=0))    ;
  37:  F[118]=(TIMER[10]>=0) ;
  38:  A[23]=(AUS) ;
  39:  WARTE (!E[717] [&] E[718])    ;
  40:  F[118]=(AUS) ;
  41:  A[718]=(AUS) ;
  42:  WARTE    .10(sec) ;
  43:  A[718]=(AN) ;
  44:  TIMER[10]=((-2)) ;
  45:  !Warte EZ1/SP1 offen ;
  46:  WARTE ((E[717] [&] !E[718] [&] E[719]) [+] (TIMER[10]>=0))    ;
  47:  F[118]=(TIMER[10]>=0) ;
  48:  WARTE (E[717] [&] !E[718] [&] E[719])    ;
  49:  F[118]=(AUS) ;
  50:  A[717]=(AUS) ;
  51:  TIMER[10]=((-2)) ;
  52:  A[715]=(AUS) ;
  53:  WARTE (!E[715] [+] (TIMER[10]>=0))    ;
  54:  F[118]=(TIMER[10]>=0) ;
  55:  WARTE (!E[715])    ;
  56:  F[118]=(AUS) ;
  57:  WARTE (E[23])    ;
  58:  A[23]=(AN) ;
  59:  A[129]=(AUS) ;
/POS
/END
