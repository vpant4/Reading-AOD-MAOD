import FWCore.ParameterSet.Config as cms

def HLTMuTree(*args, **kwargs):
  mod = cms.EDAnalyzer('HLTMuTree',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
