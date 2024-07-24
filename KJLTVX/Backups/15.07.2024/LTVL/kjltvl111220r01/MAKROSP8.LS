/PROG  MAKROSP8
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MAKROSP8_ProfiNe";
PROG_SIZE	= 380;
CREATE		= DATE 10-06-15  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:15:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 712;
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
   1:  !MAKROSP8 (ProfiNet-Abmeld.) ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Abmeldung ProfiNet-Safe ;
   7:  !fuer Wartung/Neustart ;
   8:  DO[4089]=(DO[22849]) ;
   9:  DO[22853]=(DO[4089]) ;
  10:  DO[22854]=(DI[4089]) ;
/POS
/END
