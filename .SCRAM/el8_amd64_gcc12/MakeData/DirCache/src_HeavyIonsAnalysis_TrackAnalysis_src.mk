ifeq ($(strip $(HeavyIonsAnalysis/TrackAnalysis)),)
ALL_COMMONRULES += src_HeavyIonsAnalysis_TrackAnalysis_src
src_HeavyIonsAnalysis_TrackAnalysis_src_parent := HeavyIonsAnalysis/TrackAnalysis
src_HeavyIonsAnalysis_TrackAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_TrackAnalysis_src,src/HeavyIonsAnalysis/TrackAnalysis/src,LIBRARY))
HeavyIonsAnalysisTrackAnalysis := self/HeavyIonsAnalysis/TrackAnalysis
HeavyIonsAnalysis/TrackAnalysis := HeavyIonsAnalysisTrackAnalysis
HeavyIonsAnalysisTrackAnalysis_files := $(patsubst src/HeavyIonsAnalysis/TrackAnalysis/src/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/TrackAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisTrackAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/TrackAnalysis/BuildFile
HeavyIonsAnalysisTrackAnalysis_LOC_USE := self   root DataFormats/Common FWCore/Framework FWCore/ServiceRegistry FWCore/PluginManager FWCore/ParameterSet PhysicsTools/UtilAlgos
HeavyIonsAnalysisTrackAnalysis_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisTrackAnalysis,HeavyIonsAnalysisTrackAnalysis,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/TrackAnalysis/src))
HeavyIonsAnalysisTrackAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/TrackAnalysis/src
ALL_PRODS += HeavyIonsAnalysisTrackAnalysis
HeavyIonsAnalysisTrackAnalysis_CLASS := LIBRARY
HeavyIonsAnalysis/TrackAnalysis_forbigobj+=HeavyIonsAnalysisTrackAnalysis
HeavyIonsAnalysisTrackAnalysis_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisTrackAnalysis,src/HeavyIonsAnalysis/TrackAnalysis/src,src_HeavyIonsAnalysis_TrackAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
