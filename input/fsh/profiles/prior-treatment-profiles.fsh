// ============================================================
// PRIOR TREATMENT PROFILES
// ============================================================

// ---- PROFILE 17: PriorSurgeryProcedure ----
Profile: PriorSurgeryProcedure
Parent: Procedure
Id: nccp-prior-surgery-procedure
Title: "NCCP Prior Surgery Procedure"
Description: "Documents prior surgical procedures relevant to the patient's cancer history."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-prior-surgery-procedure"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/procedure-status (required)
* category 1..1 MS
* category from $VS_SHA_INTERVENTIONS (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* performed[x] only dateTime
* performedDateTime 1..1 MS
* reasonReference 0..* MS
* reasonReference only Reference(OncologyDiagnosisCondition)
* note 0..* MS

// ---- PROFILE 18: PriorRadiotherapyProcedure ----
Profile: PriorRadiotherapyProcedure
Parent: Procedure
Id: nccp-prior-radiotherapy-procedure
Title: "NCCP Prior Radiotherapy Procedure"
Description: "Documents prior radiotherapy treatment relevant to the patient's cancer history."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-prior-radiotherapy-procedure"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/procedure-status (required)
* category 1..1 MS
* category from $VS_SHA_INTERVENTIONS (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* performed[x] only Period
* performedPeriod 1..1 MS
* bodySite 0..1 MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* note 0..* MS

// ---- PROFILE 19: PriorBMTProcedure ----
Profile: PriorBMTProcedure
Parent: Procedure
Id: nccp-prior-bmt-procedure
Title: "NCCP Prior Bone Marrow Transplant Procedure"
Description: "Documents prior bone marrow transplant relevant to the patient's haematological cancer history."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-prior-bmt-procedure"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/procedure-status (required)
* category 1..1 MS
* category from $VS_SHA_INTERVENTIONS (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* performed[x] only dateTime
* performedDateTime 1..1 MS
* note 0..* MS
* extension contains
    BMTTypeExtension named bmtType 1..1 MS

// ---- PROFILE 20: PriorSystemicTherapyStatement ----
Profile: PriorSystemicTherapyStatement
Parent: MedicationStatement
Id: nccp-prior-systemic-therapy-statement
Title: "NCCP Prior Systemic Therapy Statement"
Description: "Documents prior systemic therapy (chemotherapy, immunotherapy, hormonal) relevant to the patient's cancer history."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-prior-systemic-therapy-statement"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medication-statement-status (required)
* category 1..1 MS
* category from MedClinicalCategoryVS (required)
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from $VS_GENERIC_PRODUCTS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] only Period
* effectivePeriod 1..1 MS
* reasonReference 0..* MS
* reasonReference only Reference(OncologyDiagnosisCondition)
* note 0..* MS
