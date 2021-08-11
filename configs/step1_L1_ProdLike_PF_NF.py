# Auto generated configuration file
# using:
# Revision: 1.19
# Source: /local/reps/CMSSW/CMSSW/Configuration/Applications/python/ConfigBuilder.py,v
# with command line options: step1 --conditions auto:phase2_realistic_T15 -n 2 --era Phase2C9 --eventcontent FEVTDEBUGHLT -s RAW2DIGI,L1TrackTrigger,L1 --datatier FEVTDEBUGHLT --customise SLHCUpgradeSimulations/Configuration/aging.customise_aging_1000,L1Trigger/Configuration/customisePhase2TTNoMC.customisePhase2TTNoMC,Configuration/DataProcessing/Utils.addMonitoring --geometry Extended2026D49 --fileout file:/tmp/step1_Reprocess_TrackTrigger_L1.root --no_exec --nThreads 8 --python step1_L1_ProdLike.py --filein file:/data/cerminar/Phase2HLTTDRWinter20DIGI/SingleElectron_PT2to200/GEN-SIM-DIGI-RAW/PU200_110X_mcRun4_realistic_v3_ext2-v2/F32C5A21-F0E9-9149-B04A-883CC704E820.root
import FWCore.ParameterSet.Config as cms

from Configuration.Eras.Era_Phase2C9_cff import Phase2C9

process = cms.Process('L1',Phase2C9)

# import of standard configurations
process.load('Configuration.StandardSequences.Services_cff')
process.load('SimGeneral.HepPDTESSource.pythiapdt_cfi')
process.load('FWCore.MessageService.MessageLogger_cfi')
process.load('Configuration.EventContent.EventContent_cff')
process.load('SimGeneral.MixingModule.mixNoPU_cfi')
process.load('Configuration.Geometry.GeometryExtended2026D49Reco_cff')
process.load('Configuration.StandardSequences.MagneticField_cff')
process.load('Configuration.StandardSequences.RawToDigi_Data_cff')
process.load('Configuration.StandardSequences.L1TrackTrigger_cff')
process.load('Configuration.StandardSequences.SimL1Emulator_cff')
process.load('Configuration.StandardSequences.EndOfProcess_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')

process.maxEvents = cms.untracked.PSet(
    input = cms.untracked.int32(10),
    output = cms.optional.untracked.allowed(cms.int32,cms.PSet)
)

# Input source
process.source = cms.Source("PoolSource",
    # fileNames = cms.untracked.vstring('file:/data/cerminar/Phase2HLTTDRSummer20ReRECOMiniAOD/DoubleElectron_FlatPt-1To100/GEN-SIM-DIGI-RAW-MINIAOD/PU200_111X_mcRun4_realistic_T15_v1-v2/E2F32293-BA24-C646-8060-CE3B4A9E5D4B.root'),
    fileNames = cms.untracked.vstring('file:/data/cerminar/Phase2HLTTDRSummer20ReRECOMiniAOD/TT_TuneCP5_14TeV-powheg-pythia8/FEVT/PU200_111X_mcRun4_realistic_T15_v1-v2/003ACFBC-23B2-EA45-9A12-BECFF07760FC.root'),
    # fileNames = cms.untracked.vstring('file:/data/cerminar/Phase2HLTTDRWinter20DIGI/SingleElectron_PT2to200/GEN-SIM-DIGI-RAW/PU200_110X_mcRun4_realistic_v3_ext2-v2/F32C5A21-F0E9-9149-B04A-883CC704E820.root'),
    secondaryFileNames = cms.untracked.vstring(),
           
    # eventsToProcess = cms.untracked.VEventRange('1:162232-1:162232', ),
    # lumisToProcess = cms.untracked.VLuminosityBlockRange('1:978-1:978'),
)

process.options = cms.untracked.PSet(
    FailPath = cms.untracked.vstring(),
    IgnoreCompletely = cms.untracked.vstring(),
    Rethrow = cms.untracked.vstring(),
    SkipEvent = cms.untracked.vstring(),
    allowUnscheduled = cms.obsolete.untracked.bool,
    canDeleteEarly = cms.untracked.vstring(),
    emptyRunLumiMode = cms.obsolete.untracked.string,
    eventSetup = cms.untracked.PSet(
        forceNumberOfConcurrentIOVs = cms.untracked.PSet(

        ),
        numberOfConcurrentIOVs = cms.untracked.uint32(1)
    ),
    fileMode = cms.untracked.string('FULLMERGE'),
    forceEventSetupCacheClearOnNewRun = cms.untracked.bool(False),
    makeTriggerResults = cms.obsolete.untracked.bool,
    numberOfConcurrentLuminosityBlocks = cms.untracked.uint32(1),
    numberOfConcurrentRuns = cms.untracked.uint32(1),
    numberOfStreams = cms.untracked.uint32(0),
    numberOfThreads = cms.untracked.uint32(1),
    printDependencies = cms.untracked.bool(False),
    sizeOfStackForThreadsInKB = cms.optional.untracked.uint32,
    throwIfIllegalParameter = cms.untracked.bool(True),
    wantSummary = cms.untracked.bool(False)
)

