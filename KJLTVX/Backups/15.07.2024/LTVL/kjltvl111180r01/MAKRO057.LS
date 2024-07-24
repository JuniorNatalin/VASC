/PROG  MAKRO057
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FLAG-Init";
PROG_SIZE	= 2284;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 16-08-03  TIME 08:30:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 85;
MEMORY_SIZE	= 2572;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !FLAG-Init ;
   2:  !Roboter mit Greifer. ;
   3:  !Dual Sta. EZ ohne KW. ;
   4:   ;
   5:  !Energiesparmodus aktivieren ;
   6:  F[522]=(ON) ;
   7:  !Mit Profinet ;
   8:  F[556]=(ON) ;
   9:  !VWRIP mit Kuehlwasserfunktion ;
  10:  F[819]=(ON) ;
  11:   ;
  12:  !Handling ;
  13:  !mit Rueckm. Steuerluft vorh. ;
  14:  F[523]=(ON) ;
  15:  !mit Rueckm. Steuerluft nicht vor ;
  16:  F[524]=(OFF) ;
  17:   ;
  18:  !Widerstandspunktschweissen ;
  19:  !SK1 im Technologiepaket aktiv. ;
  20:  F[560]=(ON) ;
  21:  !SK2 im Technologiepaket aktiv. ;
  22:  F[561]=(ON) ;
  23:  !EZ2/SP2/PZ2 an SK1 ;
  24:  F[563]=(OFF) ;
  25:  !SK3 im Technologiepaket aktivier ;
  26:  F[562]=(OFF) ;
  27:  !Anwahl mit 2. Kappensetzen nach ;
  28:  !Startfraesen ;
  29:  F[292]=(ON) ;
  30:  !EZ1/SP1 Anwahl ohne Startfraesen ;
  31:  F[129]=(OFF) ;
  32:  !EZ1/SP1 Anwahl 2 Huebe bei ;
  33:  !Normalfraesen ;
  34:  F[130]=(OFF) ;
  35:  !EZ2/SP2 Anwahl ohne Startfraesen ;
  36:  F[163]=(OFF) ;
  37:  !EZ2/SP2 Anwahl 2 Huebe bei ;
  38:  !Normalfraesen ;
  39:  F[164]=(OFF) ;
  40:  !EZ3/SP3 Anwahl ohne Startfraesen ;
  41:  F[199]=(OFF) ;
  42:  !EZ3/SP3 Anwahl 2 Huebe bei ;
  43:  !Normalfraesen ;
  44:  F[200]=(OFF) ;
  45:  !EZ1/SP1 robotergefuehrte Zange ;
  46:  !am Roboter montiert ;
  47:  F[530]=(OFF) ;
  48:  !EZ/SP Zangenausgleich durch Rob. ;
  49:  !KF mit Versetzeinheit ;
  50:  F[564]=(OFF) ;
  51:  !EZ1/SP1 Vorw. Dock. mit 1 Zange ;
  52:  F[314]=(OFF) ;
  53:  !EZ1/SP1 Vorw. Dock. mit 2 Zange ;
  54:  F[315]=(OFF) ;
  55:  !EZ1/SP1 Vorw. Dock. mit 3 Zange ;
  56:  F[316]=(OFF) ;
  57:  !EZ1/SP1 Vorw. Dock. mit 4 Zange ;
  58:  F[317]=(OFF) ;
  59:  !EZ/SP Zangenausgleich durch Rob. ;
  60:  !ohne Blechdetektierung ;
  61:  F[827]=(OFF) ;
  62:   ;
  63:  !KF ;
  64:  !Vorwahl Braeuer Kappenfraeser ;
  65:  F[318]=(ON) ;
  66:  !Vorwahl Lutz Kappenfraeser ;
  67:  F[319]=(OFF) ;
  68:  !Vorwahl mit Mittelstellung ;
  69:  F[320]=(OFF) ;
  70:  !Vorwahl Kappenfraeser dauerhaft ;
  71:  !ausblasen ;
  72:  F[330]=(ON) ;
  73:  !EZ1/SP1 Anwahl Fraesen mit KF2 ;
  74:  F[72]=(OFF) ;
  75:  !EZ1/SP1 Anwahl Fraesen mit KF3 ;
  76:  F[73]=(OFF) ;
  77:   ;
  78:  !Allgemein ;
  79:  !Kuehlwasserabfrage min/max ;
  80:  F[291]=(OFF) ;
  81:  !Mit Zangenausgleich ;
  82:  F[710]=(ON) ;
  83:  !Mit Wiederholfraesen bei ;
  84:  !Kurzschlussschweissen ;
  85:  F[731]=(OFF) ;
/POS
/END
