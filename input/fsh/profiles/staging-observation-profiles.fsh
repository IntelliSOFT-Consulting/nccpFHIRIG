// ============================================================
// STAGING & OBSERVATION PROFILES
// ============================================================

// ---- PROFILE 11: TNMStagingObservation ----
Profile: TNMStagingObservation
Parent: Observation
Id: ke-nccp-tnm-staging-observation
Title: "NCCP TNM Staging Observation"
Description: "Records TNM staging components (T, N, M) and overall stage for an oncology diagnosis."
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-tnm-staging-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* focus 1..1 MS
* focus only Reference(OncologyDiagnosisCondition)
* encounter 0..1 MS
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* performer 1..* MS
* performer only Reference(Practitioner)
* method 1..1 MS
* method from CancerStageTypeVS (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    clinicalT 1..1 MS and
    clinicalN 1..1 MS and
    clinicalM 1..1 MS and
    overallStage 1..1 MS and
    grade 0..1 MS and
    laterality 0..1 MS
* component[clinicalT].code 1..1 MS
* component[clinicalT].code from CancerStageTypeVS (required)
* component[clinicalT].value[x] only CodeableConcept
* component[clinicalT].valueCodeableConcept 1..1 MS
* component[clinicalT].valueCodeableConcept from ClinicalTVS (required)
* component[clinicalN].code 1..1 MS
* component[clinicalN].code from CancerStageTypeVS (required)
* component[clinicalN].value[x] only CodeableConcept
* component[clinicalN].valueCodeableConcept 1..1 MS
* component[clinicalN].valueCodeableConcept from ClinicalNVS (required)
* component[clinicalM].code 1..1 MS
* component[clinicalM].code from CancerStageTypeVS (required)
* component[clinicalM].value[x] only CodeableConcept
* component[clinicalM].valueCodeableConcept 1..1 MS
* component[clinicalM].valueCodeableConcept from ClinicalMVS (required)
* component[overallStage].code 1..1 MS
* component[overallStage].code from CancerStageTypeVS (required)
* component[overallStage].value[x] only CodeableConcept
* component[overallStage].valueCodeableConcept 1..1 MS
* component[overallStage].valueCodeableConcept from CancerStageSummaryVS (required)
* component[grade].code 1..1 MS
* component[grade].code from CancerStageTypeVS (required)
* component[grade].value[x] only CodeableConcept
* component[grade].valueCodeableConcept 1..1 MS
* component[grade].valueCodeableConcept from $VS_CANCER_GRADE (required)
* component[laterality].code 1..1 MS
* component[laterality].code from CancerStageTypeVS (required)
* component[laterality].value[x] only CodeableConcept
* component[laterality].valueCodeableConcept 1..1 MS
* component[laterality].valueCodeableConcept from $VS_LATERALITY_CODES (required)

// ---- PROFILE 12: PerformanceStatusObservation ----
Profile: PerformanceStatusObservation
Parent: Observation
Id: ke-nccp-performance-status-observation
Title: "NCCP ECOG Performance Status Observation"
Description: "Records ECOG performance status at a given encounter to support treatment decisions."
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-performance-status-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* focus 0..* MS
* focus only Reference(OncologyDiagnosisCondition)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* performer 1..* MS
* performer only Reference(Practitioner)
* value[x] only integer or CodeableConcept
* valueInteger 0..1 MS
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from PerformanceStatusECOGVS (required)

// ---- PROFILE 13: BodySurfaceAreaObservation ----
Profile: BodySurfaceAreaObservation
Parent: Observation
Id: ke-nccp-body-surface-area-observation
Title: "NCCP Body Surface Area Observation"
Description: "Records calculated body surface area used for BSA-based chemotherapy dosing."
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-body-surface-area-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only Quantity
* valueQuantity 1..1 MS
* derivedFrom 0..* MS
* method 1..1 MS
* method from BSAFormulaVS (required)
* extension contains
    BSAFormulaExtension named bsaFormula 0..1 MS
