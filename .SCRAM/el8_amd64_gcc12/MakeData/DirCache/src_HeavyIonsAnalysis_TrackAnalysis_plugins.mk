ifeq ($(strip $(HeavyIonsAnalysisTrackAnalysisAuto)),)
HeavyIonsAnalysisTrackAnalysisAuto := self/src/HeavyIonsAnalysis/TrackAnalysis/plugins
PLUGINS:=yes
HeavyIonsAnalysisTrackAnalysisAuto_files := $(patsubst src/HeavyIonsAnalysis/TrackAnalysis/plugins/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/TrackAnalysis/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisTrackAnalysisAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/TrackAnalysis/plugins/BuildFile
HeavyIonsAnalysisTrackAnalysisAuto_LOC_USE := self   FWCore/Framework DataFormats/PatCandidates
HeavyIonsAnalysisTrackAnalysisAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisTrackAnalysisAuto,HeavyIonsAnalysisTrackAnalysisAuto,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/TrackAnalysis/plugins))
HeavyIonsAnalysisTrackAnalysisAuto_PACKAGE := self/src/HeavyIonsAnalysis/TrackAnalysis/plugins
ALL_PRODS += HeavyIonsAnalysisTrackAnalysisAuto
HeavyIonsAnalysis/TrackAnalysis_forbigobj+=HeavyIonsAnalysisTrackAnalysisAuto
HeavyIonsAnalysisTrackAnalysisAuto_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisTrackAnalysisAuto,src/HeavyIonsAnalysis/TrackAnalysis/plugins,src_HeavyIonsAnalysis_TrackAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
HeavyIonsAnalysisTrackAnalysisAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,HeavyIonsAnalysisTrackAnalysisAuto,src/HeavyIonsAnalysis/TrackAnalysis/plugins))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_TrackAnalysis_plugins
src_HeavyIonsAnalysis_TrackAnalysis_plugins_parent := HeavyIonsAnalysis/TrackAnalysis
src_HeavyIonsAnalysis_TrackAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_TrackAnalysis_plugins,src/HeavyIonsAnalysis/TrackAnalysis/plugins,PLUGINS))
