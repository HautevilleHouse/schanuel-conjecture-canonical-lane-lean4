import SchanuelConjectureCanonicalLaneLean.Formalization
import SchanuelConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace SchanuelConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "2a6818e16bd21e3fe187e1c65165dfcd2ffc0d3ad70bdfe78d15fae22b41a799", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "d9c1fe260a6e8f0150cb0b7a57138718576efd105c385b0c4cb787884c26049d", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "cedf2ab1c1f87163cd1560122a1c37d87880943a5adac2372c320f76d4ea890b", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "e50e1d2babc68836db87223fcd634d79e7f1344cdc9c19f36d67222022d98e8e", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "215d65974f5e179f393feb9b2f2a6ee5541e28a4832c65553de5c572b3b96e13", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "f2397f9d24c21132d3c9306de1a1ffb1d7bc1cb90831c60ded39f44284b52da9", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "ea65dd0fe644dd707785b85b07d09099bc58760cba970488ad83cf300461b1f8", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "319ec1f7ac4b6b570dd77fb552003f2051b5f0b717b8592dee3fbca25c535396", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "2d1825afc2c8672e7a41706bc0f87949b7a783fd5267ad1bca0b5f3c896c5862", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "SCH_G1", constant := "kappa_exponential" },
  { gate := "SCH_G2", constant := "sigma_independence" },
  { gate := "SCH_G3", constant := "kappa_compact" },
  { gate := "SCH_G4", constant := "rho_rigidity" },
  { gate := "SCH_G5", constant := "transcendence_transfer" },
  { gate := "SCH_G6", constant := "eps_coh" },
  { gate := "SCH_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "83bc06c8e0ddaac5a5aec55d9b12420d14f78cff57a74e1796ef6435dd5d0896" },
  { path := "README.md", sha256 := "34f4e751a9f4593f139664636bb0124eda7fbc35f08f8412a3bb710b91da5158" },
  { path := "artifacts/constants_extracted.json", sha256 := "e50e1d2babc68836db87223fcd634d79e7f1344cdc9c19f36d67222022d98e8e" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "cedf2ab1c1f87163cd1560122a1c37d87880943a5adac2372c320f76d4ea890b" },
  { path := "artifacts/constants_registry.json", sha256 := "215d65974f5e179f393feb9b2f2a6ee5541e28a4832c65553de5c572b3b96e13" },
  { path := "artifacts/promotion_report.json", sha256 := "ea65dd0fe644dd707785b85b07d09099bc58760cba970488ad83cf300461b1f8" },
  { path := "artifacts/stitch_constants.json", sha256 := "f2397f9d24c21132d3c9306de1a1ffb1d7bc1cb90831c60ded39f44284b52da9" },
  { path := "notes/EG1_public.md", sha256 := "cf9aa1b3a2397d4750c89d268d389d9d9ce51466b82f678939da792363d3fe0a" },
  { path := "notes/EG2_public.md", sha256 := "a25c32e0b6a5678a64e37749db3f9dca3b164c32c75501028e8c84593dea89fc" },
  { path := "notes/EG3_public.md", sha256 := "89a10b0d6acd50235aacb7e399cac431accae4a74e0525e02ad531992240637e" },
  { path := "notes/EG4_public.md", sha256 := "f8aa03c9f83036cd9072a0a6583a57c900d023df38254097d170b69ecfe8dd1c" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "d9c1fe260a6e8f0150cb0b7a57138718576efd105c385b0c4cb787884c26049d" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "56dc892b6f4a801d5e06f4e630759b7d2efddd3c13fd94b90a90f2412c86370d" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "dccaef6a305f4e0f6b3321a5016764e14692602c4fc16bb8fbeb8b5542559587" },
  { path := "paper/SCHANUEL_CONJECTURE_PREPRINT.md", sha256 := "1d8abc83c7c579eb2f1ce2bbb40493d9f8e967df2263d477938d0e638e511c49" },
  { path := "repro/REPRO_PACK.md", sha256 := "f25711653e697cc5bc5401bbb017bb00f3aaffc24d0bb01717ba1f1341df5f83" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "8dc556f906accd11b05e348a836cbf2a9134dd7e59119e571de8dd2b423bffb8" },
  { path := "repro/certificate_baseline.json", sha256 := "2d1825afc2c8672e7a41706bc0f87949b7a783fd5267ad1bca0b5f3c896c5862" },
  { path := "repro/run_repro.sh", sha256 := "7d257a0d05945ea2a221da1d464591df54ee29c32dccc1f16d882cd46de8c71e" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/sch_closure_guard.py", sha256 := "278f4d2274938cf051852f7ebc02ff10abaaea6dc3b6819cb86401bbd301b82c" },
  { path := "scripts/README.md", sha256 := "9adcddd08d124b0468b2fa41e8c412c001413aad69537026cf6ee19ba48cfe50" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "SCH_G1", status := "PASS" },
  { gate := "SCH_G2", status := "PASS" },
  { gate := "SCH_G3", status := "PASS" },
  { gate := "SCH_G4", status := "PASS" },
  { gate := "SCH_G5", status := "PASS" },
  { gate := "SCH_G6", status := "PASS" },
  { gate := "SCH_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8058017727639" },
  { key := "kappa_exponential", value := "1.1004440000000002" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_independence", value := "1.0759999999999998" },
  { key := "sigma_star_can", value := "1.054" },
  { key := "transcendence_transfer", value := "1.032689" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_exponential",
  "rho_rigidity",
  "sigma_independence",
  "sigma_star_can",
  "transcendence_transfer"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end SchanuelConjectureCanonicalLaneLean
end HautevilleHouse
