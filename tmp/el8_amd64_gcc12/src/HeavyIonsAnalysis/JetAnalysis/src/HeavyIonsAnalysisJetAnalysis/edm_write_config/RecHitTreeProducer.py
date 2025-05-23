import FWCore.ParameterSet.Config as cms

def RecHitTreeProducer(*args, **kwargs):
  mod = cms.EDAnalyzer('RecHitTreeProducer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
