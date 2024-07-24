/PROG  EQPGPRE3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Eqlz3 prog prep";
PROG_SIZE	= 588;
CREATE		= DATE 10-07-09  TIME 19:00:42;
MODIFIED	= DATE 16-06-13  TIME 23:01:52;
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
DEFAULT_GROUP	= 1,*,*,1,*;
CONTROL_CODE	= 00000000 00000000;
/MN
    :  UNLOCK PREG ;
    :  CALL EQEXTTYP(3) ;
    :  $EQZ.$EQ_GUN_MNT=2 ;
    :  IF GO[9]<=97,JMP LBL[1] ;
    :  ! Set pos for gun closing motion ;
    :  CALL EQGSTRUN(0) ;
    :  CALL EQTCHPOS('MOTN031',1,1,15) ;
    :  JMP LBL[2] ;
    :  LBL[1] ;
    :  CALL EQGSTRUN(1) ;
    :  CALL EQTCHPOS('MOTN031',1,1,0) ;
    :  LBL[2] ;
    :  ! Set pos for gun opening motion ;
    :  CALL EQTCHPOS('MOTN032',1,1,0) ;
    :  CALL EQTCHPOS('MOTN033',4,1,15) ;
    :   ;
    :  PR[48]=LPOS    ;
/POS
/END
