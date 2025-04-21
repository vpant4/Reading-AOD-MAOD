ifeq ($(strip $(HeavyIonsAnalysisMuonAnalysisAuto)),)
HeavyIonsAnalysisMuonAnalysisAuto := self/src/HeavyIonsAnalysis/MuonAnalysis/plugins
PLUGINS:=yes
HeavyIonsAnalysisMuonAnalysisAuto_files := $(patsubst src/HeavyIonsAnalysis/MuonAnalysis/plugins/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/MuonAnalysis/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisMuonAnalysisAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/MuonAnalysis/plugins/BuildFile
HeavyIonsAnalysisMuonAnalysisAuto_LOC_USE := self   TrackingTools/IPTools MuonAnalysis/MuonAssociators
HeavyIonsAnalysisMuonAnalysisAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisMuonAnalysisAuto,HeavyIonsAnalysisMuonAnalysisAuto,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/MuonAnalysis/plugins))
HeavyIonsAnalysisMuonAnalysisAuto_PACKAGE := self/src/HeavyIonsAnalysis/MuonAnalysis/plugins
ALL_PRODS += HeavyIonsAnalysisMuonAnalysisAuto
HeavyIonsAnalysis/MuonAnalysis_forbigobj+=HeavyIonsAnalysisMuonAnalysisAuto
HeavyIonsAnalysisMuonAnalysisAuto_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisMuonAnalysisAuto,src/HeavyIonsAnalysis/MuonAnalysis/plugins,src_HeavyIonsAnalysis_MuonAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
HeavyIonsAnalysisMuonAnalysisAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,HeavyIonsAnalysisMuonAnalysisAuto,src/HeavyIonsAnalysis/MuonAnalysis/plugins))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_MuonAnalysis_plugins
src_HeavyIonsAnalysis_MuonAnalysis_plugins_parent := HeavyIonsAnalysis/MuonAnalysis
src_HeavyIonsAnalysis_MuonAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_MuonAnalysis_plugins,src/HeavyIonsAnalysis/MuonAnalysis/plugins,PLUGINS))
