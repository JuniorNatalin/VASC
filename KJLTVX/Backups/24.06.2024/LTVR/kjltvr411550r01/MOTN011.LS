/PROG  MOTN011
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP1 ZU";
PROG_SIZE	= 780;
CREATE		= DATE 11-08-17  TIME 15:56:06;
MODIFIED	= DATE 17-04-01  TIME 00:07:42;
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
    :  !EQ EZSP1 ZU ;
    :  !letzte  Aenderung  21.07.2015 DB ;
    :  SKIP CONDITION DI[718]=ON OR $EQZ.$EQ_SOFTMODE=0    ;
    :  R[820]=($MCR.$GENOVERRIDE) ;
    :  OVERRIDE=100% ;
    :  $SSR.$SINGLESTEP=0 ;
    :  !@@@@@ EQ START @@@@@ ;
    :  CALL EQSTART    ;
    :  DO[718]=ON ;
    :L P[1] 10mm/sec CNT0 ACC250 Skip,LBL[1]    ;
    :  LBL[1] ;
    :  OVERRIDE=R[820] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  DO[22855]=OFF ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
