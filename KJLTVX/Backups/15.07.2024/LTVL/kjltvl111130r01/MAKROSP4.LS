/PROG  MAKROSP4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MAKROSP4_BMS";
PROG_SIZE	= 414;
CREATE		= DATE 10-06-15  TIME 12:00:00;
MODIFIED	= DATE 16-05-25  TIME 22:30:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 878;
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
   1:  !MAKROSP4 Status an BMS ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  IF (!F[63]),JMP LBL[1] ;
   7:  !******************************* ;
   8:  !Spannerstellung zur SPS melden ;
   9:  !******************************* ;
  10:  LBL[1] ;
/POS
/END
