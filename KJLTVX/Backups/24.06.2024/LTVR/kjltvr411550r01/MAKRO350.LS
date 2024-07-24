/PROG  MAKRO350
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SPANNG.7_AUF/ZU";
PROG_SIZE	= 402;
CREATE		= DATE 23-12-17  TIME 08:13:50;
MODIFIED	= DATE 23-12-17  TIME 08:14:42;
FILE_NAME	= MAKRO349;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 734;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
    :  !Spanngruppe 7 ZU/AUF ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  !Spanngruppe ZU ;
    :  DO[591]=(!F[23]) ;
    :  !Spanngruppe AUF ;
    :  DO[592]=(F[23]) ;
    :  F[30]=(ON) ;
/POS
/END
