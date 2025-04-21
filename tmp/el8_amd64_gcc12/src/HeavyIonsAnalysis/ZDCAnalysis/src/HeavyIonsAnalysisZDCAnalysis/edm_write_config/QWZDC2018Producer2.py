import FWCore.ParameterSet.Config as cms

def QWZDC2018Producer2(*args, **kwargs):
  mod = cms.EDProducer('QWZDC2018Producer2',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
