// ============================================================
// RECIST RESPONSE ASSESSMENT PROFILES
// ============================================================

// ---- PROFILE 27: RECISTBaselineObservation ----
Profile: RECISTBaselineObservation
Parent: Observation
Id: nccp-recist-baseline-observation
Title: "NCCP RECIST Baseline Observation"
Description: "Records baseline tumour measurements at the start of therapy for RECIST response assessment."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-recist-baseline-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (extensible)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* focus 1..1 MS
* focus only Reference(OncologyDiagnosisCondition)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only Quantity
* valueQuantity 1..1 MS
* hasMember 0..* MS
* method 0..1 MS
* extension contains
    RECISTTimepointExtension named recistTimepoint 1..1 MS

// ---- PROFILE 28: RECISTTargetLesionObservation ----
Profile: RECISTTargetLesionObservation
Parent: Observation
Id: nccp-recist-target-lesion-observation
Title: "NCCP RECIST Target Lesion Observation"
Description: "Records measurement of a single RECIST target lesion at a specific timepoint."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-recist-target-lesion-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (extensible)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only Quantity
* valueQuantity 1..1 MS
* bodySite 1..1 MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* method 0..1 MS
* extension contains
    RECISTTargetLesionIdExtension named recistTargetLesionId 1..1 MS and
    RECISTTimepointExtension named recistTimepoint 1..1 MS

// ---- PROFILE 29: RECISTNonTargetLesionObservation ----
Profile: RECISTNonTargetLesionObservation
Parent: Observation
Id: nccp-recist-non-target-lesion-observation
Title: "NCCP RECIST Non-Target Lesion Observation"
Description: "Records qualitative assessment of RECIST non-target lesions."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-recist-non-target-lesion-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* bodySite 1..1 MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* extension contains
    RECISTTimepointExtension named recistTimepoint 1..1 MS

// ---- PROFILE 30: RECISTNewLesionObservation ----
Profile: RECISTNewLesionObservation
Parent: Observation
Id: nccp-recist-new-lesion-observation
Title: "NCCP RECIST New Lesion Observation"
Description: "Records presence or absence of new lesions at a RECIST assessment timepoint."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-recist-new-lesion-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only boolean
* valueBoolean 1..1 MS
* bodySite 0..1 MS
* bodySite from $VS_CANCER_PRIMARY_SITE (extensible)

// ---- PROFILE 31: RECISTResponseAssessmentObservation ----
Profile: RECISTResponseAssessmentObservation
Parent: Observation
Id: nccp-recist-response-assessment-observation
Title: "NCCP RECIST Overall Response Assessment Observation"
Description: "Records the overall RECIST tumour response assessment (CR, PR, SD, PD) at a given timepoint."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-recist-response-assessment-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* focus 1..1 MS
* focus only Reference(OncologyDiagnosisCondition)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from RECISTResponseVS (required)
* derivedFrom 1..* MS
* derivedFrom only Reference(Observation)
* extension contains
    RECISTTimepointExtension named recistTimepoint 1..1 MS
