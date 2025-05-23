import FWCore.ParameterSet.Config as cms

def FilterAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('FilterAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
