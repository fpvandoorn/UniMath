#############################################################################
##  v      #                   The Coq Proof Assistant                     ##
## <O___,, #                INRIA - CNRS - LIX - LRI - PPS                 ##
##   \VV/  #                                                               ##
##    //   #  Makefile automagically generated by coq_makefile Vtrunk      ##
#############################################################################

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

#
# This Makefile was generated by the command line :
# coq_makefile -f .coq_makefile_input -o Makefile-coq.make.tmp 
#

.DEFAULT_GOAL := all

# 
# This Makefile may take arguments passed as environment variables:
# COQBIN to specify the directory where Coq binaries resides;
# TIMECMD set a command to log .v compilation time;
# TIMED if non empty, use the default time command as TIMECMD;
# ZDEBUG/COQDEBUG to specify debug flags for ocamlc&ocamlopt/coqc;
# DSTROOT to specify a prefix to install path.

# Here is a hack to make $(eval $(shell works:
define donewline


endef
includecmdwithout@ = $(eval $(subst @,$(donewline),$(shell { $(1) | tr -d '\r' | tr '\n' '@'; })))
$(call includecmdwithout@,$(COQBIN)coqtop -config)

TIMED=
TIMECMD=
STDTIME?=/usr/bin/time -f "$* (user: %U mem: %M ko)"
TIMER=$(if $(TIMED), $(STDTIME), $(TIMECMD))

##########################
#                        #
# Libraries definitions. #
#                        #
##########################

COQLIBS?= -R UniMath UniMath
COQDOCLIBS?=-R UniMath UniMath

##########################
#                        #
# Variables definitions. #
#                        #
##########################


OPT?=
COQDEP?="$(COQBIN)coqdep" -c
COQFLAGS?=-q $(OPT) $(COQLIBS) $(OTHERFLAGS) $(COQ_XML)
COQCHKFLAGS?=-silent -o
COQDOCFLAGS?=-interpolate -utf8
COQC?=$(TIMER) "$(COQBIN)coqc"
GALLINA?="$(COQBIN)gallina"
COQDOC?="$(COQBIN)coqdoc"
COQCHK?="$(COQBIN)coqchk"
COQMKTOP?="$(COQBIN)coqmktop"

##################
#                #
# Install Paths. #
#                #
##################

ifdef USERINSTALL
XDG_DATA_HOME?="$(HOME)/.local/share"
COQLIBINSTALL=$(XDG_DATA_HOME)/coq
COQDOCINSTALL=$(XDG_DATA_HOME)/doc/coq
else
COQLIBINSTALL="${COQLIB}user-contrib"
COQDOCINSTALL="${DOCDIR}user-contrib"
endif

######################
#                    #
# Files dispatching. #
#                    #
######################

