import FWCore.ParameterSet.Config as cms

def QWZDC2018RecHit(*args, **kwargs):
  mod = cms.EDProducer('QWZDC2018RecHit',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
