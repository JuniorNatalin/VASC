/PROG  MAKRO050
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Merkerbildung";
PROG_SIZE	= 1042;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 17-02-27  TIME 02:54:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 1430;
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
    :  !Merker-Init ;
    :  !Roboter mit EZ ohne KW. ;
    :  ! ;
    :  !Maschinelle Sicherheiten ;
    :  !mit Niederdruck ueberwachung ;
    :  M[30]=(DI[14] AND DI[24] AND DI[516]) ;
    :  ! ;
    :  !Widerstandspunktschweissen ;
    :  !Sicherheiten EZ1/SP1 ;
    :  M[95]=(DI[705] AND !DI[706] AND DI[713] AND DI[714] AND ((!DI[715] AND DI[719]) OR DO[715]) AND !DI[773] AND !DI[779] AND DO[716]) ;
    :  !Flankenausw.der Fraeserumd.KF1 ;
    :  M[97]=((DI[718] AND DO[718] OR F[312]) AND DI[834] AND DO[834] AND !F[72] AND !F[73] AND (F[90] OR F[92])) ;
    :  ! ;
    :  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
    :  R[2]=4    ;
    :  !Umdrehungen Startfraesen Teil 2 ;
    :  R[3]=4    ;
    :  !Umdrehungen Nomalfraesen ;
    :  R[4]=3    ;
    :  ! ;
    :  !;Ausgleichswert EZ1/SP1 ;
    :  R[197]=114    ;
    :  !Kappenverschl. Verhaeltnis ;
    :  !feste EK in % (Rob-EZ) ;
    :  R[407]=65    ;
    :   ;
    :  !Kappenkompenstion bei ;
    :  !Robotergefuehrter EZ1/SP1 ;
    :  CALL MOTN003    ;
    :  ! ;
    :  !Aufruf Makro57 ;
    :  CALL MAKRO057    ;
    :  !Docking ;
    :  CALL MAKRO058    ;
/POS
/END
