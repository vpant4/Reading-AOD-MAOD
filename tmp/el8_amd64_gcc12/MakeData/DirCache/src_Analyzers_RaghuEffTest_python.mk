ifeq ($(strip $(PyAnalyzersRaghuEffTest)),)
PyAnalyzersRaghuEffTest := self/src/Analyzers/RaghuEffTest/python
src_Analyzers_RaghuEffTest_python_parent := src/Analyzers/RaghuEffTest
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Analyzers/RaghuEffTest/python)
PyAnalyzersRaghuEffTest_files := $(patsubst src/Analyzers/RaghuEffTest/python/%,%,$(wildcard $(foreach dir,src/Analyzers/RaghuEffTest/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyAnalyzersRaghuEffTest_LOC_USE := self   
PyAnalyzersRaghuEffTest_PACKAGE := self/src/Analyzers/RaghuEffTest/python
ALL_PRODS += PyAnalyzersRaghuEffTest
PyAnalyzersRaghuEffTest_INIT_FUNC        += $$(eval $$(call PythonProduct,PyAnalyzersRaghuEffTest,src/Analyzers/RaghuEffTest/python,src_Analyzers_RaghuEffTest_python))
else
$(eval $(call MultipleWarningMsg,PyAnalyzersRaghuEffTest,src/Analyzers/RaghuEffTest/python))
endif
ALL_COMMONRULES += src_Analyzers_RaghuEffTest_python
src_Analyzers_RaghuEffTest_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Analyzers_RaghuEffTest_python,src/Analyzers/RaghuEffTest/python,PYTHON))
