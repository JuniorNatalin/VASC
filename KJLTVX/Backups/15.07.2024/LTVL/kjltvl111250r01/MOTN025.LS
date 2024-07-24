/PROG  MOTN025
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP2 TIN AUF";
PROG_SIZE	= 687;
CREATE		= DATE 10-07-09  TIME 16:38:32;
MODIFIED	= DATE 16-05-25  TIME 04:38:02;
FILE_NAME	= EQPRGAPC;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 1063;
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
   1:  !EQ EZSP2 TIN AUF ;
   2:  !letzte  Aenderung  13.07.2011 ;
   3:  $SSR.$SINGLESTEP=0 ;
   4:  ! Open movable electrode first ;
   5:L P[1] 200mm/sec CNT0 ACC100    ;
   6:  R[819]=DO[22902]    ;
   7:  $SSR.$SINGLESTEP=R[819] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
