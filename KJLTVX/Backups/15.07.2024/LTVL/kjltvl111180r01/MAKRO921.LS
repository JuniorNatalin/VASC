/PROG  MAKRO921
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Para.EZ2 Zange 1";
PROG_SIZE	= 1652;
CREATE		= DATE 00-11-17  TIME 13:37:32;
MODIFIED	= DATE 16-07-05  TIME 05:35:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 1952;
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
   1:  !Parameter EZ2 Zange 1  -- ;
   2:  !letzte Aenderung 14.04.2009  -- ;
   3:  !-------------------------------- ;
   4:  !Für Parameterübernahme  -- ;
   5:  !MAKRO980 starten  -- ;
   6:  !-------------------------------- ;
   7:  !Wenn Zange gedockt  -- ;
   8:  !erst abmelden  -- ;
   9:  !-------------------------------- ;
  10:  CALL MAKRO920    ;
  11:  !-------------------------------- ;
  12:  !EZ Anwahl  -- ;
  13:  !-------------------------------- ;
  14:  !Zangencode an EZ2  -- ;
  15:  !-------------------------------- ;
  16:  !PMC Parameter  -- ;
  17:  !-------------------------------- ;
  18:  !ITP Takte Sollwertvergleich  -- ;
  19:  GO[10601]=9 ;
  20:  !Schleppfehler Tol.mm x 1/10  -- ;
  21:  GO[10602]=150 ;
  22:  !Filter as Timer  -- ;
  23:  !for follow Error  -- ;
  24:  GO[10605]=2 ;
  25:  !Programm-Nr Handfunktion  -- ;
  26:  GO[10606]=98 ;
  27:  !Aktive Zange an PMC  -- ;
  28:  GO[10603]=1 ;
  29:  !Messen Schleppfehler ein  -- ;
  30:  DO[21401]=ON ;
  31:  !Schleppfehleralarm Deaktiv  -- ;
  32:  DO[21405]=OFF ;
  33:  !-------------------------------- ;
  34:  !KAREL Parameter  -- ;
  35:  !-------------------------------- ;
  36:  !Lower Limit mm x 1/10  -- ;
  37:  GO[10607]=(-200) ;
  38:  !Upper Limit mm x 1/10 ;
  39:  GO[10608]=2138 ;
  40:  !Speed Limit mm/sec x 1/10  -- ;
  41:  GO[10609]=2830 ;
  42:  !Accel Time 1 msec  -- ;
  43:  GO[10610]=150 ;
  44:  !Accel Time 2 msec  -- ;
  45:  GO[10611]=150 ;
  46:  !Min Accel Time msec  -- ;
  47:  GO[10612]=300 ;
  48:  !Parameter setzen  -- ;
  49:  !Zangenkonfig. gueltig  -- ;
  50:  R[309]=0    ;
  51:  F[1024]=(OFF) ;
  52:  MESSAGE[Parameter E2 Z1] ;
/POS
/END
