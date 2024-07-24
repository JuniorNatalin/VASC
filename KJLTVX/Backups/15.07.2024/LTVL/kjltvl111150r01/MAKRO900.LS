/PROG  MAKRO900
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "StrtAct_EX-AXIS";
PROG_SIZE	= 2330;
CREATE		= DATE 06-01-26  TIME 15:36:02;
MODIFIED	= DATE 17-05-03  TIME 01:51:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 84;
MEMORY_SIZE	= 2754;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000001;
/MN
    :  !******************************** ;
    :  !******************************** ;
    :  !   Voreinstellungen für Servozan ;
    :  !      Bitte nachfolgende Werte ;
    :  !       entsprechend anpassen ;
    :  !        Stand: 26.02.2016 ;
    :  !******************************** ;
    :  !******************************** ;
    :   ;
    :   ;
    :  !-------------------------------- ;
    :  ! SERVO Controller aktivieren ;
    :  !-------------------------------- ;
    :  !SERVO-Ctrl1 in USE ;
    :  //DO[10105]=OFF ;
    :  !SERVO-Ctrl2 in USE ;
    :  //DO[10106]=OFF ;
    :  !SERVO-Ctrl3 in USE ;
    :  //DO[10107]=OFF ;
    :  !SERVO-Ctrl4 in USE ;
    :  //DO[10108]=OFF ;
    :   ;
    :   ;
    :   ;
    :  !-------------------------------- ;
    :  !Voreinstellungen SERVO Contr. 1 ;
    :  !   falls vorhanden ;
    :  !-------------------------------- ;
    :  IF DO[10105]=OFF,JMP LBL[1] ;
    :  !      Active GunNum ;
    :  ! GO[10653]=0 ;
    :  !     PRG-No ManFunc ;
    :  GO[10656]=199 ;
    :  !    Conf.Amount GUN ;
    :  GO[10801]=1 ;
    :  !    Used Amount GUN ;
    :  GO[10654]=(GO[10801]) ;
    :  LBL[1] ;
    :   ;
    :  !-------------------------------- ;
    :  !Voreinstellungen SERVO Contr. 2 ;
    :  !   falls vorhanden ;
    :  !-------------------------------- ;
    :  IF DO[10106]=OFF,JMP LBL[2] ;
    :  !      Active GunNum ;
    :  ! GO[10603]=1 ;
    :  !     PRG-No ManFunc ;
    :  GO[10606]=199 ;
    :  !    Conf.Amount GUN ;
    :  GO[10802]=1 ;
    :  !    Used Amount GUN ;
    :  GO[10604]=(GO[10802]) ;
    :  LBL[2] ;
    :   ;
    :  !-------------------------------- ;
    :  !Voreinstellungen SERVO Contr. 3 ;
    :  !   falls vorhanden ;
    :  !-------------------------------- ;
    :  IF DO[10107]=OFF,JMP LBL[3] ;
    :  !      Active GunNum ;
    :  ! GO[10553]=1 ;
    :  !     PRG-No ManFunc ;
    :  GO[10556]=199 ;
    :  !    Conf.Amount GUN ;
    :  GO[10803]=1 ;
    :  !    Used Amount GUN ;
    :  GO[10554]=(GO[10803]) ;
    :  LBL[3] ;
    :   ;
    :  !-------------------------------- ;
    :  ! Lifebitüberwachung automatisch ;
    :  ! aktiviert ;
    :  !-------------------------------- ;
    :  !   SERVO-Controller 1 ;
    :  DO[22841]=(ON) ;
    :  !   SERVO-Controller 2 ;
    :  DO[22842]=(ON) ;
    :  !   SERVO-Controller 3 ;
    :  DO[22843]=(ON) ;
    :  !   SERVO-Controller 4 ;
    :  DO[22844]=(ON) ;
    :   ;
    :  MESSAGE[Int.: E1/2.Startup END] ;
    :  !Startup Config END's ;
/POS
/END
