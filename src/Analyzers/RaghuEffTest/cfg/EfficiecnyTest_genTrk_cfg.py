import FWCore.ParameterSet.Config as cms

process = cms.Process("RaghuEffTest")

process.load('Configuration.Geometry.GeometryDB_cff')
process.load('Configuration.StandardSequences.Services_cff')
process.load('Configuration.StandardSequences.MagneticField_38T_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')
process.load('FWCore.MessageService.MessageLogger_cfi')
process.load('MergingProducer.generalAndHiPixelTracks.MergingPixAndGenProducer_cfi')

# __________________ General _________________

# Configure the logger
process.load("FWCore.MessageService.MessageLogger_cfi")
process.MessageLogger.cerr.FwkReport.reportEvery = 200

#If you wish to continue processing events after a ProductNotFound exception, add "SkipEvent = cms.untracked.vstring('ProductNotFound')" to the "options" PSet in the configuration.



process.options = cms.untracked.PSet(
    wantSummary = cms.untracked.bool( True ),
    TryToContinue = cms.untracked.vstring('ProductNotFound')
    #SkipEvent = cms.untracked.vstring('ProductNotFound')
)

# Configure the number of maximum event the analyser run on in interactive mode
# -1 == ALL
process.maxEvents = cms.untracked.PSet( 
    input = cms.untracked.int32(-1) 
)

process.source = cms.Source("PoolSource",
                            fileNames = cms.untracked.vstring(

                        
# Files for UPC reco

#                                'file:/eos/cms/store/group/phys_heavyions/srdas/OO_MiniAODs/Hydjet_OO_5360_MiniAOD_013025_UPCreco.root',
#'/store/user/rpradhan/Pythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_5360GeV/PrivatePythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_MiniAOD/250223_174633/0000/output_QCDpthat15_MINIAOD_1.root'
#'/store/user/rpradhan/Pythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_5360GeV/PrivatePythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_RecoDebug/250208_043354/0000/output_QCDpthat15_RECODEBUG_1.root'
#'/store/user/srdas/Hijing_NoPU_100kEvents_OO_5360GeV_GenSim_030825/Hijing_NoPU_100kEvents_OO_5360GeV_RecoDebug_031025/250310_181143/0000/step3_RAW2DIGI_L1Reco_RECO_RECOSIM_1.root'
#'file:/eos/cms/store/group/phys_heavyions/srdas/pp_MiniAOD/RecoDebug_ppreco.root'


#                                '/store/user/rpradhan/Pythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_5360GeV/PrivatePythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_MiniAOD/250223_174633/0000/output_QCDpthat15_MINIAOD_2.root'    

                                '/store/user/rpradhan/Pythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_5360GeV/PrivatePythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_RecoDebug/250208_043354/0000/output_QCDpthat15_RECODEBUG_10.root'
#'/store/user/rpradhan/Pythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_5360GeV/PrivatePythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_MiniAOD/250223_174633/0000/output_QCDpthat15_MINIAOD_1.root'                                
                                
                            ),
                            duplicateCheckMode = cms.untracked.string('noDuplicateCheck'),
                            skipBadFiles=cms.untracked.bool(True)
)

##json
#import FWCore.PythonUtilities.LumiList as LumiList
#process.source.lumisToProcess = LumiList.LumiList(filename = '/eos/cms/store/group/phys_heavyions/sayan/HIN_run3_pseudo_JSON/HIPhysicsRawPrime/Golden_Online_live.json').getVLuminosityBlockRange()

### centrality ###
process.load("RecoHI.HiCentralityAlgos.CentralityBin_cfi")
process.centralityBin.Centrality = cms.InputTag("hiCentrality")
process.centralityBin.centralityVariable = cms.string("HFtowers")

# Set the global tag

from Configuration.AlCa.GlobalTag import GlobalTag
process.GlobalTag = GlobalTag(process.GlobalTag, '141X_mcRun3_2024_realistic_ppRef5TeV_v7', '')
process.GlobalTag.snapshotTime = cms.string("9999-12-31 23:59:59.000")


process.GlobalTag.toGet.extend([
    cms.PSet(record = cms.string("HeavyIonRcd"),
             tag = cms.string("CentralityTable_HFtowers200_DataPbPb_periHYDJETshape_run3v1302x04_offline_Nominal"),
             connect = cms.string("sqlite_file:CentralityTable_HFtowers200_DataPbPb_periHYDJETshape_run3v1302x04_offline_Nominal.db"),
             label = cms.untracked.string("HFtowers")
   ),
])


# __________________ Event selection _________________
# Add PbPb collision event selection

# event analysis
process.load('HeavyIonsAnalysis.EventAnalysis.hievtanalyzer_data_cfi')
process.load('HeavyIonsAnalysis.EventAnalysis.collisionEventSelection_cff')
process.load('HeavyIonsAnalysis.EventAnalysis.hffilter_cfi')


# Define the event selection sequence
process.eventFilter = cms.Sequence(
    process.phfCoincFilter2Th4 *
    process.primaryVertexFilter *
    process.clusterCompatibilityFilter
)


# Define the output
process.TFileService = cms.Service("TFileService",fileName = cms.string('Histogram_OOMC_Test.root'))

###trigger selection for data
import HLTrigger.HLTfilters.hltHighLevel_cfi
process.hltMB = HLTrigger.HLTfilters.hltHighLevel_cfi.hltHighLevel.clone()
process.hltMB.HLTPaths = ["HLT_HIMinimumBiasHF1AND*"]

process.hltMB.andOr = cms.bool(True)  # True = OR, False = AND between the HLT paths                                                     
process.hltMB.throw = cms.bool(False) # throw exception on unknown path names

# Load you analyzer with initial configuration
process.load("Analyzers.RaghuEffTest.RaghuEffTest_cfi")

process.p = cms.Path(#process.hltMB *
                     #process.eventFilter*
#                     process.centralityBin *
                     process.defaultCPDC
                     )

