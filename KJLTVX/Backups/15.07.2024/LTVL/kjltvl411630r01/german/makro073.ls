/PROG  MAKRO073
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "KS1_ARBEITSST";
PROG_GRÖßE	= 1320;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:30:02;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 53;
SPEICHERGR.	= 1740;
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
   1:  !KS1  in Arbeitsstellung schwenke ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  18.08.2016 LZ ;
   6:  WARTE (E[23])    ;
   7:  A[23]=(AN) ;
   8:  !KF1 Versetzeinheit vor ;
   9:  A[835]=(F[564]) ;
  10:  TIMER[10]=((-4)) ;
  11:  !Warte bis KF1 Versetzeinheit vor ;
  12:  WARTE ((E[835] [&] F[564]) [+] (!E[835] [&] !F[564]) [+] (TIMER[10]>=0))    ;
  13:  F[328]=(TIMER[10]>=0) ;
  14:  WARTE ((E[835] [&] F[564]) [+] (!E[835] [&] !F[564]))    ;
  15:  F[328]=(AUS) ;
  16:  !KS1 schwenken ;
  17:  A[3972]=(AN) ;
  18:  A[842]=(AN) ;
  19:  !Warte bis ;
  20:  !KS1 in Arbeitsstellung ;
  21:  TIMER[10]=((-6)) ;
  22:  WARTE ((!E[842] [&] E[843] [&] E[844] [&] !E[845]) [+] (TIMER[10]>=0))    ;
  23:  F[324]=(TIMER[10]>=0) ;
  24:  WARTE (!E[842] [&] E[843] [&] E[844] [&] !E[845])    ;
  25:  F[324]=(AUS) ;
  26:  A[3972]=(AUS) ;
  27:  A[842]=(AUS) ;
  28:  WENN (F[320]),SPRUNG LABEL[1] ;
  29:  SPRUNG LABEL[2] ;
  30:  LABEL[1] ;
  31:  !KS1 schwenken ;
  32:  A[3969]=(AN) ;
  33:  A[842]=(AN) ;
  34:  !Warte bis ;
  35:  !KS1 in Wartungsstellung ;
  36:  TIMER[10]=((-6)) ;
  37:  WARTE ((F[320] [&] !E[836]) [+] (TIMER[10]>=0))    ;
  38:  F[324]=(TIMER[10]>=0) ;
  39:  WARTE (F[320] [&] !E[836])    ;
  40:  F[324]=(AUS) ;
  41:  A[3969]=(AUS) ;
  42:  A[842]=(AUS) ;
  43:  LABEL[2] ;
  44:  !KF1 Versetzeinheit rueck ;
  45:  A[835]=(AUS) ;
  46:  TIMER[10]=((-4)) ;
  47:  !Warte bis KF1 ;
  48:  !Versetzeinheit rueck ;
  49:  WARTE (!E[835] [+] (TIMER[10]>=0))    ;
  50:  F[328]=(TIMER[10]>=0) ;
  51:  WARTE (!E[835])    ;
  52:  F[328]=(AUS) ;
  53:  A[23]=(AUS) ;
/POS
/END
