/PROG  MAKRO911
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Para.EZ1 Zange 1";
PROG_SIZE	= 1658;
CREATE		= DATE 08-03-13  TIME 19:29:54;
MODIFIED	= DATE 16-07-31  TIME 07:42:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 1958;
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
   1:  !Parameter EZ1 Zange 1  -- ;
   2:  !letzte Aenderung 26.03.2009  -- ;
   3:  !-------------------------------- ;
   4:  !Fuer Parameteruebernahme  -- ;
   5:  !MAKRO980 starten!!!  -- ;
   6:  !-------------------------------- ;
   7:  !Wenn Zange gedockt  -- ;
   8:  !erst abmelden  -- ;
   9:  !-------------------------------- ;
  10:  CALL MAKRO910    ;
  11:  !-------------------------------- ;
  12:  !EZ1 Anwahl  -- ;
  13:  !-------------------------------- ;
  14:  !Zangencode an EZ1  -- ;
  15:  !-------------------------------- ;
  16:  !PMC Parameter  -- ;
  17:  !-------------------------------- ;
  18:  !ITP Takte Sollwertvergleich  -- ;
  19:  GO[10651]=8 ;
  20:  !Schleppfehler Tol.mm x 1/10  -- ;
  21:  GO[10652]=150 ;
  22:  !Filter as Timer  -- ;
  23:  !for follow Error  -- ;
  24:  GO[10655]=2 ;
  25:  !Programm-Nr Handfunktion  -- ;
  26:  GO[10656]=98 ;
  27:  !Aktive Zange an PMC  -- ;
  28:  GO[10653]=1 ;
  29:  !Messen Schleppfehler ein  -- ;
  30:  DO[21401]=ON ;
  31:  !Schleppfehleralarm Deaktiv  -- ;
  32:  DO[21405]=OFF ;
  33:  !-------------------------------- ;
  34:  ! KAREL Parameter ;
  35:  !-------------------------------- ;
  36:  !Lower Limit mm x 1/10  -- ;
  37:  GO[10657]=(-200) ;
  38:  !Upper Limit mm x 1/10  -- ;
  39:  GO[10658]=1205 ;
  40:  !Speed Limit mm/sec x 10  -- ;
  41:  GO[10659]=2330 ;
  42:  !Accel Time 1 msec  -- ;
  43:  GO[10660]=150 ;
  44:  !Accel Time 2 msec  -- ;
  45:  GO[10661]=150 ;
  46:  !Min Accel Time msec  -- ;
  47:  GO[10662]=300 ;
  48:  !Parameter setzen  -- ;
  49:  !Zangenkonfig. gueltig  -- ;
  50:  R[304]=0    ;
  51:  F[1024]=(OFF) ;
  52:  MESSAGE[Parameter E1 Z1] ;
/POS
/END
