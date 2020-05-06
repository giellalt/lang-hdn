## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# The current dir must be built first.
SUBDIRS = filters . fstbased

#########################################
# BEGIN: Local processing
#
# Target template:
#
# analyser-speller-gt-norm.%: analyser-speller-gt-norm.tmp.%
#	build rules

analyser-speller-gt-norm.%: analyser-speller-gt-norm.tmp.% \
			$(top_builddir)/src/filters/remove-hyphenation-marks.%  \
			$(top_builddir)/src/filters/remove-infl_deriv-borders.% \
			filters/make_optional-second_initial-letter.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex                                  \
			@\"$<\"                                                         \
		.o. @\"$(top_builddir)/src/filters/remove-hyphenation-marks.$*\"    \
		.o. @\"$(top_builddir)/src/filters/remove-infl_deriv-borders.$*\"   \
		.o. @\"filters/make_optional-second_initial-letter.$*\"   \
		; \n\
		$(INVERT_HFST)\
		save stack $@\n\
		quit\n" | $(XFST_TOOL)

generator-speller-gt-norm.%: analyser-speller-gt-norm.tmp.% \
							 filters/make_optional-second_initial-letter.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex                      \
			@\"$<\"                                             \
		.o. @\"filters/make_optional-second_initial-letter.$*\" \
		; \n\
		$(INVERT_XFST)$(INVERT_FOMA)\
		save stack $@\n\
		quit\n" | $(XFST_TOOL)


# END: Local processing
#########################################

include $(top_srcdir)/am-shared/tools-spellcheckers-dir-include.am
