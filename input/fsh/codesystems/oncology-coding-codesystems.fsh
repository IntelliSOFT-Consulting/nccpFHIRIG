// ============================================================
// ONCOLOGY CODING CODE SYSTEMS
// Covers: CancerPrimarySite, CancerGrade, LateralityCodes,
//         DiseaseExtentCodes, MetastasesSites, ManifestationCodes,
//         ConditionCodes, EncounterStatus
// ============================================================

CodeSystem: CancerPrimarySiteCS
Id: cancer-primary-site-cs
Title: "Kenya Cancer Primary Site Code System"
Description: "Codes for the anatomical primary site of a malignancy, aligned with ICD-10 topography."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/cancer-primary-site-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #BREAST               "Breast"                         "C50 — Malignant neoplasm of breast."
* #CERVIX-UTERI         "Cervix Uteri"                   "C53 — Malignant neoplasm of cervix uteri."
* #CORPUS-UTERI         "Corpus Uteri"                   "C54 — Malignant neoplasm of corpus uteri."
* #OVARY                "Ovary"                          "C56 — Malignant neoplasm of ovary."
* #PROSTATE             "Prostate"                       "C61 — Malignant neoplasm of prostate."
* #COLON                "Colon"                          "C18 — Malignant neoplasm of colon."
* #RECTUM               "Rectum"                         "C20 — Malignant neoplasm of rectum."
* #OESOPHAGUS           "Oesophagus"                     "C15 — Malignant neoplasm of oesophagus."
* #STOMACH              "Stomach"                        "C16 — Malignant neoplasm of stomach."
* #LIVER                "Liver and Intrahepatic Ducts"   "C22 — Malignant neoplasm of liver."
* #PANCREAS             "Pancreas"                       "C25 — Malignant neoplasm of pancreas."
* #LUNG                 "Lung and Bronchus"              "C34 — Malignant neoplasm of bronchus and lung."
* #LARYNX               "Larynx"                         "C32 — Malignant neoplasm of larynx."
* #NASOPHARYNX          "Nasopharynx"                    "C11 — Malignant neoplasm of nasopharynx."
* #ORAL-CAVITY          "Oral Cavity and Pharynx"        "C00–C14 — Malignant neoplasm of lip, oral cavity and pharynx."
* #THYROID              "Thyroid Gland"                  "C73 — Malignant neoplasm of thyroid."
* #KIDNEY               "Kidney"                         "C64 — Malignant neoplasm of kidney."
* #BLADDER              "Urinary Bladder"                "C67 — Malignant neoplasm of bladder."
* #SKIN-MELANOMA        "Skin — Melanoma"                "C43 — Malignant melanoma of skin."
* #SKIN-NON-MELANOMA    "Skin — Non-melanoma"            "C44 — Other malignant neoplasms of skin."
* #BRAIN-CNS            "Brain and CNS"                  "C71–C72 — Malignant neoplasm of brain / CNS."
* #BONE                 "Bone and Articular Cartilage"   "C40–C41 — Malignant neoplasm of bone."
* #SOFT-TISSUE          "Soft Tissue / Sarcoma"          "C49 — Malignant neoplasm of connective and soft tissue."
* #BURKITT-LYMPHOMA     "Burkitt Lymphoma"               "C83.7 — Burkitt lymphoma."
* #HODGKIN-LYMPHOMA     "Hodgkin Lymphoma"               "C81 — Hodgkin lymphoma."
* #NON-HODGKIN-LYMPHOMA "Non-Hodgkin Lymphoma"           "C82–C86 — Non-Hodgkin lymphoma."
* #LEUKAEMIA-ALL        "Leukaemia — ALL"                "C91.0 — Acute lymphoblastic leukaemia."
* #LEUKAEMIA-AML        "Leukaemia — AML"                "C92.0 — Acute myeloid leukaemia."
* #LEUKAEMIA-CLL        "Leukaemia — CLL"                "C91.1 — Chronic lymphocytic leukaemia."
* #LEUKAEMIA-CML        "Leukaemia — CML"                "C92.1 — Chronic myeloid leukaemia."
* #MULTIPLE-MYELOMA     "Multiple Myeloma"               "C90.0 — Multiple myeloma."
* #KAPOSI-SARCOMA       "Kaposi Sarcoma"                 "C46 — Kaposi sarcoma."
* #WILMS-TUMOUR         "Wilms Tumour (Nephroblastoma)"  "C64 — Malignant neoplasm of kidney (paediatric)."
* #RETINOBLASTOMA       "Retinoblastoma"                 "C69.2 — Retinoblastoma."
* #OTHER                "Other / Not Specified"          "Primary site not listed or not specified."

