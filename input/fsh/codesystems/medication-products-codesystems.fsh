// ============================================================
// MEDICATION & PRODUCTS CODE SYSTEMS
// Covers: GenericProducts, UnitOfMeasure,
//         MedAdminRoute, SHAInterventions
// ============================================================

CodeSystem: GenericProductsCS
Id: generic-products-cs
Title: "Kenya Generic Oncology Products Code System"
Description: "Generic names of chemotherapy agents and oncology medications used in Kenya."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/generic-products-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
// Alkylating agents
* #CYCLOPHOSPHAMIDE    "Cyclophosphamide"
* #IFOSFAMIDE          "Ifosfamide"
* #CHLORAMBUCIL        "Chlorambucil"
* #MELPHALAN           "Melphalan"
* #BUSULFAN            "Busulfan"
* #DACARBAZINE         "Dacarbazine (DTIC)"
* #TEMOZOLOMIDE        "Temozolomide"
// Platinum agents
* #CISPLATIN           "Cisplatin"
* #CARBOPLATIN         "Carboplatin"
* #OXALIPLATIN         "Oxaliplatin"
// Antimetabolites
* #METHOTREXATE        "Methotrexate"
* #5-FLUOROURACIL      "5-Fluorouracil (5-FU)"
* #CAPECITABINE        "Capecitabine"
* #GEMCITABINE         "Gemcitabine"
* #CYTARABINE          "Cytarabine (Ara-C)"
* #6-MERCAPTOPURINE    "6-Mercaptopurine"
* #FLUDARABINE         "Fludarabine"
* #LEUCOVORIN          "Leucovorin (Folinic Acid)"
// Anthracyclines
* #DOXORUBICIN         "Doxorubicin"
* #EPIRUBICIN          "Epirubicin"
* #DAUNORUBICIN        "Daunorubicin"
* #IDARUBICIN          "Idarubicin"
// Vinca alkaloids
* #VINCRISTINE         "Vincristine"
* #VINBLASTINE         "Vinblastine"
* #VINORELBINE         "Vinorelbine"
// Taxanes
* #PACLITAXEL          "Paclitaxel"
* #DOCETAXEL           "Docetaxel"
// Topoisomerase inhibitors
* #ETOPOSIDE           "Etoposide (VP-16)"
* #IRINOTECAN          "Irinotecan"
* #TOPOTECAN           "Topotecan"
// Antitumour antibiotics
* #BLEOMYCIN           "Bleomycin"
* #MITOMYCIN-C         "Mitomycin-C"
* #ACTINOMYCIN-D       "Actinomycin-D"
// Monoclonal antibodies
* #RITUXIMAB           "Rituximab"
* #TRASTUZUMAB         "Trastuzumab"
* #BEVACIZUMAB         "Bevacizumab"
* #CETUXIMAB           "Cetuximab"
* #PEMBROLIZUMAB       "Pembrolizumab"
* #NIVOLUMAB           "Nivolumab"
// Hormonal agents
* #TAMOXIFEN           "Tamoxifen"
* #LETROZOLE           "Letrozole"
* #ANASTROZOLE         "Anastrozole"
* #EXEMESTANE          "Exemestane"
* #GOSERELIN           "Goserelin"
* #BICALUTAMIDE        "Bicalutamide"
* #LEUPRORELIN         "Leuprorelin"
// Supportive agents
* #FILGRASTIM          "Filgrastim (G-CSF)"
* #PEGFILGRASTIM       "Pegfilgrastim (long-acting G-CSF)"
* #ONDANSETRON         "Ondansetron"
* #METOCLOPRAMIDE      "Metoclopramide"
* #DEXAMETHASONE       "Dexamethasone"
* #MESNA               "Mesna (uroprotection)"
* #ZOLEDRONIC-ACID     "Zoledronic Acid"
* #DENOSUMAB           "Denosumab"
* #ALLOPURINOL         "Allopurinol"
* #RASBURICASE         "Rasburicase"

// ---------------------------------------------------------------

CodeSystem: UnitOfMeasureCS
Id: unit-of-measure-cs
Title: "Kenya Oncology Unit of Measure Code System"
Description: "Units of measure for oncology drug dosing and administration quantities."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/unit-of-measure-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #MG              "mg"                "Milligrams"
* #G               "g"                 "Grams"
* #MCG             "mcg / µg"          "Micrograms"
* #MG-PER-M2       "mg/m²"             "Milligrams per square metre (BSA-based dosing)"
* #MCG-PER-M2      "mcg/m²"            "Micrograms per square metre"
* #MG-PER-KG       "mg/kg"             "Milligrams per kilogram (weight-based dosing)"
* #MCG-PER-KG      "mcg/kg"            "Micrograms per kilogram"
* #AUC             "AUC (mg·min/mL)"   "Area under curve dosing (Calvert formula for carboplatin)"
* #ML              "mL"                "Millilitres"
* #IU              "IU"                "International Units"
* #MIU             "MIU"               "Mega International Units (million IU)"
* #MMOL            "mmol"              "Millimoles"
* #UNITS           "units"             "Generic units"
* #TABLET          "tablet"            "Oral solid dosage form"
* #CAPSULE         "capsule"           "Oral capsule dosage form"

// ---------------------------------------------------------------

