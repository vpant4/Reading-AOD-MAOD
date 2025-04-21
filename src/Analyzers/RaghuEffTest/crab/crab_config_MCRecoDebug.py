###For a description of the crabConfig.py parameters. See:
###https://twiki.cern.ch/twiki/bin/view/CMSPublic/CRAB3ConfigurationFile

import CRABClient
from WMCore.Configuration import Configuration
config = Configuration()

config.section_('General')
config.General.workArea        = 'crab'
config.General.requestName     = 'OOMC'
config.General.transferLogs    = False 
config.General.transferOutputs = True
################################
config.section_('JobType')
config.JobType.pluginName      = 'Analysis'
config.JobType.psetName        = '../cfg/EfficiecnyTest_genTrk_cfg.py'
#config.JobType.inputFiles      = ['CentralityTable_HFtowers200_HydjetDrum5F_v1302x04_RECODEBUG_MC2023.db']
config.JobType.inputFiles      = ['../cfg/CentralityTable_HFtowers200_DataPbPb_periHYDJETshape_run3v1302x04_offline_Nominal.db']
################################
config.section_('Data')
#config.Data.inputDataset       = '/MinBias_PbPb_5p36TeV_Hydjet_v1/sarteaga-MinBias_PbPb_5p36TeV_Hydjet_RECODEBUG_v5-0e6c11377ba727d4466887a72ad361ed/USER'
#config.Data.inputDataset       = '/MinBias_PbPb_5p36TeV_Hydjet_v1/sarteaga-MinBias_PbPb_5p36TeV_Hydjet_MINIAOD_v5-45d226c4498e665b330b684cce3e6ab4/USER'
#config.Data.inputDataset       = '/Pythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_5360GeV/rpradhan-PrivatePythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_MiniAOD-924b0e34b15fb79c0154466c775e483d/USER'
config.Data.inputDataset = '/Pythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_5360GeV/rpradhan-PrivatePythia8_NoPU_0p5MEvents_TuneCP5_QCD_ptHat15_MiniAOD-924b0e34b15fb79c0154466c775e483d/USER'
config.Data.splitting          = 'FileBased'
config.Data.unitsPerJob        = 2
#config.Data.totalUnits         = -1
config.Data.publication        = False
config.Data.inputDBS           = 'phys03'
config.Data.outLFNDirBase      = '/store/group/phys_heavyions/vpant/OOCraboutput'
#config.Data.outLFNDirBase      = '/store/user/rpradhan/Research/Tracking_Studies'
#config.Data.outputDatasetTag   = 'ppMC'
################################
config.section_('Site')
config.Site.storageSite        = 'T2_CH_CERN'
#config.Site.storageSite        = 'T3_CH_CERNBOX'
#config.Site.storageSite        = 'T2_IN_TIFR'

