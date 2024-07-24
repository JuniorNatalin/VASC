/PROG  FOLGE125
/ATTR
OWNER		= AUROM;
COMMENT		= "Pos. de Inicio";
PROG_SIZE	= 1132;
CREATE		= DATE 03-15-00  TIME 13:37:40;
MODIFIED	= DATE 17-02-25  TIME 00:35:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 2220;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,1,1,*;
CONTROL_CODE	= 00000000 00000000;
/MN
    :  UTOOL_NUM=1 ;
    :  UFRAME_NUM=0 ;
    :  PAYLOAD[1] ;
    :J P[1] 10% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  IF (DO[12]=ON),CALL MAKRO998 ;
      2:  DO[15]=ON ;
      3:  DO[16]=ON ;
      4:  CALL MAKRO000    ;
      5:  WAIT (DI[9])    ;
       ------ ;
    :  !Posicion de Inicio ;
    :J P[2] 100% CNT0 ACC100 TB   0.00sec,P-SPS    ;
      1:  TC_ONLINE (ON) ;
      2:  DO[15]=OFF ;
      3:  DO[14]=ON ;
      4:  DO[15]=ON ;
       ------ ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=     -.867 deg,	J2=   -20.474 deg,	J3=    65.906 deg,
	J4=    15.000 deg,	J5=   -95.000 deg,	J6=    46.712 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,	
	J1=     -.867 deg,	J2=   -20.474 deg,	J3=    65.906 deg,
	J4=    15.000 deg,	J5=   -95.000 deg,	J6=    46.712 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP3:
	UF : 0, UT : 1,	
	J1=     0.000  mm
   GP4:
	UF : 0, UT : 1,	
	J1=     0.000  mm
};
/END