// ---------------------------------------------------------------

CodeSystem: CancerGradeCS
Id: cancer-grade-cs
Title: "Kenya Cancer Grade Code System"
Description: "Histological tumour grade codes based on degree of differentiation."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/cancer-grade-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #GX     "GX — Grade Cannot Be Assessed"   "Histological grade cannot be assessed."
* #G1     "G1 — Well Differentiated"        "Low grade; closely resembles normal tissue."
* #G2     "G2 — Moderately Differentiated"  "Intermediate grade."
* #G3     "G3 — Poorly Differentiated"      "High grade; little resemblance to normal tissue."
* #G4     "G4 — Undifferentiated"           "Highest grade; no differentiation."
* #LOW    "Low Grade"                        "Low-grade tumour (used when numeric grade not available)."
* #HIGH   "High Grade"                       "High-grade tumour (used when numeric grade not available)."
* #NA     "Not Applicable"                   "Grading not applicable to this tumour type."

// ---------------------------------------------------------------

CodeSystem: LateralityCodesCS
Id: laterality-codes-cs
Title: "Kenya Laterality Code System"
Description: "Codes indicating the side of the body affected by the malignancy or treatment."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/laterality-codes-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #LEFT                    "Left"                     "Lesion / tumour is on the left side."
* #RIGHT                   "Right"                    "Lesion / tumour is on the right side."
* #BILATERAL               "Bilateral"                "Tumour affects both sides."
* #MIDLINE                 "Midline"                  "Tumour crosses the midline."
* #UNILATERAL-UNSPECIFIED  "Unilateral — Unspecified" "One side affected; side not specified."
* #NOT-APPLICABLE          "Not Applicable"            "Laterality is not applicable to this site."

// ---------------------------------------------------------------

CodeSystem: DiseaseExtentCodesCS
Id: disease-extent-codes-cs
Title: "Kenya Disease Extent Code System"
Description: "Codes describing the extent of disease spread at the time of assessment."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/disease-extent-codes-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #IN-SITU             "In Situ"                 "Carcinoma in situ; no invasion of basement membrane."
* #LOCALIZED           "Localized"               "Tumour confined to organ of origin."
* #REGIONAL-LN         "Regional — Lymph Nodes"  "Spread to regional lymph nodes only."
* #REGIONAL-EXTENSION  "Regional — Direct"       "Direct extension to adjacent structures."
* #REGIONAL-BOTH       "Regional — Combined"     "Both lymph node and direct extension involvement."
* #DISTANT-METASTASIS  "Distant Metastasis"      "Spread to distant organs or non-regional lymph nodes."
* #NOT-DETERMINABLE    "Not Determinable"        "Extent of disease cannot be assessed."

// ---------------------------------------------------------------

CodeSystem: MetastasesSitesCS
Id: metastases-sites-cs
Title: "Kenya Metastases Sites Code System"
Description: "Codes for sites of distant metastatic spread."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/metastases-sites-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #BRAIN               "Brain"                    "Cerebral metastases."
* #LUNG                "Lung"                     "Pulmonary metastases."
* #LIVER               "Liver"                    "Hepatic metastases."
* #BONE                "Bone"                     "Skeletal metastases."
* #ADRENAL-GLAND       "Adrenal Gland"            "Adrenal metastases."
* #PERITONEUM          "Peritoneum"               "Peritoneal carcinomatosis."
* #PLEURA              "Pleura"                   "Pleural metastases / malignant effusion."
* #LYMPH-NODES-DISTANT "Distant Lymph Nodes"      "Non-regional lymph node metastases."
* #SKIN                "Skin"                     "Cutaneous metastases."
* #SPINAL-CORD         "Spinal Cord"              "Epidural or spinal cord metastases."
* #CONTRALATERAL-BREAST "Contralateral Breast"    "Metastasis to the contralateral breast."
* #OVARY               "Ovary (Krukenberg)"       "Ovarian metastases."
* #MENINGES            "Meninges / Leptomeninges" "Leptomeningeal carcinomatosis."
* #OTHER               "Other"                    "Site of metastasis not listed above."

// ---------------------------------------------------------------

