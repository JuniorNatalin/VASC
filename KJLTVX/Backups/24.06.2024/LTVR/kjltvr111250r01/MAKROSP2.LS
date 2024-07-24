/PROG  MAKROSP2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MAKROSP2_BASIC";
PROG_SIZE	= 1230;
CREATE		= DATE 11-01-11  TIME 07:00:00;
MODIFIED	= DATE 17-03-31  TIME 10:44:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1582;
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
   1:  !MAKROSP2 BASIC ;
   2:  !SK Druckvorgabe ;
   3:  !KS schwenken ;
   4:  !KS24 ;
   5:  !Version: 02 ;
   6:  !Stand: 000 ;
   7:  !letzte  Aenderung  01.09.2015 LZ ;
   8:  !Hilfszeit MakroSPS F[992] ;
   9:  !Mindest-Zangenoeffnungsmass ;
  10:  F[745]=(GI[31]>=R[60]) ;
  11:  F[746]=(GI[32]>=R[60]) ;
  12:  F[747]=(GI[33]>=R[60]) ;
  13:  !EZ1/SP1 Kraftvorgabe ;
  14:  GO[22]=(GI[22]) ;
  15:  !EZ2/SP2 Kraftvorgabe ;
  16:  IF (!F[285]),GO[23]=(GI[23]) ;
  17:  IF (F[285]),GO[23]=(GI[22]) ;
  18:  !EZ3/SP3 Kraftvorgabe ;
  19:  GO[24]=(GI[24]) ;
  20:  !KS1 Ruhestellung schwenken ;
  21:  F[821]=(DO[3969] AND DI[844] AND !F[822]) ;
  22:  !KS1 Arbeitsstellung schwenken ;
  23:  F[822]=(DO[3972] AND DI[845] AND !F[821]) ;
  24:  !KS1 schwenken ;
  25:  DO[842]=((F[821] OR F[822]) AND (DI[835] OR !F[564]) AND F[745]) ;
  26:  !KS2 in Ruhestellung schwenken ;
  27:  F[823]=(DO[3970] AND DI[1004] AND !F[824]) ;
  28:  !KS2 in Arbeitsstellung schwenken ;
  29:  F[824]=(DO[3973] AND DI[1005] AND !F[823]) ;
  30:  !KS2 schwenken ;
  31:  DO[1002]=((F[823] OR F[824]) AND (DI[995] OR !F[564]) AND F[746]) ;
  32:  !KS3 in Ruhestellung schwenken ;
  33:  F[825]=(DO[3971] AND DI[1164] AND !F[826]) ;
  34:  !KS3 in Arbeitsstellung schwenken ;
  35:  F[826]=(DO[3974] AND DI[1165] AND !F[825]) ;
  36:  !KS3 schwenken ;
  37:  DO[1162]=((F[825] OR F[826]) AND (DI[1155] OR !F[564]) AND F[747]) ;
/POS
/END
