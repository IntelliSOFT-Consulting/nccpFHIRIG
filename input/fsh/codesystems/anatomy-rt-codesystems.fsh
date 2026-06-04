// ============================================================
// ANATOMY & RADIOTHERAPY CODE SYSTEMS
// Covers: ICD11Anatomy, ICD11Severity, RTIntent,
//         RTTreatmentTechnique, RTTargetVolume, RTBeamType
// ============================================================

CodeSystem: ICD11AnatomyCS
Id: icd11-anatomy-cs
Title: "Kenya ICD-11 Anatomy Code System"
Description: "Anatomical body site codes used in oncology diagnosis and staging, aligned with ICD-11 topology."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-anatomy-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #HEAD-NECK         "Head and Neck"
* #BRAIN             "Brain"
* #SPINAL-CORD       "Spinal Cord"
* #THYROID           "Thyroid Gland"
* #SALIVARY-GLAND    "Salivary Gland"
* #NASOPHARYNX       "Nasopharynx"
* #OROPHARYNX        "Oropharynx"
* #HYPOPHARYNX       "Hypopharynx"
* #LARYNX            "Larynx"
* #ORAL-CAVITY       "Oral Cavity"
* #LIP               "Lip"
* #TONGUE            "Tongue"
* #BREAST            "Breast"
* #LUNG              "Lung"
* #PLEURA            "Pleura"
* #MEDIASTINUM       "Mediastinum"
* #OESOPHAGUS        "Oesophagus"
* #STOMACH           "Stomach"
* #LIVER             "Liver"
* #GALLBLADDER       "Gallbladder"
* #PANCREAS          "Pancreas"
* #COLON             "Colon"
* #RECTUM            "Rectum"
* #ANUS              "Anus"
* #KIDNEY            "Kidney"
* #URETER            "Ureter"
* #BLADDER           "Urinary Bladder"
* #URETHRA           "Urethra"
* #PROSTATE          "Prostate"
* #TESTIS            "Testis"
* #PENIS             "Penis"
* #UTERUS            "Uterus (body)"
* #CERVIX-UTERI      "Cervix Uteri"
* #OVARY             "Ovary"
* #VAGINA            "Vagina"
* #VULVA             "Vulva"
* #BONE              "Bone"
* #SOFT-TISSUE       "Soft Tissue"
* #SKIN              "Skin"
* #LYMPH-NODE        "Lymph Node"
* #PERITONEUM        "Peritoneum"
* #ADRENAL-GLAND     "Adrenal Gland"
* #OTHER             "Other / Not Specified"

// ---------------------------------------------------------------

CodeSystem: ICD11SeverityCS
Id: icd11-severity-cs
Title: "Kenya ICD-11 Disease Severity Code System"
Description: "Severity classification codes aligned with ICD-11 severity axes."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-severity-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #MILD              "Mild"              "Disease severity is mild; minimal functional impact."
* #MODERATE          "Moderate"          "Disease severity is moderate; some functional limitation."
* #SEVERE            "Severe"            "Disease severity is severe; significant functional impairment."
* #CRITICAL          "Critical"          "Disease is life-threatening."
* #NOT-SPECIFIED     "Not Specified"     "Disease severity has not been assessed or recorded."

// ---------------------------------------------------------------

CodeSystem: RTIntentCS
Id: rt-intent-cs
Title: "Kenya Radiotherapy Intent Code System"
Description: "Codes for the clinical intent of a radiotherapy treatment course."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/rt-intent-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #CURATIVE          "Curative"           "Radical RT aimed at cure or complete local control."
* #PALLIATIVE        "Palliative"         "RT to relieve symptoms (pain, bleeding, obstruction)."
* #ADJUVANT          "Adjuvant"           "RT given after surgery to reduce local recurrence risk."
* #NEO-ADJUVANT      "Neo-adjuvant"       "Pre-operative RT to downstage the tumour."
* #PROPHYLACTIC      "Prophylactic"       "RT to prevent disease at a site of potential spread."
* #SALVAGE           "Salvage"            "RT for recurrent disease after prior local treatment."
* #STEREOTACTIC      "Stereotactic (SRS/SBRT)" "High-precision single or few-fraction RT."
* #RADIOSURGERY      "Radiosurgery"       "Single-fraction stereotactic treatment."
* #CONCURRENT-CRT    "Concurrent Chemo-RT" "RT given concurrently with chemotherapy."

