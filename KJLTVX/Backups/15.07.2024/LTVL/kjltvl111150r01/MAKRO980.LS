/PROG  MAKRO980
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ParChange:EZX/G";
PROG_SIZE	= 1910;
CREATE		= DATE 06-04-04  TIME 19:25:18;
MODIFIED	= DATE 09-04-28  TIME 08:43:16;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 50;
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
    :  !Initialisieren von allen EZ  -- ;
    :  !letzte Aenderung 23.03.2009  -- ;
    :  IF ((GO[10800]>4) OR (GO[10800]<1)),JMP LBL[999] ;
    :  !Parameter EZ4  -- ;
    :  !MAKRO941 fuer EZ4 Zange 1  -- ;
    :  !MAKRO942 fuer EZ4 Zange 2  -- ;
    :  IF (GO[10800]<4),JMP LBL[4] ;
    :  IF ((GO[10804]>=1) AND (GO[10503]=1)),CALL MAKRO941 ;
    :  IF ((GO[10804]>=2) AND (GO[10503]=2)),CALL MAKRO942 ;
    :  IF ((GO[10804]>=3) AND (GO[10503]=3)),CALL MAKRO943 ;
    :  IF ((GO[10804]>=4) AND (GO[10503]=4)),CALL MAKRO944 ;
    :  IF ((GO[10804]>=5) AND (GO[10503]=5)),CALL MAKRO945 ;
    :  IF ((GO[10804]=6) AND (GO[10503]=6)),CALL MAKRO946 ;
    :  LBL[4] ;
    :  !Parameter EZ3  -- ;
    :  !MAKRO931 fuer EZ3 Zange 1  -- ;
    :  !MAKRO932 fuer EZ3 Zange 2  -- ;
    :  IF (GO[10800]<3),JMP LBL[3] ;
    :  IF ((GO[10803]>=1) AND (GO[10553]=1)),CALL MAKRO931 ;
    :  IF ((GO[10803]>=2) AND (GO[10553]=2)),CALL MAKRO932 ;
    :  IF ((GO[10803]>=3) AND (GO[10553]=3)),CALL MAKRO933 ;
    :  IF ((GO[10803]>=4) AND (GO[10553]=4)),CALL MAKRO934 ;
    :  IF ((GO[10803]>=5) AND (GO[10553]=5)),CALL MAKRO935 ;
    :  IF ((GO[10803]=6) AND (GO[10553]=6)),CALL MAKRO936 ;
    :  LBL[3] ;
    :  !Parameter EZ2  -- ;
    :  !MAKRO921 fuer EZ2 Zange 1  -- ;
    :  !MAKRO922 fuer EZ2 Zange 2  -- ;
    :  IF (GO[10800]<2),JMP LBL[2] ;
    :  IF ((GO[10802]>=1) AND (GO[10603]=1)),CALL MAKRO921 ;
    :  IF ((GO[10802]>=2) AND (GO[10603]=2)),CALL MAKRO922 ;
    :  IF ((GO[10802]>=3) AND (GO[10603]=3)),CALL MAKRO923 ;
    :  IF ((GO[10802]>=4) AND (GO[10603]=4)),CALL MAKRO924 ;
    :  IF ((GO[10802]>=5) AND (GO[10603]=5)),CALL MAKRO925 ;
    :  IF ((GO[10802]=6) AND (GO[10603]=6)),CALL MAKRO926 ;
    :  LBL[2] ;
    :  !Parameter EZ1  -- ;
    :  !MAKRO931 fuer EZ1 Zange 1  -- ;
    :  !MAKRO932 fuer EZ1 Zange 2  -- ;
    :  IF (GO[10800]<1),JMP LBL[1] ;
    :  IF ((GO[10801]>=1) AND (GO[10653]=1)),CALL MAKRO911 ;
    :  IF ((GO[10801]>=2) AND (GO[10653]=2)),CALL MAKRO912 ;
    :  IF ((GO[10801]>=3) AND (GO[10653]=3)),CALL MAKRO913 ;
    :  IF ((GO[10801]>=4) AND (GO[10653]=4)),CALL MAKRO914 ;
    :  IF ((GO[10801]>=5) AND (GO[10653]=5)),CALL MAKRO915 ;
    :  IF ((GO[10801]=6) AND (GO[10653]=6)),CALL MAKRO916 ;
    :  LBL[1] ;
    :  F[1022]=(OFF) ;
    :  F[1024]=(OFF) ;
    :  LBL[999] ;
/POS
/END
