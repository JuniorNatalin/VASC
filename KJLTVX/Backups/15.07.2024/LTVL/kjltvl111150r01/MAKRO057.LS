/PROG  MAKRO057
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Flagbildung";
PROG_SIZE	= 2120;
CREATE		= DATE 00-03-13  TIME 16:56:34;
MODIFIED	= DATE 16-08-03  TIME 08:27:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 78;
MEMORY_SIZE	= 2436;
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
    :  !FLAG-Init ;
    :  !Roboter mit EZ ohne KW ;
    :   ;
    :  !Energiesparmodus aktivieren ;
    :  F[522]=(ON) ;
    :  !Mit Profinet ;
    :  F[556]=(ON) ;
    :  !VW RIP mit Kuehlwasserfunktion ;
    :  F[819]=(ON) ;
    :   ;
    :  !Widerstandspunktschweissen ;
    :  !SK1 im Technologiepaket aktiv. ;
    :  F[560]=(ON) ;
    :  !SK2 im Technologiepaket aktiv. ;
    :  F[561]=(OFF) ;
    :  !EZ2/SP2/PZ2 an SK1 ;
    :  F[563]=(OFF) ;
    :  !SK3 im Technologiepaket aktivier ;
    :  F[562]=(OFF) ;
    :  !Anwahl mit 2. Kappensetzen nach ;
    :  !Startfraesen ;
    :  F[292]=(ON) ;
    :  !EZ1/SP1 Anwahl ohne Startfraesen ;
    :  F[129]=(OFF) ;
    :  !EZ1/SP1 Anwahl 2 Huebe bei ;
    :  !Normalfraesen ;
    :  F[130]=(OFF) ;
    :  !EZ2/SP2 Anwahl ohne Startfraesen ;
    :  F[163]=(OFF) ;
    :  !EZ2/SP2 Anwahl 2 Huebe bei ;
    :  !Normalfraesen ;
    :  F[164]=(OFF) ;
    :  !EZ3/SP3 Anwahl ohne Startfraesen ;
    :  F[199]=(OFF) ;
    :  !EZ3/SP3 Anwahl 2 Huebe bei ;
    :  !Normalfraesen ;
    :  F[200]=(OFF) ;
    :  !EZ1/SP1 robotergefuehrte Zange ;
    :  !am Roboter montiert ;
    :  F[530]=(ON) ;
    :  !EZ/SP Zangenausgleich durch Rob. ;
    :  !KF mit Versetzeinheit ;
    :  F[564]=(OFF) ;
    :  !EZ1/SP1 Vorw. Dock. mit 1 Zange ;
    :  F[314]=(OFF) ;
    :  !EZ1/SP1 Vorw. Dock. mit 2 Zange ;
    :  F[315]=(OFF) ;
    :  !EZ1/SP1 Vorw. Dock. mit 3 Zange ;
    :  F[316]=(OFF) ;
    :  !EZ1/SP1 Vorw. Dock. mit 4 Zange ;
    :  F[317]=(OFF) ;
    :  !EZ/SP Zangenausgleich durch Rob. ;
    :  !ohne Blechdetektierung ;
    :  F[827]=(OFF) ;
    :   ;
    :  !KF ;
    :  !Vorwahl Braeuer Kappenfraeser ;
    :  F[318]=(ON) ;
    :  !Vorwahl Lutz Kappenfraeser ;
    :  F[319]=(OFF) ;
    :  !Vorwahl mit Mittelstellung ;
    :  F[320]=(OFF) ;
    :  !Vorwahl Kappenfraeser dauerhaft ;
    :  !ausblasen ;
    :  F[330]=(ON) ;
    :  !EZ1/SP1 Anwahl Fraesen mit KF2 ;
    :  F[72]=(OFF) ;
    :  !EZ1/SP1 Anwahl Fraesen mit KF3 ;
    :  F[73]=(OFF) ;
    :   ;
    :  !Allgemein ;
    :  !Kuehlwasserabfrage min/max ;
    :  F[291]=(OFF) ;
    :  !Mit Zangenausgleich ;
    :  F[710]=(ON) ;
    :  !Mit Wiederholfraesen bei ;
    :  !Kurzschlussschweiﬂen ;
    :  F[731]=(OFF) ;
/POS
/END
