ifeq ($(strip $(HeavyIonsAnalysis/ZDCAnalysis)),)
ALL_COMMONRULES += src_HeavyIonsAnalysis_ZDCAnalysis_src
src_HeavyIonsAnalysis_ZDCAnalysis_src_parent := HeavyIonsAnalysis/ZDCAnalysis
src_HeavyIonsAnalysis_ZDCAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_ZDCAnalysis_src,src/HeavyIonsAnalysis/ZDCAnalysis/src,LIBRARY))
HeavyIonsAnalysisZDCAnalysis := self/HeavyIonsAnalysis/ZDCAnalysis
HeavyIonsAnalysis/ZDCAnalysis := HeavyIonsAnalysisZDCAnalysis
HeavyIonsAnalysisZDCAnalysis_files := $(patsubst src/HeavyIonsAnalysis/ZDCAnalysis/src/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/ZDCAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisZDCAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/ZDCAnalysis/BuildFile
HeavyIonsAnalysisZDCAnalysis_LOC_USE := self   root FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/Common DataFormats/Candidate DataFormats/CaloTowers DataFormats/HcalDigi CommonTools/UtilAlgos CommonTools/CandUtils TrackingTools/TransientTrack MagneticField/Records CalibFormats/HcalObjects DQMServices/Core
HeavyIonsAnalysisZDCAnalysis_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisZDCAnalysis,HeavyIonsAnalysisZDCAnalysis,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/ZDCAnalysis/src))
HeavyIonsAnalysisZDCAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/ZDCAnalysis/src
ALL_PRODS += HeavyIonsAnalysisZDCAnalysis
HeavyIonsAnalysisZDCAnalysis_CLASS := LIBRARY
HeavyIonsAnalysis/ZDCAnalysis_forbigobj+=HeavyIonsAnalysisZDCAnalysis
HeavyIonsAnalysisZDCAnalysis_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisZDCAnalysis,src/HeavyIonsAnalysis/ZDCAnalysis/src,src_HeavyIonsAnalysis_ZDCAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
