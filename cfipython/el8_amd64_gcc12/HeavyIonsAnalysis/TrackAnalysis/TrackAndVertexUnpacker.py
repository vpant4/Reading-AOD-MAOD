import FWCore.ParameterSet.Config as cms

def TrackAndVertexUnpacker(*args, **kwargs):
  mod = cms.EDProducer('TrackAndVertexUnpacker',
    packedCandidates = cms.VInputTag(
      'packedPFCandidates',
      'lostTracks',
      'lostTracks:eleTracks'
    ),
    packedCandidateNormChi2Map = cms.VInputTag(
      'packedPFCandidateTrackChi2',
      'lostTrackChi2',
      ''
    ),
    primaryVertices = cms.InputTag('offlineSlimmedPrimaryVertices'),
    secondaryVertices = cms.InputTag('slimmedSecondaryVertices'),
    recoverTracks = cms.bool(True),
    mightGet = cms.optional.untracked.vstring
  )
  for a in args:
    mod.update_(a)
  mod.update_(kwargs)
  return mod
