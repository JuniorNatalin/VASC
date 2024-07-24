/PROG  MAKRO161
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BZ1_KOPF2";
PROG_SIZE	= 1824;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 23-02-12  TIME 11:31:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 75;
MEMORY_SIZE	= 2284;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !Bolzenschweissen 1 mit  Kopf  2 ;
   2:  !KS24 ;
   3:  !Version: 02 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  03.06.2015 MB ;
   6:  !F399 = Sammelstoerung  BZ1 an BM ;
   7:  DO[217]=(ON) ;
   8:  WAIT (TIMER[12]>=0 OR !DI[15])    ;
   9:  IF (!DI[15]),JMP LBL[1] ;
  10:  TIMER[12]=(R[101]) ;
  11:  LBL[1] ;
  12:  WAIT ((TIMER[12]>=0) OR !DI[15])    ;
  13:  IF (DI[15]),JMP LBL[2] ;
  14:  DO[1709]=(OFF) ;
  15:  TIMER[10]=((-2)) ;
  16:  WAIT (!DI[1722] OR (TIMER[10]>=0))    ;
  17:  F[399]=(TIMER[10]>=0) ;
  18:  WAIT (!DI[1722])    ;
  19:  F[399]=(OFF) ;
  20:  TIMER[10]=((-2)) ;
  21:  !BZ1 Betriebsbereit und Energiesp ;
  22:  WAIT ((DI[1697] AND DI[1699] AND !DI[1706] AND !DI[1707]) OR (TIMER[10]>=0))    ;
  23:  F[399]=((TIMER[10]>=0)) ;
  24:  WAIT (DI[1697] AND DI[1699] AND !DI[1706] AND !DI[1707])    ;
  25:  F[399]=(OFF) ;
  26:  TIMER[10]=((-2)) ;
  27:  !Warte bis BZ1 SK2 rueck ;
  28:  WAIT (DI[1730] OR (TIMER[10]>=0))    ;
  29:  F[399]=(TIMER[10]>=0) ;
  30:  WAIT (DI[1730])    ;
  31:  F[399]=(OFF) ;
  32:  TIMER[10]=((-2)) ;
  33:  !Abfrage mit/ohne Prozess ;
  34:  WAIT ((!DI[1698] AND !DI[217] AND !F[525]) OR (DI[1698] AND (DI[217] OR F[525])) OR (TIMER[10]>=0))    ;
  35:  F[399]=(TIMER[10]>=0) ;
  36:  WAIT ((!DI[1698] AND !DI[217] AND !F[525]) OR (DI[1698] AND (DI[217] OR F[525])))    ;
  37:  WAIT (DI[23])    ;
  38:  DO[23]=(ON) ;
  39:  F[399]=(OFF) ;
  40:  DO[218]=(ON) ;
  41:  !Anfrage Schweissfreigabe BZ1 ;
  42:  WAIT (DI[218])    ;
  43:  !Start BZ1 SK2 ;
  44:  DO[1738]=(!DI[15]) ;
  45:  TIMER[10]=((-8)) ;
  46:  !Warte BZ1 FK2 EIN ;
  47:  WAIT (DI[1722] OR DI[15] OR (TIMER[10]>=0))    ;
  48:  F[399]=(TIMER[10]>=0) ;
  49:  DO[23]=(OFF) ;
  50:  WAIT (DI[1722] OR DI[15])    ;
  51:  F[399]=(OFF) ;
  52:  DO[1738]=(OFF) ;
  53:  DO[218]=(OFF) ;
  54:  TIMER[10]=((-2)) ;
  55:  !Warte BZ1 FK2 AUS ;
  56:  WAIT (!DI[1722] OR (TIMER[10]>=0))    ;
  57:  F[399]=(TIMER[10]>=0) ;
  58:  WAIT (!DI[1722])    ;
  59:  F[399]=(OFF) ;
  60:  TIMER[10]=((-2)) ;
  61:  !Warte bis keine Sammelstoerung ;
  62:  WAIT (DI[1699] OR (TIMER[10]>=0))    ;
  63:  F[399]=(TIMER[10]>=0) ;
  64:  WAIT (DI[1699])    ;
  65:  F[399]=(OFF) ;
  66:  TIMER[10]=((-2)) ;
  67:  WAIT (!DI[1709] OR (TIMER[10]>=0))    ;
  68:  F[399]=(TIMER[10]>=0) ;
  69:  WAIT (!DI[1709])    ;
  70:  F[399]=(OFF) ;
  71:  LBL[2] ;
  72:  IF (!DI[15]),JMP LBL[3] ;
  73:  TIMER[12]=(R[102]) ;
  74:  LBL[3] ;
  75:  DO[217]=(OFF) ;
/POS
/END
