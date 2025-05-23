import FWCore.ParameterSet.Config as cms

def ZDCTreeProducer(*args, **kwargs):
  mod = cms.EDAnalyzer('ZDCTreeProducer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
