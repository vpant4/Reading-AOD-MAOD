import FWCore.ParameterSet.Config as cms

def HiGenAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('HiGenAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