# Production Info
process.configurationMetadata = cms.untracked.PSet(
    annotation = cms.untracked.string('step1 nevts:2'),
    name = cms.untracked.string('Applications'),
    version = cms.untracked.string('$Revision: 1.19 $')
)

# Output definition

process.FEVTDEBUGHLToutput = cms.OutputModule("PoolOutputModule",
    dataset = cms.untracked.PSet(
        dataTier = cms.untracked.string('FEVTDEBUGHLT'),
        filterName = cms.untracked.string('')
    ),
    fileName = cms.untracked.string('file:/tmp/step1_Reprocess_TrackTrigger_L1.root'),
    outputCommands = process.FEVTDEBUGHLTEventContent.outputCommands,
    splitLevel = cms.untracked.int32(0)
)

# Additional output definition

# Other statements
from Configuration.AlCa.GlobalTag import GlobalTag
process.GlobalTag = GlobalTag(process.GlobalTag, 'auto:phase2_realistic_T15', '')

# Path and EndPath definitions
process.raw2digi_step = cms.Path(process.RawToDigi)
process.L1TrackTrigger_step = cms.Path(process.L1TrackTrigger)
process.pL1TkPrimaryVertex = cms.Path(process.L1TkPrimaryVertex)
process.pL1TkPhotonsCrystal = cms.Path(process.L1TkPhotonsCrystal)
process.pL1TkIsoElectronsCrystal = cms.Path(process.L1TkIsoElectronsCrystal)
process.pL1TkElectronsLooseCrystal = cms.Path(process.L1TkElectronsLooseCrystal)
process.pL1TkElectronsHGC = cms.Path(process.L1TkElectronsHGC)
process.pL1TkMuon = cms.Path(process.L1TkMuons+process.L1TkMuonsTP)
process.pL1TkElectronsLooseHGC = cms.Path(process.L1TkElectronsLooseHGC)
process.pL1TkElectronsEllipticMatchHGC = cms.Path(process.L1TkElectronsEllipticMatchHGC)
process.pL1TkElectronsCrystal = cms.Path(process.L1TkElectronsCrystal)
process.pL1TkPhotonsHGC = cms.Path(process.L1TkPhotonsHGC)
process.pL1TkIsoElectronsHGC = cms.Path(process.L1TkIsoElectronsHGC)
process.pL1TkElectronsEllipticMatchCrystal = cms.Path(process.L1TkElectronsEllipticMatchCrystal)
# process.L1simulation_step = cms.Path(process.SimL1Emulator)
process.endjob_step = cms.EndPath(process.endOfProcess)
process.FEVTDEBUGHLToutput_step = cms.EndPath(process.FEVTDEBUGHLToutput)


process.L1TrackTrigger.remove(process.TTTracksFromExtendedTrackletEmulation)
process.L1TrackTrigger.remove(process.TTTrackAssociatorFromPixelDigisExtended)


# load ntuplizer
process.load('L1Trigger.L1CaloTrigger.L1TCaloTriggerNtuples_cff')
process.ntuple_step = cms.Path(process.l1CaloTriggerNtuples)
# process.ntuple_step = cms.Path(process.l1CaloTriggerNtuplizer_egOnly)

process.TFileService = cms.Service(
    "TFileService",
    fileName = cms.string("ntuple.root")
    )
    
    
process.load("L1Trigger.Phase2L1ParticleFlow.l1ParticleFlow_cff")
process.load('L1Trigger.Phase2L1ParticleFlow.l1ctLayer1_cff')
process.runPF_newemulator = cms.Path( 
    process.pfTracksFromL1Tracks +
    process.l1ParticleFlow_calo +
    process.l1ctLayer1Barrel +
    process.l1ctLayer1HGCal +
    process.l1ctLayer1HGCalNoTK +
    process.l1ctLayer1HF +
    process.l1ctLayer1 +
    process.l1ctLayer1EG
)

# process.L1simulation_step.remove(process.L1TkElectronsCrystal)
# process.L1simulation_step.remove(process.L1TkElectronsLooseCrystal)
# process.L1simulation_step.remove(process.L1TkIsoElectronsCrystal)
# process.L1simulation_step.remove(process.L1TkElectronsHGC)
# process.L1simulation_step.remove(process.L1TkIsoElectronsHGC)

