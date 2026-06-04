// ============================================================
// TREATMENT & CARE CODE SYSTEMS
// Covers: TreatmentIntent, TreatmentSetting, MedClinicalCategory,
//         TreatmentCourseCodes, OCMProtocolMarkers, BMTType,
//         ReferralSource, PriorTreatmentOutcome
// ============================================================

CodeSystem: TreatmentIntentCS
Id: treatment-intent-cs
Title: "Kenya Treatment Intent Code System"
Description: "Codes representing the clinical intent of an oncology treatment."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/treatment-intent-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #CURATIVE        "Curative"           "Treatment aimed at cure or long-term remission."
* #PALLIATIVE      "Palliative"         "Treatment aimed at controlling symptoms and improving quality of life."
* #ADJUVANT        "Adjuvant"           "Treatment given after primary therapy to reduce recurrence risk."
* #NEO-ADJUVANT    "Neo-adjuvant"       "Treatment given before primary therapy to reduce tumour bulk."
* #PROPHYLACTIC    "Prophylactic"       "Treatment to prevent cancer or its recurrence."
* #RADIOSENSITISER "Radiosensitiser"    "Chemotherapy given concurrently to enhance radiotherapy effect."
* #NOT-APPLICABLE  "Not Applicable"     "Treatment intent is not applicable or not recorded."

// ---------------------------------------------------------------

CodeSystem: TreatmentSettingCS
Id: treatment-setting-cs
Title: "Kenya Treatment Setting Code System"
Description: "Codes indicating the care setting in which oncology treatment is delivered."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/treatment-setting-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #INPATIENT       "Inpatient"          "Patient is admitted overnight for treatment."
* #OUTPATIENT      "Outpatient"         "Patient attends clinic without overnight admission."
* #DAY-CASE        "Day Case"           "Patient attends for the day and is discharged same day."
* #HOME-BASED      "Home-Based"         "Treatment administered at the patient's home."
* #PALLIATIVE-UNIT "Palliative Unit"    "Treatment in a dedicated palliative or hospice unit."
* #EMERGENCY       "Emergency"          "Treatment given in emergency setting."

// ---------------------------------------------------------------

CodeSystem: MedClinicalCategoryCS
Id: med-clinical-category-cs
Title: "Kenya Medication Clinical Category Code System"
Description: "Codes classifying the clinical role of a medication within an oncology regimen."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/med-clinical-category-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #CHEMOTHERAPY       "Chemotherapy"        "Cytotoxic agent used to kill or inhibit cancer cells."
* #IMMUNOTHERAPY      "Immunotherapy"       "Agent that stimulates the immune system against cancer."
* #TARGETED-THERAPY   "Targeted Therapy"    "Agent targeting specific molecular markers on cancer cells."
* #HORMONAL-THERAPY   "Hormonal Therapy"    "Agent that blocks or modifies hormone-driven tumour growth."
* #SUPPORTIVE-CARE    "Supportive Care"     "Medication to manage side effects or improve tolerability."
* #ANTI-EMETIC        "Anti-emetic"         "Agent to prevent or treat nausea and vomiting."
* #GROWTH-FACTOR      "Growth Factor"       "Colony-stimulating factor to support blood cell recovery."
* #CORTICOSTEROID     "Corticosteroid"      "Steroid given as part of or to support the oncology regimen."
* #BISPHOSPHONATE     "Bisphosphonate"      "Agent for prevention or treatment of bone metastasis."
* #ANALGESIC          "Analgesic"           "Pain management medication in the cancer care context."

// ---------------------------------------------------------------

CodeSystem: TreatmentCourseCodesCS
Id: treatment-course-codes-cs
Title: "Kenya Treatment Course (Regimen) Code System"
Description: "Standard oncology chemotherapy regimen codes used in Kenya."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/treatment-course-codes-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #AC                  "AC"                   "Doxorubicin + Cyclophosphamide"
* #AC-T                "AC-T"                 "Doxorubicin + Cyclophosphamide followed by Paclitaxel"
* #AC-TH               "AC-TH"                "AC-T with Trastuzumab (HER2+)"
* #CMF                 "CMF"                  "Cyclophosphamide + Methotrexate + 5-Fluorouracil"
* #FAC                 "FAC"                  "5-Fluorouracil + Doxorubicin + Cyclophosphamide"
* #FEC                 "FEC"                  "5-Fluorouracil + Epirubicin + Cyclophosphamide"
* #TC                  "TC"                   "Docetaxel + Cyclophosphamide"
* #FOLFOX              "FOLFOX"               "5-Fluorouracil + Leucovorin + Oxaliplatin"
* #FOLFIRI             "FOLFIRI"              "5-Fluorouracil + Leucovorin + Irinotecan"
* #CAPOX               "CAPOX/XELOX"          "Capecitabine + Oxaliplatin"
* #BEP                 "BEP"                  "Bleomycin + Etoposide + Cisplatin"
* #CHOP                "CHOP"                 "Cyclophosphamide + Doxorubicin + Vincristine + Prednisone"
* #R-CHOP              "R-CHOP"               "Rituximab + CHOP"
* #ABVD                "ABVD"                 "Doxorubicin + Bleomycin + Vinblastine + Dacarbazine"
* #GEM-CIS             "Gem-Cis"              "Gemcitabine + Cisplatin"
* #GEM-CARBO           "Gem-Carbo"            "Gemcitabine + Carboplatin"
* #PACLITAXEL-CARBO    "Paclitaxel-Carboplatin" "Paclitaxel + Carboplatin"
* #CISPLATIN-5FU       "Cisplatin-5FU"        "Cisplatin + 5-Fluorouracil"
* #SINGLE-CAPECITABINE "Single-agent Capecitabine" "Capecitabine monotherapy"
* #SINGLE-PACLITAXEL   "Single-agent Paclitaxel"   "Paclitaxel monotherapy"
* #SINGLE-GEMCITABINE  "Single-agent Gemcitabine"  "Gemcitabine monotherapy"
* #MVAC                "MVAC"                 "Methotrexate + Vinblastine + Doxorubicin + Cisplatin"
* #OTHER               "Other"                "Regimen not listed; specify in free text."

