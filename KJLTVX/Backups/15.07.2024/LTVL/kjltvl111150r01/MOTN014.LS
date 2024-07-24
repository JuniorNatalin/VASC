/PROG  MOTN014
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP1 TIN";
PROG_SIZE	= 1074;
CREATE		= DATE 10-07-09  TIME 16:38:02;
MODIFIED	= DATE 17-03-27  TIME 17:07:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1522;
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
    :  !EQ EZSP1 TIN ;
    :  UNLOCK PREG ;
    :  PR[49]=LPOS    ;
    :  !letzte  Aenderung  21.07.2015 DB ;
    :  SKIP CONDITION DI[718]=ON OR DO[22855]=ON    ;
    :  DO[715]=ON ;
    :  R[820]=($MCR.$GENOVERRIDE) ;
    :  OVERRIDE=100% ;
    :  $SSR.$SINGLESTEP=0 ;
    :J PR[49] 100% CNT100 ACC100    ;
    :  !@@@@@ EQ START @@@@@ ;
    :  CALL EQSTART    ;
    :  DO[22925]=ON ;
    :  DO[710]=ON ;
    :  WAIT GI[47]>130    ;
    :  WAIT GI[47]<130    ;
    :L P[1] 10mm/sec CNT0 ACC250 Skip,LBL[1]    ;
    :  LBL[1] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  WAIT DO[710]=OFF OR DO[22855]=ON    ;
    :  CALL EQGUNOPN    ;
    :  CALL EQEND    ;
    :  ! Set pos for gun opening motion ;
    :  //CALL EQTCHPOS('MOTN015',1,1,(-3)) ;
    :  OVERRIDE=R[820] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  DO[22855]=OFF ;
    :  END ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
