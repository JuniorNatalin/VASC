/PROG  MAKRO349
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SPANNG.6_AUF/ZU";
PROG_SIZE	= 360;
CREATE		= DATE 10-09-17  TIME 16:56:34;
MODIFIED	= DATE 17-04-01  TIME 00:06:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 692;
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
    :  !Spanngruppe 6 ZU/AUF ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  !Spanngruppe ZU ;
    :  DO[589]=(!F[23]) ;
    :  !Spanngruppe AUF ;
    :  DO[590]=(F[23]) ;
    :  F[29]=(ON) ;
/POS
/END
