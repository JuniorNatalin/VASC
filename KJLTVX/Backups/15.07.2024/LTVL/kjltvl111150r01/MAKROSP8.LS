/PROG  MAKROSP8
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MAKROSP8_ProfiNe";
PROG_SIZE	= 380;
CREATE		= DATE 10-06-15  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:52;
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
    :  !MAKROSP8 (ProfiNet-Abmeld.) ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  !Abmeldung ProfiNet-Safe ;
    :  !fuer Wartung/Neustart ;
    :  DO[4089]=(DO[22849]) ;
    :  DO[22853]=(DO[4089]) ;
    :  DO[22854]=(DI[4089]) ;
/POS
/END
