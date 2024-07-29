/PROG  MAKRO057
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FLAG-Init";
PROG_SIZE	= 1104;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 17-03-02  TIME 13:40:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 1440;
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
   1:  !FLAG-Init ;
   2:  !Roboter mit Greifer. ;
   3:  !Ped MIG/MAG ;
   4:   ;
   5:  !Energiesparmodus aktivieren ;
   6:  F[522]=(ON) ;
   7:  !Mit Profinet ;
   8:  F[556]=(ON) ;
   9:  !VWRIP mit Kuehlwasserfunktion ;
  10:  F[819]=(OFF) ;
  11:   ;
  12:  !Handling ;
  13:  !mit Rueckm. Steuerluft vorh. ;
  14:  F[523]=(ON) ;
  15:  !mit Rueckm. Steuerluft nicht vor ;
  16:  F[524]=(OFF) ;
  17:   ;
  18:  !MS Allgemein ;
  19:  !Mit Reinigung an KS Schwenkeinhe ;
  20:  F[528]=(OFF) ;
  21:  !Mit Rein. an Pneum. Schwenkeinh. ;
  22:  F[529]=(ON) ;
  23:  !MS Akt. von MIG/MAG Suchlauf ;
  24:  F[551]=(OFF) ;
  25:  !MS ohne Drahtendekontrolle ;
  26:  !Praegen ;
  27:  !Mit Praeger ;
  28:  F[555]=(ON) ;
  29:  !bei Prozessstart ;
  30:  F[599]=(OFF) ;
  31:  !MIG/MAG MS1 ;
  32:  !MS1 Aktivieren im Techpaket ;
  33:  F[549]=(ON) ;
  34:  !MS1 Spruehen ueber Schnittstelle ;
  35:  F[574]=(ON) ;
  36:  !MS1 Mit einspruehen ;
  37:  F[575]=(ON) ;
  38:  !MS1 Mit Versetzeinh. (Reinigung) ;
  39:  F[576]=(OFF) ;
  40:  !MS1 Mit Nahtwiederaufsetzen ;
  41:  F[577]=(OFF) ;
/POS
/END
