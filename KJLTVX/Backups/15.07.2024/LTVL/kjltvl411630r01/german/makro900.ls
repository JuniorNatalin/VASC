/PROG  MAKRO900
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "StrtAct_EX-AXIS";
PROG_GRÖßE	= 2330;
ERSTELL		= TAG 06-01-26  ZEIT 15:36:02;
GEÄNDERT	= TAG 17-05-03  ZEIT 17:19:06;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 84;
SPEICHERGR.	= 2754;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000001;
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
  15:  //A[10105]=AUS ;
  16:  !SERVO-Ctrl2 in USE ;
  17:  //A[10106]=AUS ;
  18:  !SERVO-Ctrl3 in USE ;
  19:  //A[10107]=AUS ;
  20:  !SERVO-Ctrl4 in USE ;
  21:  //A[10108]=AUS ;
  22:   ;
  23:   ;
  24:   ;
  25:  !-------------------------------- ;
  26:  !Voreinstellungen SERVO Contr. 1 ;
  27:  !   falls vorhanden ;
  28:  !-------------------------------- ;
  29:  WENN A[10105]=AUS,SPRUNG LABEL[1] ;
  30:  !      Active GunNum ;
  31:  ! GO[10653]=0 ;
  32:  !     PRG-No ManFunc ;
  33:  gA[10656]=199 ;
  34:  !    Conf.Amount GUN ;
  35:  gA[10801]=1 ;
  36:  !    Used Amount GUN ;
  37:  gA[10654]=(gA[10801]) ;
  38:  LABEL[1] ;
  39:   ;
  40:  !-------------------------------- ;
  41:  !Voreinstellungen SERVO Contr. 2 ;
  42:  !   falls vorhanden ;
  43:  !-------------------------------- ;
  44:  WENN A[10106]=AUS,SPRUNG LABEL[2] ;
  45:  !      Active GunNum ;
  46:  ! GO[10603]=1 ;
  47:  !     PRG-No ManFunc ;
  48:  gA[10606]=199 ;
  49:  !    Conf.Amount GUN ;
  50:  gA[10802]=1 ;
  51:  !    Used Amount GUN ;
  52:  gA[10604]=(gA[10802]) ;
  53:  LABEL[2] ;
  54:   ;
  55:  !-------------------------------- ;
  56:  !Voreinstellungen SERVO Contr. 3 ;
  57:  !   falls vorhanden ;
  58:  !-------------------------------- ;
  59:  WENN A[10107]=AUS,SPRUNG LABEL[3] ;
  60:  !      Active GunNum ;
  61:  ! GO[10553]=1 ;
  62:  !     PRG-No ManFunc ;
  63:  gA[10556]=199 ;
  64:  !    Conf.Amount GUN ;
  65:  gA[10803]=1 ;
  66:  !    Used Amount GUN ;
  67:  gA[10554]=(gA[10803]) ;
  68:  LABEL[3] ;
  69:   ;
  70:  !-------------------------------- ;
  71:  ! Lifebitüberwachung automatisch ;
  72:  ! aktiviert ;
  73:  !-------------------------------- ;
  74:  !   SERVO-Controller 1 ;
  75:  A[22841]=(AN) ;
  76:  !   SERVO-Controller 2 ;
  77:  A[22842]=(AN) ;
  78:  !   SERVO-Controller 3 ;
  79:  A[22843]=(AN) ;
  80:  !   SERVO-Controller 4 ;
  81:  A[22844]=(AN) ;
  82:   ;
  83:  MELDUNG[Int.: E1/2.Startup END] ;
  84:  !Startup Config END's ;
/POS
/END
