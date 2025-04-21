import FWCore.ParameterSet.Config as cms

def EmbedMCinMuons(*args, **kwargs):
  mod = cms.EDProducer('EmbedMCinMuons',
    muons = cms.InputTag('unpackedMuons'),
    matchedGen = cms.InputTag('muonMatch'),
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