CodeSystem: ManifestationCodesCS
Id: manifestation-codes-cs
Title: "Kenya Cancer Manifestation Codes Code System"
Description: "Codes for presenting symptoms, signs, and clinical manifestations of cancer."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/manifestation-codes-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #WEIGHT-LOSS          "Unexplained Weight Loss"
* #HAEMOPTYSIS          "Haemoptysis (coughing blood)"
* #DYSPHAGIA            "Dysphagia (difficulty swallowing)"
* #ABDOMINAL-PAIN       "Abdominal Pain"
* #RECTAL-BLEEDING      "Rectal / PR Bleeding"
* #PELVIC-PAIN          "Pelvic Pain"
* #HAEMATURIA           "Haematuria (blood in urine)"
* #BREAST-LUMP          "Breast Lump"
* #VAGINAL-BLEEDING     "Abnormal Vaginal Bleeding"
* #BONE-PAIN            "Bone Pain"
* #HEADACHE             "Headache"
* #SEIZURE              "Seizure"
* #LYMPHADENOPATHY      "Lymphadenopathy (enlarged lymph nodes)"
* #ASCITES              "Ascites"
* #JAUNDICE             "Jaundice"
* #NIGHT-SWEATS         "Night Sweats"
* #FATIGUE              "Fatigue / Weakness"
* #COUGH                "Persistent Cough"
* #DYSPNOEA             "Dyspnoea (shortness of breath)"
* #SKIN-CHANGE          "Skin Change / Lesion"
* #URINARY-SYMPTOMS     "Urinary Symptoms"
* #PRURITUS             "Pruritus (itching)"
* #OTHER                "Other"

// ---------------------------------------------------------------

CodeSystem: ConditionCodesCS
Id: condition-codes-cs
Title: "Kenya Oncology Condition (ICD-10) Code System"
Description: "ICD-10 diagnosis codes for the most common malignancies in Kenya."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/condition-codes-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #C50   "C50 — Malignant neoplasm of breast"
* #C53   "C53 — Malignant neoplasm of cervix uteri"
* #C54   "C54 — Malignant neoplasm of corpus uteri"
* #C55   "C55 — Malignant neoplasm of uterus, part unspecified"
* #C56   "C56 — Malignant neoplasm of ovary"
* #C61   "C61 — Malignant neoplasm of prostate"
* #C18   "C18 — Malignant neoplasm of colon"
* #C19   "C19 — Malignant neoplasm of rectosigmoid junction"
* #C20   "C20 — Malignant neoplasm of rectum"
* #C15   "C15 — Malignant neoplasm of oesophagus"
* #C16   "C16 — Malignant neoplasm of stomach"
* #C22   "C22 — Malignant neoplasm of liver and intrahepatic bile ducts"
* #C25   "C25 — Malignant neoplasm of pancreas"
* #C34   "C34 — Malignant neoplasm of bronchus and lung"
* #C32   "C32 — Malignant neoplasm of larynx"
* #C11   "C11 — Malignant neoplasm of nasopharynx"
* #C73   "C73 — Malignant neoplasm of thyroid gland"
* #C64   "C64 — Malignant neoplasm of kidney, except renal pelvis"
* #C67   "C67 — Malignant neoplasm of bladder"
* #C43   "C43 — Malignant melanoma of skin"
* #C71   "C71 — Malignant neoplasm of brain"
* #C40   "C40 — Malignant neoplasm of bone and articular cartilage of limbs"
* #C49   "C49 — Malignant neoplasm of connective and soft tissue"
* #C81   "C81 — Hodgkin lymphoma"
* #C83   "C83 — Non-follicular lymphoma (incl. Burkitt)"
* #C85   "C85 — Other and unspecified types of non-Hodgkin lymphoma"
* #C90   "C90 — Multiple myeloma and malignant plasma cell neoplasms"
* #C91   "C91 — Lymphoid leukaemia"
* #C92   "C92 — Myeloid leukaemia"
* #C46   "C46 — Kaposi sarcoma"
* #C69   "C69 — Malignant neoplasm of eye and adnexa (incl. retinoblastoma)"
* #D05   "D05 — Carcinoma in situ of breast"
* #D06   "D06 — Carcinoma in situ of cervix uteri"

// ---------------------------------------------------------------

CodeSystem: EncounterStatusCS
Id: encounter-status-cs
Title: "Kenya Oncology Encounter Status Code System"
Description: "Status codes for oncology encounters, aligned with FHIR R4 encounter-status."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/encounter-status-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #planned        "Planned"        "Encounter has not yet started."
* #arrived        "Arrived"        "Patient has arrived and is checked in."
* #triaged        "Triaged"        "Patient has been triaged."
* #in-progress    "In Progress"    "Encounter is currently in progress."
* #onleave        "On Leave"       "Patient is temporarily absent."
* #finished       "Finished"       "Encounter has been completed."
* #cancelled      "Cancelled"      "Encounter was cancelled before starting."
* #entered-in-error "Entered in Error" "Encounter was entered in error."
* #unknown        "Unknown"        "Encounter status is unknown."
