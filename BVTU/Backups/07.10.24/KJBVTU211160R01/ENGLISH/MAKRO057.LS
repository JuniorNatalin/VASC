/PROG  MAKRO057
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Flagbildung";
PROG_SIZE	= 2230;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 16-11-05  TIME 23:46:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 82;
MEMORY_SIZE	= 2530;
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
   6:  !Retroalimentacion aire disp. ;
   7:  F[523]=(ON) ;
   8:  !Retroalimentacion aire no disp. ;
   9:  F[524]=(ON) ;
  10:  !Mit Profinet ;
  11:  F[556]=(ON) ;
  12:  !VW RIP mit Kuehlwasserfunktion ;
  13:  F[819]=(ON) ;
  14:   ;
  15:  !Widerstandspunktschweissen ;
  16:  !SK1 im Technologiepaket aktiv. ;
  17:  F[560]=(ON) ;
  18:  !SK2 im Technologiepaket aktiv. ;
  19:  F[561]=(OFF) ;
  20:  !EZ2/SP2/PZ2 an SK1 ;
  21:  F[563]=(OFF) ;
  22:  !SK3 im Technologiepaket aktivier ;
  23:  F[562]=(OFF) ;
  24:  !Anwahl mit 2. Kappensetzen nach ;
  25:  !Startfraesen ;
  26:  F[292]=(ON) ;
  27:  !EZ1/SP1 Anwahl ohne Startfraesen ;
  28:  F[129]=(OFF) ;
  29:  !EZ1/SP1 Anwahl 2 Huebe bei ;
  30:  !Normalfraesen ;
  31:  F[130]=(OFF) ;
  32:  !EZ2/SP2 Anwahl ohne Startfraesen ;
  33:  F[163]=(OFF) ;
  34:  !EZ2/SP2 Anwahl 2 Huebe bei ;
  35:  !Normalfraesen ;
  36:  F[164]=(OFF) ;
  37:  !EZ3/SP3 Anwahl ohne Startfraesen ;
  38:  F[199]=(OFF) ;
  39:  !EZ3/SP3 Anwahl 2 Huebe bei ;
  40:  !Normalfraesen ;
  41:  F[200]=(OFF) ;
  42:  !EZ1/SP1 robotergefuehrte Zange ;
  43:  !am Roboter montiert ;
  44:  F[530]=(ON) ;
  45:  !EZ/SP Zangenausgleich durch Rob. ;
  46:  !KF mit Versetzeinheit ;
  47:  F[564]=(OFF) ;
  48:  !EZ1/SP1 Vorw. Dock. mit 1 Zange ;
  49:  F[314]=(OFF) ;
  50:  !EZ1/SP1 Vorw. Dock. mit 2 Zange ;
  51:  F[315]=(OFF) ;
  52:  !EZ1/SP1 Vorw. Dock. mit 3 Zange ;
  53:  F[316]=(OFF) ;
  54:  !EZ1/SP1 Vorw. Dock. mit 4 Zange ;
  55:  F[317]=(OFF) ;
  56:  !EZ/SP Zangenausgleich durch Rob. ;
  57:  !ohne Blechdetektierung ;
  58:  F[827]=(OFF) ;
  59:   ;
  60:  !KF ;
  61:  !Vorwahl Braeuer Kappenfraeser ;
  62:  F[318]=(ON) ;
  63:  !Vorwahl Lutz Kappenfraeser ;
  64:  F[319]=(OFF) ;
  65:  !Vorwahl mit Mittelstellung ;
  66:  F[320]=(OFF) ;
  67:  !Vorwahl Kappenfraeser dauerhaft ;
  68:  !ausblasen ;
  69:  F[330]=(ON) ;
  70:  !EZ1/SP1 Anwahl Fraesen mit KF2 ;
  71:  F[72]=(OFF) ;
  72:  !EZ1/SP1 Anwahl Fraesen mit KF3 ;
  73:  F[73]=(OFF) ;
  74:   ;
  75:  !Allgemein ;
  76:  !Kuehlwasserabfrage min/max ;
  77:  F[291]=(OFF) ;
  78:  !Mit Zangenausgleich ;
  79:  F[710]=(ON) ;
  80:  !Mit Wiederholfraesen bei ;
  81:  !Kurzschlussschweiﬂen ;
  82:  F[731]=(OFF) ;
/POS
/END