// ---------------------------------------------------------------

CodeSystem: OCMProtocolMarkersCS
Id: ocm-protocol-markers-cs
Title: "Kenya OCM Protocol Markers Code System"
Description: "Biomarker and molecular marker codes used for treatment protocol selection."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/ocm-protocol-markers-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #HER2-POSITIVE    "HER2 Positive"       "HER2/neu overexpression or amplification detected."
* #HER2-NEGATIVE    "HER2 Negative"       "No HER2/neu overexpression or amplification."
* #ER-POSITIVE      "ER Positive"         "Oestrogen receptor positive."
* #ER-NEGATIVE      "ER Negative"         "Oestrogen receptor negative."
* #PR-POSITIVE      "PR Positive"         "Progesterone receptor positive."
* #PR-NEGATIVE      "PR Negative"         "Progesterone receptor negative."
* #TRIPLE-NEGATIVE  "Triple Negative"     "ER-, PR-, HER2- breast cancer."
* #KRAS-MUTANT      "KRAS Mutant"         "KRAS mutation detected."
* #KRAS-WILD-TYPE   "KRAS Wild-type"      "No KRAS mutation."
* #BRAF-V600E       "BRAF V600E Mutant"   "BRAF V600E mutation detected."
* #PD-L1-POSITIVE   "PD-L1 Positive"      "PD-L1 expression ≥1%."
* #PD-L1-NEGATIVE   "PD-L1 Negative"      "PD-L1 expression <1%."
* #MSI-HIGH         "MSI-High"            "Microsatellite instability high."
* #MSI-LOW          "MSI-Low / MSS"       "Microsatellite instability low or stable."
* #EGFR-MUTANT      "EGFR Mutant"         "EGFR mutation detected."
* #ALK-POSITIVE     "ALK Positive"        "ALK rearrangement detected."
* #NOT-TESTED       "Not Tested"          "Biomarker testing not performed."

// ---------------------------------------------------------------

CodeSystem: BMTTypeCS
Id: bmt-type-cs
Title: "Kenya Bone Marrow / Stem Cell Transplant Type Code System"
Description: "Codes for the type of bone marrow or haematopoietic stem cell transplant."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/bmt-type-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #AUTOLOGOUS                "Autologous"                    "Stem cells from the patient themselves."
* #ALLOGENEIC-MATCHED-SIBLING "Allogeneic Matched Sibling"   "Stem cells from an HLA-matched sibling donor."
* #ALLOGENEIC-MATCHED-UNRELATED "Allogeneic Matched Unrelated" "Stem cells from an HLA-matched unrelated donor."
* #HAPLOIDENTICAL            "Haploidentical"                "Stem cells from a half-matched related donor."
* #CORD-BLOOD                "Cord Blood"                    "Stem cells from umbilical cord blood."
* #TANDEM                    "Tandem Transplant"             "Two sequential autologous transplants."

// ---------------------------------------------------------------

CodeSystem: ReferralSourceCS
Id: referral-source-cs
Title: "Kenya Referral Source Code System"
Description: "Codes indicating the source or origin of an oncology referral."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/referral-source-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #SELF                        "Self-Referral"               "Patient presented without a formal referral."
* #COMMUNITY-HEALTH-WORKER     "Community Health Worker"     "Referred by a community health worker."
* #PRIMARY-HEALTH-FACILITY     "Primary Health Facility"     "Referred from a level 2 or 3 health facility."
* #COUNTY-HOSPITAL             "County Hospital"             "Referred from a county-level referral hospital."
* #NATIONAL-REFERRAL-HOSPITAL  "National Referral Hospital"  "Referred from a national referral hospital."
* #PRIVATE-FACILITY            "Private Facility"            "Referred from a private health facility."
* #NGO                         "NGO / Faith-based Facility"  "Referred from an NGO or faith-based facility."
* #SCREENING-PROGRAMME         "Screening Programme"         "Detected via a national screening programme."
* #OTHER                       "Other"                       "Referral source not listed above."

// ---------------------------------------------------------------

CodeSystem: PriorTreatmentOutcomeCS
Id: prior-treatment-outcome-cs
Title: "Kenya Prior Treatment Outcome Code System"
Description: "Codes representing the outcome of a prior oncology treatment course."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/prior-treatment-outcome-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #COMPLETE-RESPONSE   "Complete Response"      "No evidence of disease following treatment."
* #PARTIAL-RESPONSE    "Partial Response"       "Significant tumour reduction but residual disease remains."
* #STABLE-DISEASE      "Stable Disease"         "No significant change in tumour size."
* #PROGRESSIVE-DISEASE "Progressive Disease"    "Tumour growth or spread during or after treatment."
* #NOT-EVALUABLE       "Not Evaluable"          "Response could not be assessed."
* #TOXICITY-WITHDRAWAL "Withdrawn — Toxicity"   "Treatment stopped due to unacceptable side effects."
* #PATIENT-WITHDRAWAL  "Withdrawn — Patient"    "Patient declined to continue treatment."
* #ONGOING             "Ongoing"                "Treatment is still in progress; outcome not yet determined."
