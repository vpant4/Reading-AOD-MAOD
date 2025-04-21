import FWCore.ParameterSet.Config as cms

def RaghuEffTest(*args, **kwargs):
  mod = cms.EDAnalyzer('RaghuEffTest',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
