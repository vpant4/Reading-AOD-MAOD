ifeq ($(strip $(PyMergingProducergeneralAndHiPixelTracks)),)
PyMergingProducergeneralAndHiPixelTracks := self/src/MergingProducer/generalAndHiPixelTracks/python
src_MergingProducer_generalAndHiPixelTracks_python_parent := src/MergingProducer/generalAndHiPixelTracks
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/MergingProducer/generalAndHiPixelTracks/python)
PyMergingProducergeneralAndHiPixelTracks_files := $(patsubst src/MergingProducer/generalAndHiPixelTracks/python/%,%,$(wildcard $(foreach dir,src/MergingProducer/generalAndHiPixelTracks/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyMergingProducergeneralAndHiPixelTracks_LOC_USE := self   
PyMergingProducergeneralAndHiPixelTracks_PACKAGE := self/src/MergingProducer/generalAndHiPixelTracks/python
ALL_PRODS += PyMergingProducergeneralAndHiPixelTracks
PyMergingProducergeneralAndHiPixelTracks_INIT_FUNC        += $$(eval $$(call PythonProduct,PyMergingProducergeneralAndHiPixelTracks,src/MergingProducer/generalAndHiPixelTracks/python,src_MergingProducer_generalAndHiPixelTracks_python))
else
$(eval $(call MultipleWarningMsg,PyMergingProducergeneralAndHiPixelTracks,src/MergingProducer/generalAndHiPixelTracks/python))
endif
ALL_COMMONRULES += src_MergingProducer_generalAndHiPixelTracks_python
src_MergingProducer_generalAndHiPixelTracks_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_MergingProducer_generalAndHiPixelTracks_python,src/MergingProducer/generalAndHiPixelTracks/python,PYTHON))