CodeSystem: MedAdminRouteCS
Id: med-admin-route-cs
Title: "Kenya Medication Administration Route Code System"
Description: "Codes for the route by which oncology medications are administered."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/med-admin-route-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #IV-BOLUS         "Intravenous Bolus"            "Direct IV injection over <5 minutes."
* #IV-PUSH          "Intravenous Push"             "IV injection over 5–15 minutes."
* #IV-INFUSION-SHORT "IV Short Infusion"           "IV infusion over 15 minutes to 3 hours."
* #IV-INFUSION-LONG  "IV Long Infusion"            "IV infusion over >3 hours or continuous infusion."
* #ORAL             "Oral"                          "By mouth (tablets, capsules, solution)."
* #SUBCUTANEOUS     "Subcutaneous"                  "Injection into subcutaneous tissue."
* #INTRAMUSCULAR    "Intramuscular"                 "Injection into muscle."
* #INTRATHECAL      "Intrathecal"                   "Into the cerebrospinal fluid (spinal canal)."
* #INTRAVESICAL     "Intravesical"                  "Into the bladder lumen."
* #INTRAPERITONEAL  "Intraperitoneal"               "Into the peritoneal cavity."
* #INTRAPLEURAL     "Intrapleural"                  "Into the pleural cavity."
* #TOPICAL          "Topical"                        "Applied to skin surface."
* #TRANSDERMAL      "Transdermal"                    "Through intact skin via patch."
* #INHALED          "Inhaled"                        "Via inhalation."
* #INTRALESIONAL    "Intralesional"                  "Injected directly into the lesion."
* #INTRA-ARTERIAL   "Intra-arterial"                 "Into a feeding artery (e.g., hepatic artery infusion)."

// ---------------------------------------------------------------

CodeSystem: SHAInterventionsCS
Id: sha-interventions-cs
Title: "Kenya SHA Oncology Interventions Code System"
Description: "Social Health Authority (SHA) benefit package codes for oncology interventions."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/sha-interventions-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #SHA-CHEMO-FIRST-LINE   "SHA: Chemotherapy — First Line"       "First-line chemotherapy regimen."
* #SHA-CHEMO-SECOND-LINE  "SHA: Chemotherapy — Second Line"      "Second-line or salvage chemotherapy."
* #SHA-CHEMO-ADJUVANT     "SHA: Chemotherapy — Adjuvant"         "Post-surgery adjuvant chemotherapy."
* #SHA-CHEMO-NEO-ADJUVANT "SHA: Chemotherapy — Neo-adjuvant"     "Pre-surgery neo-adjuvant chemotherapy."
* #SHA-CHEMO-PALLIATIVE   "SHA: Chemotherapy — Palliative"       "Palliative intent chemotherapy."
* #SHA-RT-RADICAL         "SHA: Radiotherapy — Radical"          "Curative radiotherapy course."
* #SHA-RT-PALLIATIVE      "SHA: Radiotherapy — Palliative"       "Palliative radiotherapy course."
* #SHA-RT-ADJUVANT        "SHA: Radiotherapy — Adjuvant"         "Post-surgery adjuvant radiotherapy."
* #SHA-RT-CONCURRENT-CRT  "SHA: Concurrent Chemo-Radiotherapy"   "Chemotherapy and radiotherapy delivered concurrently."
* #SHA-SURGERY-CURATIVE   "SHA: Surgery — Curative"              "Cancer surgery with curative intent."
* #SHA-SURGERY-PALLIATIVE "SHA: Surgery — Palliative"            "Palliative or debulking surgery."
* #SHA-BMT-AUTOLOGOUS     "SHA: BMT — Autologous"                "Autologous bone marrow / stem cell transplant."
* #SHA-BMT-ALLOGENEIC     "SHA: BMT — Allogeneic"                "Allogeneic bone marrow / stem cell transplant."
* #SHA-HORMONAL-THERAPY   "SHA: Hormonal Therapy"                "Hormone therapy for hormone-responsive cancers."
* #SHA-TARGETED-THERAPY   "SHA: Targeted Therapy"                "Targeted molecular therapy / immunotherapy."
* #SHA-SUPPORTIVE-CARE    "SHA: Supportive / Supportive Care"    "Supportive medications and G-CSF."
* #SHA-PAIN-MANAGEMENT    "SHA: Palliative Pain Management"      "Opioid and pain management for cancer."
* #SHA-CANCER-SCREENING   "SHA: Cancer Screening"                "Covered cancer screening tests (cervical, breast)."
* #SHA-BIOPSY             "SHA: Diagnostic Biopsy"               "Tissue biopsy for cancer diagnosis."
* #SHA-IMAGING            "SHA: Oncology Diagnostic Imaging"     "CT, MRI, PET-CT for staging or response."
* #SHA-ONCOLOGY-CONSULT   "SHA: Oncology Consultation"           "Specialist oncology consultation."
* #SHA-MDT                "SHA: MDT Meeting"                     "Multidisciplinary tumour board review."
* #SHA-PATHOLOGY              "SHA: Pathology / Histopathology"          "Histopathology, IHC, or molecular diagnostics."
* #SHA-RT-DOSE-PER-FRACTION   "SHA: RT Dose Per Fraction"                "Radiation dose delivered per fraction (Gy)."
* #SHA-RT-TOTAL-FRACTIONS     "SHA: RT Total Fractions Delivered"        "Total number of radiation fractions delivered."
* #SHA-SUSPECTED-CANCER-TYPE  "SHA: Suspected Cancer Type"               "Type of cancer suspected at screening/referral."
* #SHA-SUSPICION-LEVEL        "SHA: Cancer Suspicion Level"              "Clinical level of suspicion for malignancy."
* #SHA-REASON-FOR-SUSPICION   "SHA: Reason for Suspicion"                "Reason underpinning the cancer suspicion."
* #SHA-PRESENTING-SYMPTOMS    "SHA: Presenting Symptoms"                 "Symptoms presented by the patient."
* #SHA-DIAGNOSTIC-WORKUP      "SHA: Planned Diagnostic Workup"           "Diagnostic investigations planned for confirmation."
