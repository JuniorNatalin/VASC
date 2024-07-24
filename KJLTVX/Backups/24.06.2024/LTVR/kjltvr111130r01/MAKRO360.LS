/PROG  MAKRO360
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SAUGK.1_EIN/AUS";
PROG_SIZE	= 488;
CREATE		= DATE 10-09-17  TIME 16:56:34;
MODIFIED	= DATE 17-03-31  TIME 10:51:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 928;
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
   1:  !Saugkreis 1 EIN/AUS ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  !Saugkreis Saugen EIN ;
   7:  WAIT (!DO[618])    ;
   8:  DO[617]=(!F[23]) ;
   9:  !Saugkreis Saugen AUS/Abblasen EI ;
  10:  IF (F[54]),JMP LBL[1] ;
  11:  IF (F[23]),DO[618]=PULSE,3.0sec ;
  12:  IF (DO[618]),JMP LBL[2] ;
  13:  LBL[1] ;
  14:  DO[618]=(F[23]) ;
  15:  LBL[2] ;
  16:  F[40]=(ON) ;
/POS
/END
