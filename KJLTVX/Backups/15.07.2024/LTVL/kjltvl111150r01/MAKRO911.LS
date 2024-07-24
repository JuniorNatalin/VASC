/PROG  MAKRO911
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Para.EZ1 Zange 1";
PROG_SIZE	= 1658;
CREATE		= DATE 08-03-13  TIME 19:29:54;
MODIFIED	= DATE 19-11-10  TIME 09:31:28;
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
    :  !Parameter EZ1 Zange 1  -- ;
    :  !letzte Aenderung 26.03.2009  -- ;
    :  !-------------------------------- ;
    :  !Fuer Parameteruebernahme  -- ;
    :  !MAKRO980 starten!!!  -- ;
    :  !-------------------------------- ;
    :  !Wenn Zange gedockt  -- ;
    :  !erst abmelden  -- ;
    :  !-------------------------------- ;
    :  CALL MAKRO910    ;
    :  !-------------------------------- ;
    :  !EZ1 Anwahl  -- ;
    :  !-------------------------------- ;
    :  !Zangencode an EZ1  -- ;
    :  !-------------------------------- ;
    :  !PMC Parameter  -- ;
    :  !-------------------------------- ;
    :  !ITP Takte Sollwertvergleich  -- ;
    :  GO[10651]=11 ;
    :  !Schleppfehler Tol.mm x 1/10  -- ;
    :  GO[10652]=150 ;
    :  !Filter as Timer  -- ;
    :  !for follow Error  -- ;
    :  GO[10655]=2 ;
    :  !Programm-Nr Handfunktion  -- ;
    :  GO[10656]=98 ;
    :  !Aktive Zange an PMC  -- ;
    :  GO[10653]=1 ;
    :  !Messen Schleppfehler ein  -- ;
    :  DO[21401]=ON ;
    :  !Schleppfehleralarm Deaktiv  -- ;
    :  DO[21405]=OFF ;
    :  !-------------------------------- ;
    :  ! KAREL Parameter ;
    :  !-------------------------------- ;
    :  !Lower Limit mm x 1/10  -- ;
    :  GO[10657]=(-200) ;
    :  !Upper Limit mm x 1/10  -- ;
    :  GO[10658]=2144 ;
    :  !Speed Limit mm/sec x 10  -- ;
    :  GO[10659]=2830 ;
    :  !Accel Time 1 msec  -- ;
    :  GO[10660]=150 ;
    :  !Accel Time 2 msec  -- ;
    :  GO[10661]=150 ;
    :  !Min Accel Time msec  -- ;
    :  GO[10662]=300 ;
    :  !Parameter setzen  -- ;
    :  !Zangenkonfig. gueltig  -- ;
    :  R[304]=0    ;
    :  F[1024]=(OFF) ;
    :  MESSAGE[Parameter E1 Z1] ;
/POS
/END
