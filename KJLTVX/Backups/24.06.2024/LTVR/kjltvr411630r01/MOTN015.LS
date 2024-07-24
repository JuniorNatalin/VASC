/PROG  MOTN015
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP1 TIN AUF";
PROG_SIZE	= 652;
CREATE		= DATE 10-07-09  TIME 16:38:32;
MODIFIED	= DATE 17-03-31  TIME 10:27:14;
FILE_NAME	= EQPRGAPC;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 1028;
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
   1:  !EQ EZSP1 TIN AUF ;
   2:  !letzte  Aenderung  21.07.2015 DB ;
   3:  $SSR.$SINGLESTEP=0 ;
   4:  ! Open movable electrode first ;
   5:L P[1] 200mm/sec CNT0 ACC100    ;
   6:  R[819]=DO[22902]    ;
   7:  $SSR.$SINGLESTEP=R[819] ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
