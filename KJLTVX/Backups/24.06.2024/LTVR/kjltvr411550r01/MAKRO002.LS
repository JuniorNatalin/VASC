/PROG  MAKRO002
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TEIL-ARBEITSF.2";
PROG_SIZE	= 512;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-04-01  TIME 00:06:50;
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
    :  !Teil Arbeitsfertigmeldung 2 ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  WAIT (!F[525])    ;
    :  !Arbeitsfertigm. setzen ;
    :  GO[18]=2 ;
    :  !Auf Rueckmeldung warten ;
    :  WAIT (!DI[33] AND DI[34] AND !DI[35] AND !DI[36])    ;
    :  !Arbeitsfertigm. auf 0 setzen ;
    :  GO[18]=0 ;
    :  !Auf Rueckmeldung warten ;
    :  WAIT (!DI[33] AND !DI[34] AND !DI[35] AND !DI[36])    ;
/POS
/END
