/PROG  MOTN024
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "EQ EZSP2 TIN";
PROG_SIZE	= 1101;
CREATE		= DATE 10-07-09  TIME 16:38:02;
MODIFIED	= DATE 16-05-27  TIME 07:24:10;
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
   1:  !EQ EZSP2 TIN ;
   2:  UNLOCK PREG ;
   3:  PR[49]=LPOS    ;
   4:  !letzte  Aenderung  01.06.2011 ;
   5:  SKIP CONDITION DI[878]=ON OR DO[22855]=ON    ;
   6:  DO[875]=ON ;
   7:  R[820]=($MCR.$GENOVERRIDE) ;
   8:  OVERRIDE=100% ;
   9:  $SSR.$SINGLESTEP=0 ;
  10:J PR[49] 100% CNT100 ACC100    ;
  11:  !@@@@@ EQ START @@@@@ ;
  12:  CALL EQSTART    ;
  13:  DO[22925]=ON ;
  14:  DO[870]=ON ;
  15:  WAIT GI[52]>85    ;
  16:  WAIT GI[52]<100    ;
  17:L P[1] 10mm/sec CNT0 ACC250 Skip,LBL[1]    ;
  18:  LBL[1] ;
  19:  R[819]=DO[22902]    ;
  20:  $SSR.$SINGLESTEP=R[819] ;
  21:  WAIT DO[870]=OFF OR DO[22855]=ON    ;
  22:  CALL EQGUNOPN    ;
  23:  CALL EQEND    ;
  24:  ! Set pos for gun opening motion ;
  25:  //CALL EQTCHPOS('MOTN025',1,1,(-3)) ;
  26:  OVERRIDE=R[820] ;
  27:  R[819]=DO[22902]    ;
  28:  $SSR.$SINGLESTEP=R[819] ;
  29:  DO[22855]=OFF ;
  30:  END ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 2,		CONFIG : 'N U T, 0, 0, -1',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END
