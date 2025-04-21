import FWCore.ParameterSet.Config as cms

def ggHiNtuplizer(*args, **kwargs):
  mod = cms.EDAnalyzer('ggHiNtuplizer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
