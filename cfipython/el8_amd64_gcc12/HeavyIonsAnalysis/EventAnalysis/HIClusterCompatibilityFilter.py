import FWCore.ParameterSet.Config as cms

def HIClusterCompatibilityFilter(*args, **kwargs):
  mod = cms.EDFilter('HIClusterCompatibilityFilter',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
