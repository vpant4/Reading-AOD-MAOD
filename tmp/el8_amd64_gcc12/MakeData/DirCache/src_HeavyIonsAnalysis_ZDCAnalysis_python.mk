ifeq ($(strip $(PyHeavyIonsAnalysisZDCAnalysis)),)
PyHeavyIonsAnalysisZDCAnalysis := self/src/HeavyIonsAnalysis/ZDCAnalysis/python
src_HeavyIonsAnalysis_ZDCAnalysis_python_parent := src/HeavyIonsAnalysis/ZDCAnalysis
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/HeavyIonsAnalysis/ZDCAnalysis/python)
PyHeavyIonsAnalysisZDCAnalysis_files := $(patsubst src/HeavyIonsAnalysis/ZDCAnalysis/python/%,%,$(wildcard $(foreach dir,src/HeavyIonsAnalysis/ZDCAnalysis/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyHeavyIonsAnalysisZDCAnalysis_LOC_USE := self   
PyHeavyIonsAnalysisZDCAnalysis_PACKAGE := self/src/HeavyIonsAnalysis/ZDCAnalysis/python
ALL_PRODS += PyHeavyIonsAnalysisZDCAnalysis
PyHeavyIonsAnalysisZDCAnalysis_INIT_FUNC        += $$(eval $$(call PythonProduct,PyHeavyIonsAnalysisZDCAnalysis,src/HeavyIonsAnalysis/ZDCAnalysis/python,src_HeavyIonsAnalysis_ZDCAnalysis_python))
else
$(eval $(call MultipleWarningMsg,PyHeavyIonsAnalysisZDCAnalysis,src/HeavyIonsAnalysis/ZDCAnalysis/python))
endif
ALL_COMMONRULES += src_HeavyIonsAnalysis_ZDCAnalysis_python
src_HeavyIonsAnalysis_ZDCAnalysis_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_HeavyIonsAnalysis_ZDCAnalysis_python,src/HeavyIonsAnalysis/ZDCAnalysis/python,PYTHON))
