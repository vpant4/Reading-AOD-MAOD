import FWCore.ParameterSet.Config as cms

def TriggerObjectAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('TriggerObjectAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
