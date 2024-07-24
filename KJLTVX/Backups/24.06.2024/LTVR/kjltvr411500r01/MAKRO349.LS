/PROG  MAKRO349
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SPANNG.6_AUF/ZU";
PROG_SIZE	= 402;
CREATE		= DATE 23-12-14  TIME 14:38:02;
MODIFIED	= DATE 23-12-14  TIME 14:39:20;
FILE_NAME	= MAKRO348;
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
   1:  !Spanngruppe 6 ZU/AUF ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Spanngruppe ZU ;
   7:  DO[589]=(!F[23]) ;
   8:  !Spanngruppe AUF ;
   9:  DO[590]=(F[23]) ;
  10:  F[29]=(ON) ;
/POS
/END
