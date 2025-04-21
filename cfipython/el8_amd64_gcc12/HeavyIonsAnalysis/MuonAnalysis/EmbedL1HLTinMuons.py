import FWCore.ParameterSet.Config as cms

def EmbedL1HLTinMuons(*args, **kwargs):
  mod = cms.EDProducer('EmbedL1HLTinMuons',
    muons = cms.InputTag('unpackedMuons'),
    triggerResults = cms.InputTag('TriggerResults', '', 'HLT'),
    triggerObjects = cms.InputTag('slimmedPatTrigger'),
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
