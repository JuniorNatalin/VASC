/PROG  MAKRO072
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "KS1_RUHEST";
PROG_GRÖßE	= 1000;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 18:30:02;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 36;
SPEICHERGR.	= 1356;
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
   1:  !KS1  in Ruhestellung schwenken ;
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
  17:  A[3969]=(AN) ;
  18:  A[842]=(AN) ;
  19:  !Warte bis KS1 in Ruhestellung ;
  20:  TIMER[10]=((-6)) ;
  21:  WARTE ((!E[844] [&] E[842] [&] E[845] [&] !E[843]) [+] (TIMER[10]>=0))    ;
  22:  F[323]=(TIMER[10]>=0) ;
  23:  WARTE (!E[844] [&] E[842] [&] E[845] [&] !E[843])    ;
  24:  F[323]=(AUS) ;
  25:  A[3969]=(AUS) ;
  26:  A[842]=(AUS) ;
  27:  !KF1 Versetzeinheit rueck ;
  28:  A[835]=(AUS) ;
  29:  TIMER[10]=((-4)) ;
  30:  !Warte bis KF1 ;
  31:  !Versetzeinheit rueck ;
  32:  WARTE (!E[835] [+] (TIMER[10]>=0))    ;
  33:  F[328]=(TIMER[10]>=0) ;
  34:  WARTE (!E[835])    ;
  35:  F[328]=(AUS) ;
  36:  A[23]=(AUS) ;
/POS
/END
