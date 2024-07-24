/PROG  MOTN031
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP3 ZU";
PROG_SIZE	= 779;
CREATE		= DATE 10-07-09  TIME 16:38:02;
MODIFIED	= DATE 16-05-25  TIME 01:38:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1263;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
    :  !EQ EZSP1 ZU ;
    :  !letzte  Aenderung  16.08.2011 ;
    :  SKIP CONDITION DI[1038]=ON OR DO[22855]=ON    ;
    :  R[820]=($MCR.$GENOVERRIDE) ;
    :  OVERRIDE=100% ;
    :  $SSR.$SINGLESTEP=0 ;
    :  !EQ Start ;
    :  CALL EQSTART    ;
    :  DO[1038]=ON ;
    :L P[1] 10mm/sec CNT0 ACC250 Skip,LBL[1]    ;
    :  LBL[1] ;
    :  OVERRIDE=R[820] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  DO[22855]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
