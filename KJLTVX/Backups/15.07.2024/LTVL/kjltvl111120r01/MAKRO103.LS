/PROG  MAKRO103
/ATTR
EIGN.		= MNEDITOR;
KOMMENTAR	= "KS2_ARBEITSST";
PROG_GRÖßE	= 1322;
ERSTELL		= TAG 10-06-14  ZEIT 12:00:00;
GEÄNDERT	= TAG 17-03-27  ZEIT 17:03:26;
DATEI_NAME	= ;
VERSION		= 0;
ZEILEN		= 53;
SPEICHERGR.	= 1742;
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
   1:  !KS2  in Arbeitsstellung schwenke ;
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
  17:  A[3973:Mover KS2 Trab. (ZF/RSK)]=(AN) ;
  18:  A[1002:KS2 Girar M1]=(AN) ;
  19:  !Warte bis ;
  20:  !KS2 in Arbeitsstellung ;
  21:  TIMER[10]=((-6)) ;
  22:  WARTE ((!E[1002:KS2BE2R Reposo  Bascul.] [&] E[1003:KS2BE2V Trabajo Bascul.] [&] E[1004:KS2SE1R*Reposo  Leva] [&] !E[1005:KS2SE1V*Trabajo Leva]) [+] (TIMER[10]>=0))    ;
  23:  F[324:Falla KS>Trabajo   (RSK)]=(TIMER[10]>=0) ;
  24:  WARTE ((!E[1002:KS2BE2R Reposo  Bascul.] [&] E[1003:KS2BE2V Trabajo Bascul.] [&] E[1004:KS2SE1R*Reposo  Leva] [&] !E[1005:KS2SE1V*Trabajo Leva]))    ;
  25:  F[324:Falla KS>Trabajo   (RSK)]=(AUS) ;
  26:  A[3973:Mover KS2 Trab. (ZF/RSK)]=(AUS) ;
  27:  A[1002:KS2 Girar M1]=(AUS) ;
  28:  WENN (F[320:KF c/Pos. Intermedia]),SPRUNG LABEL[1] ;
  29:  SPRUNG LABEL[2] ;
  30:  LABEL[1] ;
  31:  !KS2 schwenken ;
  32:  A[3970:Mover KS2 Reposo(ZF/RSK)]=(AN) ;
  33:  A[1002:KS2 Girar M1]=(AN) ;
  34:  !Warte bis ;
  35:  !KS2 in Wartungsstellung ;
  36:  TIMER[10]=((-6)) ;
  37:  WARTE ((F[320:KF c/Pos. Intermedia] [&] !E[996:KS2 Basc.EnMedio SE1-3]) [+] (TIMER[10]>=0))    ;
  38:  F[324:Falla KS>Trabajo   (RSK)]=(TIMER[10]>=0) ;
  39:  WARTE (F[320:KF c/Pos. Intermedia] [&] !E[996:KS2 Basc.EnMedio SE1-3])    ;
  40:  F[324:Falla KS>Trabajo   (RSK)]=(AUS) ;
  41:  A[3970:Mover KS2 Reposo(ZF/RSK)]=(AUS) ;
  42:  A[1002:KS2 Girar M1]=(AUS) ;
  43:  LABEL[2] ;
  44:  !KF2 Versetzeinheit rueck ;
  45:  A[995:KF/S Sopl/Uni.Desl.ON]=(AUS) ;
  46:  TIMER[10]=((-4)) ;
  47:  !Warte bis KF2 ;
  48:  !Versetzeinheit rueck ;
  49:  WARTE (!E[995:KS2 Uni.Des.Adelante] [+] (TIMER[10]>=0))    ;
  50:  F[328:Falla KF Uni.Des.  (RSK)]=(TIMER[10]>=0) ;
  51:  WARTE (!E[995:KS2 Uni.Des.Adelante])    ;
  52:  F[328:Falla KF Uni.Des.  (RSK)]=(AUS) ;
  53:  A[23:Bloquear Rejas de Seg.]=(AUS) ;
/POS
/END
