/PROG  MAKRO920
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EX-AX2_Abmelden";
PROG_SIZE	= 380;
CREATE		= DATE 06-01-26  TIME 15:36:02;
MODIFIED	= DATE 17-05-03  TIME 01:51:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 708;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000001;
/MN
    :  !-------------------------------- ;
    :  !EX-AX2_Abmelden ;
    :  !-------------------------------- ;
    :   ;
    :  !Messen Schleppfehler aus ;
    :  DO[20601]=OFF ;
    :   ;
    :  !Aktive Zange an PMC ;
    :  GO[10603]=0 ;
    :   ;
    :  MESSAGE[Internal:E2 DC] ;
/POS
/END
