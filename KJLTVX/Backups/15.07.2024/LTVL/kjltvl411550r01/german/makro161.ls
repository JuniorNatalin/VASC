/PROG  MAKRO161
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "BZ1_KOPF2";
PROG_GRÖßE	= 1824;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 23-02-12  ZEIT 11:31:46;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 75;
SPEICHERGR.	= 2284;
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
   1:  !Bolzenschweissen 1 mit  Kopf  2 ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  03.06.2015 MB ;
   6:  !F399 = Sammelstoerung  BZ1 an BM ;
   7:  A[217]=(AN) ;
   8:  WARTE (TIMER[12]>=0 [+] !E[15])    ;
   9:  WENN (!E[15]),SPRUNG LABEL[1] ;
  10:  TIMER[12]=(i[101]) ;
  11:  LABEL[1] ;
  12:  WARTE ((TIMER[12]>=0) [+] !E[15])    ;
  13:  WENN (E[15]),SPRUNG LABEL[2] ;
  14:  A[1709]=(AUS) ;
  15:  TIMER[10]=((-2)) ;
  16:  WARTE (!E[1722] [+] (TIMER[10]>=0))    ;
  17:  F[399]=(TIMER[10]>=0) ;
  18:  WARTE (!E[1722])    ;
  19:  F[399]=(AUS) ;
  20:  TIMER[10]=((-2)) ;
  21:  !BZ1 Betriebsbereit und Energiesp ;
  22:  WARTE ((E[1697] [&] E[1699] [&] !E[1706] [&] !E[1707]) [+] (TIMER[10]>=0))    ;
  23:  F[399]=((TIMER[10]>=0)) ;
  24:  WARTE (E[1697] [&] E[1699] [&] !E[1706] [&] !E[1707])    ;
  25:  F[399]=(AUS) ;
  26:  TIMER[10]=((-2)) ;
  27:  !Warte bis BZ1 SK2 rueck ;
  28:  WARTE (E[1730] [+] (TIMER[10]>=0))    ;
  29:  F[399]=(TIMER[10]>=0) ;
  30:  WARTE (E[1730])    ;
  31:  F[399]=(AUS) ;
  32:  TIMER[10]=((-2)) ;
  33:  !Abfrage mit/ohne Prozess ;
  34:  WARTE ((!E[1698] [&] !E[217] [&] !F[525]) [+] (E[1698] [&] (E[217] [+] F[525])) [+] (TIMER[10]>=0))    ;
  35:  F[399]=(TIMER[10]>=0) ;
  36:  WARTE ((!E[1698] [&] !E[217] [&] !F[525]) [+] (E[1698] [&] (E[217] [+] F[525])))    ;
  37:  WARTE (E[23])    ;
  38:  A[23]=(AN) ;
  39:  F[399]=(AUS) ;
  40:  A[218]=(AN) ;
  41:  !Anfrage Schweissfreigabe BZ1 ;
  42:  WARTE (E[218])    ;
  43:  !Start BZ1 SK2 ;
  44:  A[1738]=(!E[15]) ;
  45:  TIMER[10]=((-8)) ;
  46:  !Warte BZ1 FK2 EIN ;
  47:  WARTE (E[1722] [+] E[15] [+] (TIMER[10]>=0))    ;
  48:  F[399]=(TIMER[10]>=0) ;
  49:  A[23]=(AUS) ;
  50:  WARTE (E[1722] [+] E[15])    ;
  51:  F[399]=(AUS) ;
  52:  A[1738]=(AUS) ;
  53:  A[218]=(AUS) ;
  54:  TIMER[10]=((-2)) ;
  55:  !Warte BZ1 FK2 AUS ;
  56:  WARTE (!E[1722] [+] (TIMER[10]>=0))    ;
  57:  F[399]=(TIMER[10]>=0) ;
  58:  WARTE (!E[1722])    ;
  59:  F[399]=(AUS) ;
  60:  TIMER[10]=((-2)) ;
  61:  !Warte bis keine Sammelstoerung ;
  62:  WARTE (E[1699] [+] (TIMER[10]>=0))    ;
  63:  F[399]=(TIMER[10]>=0) ;
  64:  WARTE (E[1699])    ;
  65:  F[399]=(AUS) ;
  66:  TIMER[10]=((-2)) ;
  67:  WARTE (!E[1709] [+] (TIMER[10]>=0))    ;
  68:  F[399]=(TIMER[10]>=0) ;
  69:  WARTE (!E[1709])    ;
  70:  F[399]=(AUS) ;
  71:  LABEL[2] ;
  72:  WENN (!E[15]),SPRUNG LABEL[3] ;
  73:  TIMER[12]=(i[102]) ;
  74:  LABEL[3] ;
  75:  A[217]=(AUS) ;
/POS
/END
