/PROG  MOTN012
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP1 AUF";
PROG_SIZE	= 714;
CREATE		= DATE 10-07-09  TIME 16:38:32;
MODIFIED	= DATE 17-03-31  TIME 10:13:44;
FILE_NAME	= EQPRGAPC;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 1078;
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
   1:  !EQ EZSP1 AUF ;
   2:  !letzte  Aenderung  21.07.2015 DB ;
   3:  R[400]=R[400]+1    ;
   4:  R[819]=($SSR.$SINGLESTEP) ;
   5:  $SSR.$SINGLESTEP=0 ;
   6:  DO[717]=ON ;
   7:  ! Open fixed electrode ;
   8:L P[1] max_speed CNT0 ACC100    ;
   9:  R[819]=DO[22902]    ;
  10:  $SSR.$SINGLESTEP=R[819] ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
	E1 = ********  mm
};
/END
