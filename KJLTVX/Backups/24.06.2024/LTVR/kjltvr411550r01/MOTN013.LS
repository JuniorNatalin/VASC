/PROG  MOTN013
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP1 AUF POS";
PROG_SIZE	= 738;
CREATE		= DATE 11-08-17  TIME 15:56:10;
MODIFIED	= DATE 17-04-01  TIME 00:07:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 1106;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
    :  !EQ EZSP1 AUF POS ;
    :  !letzte  Aenderung  31.08.2011 ;
    :  !Ausschalten Ausgleich ;
    :  R[820]=($MCR.$GENOVERRIDE) ;
    :  OVERRIDE=100% ;
    :  $SSR.$SINGLESTEP=0 ;
    :  CALL EQGUNOPN    ;
    :  CALL EQEND    ;
    :  !Open movable electrode ;
    :  //J P[1] 100% CNT10 ACC200    ;
    :  OVERRIDE=R[820] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
/POS
P[1]{
   GP2:
	UF : F, UT : F,		CONFIG : '',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
