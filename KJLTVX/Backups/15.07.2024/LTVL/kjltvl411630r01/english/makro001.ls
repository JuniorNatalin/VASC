/PROG  MAKRO001
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TEIL-ARBEITSF.1";
PROG_SIZE	= 512;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 18:30:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 828;
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
   1:  !Teil Arbeitsfertigmeldung 1 ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 001 ;
   5:  !letzte  Aenderung  06.02.2015 LZ ;
   6:  WAIT (!F[525])    ;
   7:  !Arbeitsfertigm. setzen ;
   8:  GO[18]=1 ;
   9:  !Auf Rueckmeldung warten ;
  10:  WAIT (DI[33] AND !DI[34] AND !DI[35] AND !DI[36])    ;
  11:  !Arbeitsfertigm. auf 0 setzen ;
  12:  GO[18]=0 ;
  13:  !Auf Rueckmeldung warten ;
  14:  WAIT (!DI[33] AND !DI[34] AND !DI[35] AND !DI[36])    ;
/POS
/END