// ---------------------------------------------------------------

CodeSystem: RTTreatmentTechniqueCS
Id: rt-treatment-technique-cs
Title: "Kenya Radiotherapy Treatment Technique Code System"
Description: "Codes for the technical approach used in delivering radiotherapy."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/rt-treatment-technique-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #TWO-D-RT          "2D Conventional RT"          "Two-field or opposed fields using 2D planning."
* #THREE-D-CRT       "3D Conformal RT (3DCRT)"     "3D planning conforming beams to target volume."
* #IMRT              "IMRT"                         "Intensity-Modulated Radiation Therapy."
* #VMAT              "VMAT"                         "Volumetric-Modulated Arc Therapy."
* #SBRT              "SBRT"                         "Stereotactic Body Radiation Therapy."
* #SRS               "SRS"                          "Stereotactic Radiosurgery."
* #PROTON-THERAPY    "Proton Therapy"               "Proton beam therapy."
* #BRACHYTHERAPY-HDR "Brachytherapy — HDR"          "High dose rate brachytherapy."
* #BRACHYTHERAPY-LDR "Brachytherapy — LDR"          "Low dose rate brachytherapy."
* #BRACHYTHERAPY-PDR "Brachytherapy — PDR"          "Pulsed dose rate brachytherapy."
* #ELECTRON-THERAPY  "Electron Therapy"             "Electron beam therapy."
* #TOTAL-BODY-IRRAD  "Total Body Irradiation (TBI)" "TBI given prior to bone marrow transplant."
* #INTRAOPERATIVE-RT "Intraoperative RT (IORT)"     "RT delivered during surgery."
* #OTHER             "Other"                        "Technique not listed; specify in notes."

// ---------------------------------------------------------------

CodeSystem: RTTargetVolumeCS
Id: rt-target-volume-cs
Title: "Kenya Radiotherapy Target Volume Code System"
Description: "ICRU-defined target volume concepts used in radiotherapy planning."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/rt-target-volume-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #GTV    "GTV — Gross Tumour Volume"      "Macroscopic extent of tumour visible on imaging."
* #CTV    "CTV — Clinical Target Volume"   "GTV plus margin for subclinical microscopic disease."
* #ITV    "ITV — Internal Target Volume"   "CTV plus internal margin for organ motion."
* #PTV    "PTV — Planning Target Volume"   "ITV plus set-up margin for treatment delivery uncertainty."
* #OAR    "OAR — Organ at Risk"            "Normal tissue structure whose radiation tolerance limits the prescribed dose."
* #PRV    "PRV — Planning Risk Volume"     "OAR plus margin for positioning uncertainty."
* #RVR    "RVR — Remaining Volume at Risk" "Volume outside GTV/CTV that receives dose."
* #BOOST  "Boost Volume"                   "Sub-volume receiving a higher dose than the main treatment."

// ---------------------------------------------------------------

CodeSystem: RTBeamTypeCS
Id: rt-beam-type-cs
Title: "Kenya Radiotherapy Beam Type Code System"
Description: "Codes for the radiation beam or source type used in treatment delivery."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/rt-beam-type-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #PHOTON-X-RAY          "Photon — X-ray (Linac)"       "High-energy X-ray photons from a linear accelerator."
* #ELECTRON              "Electron Beam"                 "Electron beam from a linear accelerator."
* #PROTON                "Proton Beam"                   "Proton beam from a cyclotron or synchrotron."
* #NEUTRON               "Neutron Beam"                  "Fast neutron beam therapy."
* #CARBON-ION            "Carbon Ion Beam"               "Heavy ion (carbon-12) therapy."
* #COBALT-60             "Cobalt-60 Gamma Rays"          "Gamma radiation from a Co-60 teletherapy machine."
* #BRACHY-HDR-IR192      "Brachytherapy — HDR Ir-192"    "High dose rate Iridium-192 brachytherapy."
* #BRACHY-LDR-PD103      "Brachytherapy — LDR Pd-103"    "Low dose rate Palladium-103 brachytherapy."
* #BRACHY-LDR-I125       "Brachytherapy — LDR I-125"     "Low dose rate Iodine-125 seed brachytherapy."
* #BRACHY-HDR-OTHER      "Brachytherapy — HDR Other"     "Other HDR brachytherapy source."
