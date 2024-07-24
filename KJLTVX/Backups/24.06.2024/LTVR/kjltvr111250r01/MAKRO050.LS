/PROG  MAKRO050
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "INIT";
PROG_SIZE	= 1182;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 23-12-01  TIME 17:57:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 38;
MEMORY_SIZE	= 1554;
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
   2:  !letzte  Aenderung  08.05.2015 ;
   3:  !Grundlagen ;
   4:  ! ;
   5:  !Maschinelle Sicherheiten ;
   6:  M[30]=(DI[14] AND DI[24] AND DI[516]) ;
   7:  ! ;
   8:  !Widerstandspunktschweissen ;
   9:  !Sicherheiten EZ1/SP1 ;
  10:  M[95]=(DI[705] AND !DI[706] AND DI[713] AND DI[714] AND ((!DI[715] AND DI[719]) OR DO[715]) AND !DI[773] AND !DI[779] AND DO[716]) ;
  11:  ! ;
  12:  !Grundstellung KS1 ;
  13:  M[96]=(DI[842] AND !DI[844] AND !DI[843] AND DI[845] AND !DO[715] AND (F[321] OR (DO[875] AND F[148]) OR (DO[1035] AND F[184]))) ;
  14:  ! ;
  15:  !Flankenausw.der Fräserumd.KF1 ;
  16:  M[97]=((DI[718] AND DO[718] OR F[312]) AND DI[834] AND DO[834] AND !F[72] AND !F[73] AND (F[90] OR F[92])) ;
  17:  ! ;
  18:  !Initialisierung Fraes_Register ;
  19:  !EZ1/SP1/SZ1 Umdrehungen Startfr ;
  20:  R[2]=5    ;
  21:  !Umdrehungen Startfräsen Teil 2 ;
  22:  R[3]=5    ;
  23:  !Umdrehungen Nomalfräsen ;
  24:  R[4]=5    ;
  25:  ! ;
  26:  !;Ausgleichswert EZ1/SP1 ;
  27:  R[197]=140    ;
  28:  ! ;
  29:  R[407]=65    ;
  30:  !Kompensation Kappenverschleiss ;
  31:  !Positions-Register ;
  32:  !Aufruf bei robotergef. EZ1/SP1 ;
  33:  CALL MOTN003    ;
  34:  ! ;
  35:  !Aufruf Makro57 "diverse Anwahlen ;
  36:  CALL MAKRO057    ;
  37:  !Docking ;
  38:  CALL MAKRO058    ;
/POS
/END
