/PROG  EQTEACH	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Eqlz teach mode";
PROG_SIZE	= 1320;
CREATE		= DATE 10-07-08  TIME 19:47:22;
MODIFIED	= DATE 16-06-13  TIME 23:01:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1848;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  SPOT : TRUE ; 

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
  SPOT Welding Equipment Number : 1 ;

CORNER_SPEED_HEADER;
  ENABLE_CORNER_SPEED   : FALSE;
/MN
    :  ! Set pos for gun closing motion ;
    :  UNLOCK PREG ;
    :  R[819]=$JCR.$JOG_GP ;
    :  SELECT R[819]=0,JMP LBL[99] ;
    :         =1,JMP LBL[10] ;
    :         =2,JMP LBL[20] ;
    :         =3,JMP LBL[30] ;
    :         =4,JMP LBL[40] ;
    :         ELSE,JMP LBL[99] ;
    :   ;
    :  LBL[10] ;
    :  UALM[1] ;
    :  END ;
    :   ;
    :  LBL[20] ;
    :  CALL EQEXTTYP(1) ;
    :  $EQZ.$EQ_GUN_MNT=1 ;
    :  CALL EQTCHPOS('MOTN014',1,1,10) ;
    :  CALL EQTCHPOS('MOTN015',1,1,0) ;
    :  ! Gun closing motion with eq ;
    :  CALL MOTN014    ;
    :  CALL MOTN015    ;
    :  DO[22925]=OFF ;
    :  END ;
    :   ;
    :  LBL[30] ;
    :  CALL EQEXTTYP(2) ;
    :  $EQZ.$EQ_GUN_MNT=2 ;
    :  CALL EQTCHPOS('MOTN024',1,1,10) ;
    :  CALL EQTCHPOS('MOTN025',1,1,0) ;
    :  ! Gun closing motion with eq ;
    :  CALL MOTN024    ;
    :  WAIT DI[877]=ON    ;
    :  CALL MOTN025    ;
    :  DO[22925]=OFF ;
    :  END ;
    :   ;
    :  LBL[40] ;
    :  CALL EQEXTTYP(3) ;
    :  $EQZ.$EQ_GUN_MNT=2 ;
    :  CALL EQTCHPOS('MOTN034',1,1,10) ;
    :  CALL EQTCHPOS('MOTN035',1,1,0) ;
    :  ! Gun closing motion with eq ;
    :  CALL MOTN034    ;
    :  CALL MOTN035    ;
    :  DO[22925]=OFF ;
    :  END ;
    :   ;
    :  LBL[99] ;
    :  DO[22925]=OFF ;
/POS
/END
