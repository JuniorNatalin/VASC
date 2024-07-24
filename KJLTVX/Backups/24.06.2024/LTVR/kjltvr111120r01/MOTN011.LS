/PROG  MOTN011
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP1 ZU";
PROG_SIZE	= 780;
CREATE		= DATE 11-08-17  TIME 15:56:06;
MODIFIED	= DATE 17-03-31  TIME 10:53:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1264;
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
   1:  !EQ EZSP1 ZU ;
   2:  !letzte  Aenderung  21.07.2015 DB ;
   3:  SKIP CONDITION DI[718]=ON OR $EQZ.$EQ_SOFTMODE=0    ;
   4:  R[820]=($MCR.$GENOVERRIDE) ;
   5:  OVERRIDE=100% ;
   6:  $SSR.$SINGLESTEP=0 ;
   7:  !@@@@@ EQ START @@@@@ ;
   8:  CALL EQSTART    ;
   9:  DO[718]=ON ;
  10:L P[1] 10mm/sec CNT0 ACC250 Skip,LBL[1]    ;
  11:  LBL[1] ;
  12:  OVERRIDE=R[820] ;
  13:  R[819]=DO[22902]    ;
  14:  $SSR.$SINGLESTEP=R[819] ;
  15:  DO[22855]=OFF ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
