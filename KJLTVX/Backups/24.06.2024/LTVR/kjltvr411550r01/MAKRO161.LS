/PROG  MAKRO161
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BZ1_KOPF2";
PROG_SIZE	= 1824;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 23-02-12  TIME 09:15:14;
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
    :  !Bolzenschweissen 1 mit  Kopf  2 ;
    :  !KS24 ;
    :  !Version: 02 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  03.06.2015 MB ;
    :  !F399 = Sammelstoerung  BZ1 an BM ;
    :  DO[217]=(ON) ;
    :  WAIT (TIMER[12]>=0 OR !DI[15])    ;
    :  IF (!DI[15]),JMP LBL[1] ;
    :  TIMER[12]=(R[101]) ;
    :  LBL[1] ;
    :  WAIT ((TIMER[12]>=0) OR !DI[15])    ;
    :  IF (DI[15]),JMP LBL[2] ;
    :  DO[1709]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[1722] OR (TIMER[10]>=0))    ;
    :  F[399]=(TIMER[10]>=0) ;
    :  WAIT (!DI[1722])    ;
    :  F[399]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  !BZ1 Betriebsbereit und Energiesp ;
    :  WAIT ((DI[1697] AND DI[1699] AND !DI[1706] AND !DI[1707]) OR (TIMER[10]>=0))    ;
    :  F[399]=((TIMER[10]>=0)) ;
    :  WAIT (DI[1697] AND DI[1699] AND !DI[1706] AND !DI[1707])    ;
    :  F[399]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  !Warte bis BZ1 SK2 rueck ;
    :  WAIT (DI[1730] OR (TIMER[10]>=0))    ;
    :  F[399]=(TIMER[10]>=0) ;
    :  WAIT (DI[1730])    ;
    :  F[399]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  !Abfrage mit/ohne Prozess ;
    :  WAIT ((!DI[1698] AND !DI[217] AND !F[525]) OR (DI[1698] AND (DI[217] OR F[525])) OR (TIMER[10]>=0))    ;
    :  F[399]=(TIMER[10]>=0) ;
    :  WAIT ((!DI[1698] AND !DI[217] AND !F[525]) OR (DI[1698] AND (DI[217] OR F[525])))    ;
    :  WAIT (DI[23])    ;
    :  DO[23]=(ON) ;
    :  F[399]=(OFF) ;
    :  DO[218]=(ON) ;
    :  !Anfrage Schweissfreigabe BZ1 ;
    :  WAIT (DI[218])    ;
    :  !Start BZ1 SK2 ;
    :  DO[1738]=(!DI[15]) ;
    :  TIMER[10]=((-8)) ;
    :  !Warte BZ1 FK2 EIN ;
    :  WAIT (DI[1722] OR DI[15] OR (TIMER[10]>=0))    ;
    :  F[399]=(TIMER[10]>=0) ;
    :  DO[23]=(OFF) ;
    :  WAIT (DI[1722] OR DI[15])    ;
    :  F[399]=(OFF) ;
    :  DO[1738]=(OFF) ;
    :  DO[218]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  !Warte BZ1 FK2 AUS ;
    :  WAIT (!DI[1722] OR (TIMER[10]>=0))    ;
    :  F[399]=(TIMER[10]>=0) ;
    :  WAIT (!DI[1722])    ;
    :  F[399]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  !Warte bis keine Sammelstoerung ;
    :  WAIT (DI[1699] OR (TIMER[10]>=0))    ;
    :  F[399]=(TIMER[10]>=0) ;
    :  WAIT (DI[1699])    ;
    :  F[399]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[1709] OR (TIMER[10]>=0))    ;
    :  F[399]=(TIMER[10]>=0) ;
    :  WAIT (!DI[1709])    ;
    :  F[399]=(OFF) ;
    :  LBL[2] ;
    :  IF (!DI[15]),JMP LBL[3] ;
    :  TIMER[12]=(R[102]) ;
    :  LBL[3] ;
    :  DO[217]=(OFF) ;
/POS
/END
