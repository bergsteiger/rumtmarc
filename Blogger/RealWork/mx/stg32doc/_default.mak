##
##
## .Author: Mickael P. Golovin.
## .Copyright: 1997-2001 by Archivarius Team, free for non commercial use.
##
##
!ifndef		__DEFAULT_MAK
		__DEFAULT_MAK=1
##=================================== begin ===================================

SRCDIR=src
OUTDIR=out

DC=dcc32
RC=brcc32

BMAKE=bmake /f
NMAKE=nmake /f

COPYY=copy /y
EMPTY=echo.>nul
ERASE=del /f /q
EXIST=if exist

NULL=nul

DCPRJ=$(DC) -B

RCDEF=-D"$(DEF)"
RCINC=-I"$(SRCDIR);$(INC)"
RCFLAGS=
RCRES=$(RC) $(RCFLAGS) -fo

##=============================================================================

default:                all clean

all:			_all
clean:			_clean

_default.empty.stub:
			-@$(EMPTY)
_default.rm.bak:
			$(EXIST) *.~??? \
			$(ERASE) *.~???
			$(EXIST) $(SRCDIR)\*.~??? \
			$(ERASE) $(SRCDIR)\*.~???
_default.rm.out:
			$(EXIST) *.aps \
			$(ERASE) *.aps
			$(EXIST) *.ncb \
			$(ERASE) *.ncb
			$(EXIST) *.opt \
			$(ERASE) *.opt
			$(EXIST) *.plg \
			$(ERASE) *.plg
			$(EXIST) $(OUTDIR)\*.dcu \
			$(ERASE) $(OUTDIR)\*.dcu
			$(EXIST) $(OUTDIR)\*.exp \
			$(ERASE) $(OUTDIR)\*.exp
			$(EXIST) $(OUTDIR)\*.idb \
			$(ERASE) $(OUTDIR)\*.idb
			$(EXIST) $(OUTDIR)\*.lib \
			$(ERASE) $(OUTDIR)\*.lib
			$(EXIST) $(OUTDIR)\*.obj \
			$(ERASE) $(OUTDIR)\*.obj
			$(EXIST) $(OUTDIR)\*.pdb \
			$(ERASE) $(OUTDIR)\*.pdb

##==================================== end ====================================
!endif
