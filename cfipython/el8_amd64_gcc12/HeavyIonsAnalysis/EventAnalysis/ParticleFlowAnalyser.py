import FWCore.ParameterSet.Config as cms

def ParticleFlowAnalyser(*args, **kwargs):
  mod = cms.EDAnalyzer('ParticleFlowAnalyser',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
