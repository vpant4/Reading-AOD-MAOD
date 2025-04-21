ifeq ($(strip $(testMergingProducerMergingPixAndGenTP)),)
testMergingProducerMergingPixAndGenTP := self/src/MergingProducer/generalAndHiPixelTracks/test
testMergingProducerMergingPixAndGenTP_files := $(patsubst src/MergingProducer/generalAndHiPixelTracks/test/%,%,$(foreach file,test_catch2_*.cc,$(eval xfile:=$(wildcard src/MergingProducer/generalAndHiPixelTracks/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/MergingProducer/generalAndHiPixelTracks/test/$(file). Please fix src/MergingProducer/generalAndHiPixelTracks/test/BuildFile.))))
testMergingProducerMergingPixAndGenTP_BuildFile    := $(WORKINGDIR)/cache/bf/src/MergingProducer/generalAndHiPixelTracks/test/BuildFile
testMergingProducerMergingPixAndGenTP_LOC_USE := self   FWCore/TestProcessor catch2
testMergingProducerMergingPixAndGenTP_PACKAGE := self/src/MergingProducer/generalAndHiPixelTracks/test
ALL_PRODS += testMergingProducerMergingPixAndGenTP
testMergingProducerMergingPixAndGenTP_INIT_FUNC        += $$(eval $$(call Binary,testMergingProducerMergingPixAndGenTP,src/MergingProducer/generalAndHiPixelTracks/test,src_MergingProducer_generalAndHiPixelTracks_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testMergingProducerMergingPixAndGenTP_CLASS := TEST
testMergingProducerMergingPixAndGenTP_TEST_RUNNER_CMD :=  testMergingProducerMergingPixAndGenTP 
else
$(eval $(call MultipleWarningMsg,testMergingProducerMergingPixAndGenTP,src/MergingProducer/generalAndHiPixelTracks/test))
endif
ALL_COMMONRULES += src_MergingProducer_generalAndHiPixelTracks_test
src_MergingProducer_generalAndHiPixelTracks_test_parent := MergingProducer/generalAndHiPixelTracks
src_MergingProducer_generalAndHiPixelTracks_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MergingProducer_generalAndHiPixelTracks_test,src/MergingProducer/generalAndHiPixelTracks/test,TEST))
