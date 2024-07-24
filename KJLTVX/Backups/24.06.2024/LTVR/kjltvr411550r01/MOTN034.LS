/PROG  MOTN034
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP3 TIN";
PROG_SIZE	= 1101;
CREATE		= DATE 11-08-17  TIME 09:38:16;
MODIFIED	= DATE 16-06-13  TIME 23:05:50;
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
    :  !EQ EZSP3 TIN ;
    :  UNLOCK PREG ;
    :  PR[49]=LPOS    ;
    :  !letzte  Aenderung  13.07.2011 ;
    :  SKIP CONDITION DI[1038]=ON OR DO[22855]=ON    ;
    :  DO[1035]=ON ;
    :  R[820]=($MCR.$GENOVERRIDE) ;
    :  OVERRIDE=100% ;
    :  $SSR.$SINGLESTEP=0 ;
    :J PR[49] 100% CNT100 ACC100    ;
    :  !@@@@@ EQ START @@@@@ ;
    :  CALL EQSTART    ;
    :  DO[22925]=ON ;
    :  DO[1030]=ON ;
    :  WAIT GI[57]>80    ;
    :  WAIT GI[57]<100    ;
    :L P[1] 10mm/sec CNT0 ACC250 Skip,LBL[1]    ;
    :  LBL[1] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  WAIT DO[1030]=OFF OR DO[22855]=ON    ;
    :  CALL EQGUNOPN    ;
    :  CALL EQEND    ;
    :  ! Set pos for gun opening motion ;
    :  //CALL EQTCHPOS('MOTN035',1,1,(-3)) ;
    :  OVERRIDE=R[820] ;
    :  R[819]=DO[22902]    ;
    :  $SSR.$SINGLESTEP=R[819] ;
    :  DO[22855]=OFF ;
    :  END ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
