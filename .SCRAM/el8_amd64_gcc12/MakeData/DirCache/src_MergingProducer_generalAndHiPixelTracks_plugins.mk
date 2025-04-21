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
