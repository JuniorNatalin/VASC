/PROG  MOTN022
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP2 AUF";
PROG_SIZE	= 743;
CREATE		= DATE 10-07-09  TIME 16:38:32;
MODIFIED	= DATE 16-05-27  TIME 07:37:18;
FILE_NAME	= EQPRGAPC;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 1107;
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
   1:  !EQ EZSP2 AUF ;
   2:  !letzte  Aenderung  16.08.2011 ;
   3:  R[400]=R[400]+1    ;
   4:  R[819]=($SSR.$SINGLESTEP) ;
   5:  $SSR.$SINGLESTEP=0 ;
   6:  DO[877]=ON ;
   7:  !EZ2/SP2 oeffnen ;
   8:L P[1] max_speed CNT0 ACC200    ;
   9:  R[819]=DO[22902]    ;
  10:  $SSR.$SINGLESTEP=R[819] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
