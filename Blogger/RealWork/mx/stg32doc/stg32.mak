##
##
## .Author: Mickael P. Golovin.
## .Copyright: 1997-2001 by Archivarius Team, free for non commercial use.
##
##
!include	"stg32.inc"
##
!ifndef		_STG32_MAK
		_STG32_MAK=1
##=================================== begin ===================================
_all:			mk.stg32.dll
_clean:			rm.stg32.bak \
			rm.stg32.out \
			rm.stg32.drc \
			rm.stg32.dsk \
			rm.stg32.dsm \
			rm.stg32.log \
			rm.stg32.map \
			rm.stg32.rsm
##=============================================================================
mk.stg32.dll:		stg32.dll

rm.stg32.bak:		_default.rm.bak

rm.stg32.out:		_default.rm.out

rm.stg32.drc:
			$(EXIST) stg32.drc \
			$(ERASE) stg32.drc
rm.stg32.dsk:
			$(EXIST) stg32.dsk \
			$(ERASE) stg32.dsk
rm.stg32.dsm:
			$(EXIST) stg32.dsm \
			$(ERASE) stg32.dsm
rm.stg32.log:
			$(EXIST) stg32.log \
			$(ERASE) stg32.log
rm.stg32.map:
			$(EXIST) stg32.map \
			$(ERASE) stg32.map
rm.stg32.rsm:
			$(EXIST) stg32.rsm \
			$(ERASE) stg32.rsm

stg32.dll:		stg32.dpr
			&$(DCPRJ) $**
##==================================== end ====================================
!endif
