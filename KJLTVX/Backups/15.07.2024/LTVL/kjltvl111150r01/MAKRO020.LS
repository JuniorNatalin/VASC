/PROG  MAKRO020
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ROB_VERRIEGELUNG";
PROG_SIZE	= 1768;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 61;
MEMORY_SIZE	= 2024;
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
    :  !Roboter Verriegelungen ;
    :  !KS24 ;
    :  !Version: 01 ;
    :  !Stand: 001 ;
    :  !letzte  Aenderung  06.02.2015 LZ ;
    :  DO[41]=(DO[41] OR DO[81]) ;
    :  DO[42]=(DO[42] OR DO[82]) ;
    :  DO[43]=(DO[43] OR DO[83]) ;
    :  DO[44]=(DO[44] OR DO[84]) ;
    :  DO[45]=(DO[45] OR DO[85]) ;
    :  DO[46]=(DO[46] OR DO[86]) ;
    :  DO[47]=(DO[47] OR DO[87]) ;
    :  DO[48]=(DO[48] OR DO[88]) ;
    :  DO[49]=(DO[49] OR DO[89]) ;
    :  DO[50]=(DO[50] OR DO[90]) ;
    :  DO[51]=(DO[51] OR DO[91]) ;
    :  DO[52]=(DO[52] OR DO[92]) ;
    :  DO[53]=(DO[53] OR DO[93]) ;
    :  DO[54]=(DO[54] OR DO[94]) ;
    :  DO[55]=(DO[55] OR DO[95]) ;
    :  DO[56]=(DO[56] OR DO[96]) ;
    :  WAIT ((DI[81] OR !DO[81]) AND (DI[82] OR !DO[82]) AND (DI[83] OR !DO[83]) AND (DI[84] OR !DO[84]) AND (DI[85] OR !DO[85]))    ;
    :  WAIT ((DI[86] OR !DO[86]) AND (DI[87] OR !DO[87]) AND (DI[88] OR !DO[88]) AND (DI[89] OR !DO[89]) AND (DI[90] OR !DO[90]))    ;
    :  WAIT ((DI[91] OR !DO[91]) AND (DI[92] OR !DO[92]) AND (DI[93] OR !DO[93]) AND (DI[94] OR !DO[94]) AND (DI[95] OR !DO[95]))    ;
    :  WAIT (DI[96] OR !DO[96])    ;
    :  WAIT ((DI[41] OR !DO[81]) AND (DI[42] OR !DO[82]) AND (DI[43] OR !DO[83]) AND (DI[44] OR !DO[84]) AND (DI[45] OR !DO[85]))    ;
    :  WAIT ((DI[46] OR !DO[86]) AND (DI[47] OR !DO[87]) AND (DI[48] OR !DO[88]) AND (DI[49] OR !DO[89]) AND (DI[50] OR !DO[90]))    ;
    :  WAIT ((DI[51] OR !DO[91]) AND (DI[52] OR !DO[92]) AND (DI[53] OR !DO[93]) AND (DI[54] OR !DO[94]) AND (DI[55] OR !DO[95]))    ;
    :  WAIT (DI[56] OR !DO[96])    ;
    :  DO[41]=(DO[41] AND !DO[81]) ;
    :  DO[42]=(DO[42] AND !DO[82]) ;
    :  DO[43]=(DO[43] AND !DO[83]) ;
    :  DO[44]=(DO[44] AND !DO[84]) ;
    :  DO[45]=(DO[45] AND !DO[85]) ;
    :  DO[46]=(DO[46] AND !DO[86]) ;
    :  DO[47]=(DO[47] AND !DO[87]) ;
    :  DO[48]=(DO[48] AND !DO[88]) ;
    :  DO[49]=(DO[49] AND !DO[89]) ;
    :  DO[50]=(DO[50] AND !DO[90]) ;
    :  DO[51]=(DO[51] AND !DO[91]) ;
    :  DO[52]=(DO[52] AND !DO[92]) ;
    :  DO[53]=(DO[53] AND !DO[93]) ;
    :  DO[54]=(DO[54] AND !DO[94]) ;
    :  DO[55]=(DO[55] AND !DO[95]) ;
    :  DO[56]=(DO[56] AND !DO[96]) ;
    :  DO[81]=(OFF) ;
    :  DO[82]=(OFF) ;
    :  DO[83]=(OFF) ;
    :  DO[84]=(OFF) ;
    :  DO[85]=(OFF) ;
    :  DO[86]=(OFF) ;
    :  DO[87]=(OFF) ;
    :  DO[88]=(OFF) ;
    :  DO[89]=(OFF) ;
    :  DO[90]=(OFF) ;
    :  DO[91]=(OFF) ;
    :  DO[92]=(OFF) ;
    :  DO[93]=(OFF) ;
    :  DO[94]=(OFF) ;
    :  DO[95]=(OFF) ;
    :  DO[96]=(OFF) ;
/POS
/END
