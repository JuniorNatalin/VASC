/PROG  MAKRO083
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MESSENDE_ROB_SZ";
PROG_SIZE	= 1844;
CREATE		= DATE 10-06-14  TIME 12:00:00;
MODIFIED	= DATE 17-03-27  TIME 17:07:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 74;
MEMORY_SIZE	= 2184;
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
    :  !EZ1/SP1  Messen  Ende  Roboter ;
    :  !KS24 ;
    :  !Version: 02 ;
    :  !Stand: 002 ;
    :  !letzte  Aenderung  11.03.2015 DB ;
    :  !F118  =  Sammelstoerung  EZ1/SP1 ;
    :  !EZ1/SP1 FzgTyp ruecksetzen ;
    :  DO[777]=(OFF) ;
    :  DO[778]=(OFF) ;
    :  DO[779]=(OFF) ;
    :  DO[780]=(OFF) ;
    :  DO[781]=(OFF) ;
    :  DO[782]=(OFF) ;
    :  DO[783]=(OFF) ;
    :  DO[784]=(OFF) ;
    :  !SK1 FzgTyp ruecksetzen ;
    :  DO[817]=(OFF) ;
    :  DO[818]=(OFF) ;
    :  DO[819]=(OFF) ;
    :  DO[820]=(OFF) ;
    :  DO[821]=(OFF) ;
    :  DO[822]=(OFF) ;
    :  DO[823]=(OFF) ;
    :  DO[824]=(OFF) ;
    :  WAIT    .20(sec) ;
    :  !Abfrage Energiesparmodus ist AUS ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[706] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!DI[706])    ;
    :  F[118]=(OFF) ;
    :  TIMER[10]=((-6)) ;
    :  !Warte Messen beendet ;
    :  WAIT (DI[757] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (DI[757] OR DI[26])    ;
    :  F[118]=(OFF) ;
    :  F[85]=(DI[776] OR DI[26]) ;
    :  DO[757]=(OFF) ;
    :  !EZ in Schleppfehlertoleranz ;
    :  F[742]=((GI[31]>=(GO[31]-140)) AND (GI[31]<=(GO[31]+140))) ;
    :  DO[717]=(!F[742]) ;
    :  WAIT (!F[742] AND !DI[717] OR F[742] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!F[742] AND !DI[717] OR F[742])    ;
    :  F[118]=(OFF) ;
    :  WAIT (!F[742] AND DI[717] OR F[742] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!F[742] AND DI[717] OR F[742])    ;
    :  F[118]=(OFF) ;
    :  DO[717]=(OFF) ;
    :  !Fehler Kappenverschleiss ;
    :  F[86]=((DI[736] AND !F[692]) OR (DI[735] AND DI[734] AND DI[732]) OR DI[777]) ;
    :  F[298]=(F[85] AND !F[86]) ;
    :  DO[717]=(!DI[717]) ;
    :  TIMER[10]=((-2)) ;
    :  !EZ1/SP1 i.O. ;
    :  WAIT ((DI[717] AND !DI[784]) OR (DI[717] AND F[298]) OR (DI[717] AND F[86]) OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT ((DI[717] AND !DI[784]) OR (DI[717] AND F[298]) OR (DI[717] AND F[86]))    ;
    :  F[118]=(OFF) ;
    :  DO[717]=(OFF) ;
    :  DO[758]=(OFF) ;
    :  DO[759]=(OFF) ;
    :  DO[715]=(OFF) ;
    :  TIMER[10]=((-2)) ;
    :  WAIT (!DI[715] OR (TIMER[10]>=0))    ;
    :  F[118]=(TIMER[10]>=0) ;
    :  WAIT (!DI[715])    ;
    :  F[118]=(OFF) ;
    :  !PR Robotergefuehrte EZ/SP ;
    :  CALL MOTN003    ;
    :  DO[116]=(OFF) ;
    :  DO[130]=(OFF) ;
/POS
/END
