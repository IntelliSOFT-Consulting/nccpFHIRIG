// ============================================================
// CLINICAL OBSERVATION CODE SYSTEMS
// Covers: CTCAETerms, CTCAEGrade, CTCAEActionTaken,
//         RECISTTimepoint, DiagnosisStatus, PractitionerRoles
// ============================================================

CodeSystem: CTCAETermsCS
Id: ctcae-terms-cs
Title: "Kenya CTCAE Adverse Event Terms Code System"
Description: "NCI CTCAE v5.0 adverse event terms used in oncology toxicity grading."
* ^url = "https://fhir.dha.go.ke/nccp/CodeSystem/ctcae-terms-cs"
* ^status = #active
* ^caseSensitive = true
* #NAUSEA                  "Nausea"
* #VOMITING                "Vomiting"
* #DIARRHOEA               "Diarrhoea"
* #CONSTIPATION            "Constipation"
* #ANOREXIA                "Anorexia / Decreased Appetite"
* #FATIGUE                 "Fatigue"
* #ALOPECIA                "Alopecia"
* #NEUTROPENIA             "Neutropenia"
* #THROMBOCYTOPENIA        "Thrombocytopenia"
* #ANAEMIA                 "Anaemia"
* #FEBRILE-NEUTROPENIA     "Febrile Neutropenia"
* #PERIPHERAL-NEUROPATHY   "Peripheral Neuropathy (Sensory)"
* #MOTOR-NEUROPATHY        "Peripheral Neuropathy (Motor)"
* #MUCOSITIS               "Mucositis / Stomatitis"
* #RASH                    "Rash / Skin Toxicity"
* #HAND-FOOT-SYNDROME      "Hand-Foot Syndrome (PPE)"
* #HEPATOTOXICITY          "Hepatotoxicity (elevated LFTs)"
* #NEPHROTOXICITY          "Nephrotoxicity (elevated creatinine)"
* #CARDIOTOXICITY          "Cardiotoxicity (reduced LVEF)"
* #PERIPHERAL-OEDEMA       "Peripheral Oedema"
* #DYSPNOEA                "Dyspnoea"
* #PAIN                    "Pain"
* #INFECTION               "Infection"
* #ALLERGIC-REACTION       "Allergic Reaction / Hypersensitivity"
* #ARTHRALGIA-MYALGIA      "Arthralgia / Myalgia"
* #COGNITIVE-IMPAIRMENT    "Cognitive Impairment (chemo-brain)"
* #HYPOTHYROIDISM          "Hypothyroidism"
* #COLITIS                 "Immune-related Colitis"
* #PNEUMONITIS             "Immune-related Pneumonitis"
* #OTHER                   "Other (specify)"

// ---------------------------------------------------------------

CodeSystem: CTCAEGradeCS
Id: ctcae-grade-cs
Title: "Kenya CTCAE Grade Code System"
Description: "NCI CTCAE v5.0 severity grades for adverse events."
* ^url = "https://fhir.dha.go.ke/nccp/CodeSystem/ctcae-grade-cs"
* ^status = #active
* ^caseSensitive = true
* #GRADE-1  "Grade 1 — Mild"              "Asymptomatic or mild symptoms; no intervention required."
* #GRADE-2  "Grade 2 — Moderate"          "Moderate symptoms; minimal local or non-invasive intervention."
* #GRADE-3  "Grade 3 — Severe"            "Severe or medically significant; hospitalisation indicated."
* #GRADE-4  "Grade 4 — Life-Threatening"  "Life-threatening consequences; urgent intervention required."
* #GRADE-5  "Grade 5 — Death"             "Death related to adverse event."

// ---------------------------------------------------------------

CodeSystem: CTCAEActionTakenCS
Id: ctcae-action-taken-cs
Title: "Kenya CTCAE Action Taken Code System"
Description: "Codes indicating the clinical action taken in response to an adverse event."
* ^url = "https://fhir.dha.go.ke/nccp/CodeSystem/ctcae-action-taken-cs"
* ^status = #active
* ^caseSensitive = true
* #NONE                    "No Action"               "No change to treatment; adverse event managed conservatively."
* #DOSE-REDUCED            "Dose Reduced"            "Subsequent dose reduced per dose-modification guidelines."
* #DOSE-DELAYED            "Dose Delayed"            "Next treatment cycle delayed pending recovery."
* #DOSE-OMITTED            "Dose Omitted"            "One or more agents omitted from the current cycle."
* #DOSE-REDUCED-DELAYED    "Dose Reduced and Delayed" "Combination of dose reduction and delay."
* #DRUG-DISCONTINUED       "Drug Discontinued"       "Causative agent permanently discontinued."
* #HOSPITALISED            "Hospitalised"            "Patient admitted for management of the adverse event."
* #SYMPTOMATIC-TREATMENT   "Symptomatic Treatment"   "Supportive medications added (anti-emetics, G-CSF, etc.)."
* #TREATMENT-COMPLETED     "Treatment Completed"     "Adverse event resolved; no further action required."
* #OTHER                   "Other"                   "Other action taken; describe in notes."

// ---------------------------------------------------------------

