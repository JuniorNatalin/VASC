/PROG  MAKRO900
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "StrtAct_EX-AXIS";
PROG_SIZE	= 2330;
CREATE		= DATE 06-01-26  TIME 15:36:02;
MODIFIED	= DATE 17-05-01  TIME 17:12:38;
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
   1:  !******************************** ;
   2:  !******************************** ;
   3:  !   Voreinstellungen für Servozan ;
   4:  !      Bitte nachfolgende Werte ;
   5:  !       entsprechend anpassen ;
   6:  !        Stand: 26.02.2016 ;
   7:  !******************************** ;
   8:  !******************************** ;
   9:   ;
  10:   ;
  11:  !-------------------------------- ;
  12:  ! SERVO Controller aktivieren ;
  13:  !-------------------------------- ;
  14:  !SERVO-Ctrl1 in USE ;
  15:  //DO[10105]=OFF ;
  16:  !SERVO-Ctrl2 in USE ;
  17:  //DO[10106]=OFF ;
  18:  !SERVO-Ctrl3 in USE ;
  19:  //DO[10107]=OFF ;
  20:  !SERVO-Ctrl4 in USE ;
  21:  //DO[10108]=OFF ;
  22:   ;
  23:   ;
  24:   ;
  25:  !-------------------------------- ;
  26:  !Voreinstellungen SERVO Contr. 1 ;
  27:  !   falls vorhanden ;
  28:  !-------------------------------- ;
  29:  IF DO[10105]=OFF,JMP LBL[1] ;
  30:  !      Active GunNum ;
  31:  ! GO[10653]=0 ;
  32:  !     PRG-No ManFunc ;
  33:  GO[10656]=199 ;
  34:  !    Conf.Amount GUN ;
  35:  GO[10801]=1 ;
  36:  !    Used Amount GUN ;
  37:  GO[10654]=(GO[10801]) ;
  38:  LBL[1] ;
  39:   ;
  40:  !-------------------------------- ;
  41:  !Voreinstellungen SERVO Contr. 2 ;
  42:  !   falls vorhanden ;
  43:  !-------------------------------- ;
  44:  IF DO[10106]=OFF,JMP LBL[2] ;
  45:  !      Active GunNum ;
  46:  ! GO[10603]=1 ;
  47:  !     PRG-No ManFunc ;
  48:  GO[10606]=199 ;
  49:  !    Conf.Amount GUN ;
  50:  GO[10802]=1 ;
  51:  !    Used Amount GUN ;
  52:  GO[10604]=(GO[10802]) ;
  53:  LBL[2] ;
  54:   ;
  55:  !-------------------------------- ;
  56:  !Voreinstellungen SERVO Contr. 3 ;
  57:  !   falls vorhanden ;
  58:  !-------------------------------- ;
  59:  IF DO[10107]=OFF,JMP LBL[3] ;
  60:  !      Active GunNum ;
  61:  ! GO[10553]=1 ;
  62:  !     PRG-No ManFunc ;
  63:  GO[10556]=199 ;
  64:  !    Conf.Amount GUN ;
  65:  GO[10803]=1 ;
  66:  !    Used Amount GUN ;
  67:  GO[10554]=(GO[10803]) ;
  68:  LBL[3] ;
  69:   ;
  70:  !-------------------------------- ;
  71:  ! Lifebitüberwachung automatisch ;
  72:  ! aktiviert ;
  73:  !-------------------------------- ;
  74:  !   SERVO-Controller 1 ;
  75:  DO[22841]=(ON) ;
  76:  !   SERVO-Controller 2 ;
  77:  DO[22842]=(ON) ;
  78:  !   SERVO-Controller 3 ;
  79:  DO[22843]=(ON) ;
  80:  !   SERVO-Controller 4 ;
  81:  DO[22844]=(ON) ;
  82:   ;
  83:  MESSAGE[Int.: E1/2.Startup END] ;
  84:  !Startup Config END's ;
/POS
/END
