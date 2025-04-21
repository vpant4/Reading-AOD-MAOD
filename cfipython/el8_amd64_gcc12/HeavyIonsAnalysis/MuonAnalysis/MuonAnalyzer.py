import FWCore.ParameterSet.Config as cms

def MuonAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('MuonAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
