## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# The current dir must be built after the filters, but before the rest.
SUBDIRS = filters . desktop mobile

### BEGIN: Local build rules: *.hfst: *.tmp.hfst ###

generator-fstspeller-gt-norm.%: generator-fstspeller-gt-norm.tmp.% \
                          filters/remove-everything-to-the-right-of-space.% \
                          filters/remove-everything-to-the-left-of-space.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
			[   @\"$<\" .o. \
			( [ @\"filters/remove-everything-to-the-left-of-space.$*\" \
			.o. @\"filters/remove-everything-to-the-right-of-space.$*\" ] ) ] \
			;\n\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

#### END: Local build rules: *.hfst: *.tmp.hfst ####

include $(top_srcdir)/am-shared/tools-spellcheckers-fstbased-dir-include.am
