/PROG  MAKRO058
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Inic. Docking";
PROG_SIZE	= 702;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 16-09-29  TIME 23:47:28;
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
   1:  !Configuracion Docking ;
   2:   ;
   3:  !SP1 Disp. Docking c/1 Pinza ;
   4:  F[314]=(OFF) ;
   5:  !SP1 Disp. Docking c/2 Pinzas ;
   6:  F[315]=(OFF) ;
   7:  !SP1 Disp. Docking c/3 Pinzas ;
   8:  F[316]=(OFF) ;
   9:  !SP1 Disp. Docking c/4 Pinzas ;
  10:  F[317]=(OFF) ;
  11:  !NZ1 Disp. Docking c/1 Pinza ;
  12:  F[414]=(OFF) ;
  13:  !NZ1 Disp. Docking c/2 Pinzas ;
  14:  F[415]=(OFF) ;
  15:  !CZ1 Disp. Docking c/1 Pinza ;
  16:  F[455]=(OFF) ;
  17:  !CZ1 Disp. Docking c/2 Pinzas ;
  18:  F[456]=(OFF) ;
  19:  !SM1 Disp. Docking c/1 Pinza ;
  20:  F[254]=(OFF) ;
  21:  !SM1 Disp. Docking c/2 Pinzas ;
  22:  F[255]=(OFF) ;
/POS
/END