# Schedule definition
# process.schedule = cms.Schedule(process.raw2digi_step,process.L1TrackTrigger_step,process.L1simulation_step,process.ntuple_step)
# process.schedule = cms.Schedule(process.raw2digi_step,process.L1simulation_step,process.runPF_newemulator,process.ntuple_step)

print ("BEFORE: {}".format(process.SimL1Emulator))
to_remove = [
    process.simCaloStage2Layer1Digis,
    process.simCaloStage2Digis,
    process.simDtTriggerPrimitiveDigis,
    process.simCscTriggerPrimitiveDigis,
    process.simTwinMuxDigis,
    process.simBmtfDigis,
    process.simKBmtfStubs,
    process.simKBmtfDigis,
    process.simEmtfDigis,
    process.simOmtfDigis,
    process.simGmtCaloSumDigis,
    process.simGmtStage2Digis,
    process.simMuonGEMPadDigis,
    process.simMuonGEMPadDigiClusters,
    process.simMuonME0PadDigis,
    process.me0TriggerDigis,
    process.simMuonME0PseudoReDigisCoarse,
    process.me0RecHitsCoarse,
    process.me0TriggerPseudoDigis,
    process.me0RecHits,
    process.me0Segments,
    process.me0TriggerConvertedPseudoDigis,
    process.simGtExtFakeStage2Digis,
    process.simGtStage2Digis,
    # process.hgcalVFEProducer,
    # process.hgcalConcentratorProducer,
    # process.hgcalBackEndLayer1Producer,
    # process.hgcalBackEndLayer2Producer,
    # process.hgcalTowerMapProducer,
    # process.hgcalTowerProducer,
    # process.L1EGammaClusterEmuProducer,
    # process.l1EGammaEEProducer,
    process.L1TowerCalibration,
    process.L1CaloJet,
    process.L1CaloJetHTT,
    # process.L1VertexFinder,
    process.L1TkPrimaryVertex,
    process.L1TkElectronsCrystal,
    process.L1TkElectronsLooseCrystal,
    # process.L1TkElectronsEllipticMatchCrystal,
    process.L1TkIsoElectronsCrystal,
    # process.L1TkPhotonsCrystal,
    process.L1TkElectronsHGC,
    # process.L1TkElectronsEllipticMatchHGC,
    process.L1TkIsoElectronsHGC,
    # process.L1TkPhotonsHGC,
    process.L1TkMuons,
    process.L1TrackJets,
    process.L1TrackJetsExtended,
    process.L1TrackFastJets,
    process.L1TrackerEtMiss,
    process.L1TrackerHTMiss,
    process.L1TrackerEtMissExtended,
    process.L1TrackerHTMissExtended,
    process.pfClustersFromL1EGClusters,
    process.pfClustersFromCombinedCaloHCal,
    process.pfClustersFromCombinedCaloHF,
    process.pfClustersFromHGC3DClusters,
    process.pfTracksFromL1TracksBarrel,
    process.l1pfProducerBarrel,
    process.pfTracksFromL1TracksHGCal,
    process.l1pfProducerHGCal,
    process.l1pfProducerHGCalNoTK,
    process.l1pfProducerHF,
    process.l1pfCandidates,
    process.l1tCorrelatorEG,
    process.Phase1L1TJetProducer,
    process.Phase1L1TJetCalibrator,
    process.ak4PFL1Calo,
    process.ak4PFL1PF,
    process.ak4PFL1Puppi,
    process.ak4PFL1CaloCorrected,
    process.ak4PFL1PFCorrected,
    process.ak4PFL1PuppiCorrected,
    process.scPFL1PF,
    process.scPFL1Puppi,
    process.l1PFMetCalo,
    process.l1PFMetPF,
    process.l1PFMetPuppi,
    process.l1NNTauProducer,
    process.l1NNTauProducerPuppi]

for step in to_remove:
    process.SimL1Emulator.remove(step)
print ("AFTER: {}".format(process.SimL1Emulator))
process.L1simulation_step = cms.Path(process.SimL1Emulator)

process.schedule = cms.Schedule(process.raw2digi_step,process.L1simulation_step,process.runPF_newemulator, process.ntuple_step)

from PhysicsTools.PatAlgos.tools.helpers import associatePatAlgosToolsTask
associatePatAlgosToolsTask(process)

