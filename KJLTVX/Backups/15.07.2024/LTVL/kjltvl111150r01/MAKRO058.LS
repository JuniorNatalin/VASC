/PROG  MAKRO058
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Inic. Docking";
PROG_SIZE	= 702;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 16-10-04  TIME 01:46:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 986;
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
    :  !Configuracion Docking ;
    :   ;
    :  !SP1 Disp. Docking c/1 Pinza ;
    :  F[314]=(OFF) ;
    :  !SP1 Disp. Docking c/2 Pinzas ;
    :  F[315]=(OFF) ;
    :  !SP1 Disp. Docking c/3 Pinzas ;
    :  F[316]=(OFF) ;
    :  !SP1 Disp. Docking c/4 Pinzas ;
    :  F[317]=(OFF) ;
    :  !NZ1 Disp. Docking c/1 Pinza ;
    :  F[414]=(OFF) ;
    :  !NZ1 Disp. Docking c/2 Pinzas ;
    :  F[415]=(OFF) ;
    :  !CZ1 Disp. Docking c/1 Pinza ;
    :  F[455]=(OFF) ;
    :  !CZ1 Disp. Docking c/2 Pinzas ;
    :  F[456]=(OFF) ;
    :  !SM1 Disp. Docking c/1 Pinza ;
    :  F[254]=(OFF) ;
    :  !SM1 Disp. Docking c/2 Pinzas ;
    :  F[255]=(OFF) ;
/POS
/END
