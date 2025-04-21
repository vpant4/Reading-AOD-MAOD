import FWCore.ParameterSet.Config as cms

def HiHFFilter(*args, **kwargs):
  mod = cms.EDFilter('HiHFFilter',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
