/PROG  MAKRO395
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "Praegen ohne Pne";
PROG_GRÖßE	= 1496;
ERSTELL		= TAG 12-01-06  ZEIT 16:56:16;
GEÄNDERT	= TAG 17-04-01  ZEIT 16:46:52;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 58;
SPEICHERGR.	= 1896;
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
   1:  ! Praegen  ohne  Pneumatischen  Z ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  04.06.2015 MB ;
   6:  ! Steuerluft EIN ;
   7:  A[217]=(AN) ;
   8:  WENN (!E[15]),SPRUNG LABEL[1] ;
   9:  TIMER[12]=(i[140]) ;
  10:  LABEL[1] ;
  11:  WARTE ((TIMER[12]>=0) [+] !E[15])    ;
  12:  WENN (E[15]),SPRUNG LABEL[2] ;
  13:  A[2153]=(AN) ;
  14:  TIMER[10]=((-5)) ;
  15:  ! Warte auf Vorwahl Ventilinsel ;
  16:  WARTE (F[523] [&] !F[524] [+] !F[523] [&] F[524] [+] (TIMER[10]>=0))    ;
  17:  A[224]=((TIMER[10]>=0)) ;
  18:  WARTE (F[523] [&] !F[524] [+] !F[523] [&] F[524])    ;
  19:  A[224]=(AUS) ;
  20:  ! Warte bis Steuerluft EIN ;
  21:  WARTE (F[523] [&] !F[524] [&] E[2153] [+] !F[523] [&] F[524] [&] !E[2154] [+] (TIMER[10]>=0))    ;
  22:  A[224]=((TIMER[10]>=0)) ;
  23:  WARTE (F[523] [&] !F[524] [&] E[2153] [+] !F[523] [&] F[524] [&] !E[2154])    ;
  24:  A[224]=(AUS) ;
  25:  TIMER[10]=((-5)) ;
  26:  A[2157]=(AN) ;
  27:  A[2158]=(AUS) ;
  28:  WARTE (E[2157] [&] !E[2158] [+] (TIMER[10]>=0))    ;
  29:  A[224]=((TIMER[10]>=0)) ;
  30:  WARTE (E[2157] [&] !E[2158])    ;
  31:  A[224]=(AUS) ;
  32:  TIMER[10]=((-5)) ;
  33:  A[2155]=(AUS) ;
  34:  A[2156]=(AN) ;
  35:  WARTE (!E[2155] [&] E[2156] [+] (TIMER[10]>=0))    ;
  36:  A[224]=((TIMER[10]>=0)) ;
  37:  WARTE (!E[2155] [&] E[2156])    ;
  38:  A[224]=(AUS) ;
  39:  WARTE   1.00(sec) ;
  40:  TIMER[10]=((-5)) ;
  41:  A[2155]=(AN) ;
  42:  A[2156]=(AUS) ;
  43:  WARTE (E[2155] [&] !E[2156] [+] (TIMER[10]>=0))    ;
  44:  A[224]=((TIMER[10]>=0)) ;
  45:  WARTE (E[2155] [&] !E[2156])    ;
  46:  A[224]=(AUS) ;
  47:  TIMER[10]=((-5)) ;
  48:  A[2155]=(AUS) ;
  49:  ! Steuerluft AUS ;
  50:  A[2153]=(AUS) ;
  51:  TIMER[10]=((-5)) ;
  52:  ! Warte bis Steuerluft AUS ;
  53:  WARTE (F[523] [&] !F[524] [&] !E[2153] [+] !F[523] [&] F[524] [&] E[2154] [+] (TIMER[10]>=0))    ;
  54:  A[224]=((TIMER[10]>=0)) ;
  55:  WARTE (F[523] [&] !F[524] [&] !E[2153] [+] !F[523] [&] F[524] [&] E[2154])    ;
  56:  A[224]=(AUS) ;
  57:  LABEL[2] ;
  58:  A[217]=(AUS) ;
/POS
/END
