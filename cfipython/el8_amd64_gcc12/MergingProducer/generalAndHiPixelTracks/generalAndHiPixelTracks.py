import FWCore.ParameterSet.Config as cms

def generalAndHiPixelTracks(*args, **kwargs):
  mod = cms.EDProducer('generalAndHiPixelTracks',
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