CodeSystem: RECISTTimepointCS
Id: recist-timepoint-cs
Title: "Kenya RECIST Assessment Timepoint Code System"
Description: "Codes for the scheduled imaging timepoint used in RECIST 1.1 tumour response assessment."
* ^url = "https://fhir.dha.go.ke/nccp/CodeSystem/recist-timepoint-cs"
* ^status = #active
* ^caseSensitive = true
* #BASELINE             "Baseline"                "Pre-treatment baseline assessment."
* #WEEK-4               "Week 4"                  "Interim assessment at 4 weeks."
* #WEEK-8               "Week 8"                  "Interim assessment at 8 weeks / 2 cycles."
* #WEEK-12              "Week 12"                 "Interim assessment at 12 weeks / 3 cycles."
* #WEEK-16              "Week 16"                 "Interim assessment at 16 weeks / 4 cycles."
* #END-OF-TREATMENT     "End of Treatment"        "Assessment at completion of planned treatment."
* #FOLLOW-UP-3M         "Follow-up 3 Months"      "First post-treatment follow-up at 3 months."
* #FOLLOW-UP-6M         "Follow-up 6 Months"      "Follow-up assessment at 6 months."
* #FOLLOW-UP-12M        "Follow-up 12 Months"     "Follow-up assessment at 12 months."
* #FOLLOW-UP-24M        "Follow-up 24 Months"     "Follow-up assessment at 24 months."
* #PROGRESSION          "Disease Progression"     "Unscheduled assessment triggered by clinical suspicion of progression."
* #OTHER                "Other"                   "Timepoint not listed; specify in notes."

// ---------------------------------------------------------------

CodeSystem: DiagnosisStatusCS
Id: diagnosis-status-cs
Title: "Kenya Oncology Diagnosis Status Code System"
Description: "Codes indicating the certainty and method of confirmation of an oncology diagnosis."
* ^url = "https://fhir.dha.go.ke/nccp/CodeSystem/diagnosis-status-cs"
* ^status = #active
* ^caseSensitive = true
* #CONFIRMED-HISTOLOGICAL  "Confirmed — Histological"  "Diagnosis confirmed by tissue histopathology."
* #CONFIRMED-CYTOLOGICAL   "Confirmed — Cytological"   "Diagnosis confirmed by cytology (FNA, exfoliative)."
* #CONFIRMED-CLINICAL      "Confirmed — Clinical"      "Diagnosis confirmed clinically / radiologically without tissue."
* #CONFIRMED-MOLECULAR     "Confirmed — Molecular"     "Diagnosis confirmed by molecular / genetic testing."
* #SUSPECTED               "Suspected"                 "Diagnosis suspected but not yet confirmed."
* #RULED-OUT               "Ruled Out"                 "Diagnosis excluded after investigation."
* #DIFFERENTIAL            "Differential"              "One of several diagnoses under consideration."
* #INCIDENTAL              "Incidental Finding"        "Cancer found incidentally during investigation for another condition."

// ---------------------------------------------------------------

CodeSystem: PractitionerRolesCS
Id: practitioner-roles-cs
Title: "Kenya Oncology Practitioner Roles Code System"
Description: "Codes for clinical and non-clinical roles within the oncology multidisciplinary team."
* ^url = "https://fhir.dha.go.ke/nccp/CodeSystem/practitioner-roles-cs"
* ^status = #active
* ^caseSensitive = true
* #MEDICAL-ONCOLOGIST       "Medical Oncologist"          "Specialist in systemic cancer therapy."
* #RADIATION-ONCOLOGIST     "Radiation Oncologist"        "Specialist in radiotherapy."
* #HAEMATOLOGIST            "Haematologist / Haematology Oncologist" "Specialist in blood cancers."
* #SURGICAL-ONCOLOGIST      "Surgical Oncologist"         "Cancer surgeon."
* #PAEDIATRIC-ONCOLOGIST    "Paediatric Oncologist"       "Specialist in childhood cancers."
* #GYNAECOLOGICAL-ONCOLOGIST "Gynaecological Oncologist"  "Specialist in female reproductive cancers."
* #RADIOLOGIST              "Radiologist"                 "Diagnostic imaging specialist."
* #PATHOLOGIST              "Pathologist"                 "Tissue diagnosis specialist."
* #ONCOLOGY-PHARMACIST      "Oncology Pharmacist"         "Pharmacist specialised in cancer medications."
* #ONCOLOGY-NURSE           "Oncology Nurse"              "Nurse specialised in cancer care."
* #PALLIATIVE-CARE-SPECIALIST "Palliative Care Specialist" "Specialist in symptom management and end-of-life care."
* #SOCIAL-WORKER            "Oncology Social Worker"      "Psychosocial support professional."
* #CLINICAL-NUTRITIONIST    "Clinical Nutritionist"       "Dietitian providing nutritional support."
* #PSYCHO-ONCOLOGIST        "Psycho-oncologist"           "Mental health professional for cancer patients."
* #RADIATION-THERAPIST      "Radiation Therapist"         "Technologist delivering radiotherapy."
* #NUCLEAR-MEDICINE-PHYSICIAN "Nuclear Medicine Physician" "Specialist in nuclear medicine imaging and therapy."
