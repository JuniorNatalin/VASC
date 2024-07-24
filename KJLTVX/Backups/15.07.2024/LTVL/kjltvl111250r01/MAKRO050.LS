/PROG  MAKRO050
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Merkerbildung";
PROG_SIZE	= 1044;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 17-02-27  TIME 02:58:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 1432;
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
   1:  !Merker-Init ;
   2:  !Roboter mit EZ ohne KW. ;
   3:  ! ;
   4:  !Maschinelle Sicherheiten ;
   5:  !mit Niederdruck ueberwachung ;
   6:  M[30]=(DI[14] AND DI[24] AND DI[516]) ;
   7:  ! ;
   8:  !Widerstandspunktschweissen ;
   9:  !Sicherheiten EZ1/SP1 ;
  10:  M[95]=(DI[705] AND !DI[706] AND DI[713] AND DI[714] AND ((!DI[715] AND DI[719]) OR DO[715]) AND !DI[773] AND !DI[779] AND DO[716]) ;
  11:  !Flankenausw.der Fraeserumd.KF1 ;
  12:  M[97]=((DI[718] AND DO[718] OR F[312]) AND DI[834] AND DO[834] AND !F[72] AND !F[73] AND (F[90] OR F[92])) ;
  13:  ! ;
  14:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
  15:  R[2]=4    ;
  16:  !Umdrehungen Startfraesen Teil 2 ;
  17:  R[3]=4    ;
  18:  !Umdrehungen Nomalfraesen ;
  19:  R[4]=3    ;
  20:  ! ;
  21:  !;Ausgleichswert EZ1/SP1 ;
  22:  R[197]=150    ;
  23:  !Kappenverschl. Verhaeltnis ;
  24:  !feste EK in % (Rob-EZ) ;
  25:  R[407]=65    ;
  26:   ;
  27:  !Kappenkompenstion bei ;
  28:  !Robotergefuehrter EZ1/SP1 ;
  29:  CALL MOTN003    ;
  30:  ! ;
  31:  !Aufruf Makro57 ;
  32:  CALL MAKRO057    ;
  33:  !Docking ;
  34:  CALL MAKRO058    ;
/POS
/END
