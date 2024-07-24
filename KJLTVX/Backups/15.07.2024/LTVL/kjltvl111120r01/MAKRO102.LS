/PROG  MAKRO102
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "KS2_RUHEST";
PROG_GRÖßE	= 1000;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:26;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 36;
SPEICHERGR.	= 1356;
SCHUTZ		= LESEN_SCHREIB;
TCD:  STACK_GRÖßE	= 0,
      TASK_PRIORITY	= 50,
      ZEITSCHEIBE	= 0,
      BUSY_LAMP_AUS	= 0,
      ABORT_ANFRAGE	= 0,
      HALT_ANFRAGE	= 0;
DEFAULT_GRUP	= *,*,*,*,*;
KONTROLLCODE	= 00000000 00000000;
/MN
   1:  !KS2  in Ruhestellung schwenken ;
   2:  !KS24 ;
   3:  !Version: 01 ;
   4:  !Stand: 002 ;
   5:  !letzte  Aenderung  18.08.2016 LZ ;
   6:  WARTE (E[23:Sin Sol.Acceso])    ;
   7:  A[23:Bloquear Rejas de Seg.]=(AN) ;
   8:  !KF2 Versetzeinheit vor ;
   9:  A[995:KF/S Sopl/Uni.Desl.ON]=(F[564:c/Comp.Por Robot]) ;
  10:  TIMER[10]=((-4)) ;
  11:  !Warte bis KF2 Versetzeinheit vor ;
  12:  WARTE ((A[995:KF/S Sopl/Uni.Desl.ON] [&] F[564:c/Comp.Por Robot]) [+] (!E[995:KS2 Uni.Des.Adelante] [&] !F[564:c/Comp.Por Robot]) [+] (TIMER[10]>=0))    ;
  13:  F[328:Falla KF Uni.Des.  (RSK)]=(TIMER[10]>=0) ;
  14:  WARTE ((A[995:KF/S Sopl/Uni.Desl.ON] [&] F[564:c/Comp.Por Robot]) [+] (!E[995:KS2 Uni.Des.Adelante] [&] !F[564:c/Comp.Por Robot]))    ;
  15:  F[328:Falla KF Uni.Des.  (RSK)]=(AUS) ;
  16:  !KS2 schwenken ;
  17:  A[3970:Mover KS2 Reposo(ZF/RSK)]=(AN) ;
  18:  A[1002:KS2 Girar M1]=(AN) ;
  19:  !Warte bis KS2 in Ruhestellung ;
  20:  TIMER[10]=((-6)) ;
  21:  WARTE ((!E[1004:KS2SE1R*Reposo  Leva] [&] E[1002:KS2BE2R Reposo  Bascul.] [&] E[1005:KS2SE1V*Trabajo Leva] [&] !E[1003:KS2BE2V Trabajo Bascul.]) [+] (TIMER[10]>=0))    ;
  22:  F[323:Falla KS>Reposo    (RSK)]=(TIMER[10]>=0) ;
  23:  WARTE (!E[1004:KS2SE1R*Reposo  Leva] [&] E[1002:KS2BE2R Reposo  Bascul.] [&] E[1005:KS2SE1V*Trabajo Leva] [&] !E[1003:KS2BE2V Trabajo Bascul.])    ;
  24:  F[323:Falla KS>Reposo    (RSK)]=(AUS) ;
  25:  A[3970:Mover KS2 Reposo(ZF/RSK)]=(AUS) ;
  26:  A[1002:KS2 Girar M1]=(AUS) ;
  27:  !KF2 Versetzeinheit rueck ;
  28:  A[995:KF/S Sopl/Uni.Desl.ON]=(AUS) ;
  29:  TIMER[10]=((-4)) ;
  30:  !Warte bis KF2 ;
  31:  !Versetzeinheit rueck ;
  32:  WARTE (!E[995:KS2 Uni.Des.Adelante] [+] (TIMER[10]>=0))    ;
  33:  F[328:Falla KF Uni.Des.  (RSK)]=(TIMER[10]>=0) ;
  34:  WARTE (!E[995:KS2 Uni.Des.Adelante])    ;
  35:  F[328:Falla KF Uni.Des.  (RSK)]=(AUS) ;
  36:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
/POS
/END
