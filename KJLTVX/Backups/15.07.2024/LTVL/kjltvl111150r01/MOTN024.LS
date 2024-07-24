/PROG  MOTN024
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP2 TIN";
PROG_SIZE	= 1101;
CREATE		= DATE 10-07-09  TIME 16:38:02;
MODIFIED	= DATE 16-05-25  TIME 01:38:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1549;
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
    :  !EQ EZSP2 TIN ;
    :  UNLOCK PREG ;
    :  PR[49]=LPOS    ;
    :  !letzte  Aenderung  01.06.2011 ;
    :  SKIP CONDITION DI[878]=ON OR DO[22855]=ON    ;
    :  DO[875]=ON ;
    :  R[820]=($MCR.$GENOVERRIDE) ;
    :  OVERRIDE=100% ;
    :  $SSR.$SINGLESTEP=0 ;
    :J PR[49] 100% CNT100 ACC100    ;
    :  !@@@@@ EQ START @@@@@ ;
    :  CALL EQSTART    ;
    :  DO[22925]=ON ;
    :  DO[870]=ON ;
    :  WAIT GI[52]>85    ;
    :  WAIT GI[52]<100    ;
    :L P[1] 10mm/sec CNT0 ACC250 Skip,LBL[1]    ;
    :  LBL[1] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  WAIT DO[870]=OFF OR DO[22855]=ON    ;
    :  CALL EQGUNOPN    ;
    :  CALL EQEND    ;
    :  ! Set pos for gun opening motion ;
    :  //CALL EQTCHPOS('MOTN025',1,1,(-3)) ;
    :  OVERRIDE=R[820] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  DO[22855]=OFF ;
    :  END ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