#Setup FWK for multithreaded
process.options.numberOfThreads=cms.untracked.uint32(1)
process.options.numberOfStreams=cms.untracked.uint32(0)
process.options.numberOfConcurrentLuminosityBlocks=cms.untracked.uint32(1)
# process.options.SkipEvent = cms.untracked.vstring('ProductNotFound')
# customisation of the process.

# Automatic addition of the customisation function from SLHCUpgradeSimulations.Configuration.aging
from SLHCUpgradeSimulations.Configuration.aging import customise_aging_1000

#call to customisation function customise_aging_1000 imported from SLHCUpgradeSimulations.Configuration.aging
process = customise_aging_1000(process)

# Automatic addition of the customisation function from L1Trigger.Configuration.customisePhase2TTNoMC
from L1Trigger.Configuration.customisePhase2TTNoMC import customisePhase2TTNoMC

#call to customisation function customisePhase2TTNoMC imported from L1Trigger.Configuration.customisePhase2TTNoMC
process = customisePhase2TTNoMC(process)

# Automatic addition of the customisation function from Configuration.DataProcessing.Utils
from Configuration.DataProcessing.Utils import addMonitoring

#call to customisation function addMonitoring imported from Configuration.DataProcessing.Utils
process = addMonitoring(process)


# process.SimpleMemoryCheck = cms.Service("SimpleMemoryCheck",
#                                         ignoreTotal = cms.untracked.int32(1),
#                                         oncePerEventMode=cms.untracked.bool(True)
#                                         )

# End of customisation functions

# Customisation from command line

# Add early deletion of temporary data products to reduce peak memory need
from Configuration.StandardSequences.earlyDeleteSettings_cff import customiseEarlyDelete
process = customiseEarlyDelete(process)
# End adding early deletion

from L1Trigger.L1THGCal.customHistoSeeding import custom_3dclustering_seedNoArea
process = custom_3dclustering_seedNoArea(process)

# define regions
def goRegional(postfix="", relativeCoordinates=False):
    overlap=0.25 # 0.3
    getattr(process, 'l1pfProducer'+postfix+'Barrel').regions = cms.VPSet(
        cms.PSet(
            etaBoundaries = cms.vdouble(-1.5, -0.5, 0.5, 1.5),
            etaExtra = cms.double(overlap),
            phiExtra = cms.double(overlap),
            phiSlices = cms.uint32(9)
        )
    )
    getattr(process, 'l1pfProducer'+postfix+'HGCalNoTK').regions = cms.VPSet(
        cms.PSet(
            etaBoundaries = cms.vdouble(-3, -2.5),
            etaExtra = cms.double(overlap),
            phiExtra = cms.double(overlap),
            phiSlices = cms.uint32(9)
        ),
        cms.PSet(
            etaBoundaries = cms.vdouble(2.5, 3),
            etaExtra = cms.double(overlap),
            phiExtra = cms.double(overlap),
            phiSlices = cms.uint32(9)
        )
    )
    getattr(process, 'l1pfProducer'+postfix+'HGCal').regions = cms.VPSet(
        cms.PSet(
            etaBoundaries = cms.vdouble(-2.5, -1.5),
            etaExtra = cms.double(overlap),
            phiExtra = cms.double(overlap),
            phiSlices = cms.uint32(9)
        ),
        cms.PSet(
            etaBoundaries = cms.vdouble(1.5, 2.5),
            etaExtra = cms.double(overlap),
            phiExtra = cms.double(overlap),
            phiSlices = cms.uint32(9)
        )
    )
    getattr(process, 'l1pfProducer'+postfix+'HF').regions = cms.VPSet(
        cms.PSet(
            etaBoundaries = cms.vdouble(-5, -4, -3),
            etaExtra = cms.double(overlap),
            phiExtra = cms.double(overlap),
            phiSlices = cms.uint32(9)
        ),
        cms.PSet(
            etaBoundaries = cms.vdouble(3, 4, 5),
            etaExtra = cms.double(overlap),
            phiExtra = cms.double(overlap),
            phiSlices = cms.uint32(9)
        )
    )
    for D in 'Barrel', 'HGCal', 'HGCalNoTK', 'HF':
        getattr(process, 'l1pfProducer'+postfix+D).useRelativeRegionalCoordinates = relativeCoordinates


def doDumpFile(basename="DoubleElectron_PU200"):
    goRegional(relativeCoordinates=True)
    for det in "Barrel", "HGCal", "HGCalNoTK", "HF":
        l1pf = getattr(process, 'l1pfProducer'+det)
        l1pf.dumpFileName = cms.untracked.string(basename+"_"+det+".dump")
        l1pf.genOrigin = cms.InputTag("genParticles","xyz0")
    process.maxEvents.input = 2

# doDumpFile()
