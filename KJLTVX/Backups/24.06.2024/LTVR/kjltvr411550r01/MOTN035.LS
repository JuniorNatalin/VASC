/PROG  MOTN035
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP3 TIN AUF";
PROG_SIZE	= 673;
CREATE		= DATE 11-08-17  TIME 09:38:18;
MODIFIED	= DATE 16-06-13  TIME 23:05:50;
FILE_NAME	= EQPRGAPC;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 1049;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
    :  !EQ EZSP3 TIN AUF ;
    :  !letzte  Aenderung  13.07.2011 ;
    :  $SSR.$SINGLESTEP=0 ;
    :  !EZ3/SP3 oeffnen ;
    :L P[1] 200mm/sec CNT0 ACC100    ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
