/PROG  EQPGPRE2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Eqlz2 prog prep";
PROG_SIZE	= 588;
CREATE		= DATE 10-07-09  TIME 19:00:42;
MODIFIED	= DATE 16-05-25  TIME 01:37:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 1048;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,1,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
    :  UNLOCK PREG ;
    :  CALL EQEXTTYP(2) ;
    :  $EQZ.$EQ_GUN_MNT=2 ;
    :  IF GO[6]<=97,JMP LBL[1] ;
    :  ! Set pos for gun closing motion ;
    :  CALL EQGSTRUN(0) ;
    :  CALL EQTCHPOS('MOTN021',1,1,15) ;
    :  JMP LBL[2] ;
    :  LBL[1] ;
    :  CALL EQGSTRUN(1) ;
    :  CALL EQTCHPOS('MOTN021',1,1,0) ;
    :  LBL[2] ;
    :  ! Set pos for gun opening motion ;
    :  CALL EQTCHPOS('MOTN022',1,1,0) ;
    :  CALL EQTCHPOS('MOTN023',3,1,15) ;
    :   ;
    :  PR[48]=LPOS    ;
/POS
/END