VFILES:=UniMath/Foundations/Generalities/uuu.v\
  UniMath/Foundations/Generalities/uu0.v\
  UniMath/Foundations/Proof_of_Extensionality/funextfun.v\
  UniMath/Foundations/hlevel1/hProp.v\
  UniMath/Foundations/hlevel2/hSet.v\
  UniMath/Foundations/hlevel2/algebra1a.v\
  UniMath/Foundations/hlevel2/algebra1b.v\
  UniMath/Foundations/hlevel2/algebra1c.v\
  UniMath/Foundations/hlevel2/algebra1d.v\
  UniMath/Foundations/hlevel2/hnat.v\
  UniMath/Foundations/hlevel2/stnfsets.v\
  UniMath/Foundations/hlevel2/finitesets.v\
  UniMath/Foundations/hlevel2/hz.v\
  UniMath/Foundations/hlevel2/hq.v\
  UniMath/RezkCompletion/pathnotations.v\
  UniMath/RezkCompletion/auxiliary_lemmas_HoTT.v\
  UniMath/RezkCompletion/precategories.v\
  UniMath/RezkCompletion/limits/aux_lemmas_HoTT.v\
  UniMath/RezkCompletion/limits/terminal.v\
  UniMath/RezkCompletion/limits/products.v\
  UniMath/RezkCompletion/functors_transformations.v\
  UniMath/RezkCompletion/limits/cones.v\
  UniMath/RezkCompletion/limits/pullbacks.v\
  UniMath/RezkCompletion/limits/initial.v\
  UniMath/RezkCompletion/HLevel_n_is_of_hlevel_Sn.v\
  UniMath/RezkCompletion/category_hset.v\
  UniMath/RezkCompletion/yoneda.v\
  UniMath/RezkCompletion/whiskering.v\
  UniMath/RezkCompletion/sub_precategories.v\
  UniMath/RezkCompletion/equivalences.v\
  UniMath/RezkCompletion/precomp_fully_faithful.v\
  UniMath/RezkCompletion/precomp_ess_surj.v\
  UniMath/RezkCompletion/rezk_completion.v\
  UniMath/Ktheory/Utilities.v\
  UniMath/Ktheory/Precategories.v\
  UniMath/Ktheory/Primitive.v\
  UniMath/Ktheory/ZeroObject.v\
  UniMath/Ktheory/StandardCategories.v\
  UniMath/Ktheory/Elements.v\
  UniMath/Ktheory/Representation.v\
  UniMath/Ktheory/Sets.v\
  UniMath/Ktheory/FiniteSet.v\
  UniMath/Ktheory/TerminalObject.v\
  UniMath/Ktheory/HomFamily.v\
  UniMath/Ktheory/Product.v\
  UniMath/Ktheory/Sum.v\
  UniMath/Ktheory/RawMatrix.v\
  UniMath/Ktheory/DirectSum.v\
  UniMath/Ktheory/Kernel.v\
  UniMath/Ktheory/Magma.v\
  UniMath/Ktheory/QuotientSet.v\
  UniMath/Ktheory/Monoid.v\
  UniMath/Ktheory/AbelianMonoid.v\
  UniMath/Ktheory/Group.v\
  UniMath/Ktheory/MetricTree.v\
  UniMath/Ktheory/Nat.v\
  UniMath/Ktheory/Halfline.v\
  UniMath/Ktheory/GroupAction.v\
  UniMath/Ktheory/AffineLine.v\
  UniMath/Ktheory/Circle.v\
  UniMath/Ktheory/AbelianGroup.v\
  UniMath/PAdics/z_mod_p.v\
  UniMath/PAdics/padics.v\
  UniMath/PAdics/lemmas.v\
  UniMath/PAdics/frac.v\
  UniMath/PAdics/fps.v

-include $(addsuffix .d,$(VFILES))
.SECONDARY: $(addsuffix .d,$(VFILES))

VO=vo
VOFILES:=$(VFILES:.v=.$(VO))
VOFILES1=$(patsubst UniMath/%,%,$(filter UniMath/%,$(VOFILES)))
GLOBFILES:=$(VFILES:.v=.glob)
GFILES:=$(VFILES:.v=.g)
HTMLFILES:=$(VFILES:.v=.html)
GHTMLFILES:=$(VFILES:.v=.g.html)
ifeq '$(HASNATDYNLINK)' 'true'
HASNATDYNLINK_OR_EMPTY := yes
else
HASNATDYNLINK_OR_EMPTY :=
endif

#######################################
#                                     #
# Definition of the toplevel targets. #
#                                     #
#######################################

all: $(VOFILES) 

quick:
	$(MAKE) -f $(firstword $(MAKEFILE_LIST)) all VO=vi
checkproofs:
	$(COQC) $(COQDEBUG) $(COQFLAGS) -schedule-vi-checking $(J) $(VOFILES:%.vo=%.vi)
gallina: $(GFILES)

html: $(GLOBFILES) $(VFILES)
	- mkdir -p html
	$(COQDOC) -toc $(COQDOCFLAGS) -html $(COQDOCLIBS) -d html $(VFILES)

gallinahtml: $(GLOBFILES) $(VFILES)
	- mkdir -p html
	$(COQDOC) -toc $(COQDOCFLAGS) -html -g $(COQDOCLIBS) -d html $(VFILES)

all.ps: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -ps $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

all-gal.ps: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -ps -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

all.pdf: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -pdf $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

