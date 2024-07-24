/PROG  EQTEACH	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Eqlz teach mode";
PROG_SIZE	= 1320;
CREATE		= DATE 10-07-08  TIME 19:47:22;
MODIFIED	= DATE 16-06-12  TIME 00:52:46;
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
   1:  ! Set pos for gun closing motion ;
   2:  UNLOCK PREG ;
   3:  R[819]=$JCR.$JOG_GP ;
   4:  SELECT R[819]=0,JMP LBL[99] ;
   5:         =1,JMP LBL[10] ;
   6:         =2,JMP LBL[20] ;
   7:         =3,JMP LBL[30] ;
   8:         =4,JMP LBL[40] ;
   9:         ELSE,JMP LBL[99] ;
  10:   ;
  11:  LBL[10] ;
  12:  UALM[1] ;
  13:  END ;
  14:   ;
  15:  LBL[20] ;
  16:  CALL EQEXTTYP(1) ;
  17:  $EQZ.$EQ_GUN_MNT=1 ;
  18:  CALL EQTCHPOS('MOTN014',1,1,10) ;
  19:  CALL EQTCHPOS('MOTN015',1,1,0) ;
  20:  ! Gun closing motion with eq ;
  21:  CALL MOTN014    ;
  22:  CALL MOTN015    ;
  23:  DO[22925]=OFF ;
  24:  END ;
  25:   ;
  26:  LBL[30] ;
  27:  CALL EQEXTTYP(2) ;
  28:  $EQZ.$EQ_GUN_MNT=2 ;
  29:  CALL EQTCHPOS('MOTN024',1,1,10) ;
  30:  CALL EQTCHPOS('MOTN025',1,1,0) ;
  31:  ! Gun closing motion with eq ;
  32:  CALL MOTN024    ;
  33:  WAIT DI[877]=ON    ;
  34:  CALL MOTN025    ;
  35:  DO[22925]=OFF ;
  36:  END ;
  37:   ;
  38:  LBL[40] ;
  39:  CALL EQEXTTYP(3) ;
  40:  $EQZ.$EQ_GUN_MNT=2 ;
  41:  CALL EQTCHPOS('MOTN034',1,1,10) ;
  42:  CALL EQTCHPOS('MOTN035',1,1,0) ;
  43:  ! Gun closing motion with eq ;
  44:  CALL MOTN034    ;
  45:  CALL MOTN035    ;
  46:  DO[22925]=OFF ;
  47:  END ;
  48:   ;
  49:  LBL[99] ;
  50:  DO[22925]=OFF ;
/POS
/END
