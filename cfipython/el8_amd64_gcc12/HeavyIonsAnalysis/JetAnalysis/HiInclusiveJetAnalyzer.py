import FWCore.ParameterSet.Config as cms

def HiInclusiveJetAnalyzer(*args, **kwargs):
  mod = cms.EDAnalyzer('HiInclusiveJetAnalyzer',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
