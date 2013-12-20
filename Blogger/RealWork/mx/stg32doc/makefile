##
##
## .Author: Mickael P. Golovin.
## .Copyright: 1997-2001 by Archivarius Team, free for non commercial use.
##
##
!include	"makefile.inc"
##
!ifndef		_MAKEFILE_MAK
		_MAKEFILE_MAK=1
##=================================== begin ===================================
_all:			mk.stg32.all
_clean:			rm.stg32.all

stg32:			mk.stg32.all \
			rm.stg32.all
##=============================================================================
mk.stg32.all:		stg32.mak
			&$(BMAKE) $** all
rm.stg32.all:		stg32.mak
			&$(BMAKE) $** clean
##==================================== end ====================================
!endif
