/PROG  MAKRO348
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SPANNG.5_AUF/ZU";
PROG_SIZE	= 360;
CREATE		= DATE 10-09-17  TIME 16:56:34;
MODIFIED	= DATE 17-03-27  TIME 18:20:30;
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
   1:  !Spanngruppe 5 ZU/AUF ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Spanngruppe ZU ;
   7:  DO[587]=(!F[23]) ;
   8:  !Spanngruppe AUF ;
   9:  DO[588]=(F[23]) ;
  10:  F[28]=(ON) ;
/POS
/END
