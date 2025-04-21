ifeq ($(strip $(HeavyIonsAnalysis/JetAnalysis)),)
ALL_COMMONRULES += src_HeavyIonsAnalysis_JetAnalysis_src
src_HeavyIonsAnalysis_JetAnalysis_src_parent := HeavyIonsAnalysis/JetAnalysis
src_HeavyIonsAnalysis_JetAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_JetAnalysis_src,src/HeavyIonsAnalysis/JetAnalysis/src,LIBRARY))
HeavyIonsAnalysisJetAnalysis := self/HeavyIonsAnalysis/JetAnalysis
HeavyIonsAnalysis/JetAnalysis := HeavyIonsAnalysisJetAnalysis
HeavyIonsAnalysisJetAnalysis_files := $(patsubst src/HeavyIonsAnalysis/JetAnalysis/src/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/JetAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisJetAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/JetAnalysis/BuildFile
HeavyIonsAnalysisJetAnalysis_LOC_USE := self   root hepmc fastjet fastjet-contrib FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Framework CommonTools/UtilAlgos Geometry/Records DataFormats/HepMCCandidate DataFormats/PatCandidates RecoJets/JetProducers RecoHI/HiJetAlgos DataFormats/HeavyIonEvent CondFormats/JetMETObjects SimDataFormats/GeneratorProducts CalibFormats/HcalObjects
HeavyIonsAnalysisJetAnalysis_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisJetAnalysis,HeavyIonsAnalysisJetAnalysis,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/JetAnalysis/src))
HeavyIonsAnalysisJetAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/JetAnalysis/src
ALL_PRODS += HeavyIonsAnalysisJetAnalysis
HeavyIonsAnalysisJetAnalysis_CLASS := LIBRARY
HeavyIonsAnalysis/JetAnalysis_forbigobj+=HeavyIonsAnalysisJetAnalysis
HeavyIonsAnalysisJetAnalysis_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisJetAnalysis,src/HeavyIonsAnalysis/JetAnalysis/src,src_HeavyIonsAnalysis_JetAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