all-gal.pdf: $(VFILES)
	$(COQDOC) -toc $(COQDOCFLAGS) -pdf -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $^`

validate: $(VOFILES)
	$(COQCHK) $(COQCHKFLAGS) $(COQLIBS) $(notdir $(^:.vo=))

beautify: $(VFILES:=.beautified)
	for file in $^; do mv $${file%.beautified} $${file%beautified}old && mv $${file} $${file%.beautified}; done
	@echo 'Do not do "make clean" until you are sure that everything went well!'
	@echo 'If there were a problem, execute "for file in $$(find . -name \*.v.old -print); do mv $${file} $${file%.old}; done" in your shell/'

.PHONY: all opt byte archclean clean install uninstall_me.sh uninstall userinstall depend html validate

####################
#                  #
# Special targets. #
#                  #
####################

byte:
	$(MAKE) all "OPT:=-byte"

opt:
	$(MAKE) all "OPT:=-opt"

userinstall:
	+$(MAKE) USERINSTALL=true install

install:
	cd "UniMath" && for i in $(VOFILES1); do \
	 install -d "`dirname "$(DSTROOT)"$(COQLIBINSTALL)/UniMath/$$i`"; \
	 install -m 0644 $$i "$(DSTROOT)"$(COQLIBINSTALL)/UniMath/$$i; \
	done

install-doc:
	install -d "$(DSTROOT)"$(COQDOCINSTALL)/UniMath/html
	for i in html/*; do \
	 install -m 0644 $$i "$(DSTROOT)"$(COQDOCINSTALL)/UniMath/$$i;\
	done

uninstall_me.sh:
	echo '#!/bin/sh' > $@ 
	printf 'cd "$${DSTROOT}"$(COQLIBINSTALL)/UniMath && rm -f $(VOFILES1) && find . -type d -and -empty -delete\ncd "$${DSTROOT}"$(COQLIBINSTALL) && find "UniMath" -maxdepth 0 -and -empty -exec rmdir -p \{\} \;\n' >> "$@"
	printf 'cd "$${DSTROOT}"$(COQDOCINSTALL)/UniMath \\\n' >> "$@"
	printf '&& rm -f $(shell find "html" -maxdepth 1 -and -type f -print)\n' >> "$@"
	printf 'cd "$${DSTROOT}"$(COQDOCINSTALL) && find UniMath/html -maxdepth 0 -and -empty -exec rmdir -p \{\} \;\n' >> "$@"
	chmod +x $@

uninstall: uninstall_me.sh
	sh $<

clean:
	rm -f $(VOFILES) $(VOFILES:.vo=.vi) $(GFILES) $(VFILES:.v=.v.d) $(VFILES:=.beautified) $(VFILES:=.old)
	rm -f all.ps all-gal.ps all.pdf all-gal.pdf all.glob $(VFILES:.v=.glob) $(VFILES:.v=.tex) $(VFILES:.v=.g.tex) all-mli.tex
	- rm -rf html mlihtml uninstall_me.sh

archclean:
	rm -f *.cmx *.o

printenv:
	@"$(COQBIN)coqtop" -config
	@echo 'CAMLC =	$(CAMLC)'
	@echo 'CAMLOPTC =	$(CAMLOPTC)'
	@echo 'PP =	$(PP)'
	@echo 'COQFLAGS =	$(COQFLAGS)'
	@echo 'COQLIBINSTALL =	$(COQLIBINSTALL)'
	@echo 'COQDOCINSTALL =	$(COQDOCINSTALL)'

Makefile-coq.make.tmp: .coq_makefile_input
	mv -f $@ $@.bak
	"$(COQBIN)coq_makefile" -f $< -o $@


###################
#                 #
# Implicit rules. #
#                 #
###################

%.vo %.glob: %.v
	$(COQC) $(COQDEBUG) $(COQFLAGS) $*

%.vi: %.v
	$(COQC) -quick $(COQDEBUG) $(COQFLAGS) $*

%.g: %.v
	$(GALLINA) $<

%.tex: %.v
	$(COQDOC) $(COQDOCFLAGS) -latex $< -o $@

%.html: %.v %.glob
	$(COQDOC) $(COQDOCFLAGS) -html $< -o $@

%.g.tex: %.v
	$(COQDOC) $(COQDOCFLAGS) -latex -g $< -o $@

%.g.html: %.v %.glob
	$(COQDOC) $(COQDOCFLAGS)  -html -g $< -o $@

%.v.d: %.v
	$(COQDEP) $(COQLIBS) "$<" > "$@" || ( RV=$$?; rm -f "$@"; exit $${RV} )

%.v.beautified:
	$(COQC) $(COQDEBUG) $(COQFLAGS) -beautify $*

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

