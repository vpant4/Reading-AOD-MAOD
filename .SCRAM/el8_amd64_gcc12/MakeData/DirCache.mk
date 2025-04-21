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
ifeq ($(strip $(HeavyIonsAnalysis/EGMAnalysis)),)
ALL_COMMONRULES += src_HeavyIonsAnalysis_EGMAnalysis_src
src_HeavyIonsAnalysis_EGMAnalysis_src_parent := HeavyIonsAnalysis/EGMAnalysis
src_HeavyIonsAnalysis_EGMAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_EGMAnalysis_src,src/HeavyIonsAnalysis/EGMAnalysis/src,LIBRARY))
HeavyIonsAnalysisEGMAnalysis := self/HeavyIonsAnalysis/EGMAnalysis
HeavyIonsAnalysis/EGMAnalysis := HeavyIonsAnalysisEGMAnalysis
HeavyIonsAnalysisEGMAnalysis_files := $(patsubst src/HeavyIonsAnalysis/EGMAnalysis/src/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/EGMAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisEGMAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/EGMAnalysis/BuildFile
HeavyIonsAnalysisEGMAnalysis_LOC_USE := self   DataFormats/EgammaReco DataFormats/EgammaCandidates RecoEgamma/EgammaTools TrackingTools/TransientTrack TrackingTools/Records
HeavyIonsAnalysisEGMAnalysis_EX_LIB   := HeavyIonsAnalysisEGMAnalysis
HeavyIonsAnalysisEGMAnalysis_EX_USE   := $(foreach d,$(HeavyIonsAnalysisEGMAnalysis_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
HeavyIonsAnalysisEGMAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/EGMAnalysis/src
ALL_PRODS += HeavyIonsAnalysisEGMAnalysis
HeavyIonsAnalysisEGMAnalysis_CLASS := LIBRARY
HeavyIonsAnalysis/EGMAnalysis_forbigobj+=HeavyIonsAnalysisEGMAnalysis
HeavyIonsAnalysisEGMAnalysis_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisEGMAnalysis,src/HeavyIonsAnalysis/EGMAnalysis/src,src_HeavyIonsAnalysis_EGMAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(HeavyIonsAnalysisEGMAnalysisAuto)),)
HeavyIonsAnalysisEGMAnalysisAuto := self/src/HeavyIonsAnalysis/EGMAnalysis/plugins
PLUGINS:=yes
HeavyIonsAnalysisEGMAnalysisAuto_files := $(patsubst src/HeavyIonsAnalysis/EGMAnalysis/plugins/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/EGMAnalysis/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisEGMAnalysisAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/EGMAnalysis/plugins/BuildFile
HeavyIonsAnalysisEGMAnalysisAuto_LOC_USE := self   CommonTools/UtilAlgos DataFormats/PatCandidates Geometry/CaloGeometry Geometry/Records HeavyIonsAnalysis/EGMAnalysis RecoEgamma/EgammaTools CommonTools/Egamma TrackingTools/IPTools rootcore
HeavyIonsAnalysisEGMAnalysisAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisEGMAnalysisAuto,HeavyIonsAnalysisEGMAnalysisAuto,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/EGMAnalysis/plugins))
HeavyIonsAnalysisEGMAnalysisAuto_PACKAGE := self/src/HeavyIonsAnalysis/EGMAnalysis/plugins
ALL_PRODS += HeavyIonsAnalysisEGMAnalysisAuto
HeavyIonsAnalysis/EGMAnalysis_forbigobj+=HeavyIonsAnalysisEGMAnalysisAuto
HeavyIonsAnalysisEGMAnalysisAuto_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisEGMAnalysisAuto,src/HeavyIonsAnalysis/EGMAnalysis/plugins,src_HeavyIonsAnalysis_EGMAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
HeavyIonsAnalysisEGMAnalysisAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,HeavyIonsAnalysisEGMAnalysisAuto,src/HeavyIonsAnalysis/EGMAnalysis/plugins))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_EGMAnalysis_plugins
src_HeavyIonsAnalysis_EGMAnalysis_plugins_parent := HeavyIonsAnalysis/EGMAnalysis
src_HeavyIonsAnalysis_EGMAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_EGMAnalysis_plugins,src/HeavyIonsAnalysis/EGMAnalysis/plugins,PLUGINS))
ifeq ($(strip $(HeavyIonsAnalysisEventAnalysisAuto)),)
HeavyIonsAnalysisEventAnalysisAuto := self/src/HeavyIonsAnalysis/EventAnalysis/plugins
PLUGINS:=yes
HeavyIonsAnalysisEventAnalysisAuto_files := $(patsubst src/HeavyIonsAnalysis/EventAnalysis/plugins/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/EventAnalysis/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisEventAnalysisAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/EventAnalysis/plugins/BuildFile
HeavyIonsAnalysisEventAnalysisAuto_LOC_USE := self   CommonTools/UtilAlgos DataFormats/L1GlobalTrigger DataFormats/L1TGlobal DataFormats/ParticleFlowCandidate DataFormats/PatCandidates FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry HLTrigger/HLTcore L1Trigger/L1TNtuples DataFormats/HeavyIonEvent SimGeneral/HepPDTRecord SimDataFormats/GeneratorProducts rootcore heppdt
HeavyIonsAnalysisEventAnalysisAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisEventAnalysisAuto,HeavyIonsAnalysisEventAnalysisAuto,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/EventAnalysis/plugins))
HeavyIonsAnalysisEventAnalysisAuto_PACKAGE := self/src/HeavyIonsAnalysis/EventAnalysis/plugins
ALL_PRODS += HeavyIonsAnalysisEventAnalysisAuto
HeavyIonsAnalysis/EventAnalysis_forbigobj+=HeavyIonsAnalysisEventAnalysisAuto
HeavyIonsAnalysisEventAnalysisAuto_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisEventAnalysisAuto,src/HeavyIonsAnalysis/EventAnalysis/plugins,src_HeavyIonsAnalysis_EventAnalysis_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
HeavyIonsAnalysisEventAnalysisAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,HeavyIonsAnalysisEventAnalysisAuto,src/HeavyIonsAnalysis/EventAnalysis/plugins))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_EventAnalysis_plugins
src_HeavyIonsAnalysis_EventAnalysis_plugins_parent := HeavyIonsAnalysis/EventAnalysis
src_HeavyIonsAnalysis_EventAnalysis_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_EventAnalysis_plugins,src/HeavyIonsAnalysis/EventAnalysis/plugins,PLUGINS))
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
ifeq ($(strip $(HeavyIonsAnalysis/MuonAnalysis)),)
ALL_COMMONRULES += src_HeavyIonsAnalysis_MuonAnalysis_src
src_HeavyIonsAnalysis_MuonAnalysis_src_parent := HeavyIonsAnalysis/MuonAnalysis
src_HeavyIonsAnalysis_MuonAnalysis_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_MuonAnalysis_src,src/HeavyIonsAnalysis/MuonAnalysis/src,LIBRARY))
HeavyIonsAnalysisMuonAnalysis := self/HeavyIonsAnalysis/MuonAnalysis
HeavyIonsAnalysis/MuonAnalysis := HeavyIonsAnalysisMuonAnalysis
HeavyIonsAnalysisMuonAnalysis_files := $(patsubst src/HeavyIonsAnalysis/MuonAnalysis/src/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/MuonAnalysis/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
HeavyIonsAnalysisMuonAnalysis_BuildFile    := $(WORKINGDIR)/cache/bf/src/HeavyIonsAnalysis/MuonAnalysis/BuildFile
HeavyIonsAnalysisMuonAnalysis_LOC_USE := self   clhep root FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry DataFormats/HepMCCandidate DataFormats/MuonReco DataFormats/HeavyIonEvent SimDataFormats/TrackingAnalysis CommonTools/UtilAlgos CondFormats/HIObjects CondFormats/DataRecord TrackingTools/TransientTrack RecoVertex/KalmanVertexFit DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/TrackingRecHit RecoTracker/TkTrackingRegions TrackingTools/IPTools
HeavyIonsAnalysisMuonAnalysis_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,HeavyIonsAnalysisMuonAnalysis,HeavyIonsAnalysisMuonAnalysis,$(SCRAMSTORENAME_LIB),src/HeavyIonsAnalysis/MuonAnalysis/src))
HeavyIonsAnalysisMuonAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/MuonAnalysis/src
ALL_PRODS += HeavyIonsAnalysisMuonAnalysis
HeavyIonsAnalysisMuonAnalysis_CLASS := LIBRARY
HeavyIonsAnalysis/MuonAnalysis_forbigobj+=HeavyIonsAnalysisMuonAnalysis
HeavyIonsAnalysisMuonAnalysis_INIT_FUNC        += $$(eval $$(call Library,HeavyIonsAnalysisMuonAnalysis,src/HeavyIonsAnalysis/MuonAnalysis/src,src_HeavyIonsAnalysis_MuonAnalysis_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
endif
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
ifeq ($(strip $(MergingProducergeneralAndHiPixelTracksAuto)),)
MergingProducergeneralAndHiPixelTracksAuto := self/src/MergingProducer/generalAndHiPixelTracks/plugins
PLUGINS:=yes
MergingProducergeneralAndHiPixelTracksAuto_files := $(patsubst src/MergingProducer/generalAndHiPixelTracks/plugins/%,%,$(wildcard $(foreach dir,src/MergingProducer/generalAndHiPixelTracks/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
MergingProducergeneralAndHiPixelTracksAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/MergingProducer/generalAndHiPixelTracks/plugins/BuildFile
MergingProducergeneralAndHiPixelTracksAuto_LOC_USE := self   FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/TrackReco DataFormats/Math DataFormats/PatCandidates
MergingProducergeneralAndHiPixelTracksAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,MergingProducergeneralAndHiPixelTracksAuto,MergingProducergeneralAndHiPixelTracksAuto,$(SCRAMSTORENAME_LIB),src/MergingProducer/generalAndHiPixelTracks/plugins))
MergingProducergeneralAndHiPixelTracksAuto_PACKAGE := self/src/MergingProducer/generalAndHiPixelTracks/plugins
ALL_PRODS += MergingProducergeneralAndHiPixelTracksAuto
MergingProducer/generalAndHiPixelTracks_forbigobj+=MergingProducergeneralAndHiPixelTracksAuto
MergingProducergeneralAndHiPixelTracksAuto_INIT_FUNC        += $$(eval $$(call Library,MergingProducergeneralAndHiPixelTracksAuto,src/MergingProducer/generalAndHiPixelTracks/plugins,src_MergingProducer_generalAndHiPixelTracks_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
MergingProducergeneralAndHiPixelTracksAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,MergingProducergeneralAndHiPixelTracksAuto,src/MergingProducer/generalAndHiPixelTracks/plugins))
endif
ALL_COMMONRULES += src_MergingProducer_generalAndHiPixelTracks_plugins
src_MergingProducer_generalAndHiPixelTracks_plugins_parent := MergingProducer/generalAndHiPixelTracks
src_MergingProducer_generalAndHiPixelTracks_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MergingProducer_generalAndHiPixelTracks_plugins,src/MergingProducer/generalAndHiPixelTracks/plugins,PLUGINS))
