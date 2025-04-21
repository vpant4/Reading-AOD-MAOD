ifeq ($(strip $(AnalyzersRaghuEffTestAuto)),)
AnalyzersRaghuEffTestAuto := self/src/Analyzers/RaghuEffTest/plugins
PLUGINS:=yes
AnalyzersRaghuEffTestAuto_files := $(patsubst src/Analyzers/RaghuEffTest/plugins/%,%,$(wildcard $(foreach dir,src/Analyzers/RaghuEffTest/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
AnalyzersRaghuEffTestAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/Analyzers/RaghuEffTest/plugins/BuildFile
AnalyzersRaghuEffTestAuto_LOC_USE := self   DataFormats/TrackReco DataFormats/VertexReco DataFormats/PatCandidates DataFormats/HeavyIonEvent DataFormats/Common DataFormats/HepMCCandidate SimDataFormats/GeneratorProducts CommonTools/UtilAlgos FWCore/Framework FWCore/ParameterSet FWCore/PluginManager
AnalyzersRaghuEffTestAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,AnalyzersRaghuEffTestAuto,AnalyzersRaghuEffTestAuto,$(SCRAMSTORENAME_LIB),src/Analyzers/RaghuEffTest/plugins))
AnalyzersRaghuEffTestAuto_PACKAGE := self/src/Analyzers/RaghuEffTest/plugins
ALL_PRODS += AnalyzersRaghuEffTestAuto
Analyzers/RaghuEffTest_forbigobj+=AnalyzersRaghuEffTestAuto
AnalyzersRaghuEffTestAuto_INIT_FUNC        += $$(eval $$(call Library,AnalyzersRaghuEffTestAuto,src/Analyzers/RaghuEffTest/plugins,src_Analyzers_RaghuEffTest_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
AnalyzersRaghuEffTestAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,AnalyzersRaghuEffTestAuto,src/Analyzers/RaghuEffTest/plugins))
endif
ALL_COMMONRULES += src_Analyzers_RaghuEffTest_plugins
src_Analyzers_RaghuEffTest_plugins_parent := Analyzers/RaghuEffTest
src_Analyzers_RaghuEffTest_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Analyzers_RaghuEffTest_plugins,src/Analyzers/RaghuEffTest/plugins,PLUGINS))
