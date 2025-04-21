import FWCore.ParameterSet.Config as cms

def HiEvtAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('HiEvtAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
