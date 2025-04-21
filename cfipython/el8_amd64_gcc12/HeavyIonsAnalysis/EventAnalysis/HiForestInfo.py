import FWCore.ParameterSet.Config as cms

def HiForestInfo(*args, **kwargs):
  mod = cms.EDAnalyzer('HiForestInfo',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
