/PROG  MAKRO057
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Flagbildung";
PROG_SIZE	= 2238;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 16-11-16  TIME 07:19:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 83;
MEMORY_SIZE	= 2534;
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
   2:  !Roboter mit EZ ohne KW ;
   3:   ;
   4:  !Energiesparmodus aktivieren ;
   5:  F[522]=(ON) ;
   6:  !Mit Profinet ;
   7:  F[556]=(ON) ;
   8:  !VWRIP mit Kuehlwasserfunktion ;
   9:  F[819]=(ON) ;
  10:   ;
  11:  !mit Rueckm. Steuerluft vorh. ;
  12:  F[523]=(ON) ;
  13:  !mit Rueckm. Steuerluft nicht vor ;
  14:  F[524]=(OFF) ;
  15:   ;
  16:  !Widerstandspunktschweissen ;
  17:  !SK1 im Technologiepaket aktiv. ;
  18:  F[560]=(ON) ;
  19:  !SK2 im Technologiepaket aktiv. ;
  20:  F[561]=(OFF) ;
  21:  !EZ2/SP2/PZ2 an SK1 ;
  22:  F[563]=(OFF) ;
  23:  !SK3 im Technologiepaket aktivier ;
  24:  F[562]=(OFF) ;
  25:  !Anwahl mit 2. Kappensetzen nach ;
  26:  !Startfraesen ;
  27:  F[292]=(ON) ;
  28:  !EZ1/SP1 Anwahl ohne Startfraesen ;
  29:  F[129]=(OFF) ;
  30:  !EZ1/SP1 Anwahl 2 Huebe bei ;
  31:  !Normalfraesen ;
  32:  F[130]=(OFF) ;
  33:  !EZ2/SP2 Anwahl ohne Startfraesen ;
  34:  F[163]=(OFF) ;
  35:  !EZ2/SP2 Anwahl 2 Huebe bei ;
  36:  !Normalfraesen ;
  37:  F[164]=(OFF) ;
  38:  !EZ3/SP3 Anwahl ohne Startfraesen ;
  39:  F[199]=(OFF) ;
  40:  !EZ3/SP3 Anwahl 2 Huebe bei ;
  41:  !Normalfraesen ;
  42:  F[200]=(OFF) ;
  43:  !EZ1/SP1 robotergefuehrte Zange ;
  44:  !am Roboter montiert ;
  45:  F[530]=(ON) ;
  46:  !EZ/SP Zangenausgleich durch Rob. ;
  47:  !KF mit Versetzeinheit ;
  48:  F[564]=(OFF) ;
  49:  !EZ1/SP1 Vorw. Dock. mit 1 Zange ;
  50:  F[314]=(OFF) ;
  51:  !EZ1/SP1 Vorw. Dock. mit 2 Zange ;
  52:  F[315]=(OFF) ;
  53:  !EZ1/SP1 Vorw. Dock. mit 3 Zange ;
  54:  F[316]=(OFF) ;
  55:  !EZ1/SP1 Vorw. Dock. mit 4 Zange ;
  56:  F[317]=(OFF) ;
  57:  !EZ/SP Zangenausgleich durch Rob. ;
  58:  !ohne Blechdetektierung ;
  59:  F[827]=(OFF) ;
  60:   ;
  61:  !KF ;
  62:  !Vorwahl Braeuer Kappenfraeser ;
  63:  F[318]=(ON) ;
  64:  !Vorwahl Lutz Kappenfraeser ;
  65:  F[319]=(OFF) ;
  66:  !Vorwahl mit Mittelstellung ;
  67:  F[320]=(OFF) ;
  68:  !Vorwahl Kappenfraeser dauerhaft ;
  69:  !ausblasen ;
  70:  F[330]=(ON) ;
  71:  !EZ1/SP1 Anwahl Fraesen mit KF2 ;
  72:  F[72]=(OFF) ;
  73:  !EZ1/SP1 Anwahl Fraesen mit KF3 ;
  74:  F[73]=(OFF) ;
  75:   ;
  76:  !Allgemein ;
  77:  !Kuehlwasserabfrage min/max ;
  78:  F[291]=(OFF) ;
  79:  !Mit Zangenausgleich ;
  80:  F[710]=(ON) ;
  81:  !Mit Wiederholfraesen bei ;
  82:  !Kurzschlussschweiﬂen ;
  83:  F[731]=(OFF) ;
/POS
/END
