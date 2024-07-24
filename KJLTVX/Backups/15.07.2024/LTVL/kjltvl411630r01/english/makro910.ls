/PROG  MAKRO910
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EX-AX1_Abmelden";
PROG_SIZE	= 380;
CREATE		= DATE 06-01-26  TIME 15:36:02;
MODIFIED	= DATE 17-05-03  TIME 17:19:08;
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
   1:  !-------------------------------- ;
   2:  !EX-AX1_Abmelden ;
   3:  !-------------------------------- ;
   4:   ;
   5:  !Messen Schleppfehler aus ;
   6:  DO[21401]=OFF ;
   7:   ;
   8:  !Aktive Zange an PMC ;
   9:  GO[10653]=0 ;
  10:   ;
  11:  MESSAGE[Internal:E1 DC] ;
/POS
/END
