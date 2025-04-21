// -*- Header -*-
//
// Package:       Analyzers/RaghuEffTest
// Class:         RaghuEffTest
//
//
// Author:        Raghunath Pradhan
// Created on: 8th April 2024




// system include files

#include <memory>

//CMSSW include files
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/one/EDAnalyzer.h"

#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/MakerMacros.h"

#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/Utilities/interface/InputTag.h"

#include "DataFormats/TrackReco/interface/Track.h"
#include "DataFormats/TrackReco/interface/TrackFwd.h"
#include "DataFormats/VertexReco/interface/Vertex.h"
#include "DataFormats/VertexReco/interface/VertexFwd.h"

#include "DataFormats/PatCandidates/interface/PackedCandidate.h"
#include "DataFormats/PatCandidates/interface/PackedGenParticle.h"
#include "DataFormats/Common/interface/ValueMap.h"

#include "DataFormats/HeavyIonEvent/interface/Centrality.h"
#include "DataFormats/HeavyIonEvent/interface/CentralityBins.h"
#include "RecoHI/HiEvtPlaneAlgos/interface/HiEvtPlaneList.h"
#include "DataFormats/HeavyIonEvent/interface/EvtPlane.h"
#include "DataFormats/CaloTowers/interface/CaloTowerCollection.h"
#include "Analyzers/RaghuEffTest/interface/trackingEfficiency2018PbPb.h"
#include "Analyzers/RaghuEffTest/interface/DiHadronCorrelationEvt.h"
#include "SimDataFormats/GeneratorProducts/interface/GenEventInfoProduct.h"

#include "CommonTools/UtilAlgos/interface/TFileService.h"
#include "FWCore/Framework/interface/one/EDAnalyzer.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/EventSetup.h"
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/MakerMacros.h"
#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/ServiceRegistry/interface/Service.h"
#include "DataFormats/PatCandidates/interface/PackedCandidate.h"
//user include files

#include "TH1F.h"
#include "TH1D.h"
#include "TH2D.h"
#include "TH3D.h"
#include "TTree.h"
#include "TVector3.h"
#include <string>
#include "TProfile.h"
#include "TProfile2D.h"
#include <vector>
using std::vector;

class RaghuEffTest : public edm::one::EDAnalyzer<edm::one::SharedResources>
{
public:
  explicit RaghuEffTest(const edm::ParameterSet&);
  ~RaghuEffTest();
  
  static void fillDescriptions(edm::ConfigurationDescriptions& descriptions);
  
  void LoopCMWVertices(const edm::Event& iEvent, const edm::EventSetup& iSetup);
  
private:
  virtual void beginJob() override;
  virtual void analyze(const edm::Event&, const edm::EventSetup&) override;
  virtual void endJob() override;

  //****************member data*****************************************

  //## tracks ##
  //  edm::EDGetTokenT< edm::View < pat::PackedCandidate > > trackTags_; // uncomment for MAOD
  //  edm::EDGetTokenT< edm::View < pat::PackedGenParticle > > trackTagsgen_; // uncomment for MAOD
  edm::EDGetTokenT<reco::TrackCollection> trackTags_; // uncomment for AOD
  edm::EDGetTokenT<reco::GenParticleCollection> trackTagsgen_; // uncomment for AOD
  //edm::EDGetTokenT< edm::ValueMap < float > > chi2Map_; // uncomment for MAOD
  
  
  //## vertex ##     
  //edm::EDGetTokenT < reco::VertexCollection > vtxTags_;


  edm::EDGetTokenT<reco::VertexCollection> vtxTags_;

  
  //gen info token
  edm::EDGetTokenT<GenEventInfoProduct> genInfoToken_;


  //## generalAndhiPixelTracks ##
  edm::EDGetTokenT<reco::TrackCollection> trackTags_merge_;
  
  //## centrality ##
  // used to access centrality bins
  edm::EDGetTokenT<int> cent_bin_;
  //edm::EDGetTokenT<CaloTowerCollection> caloTowerTags_;
  //## tracking correction obejetc ##
  TrkEff2018PbPb *trkEff;
  
  // ## Event selection ##
  // ## Vertex variables ##
  double xBestVtx_;
  double yBestVtx_;
  double zBestVtx_;
  double rhoBestVtx_;
  double zminVtx_; 
  double zmaxVtx_;
  double rhomaxVtx_;
  double nvtx_;
  
  //efficiency
  TFile* feff_;
  edm::InputTag fGeneral_;
  TFile* feff2_;
  edm::InputTag fGeneral2_;
  TFile* fcent_;
  TH2F* hEff2D;
  TH2F* hFak2D;
  TH2F* hSec2D;
  TH2F* hMul2D;
  
  // binning
  std::vector<double> pTBins_;
  std::vector<double> etaBins_;
  std::vector<double> centbins_;

  std::vector<int> algoParameters_;



  // Histograms to store HFSum values
  TH1F *hHFSum;

  //Histogram to save 2d correlation of HF and Ntrk
  TH2F *hHF_Ntrk;
  
  // ## histograms ##
  // QA_plots
  
  TH1F* hZBestVtx;
  TH1F* hcent_bin;

  //Histograms for inclusive pt,eta,phi values
  //gen
  TH1F* hpt_gen_inc;
  TH1F* heta_gen_inc;
  TH1F* hphi_gen_inc;

  //Histogram for recording inclusive Ntrk per event
  TH1F* hNtrk_inc;

  //reco
  TH1F* hpt_inc;
  TH1F* hpt_inc_corr;
  TH1F* heta_inc;
  TH1F* hphi_inc;
  

  //gen
  std::vector<TH1F*> hpt_gen;
  std::vector<TH1F*> heta_gen;
  std::vector<TH1F*> hphi_gen;

  //reco
  std::vector<TH1F*> hNtrk;
  std::vector<TH1F*> hpt;
  std::vector<TH1F*> heta;
  std::vector<TH1F*> hphi;
  std::vector<TH1F*> hnHits;
  std::vector<TH1F*> hptreso;
  std::vector<TH1F*> hchi2;
  std::vector<TH1F*> hDCAZ;
  std::vector<TH1F*> hDCAXY;

  //reco corrected
  std::vector<TH1F*> hpt_eff;
  std::vector<TH1F*> heta_eff;
  std::vector<TH1F*> hphi_eff;
  std::vector<TH1F*> hnHits_eff;
  std::vector<TH1F*> hptreso_eff;
  std::vector<TH1F*> hchi2_eff;
  std::vector<TH1F*> hDCAZ_eff;
  std::vector<TH1F*> hDCAXY_eff;

  //for binning
  TH1F* hcentbin;
  TH1F* hptbin;
  TH1F* hetabin;

  //Histogram to import centrality histogram
  TH1D *cent_vals;
};
