import FWCore.ParameterSet.Config as cms

def HiCaloJetAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('HiCaloJetAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
