import FWCore.ParameterSet.Config as cms

def L1UpgradeFlatTreeProducer(*args, **kwargs):
  mod = cms.EDAnalyzer('L1UpgradeFlatTreeProducer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
