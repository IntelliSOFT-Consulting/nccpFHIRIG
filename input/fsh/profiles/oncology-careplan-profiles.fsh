// ============================================================
// CARE PLAN PROFILES
// ============================================================

// ---- PROFILE 1: OncologyCareplan ----
Profile: OncologyCareplan
Parent: CarePlan
Id: nccp-oncology-careplan
Title: "NCCP Oncology Care Plan"
Description: "Represents a structured oncology treatment care plan (chemotherapy, radiotherapy or multimodal) for a patient under the National Cancer Control Programme."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-careplan"
* ^status = #draft

* meta.profile 1..* MS
* identifier 1..* MS
* instantiatesCanonical 0..* MS
* basedOn 0..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/care-plan-intent (required)
* category 1..* MS
* category from CarePlanCategoryVS (required)
* title 1..1 MS
* description 0..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* period 1..1 MS
* author 1..1 MS
* careTeam 1..* MS
* addresses 1..* MS
* addresses only Reference(Condition)
* supportingInfo 0..* MS
* goal 0..* MS
* activity 1..* MS
* activity.reference 0..1 MS
* activity.detail.kind 0..1 MS
* activity.detail.kind from http://hl7.org/fhir/ValueSet/care-plan-activity-kind (required)
* activity.detail.code 0..1 MS
* activity.detail.code from ProcedureCodeVS (extensible)
* activity.detail.status 1..1 MS
* activity.detail.status from http://hl7.org/fhir/ValueSet/care-plan-activity-status (required)
* activity.detail.scheduledTiming 0..1 MS
* activity.detail.reasonCode 0..* MS
* activity.detail.reasonCode from ManifestationOrSymptomVS (extensible)
* activity.detail.reasonReference 0..* MS
* extension contains
    TreatmentIntentExtension named treatmentIntent 1..1 MS and
    PlannedCyclesExtension named plannedCycles 1..1 MS and
    CycleLengthDaysExtension named cycleLengthDays 1..1 MS and
    SessionsPerCycleExtension named sessionsPerCycle 1..1 MS and
    RegimenCodeExtension named regimenCode 1..1 MS

// ---- PROFILE 34: RadiotherapyCarePlan ----
Profile: RadiotherapyCarePlan
Parent: CarePlan
Id: nccp-radiotherapy-care-plan
Title: "NCCP Radiotherapy Care Plan"
Description: "Radiotherapy-specific care plan capturing fractions, dose per fraction, technique and target volume."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-radiotherapy-care-plan"
* ^status = #draft

* meta.profile 1..* MS
* identifier 1..* MS
* instantiatesCanonical 0..1 MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/care-plan-intent (required)
* category 1..* MS
* category from CarePlanCategoryVS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* author 1..1 MS
* author only Reference(Practitioner)
* careTeam 1..* MS
* addresses 1..* MS
* period 1..1 MS
* activity.detail.code 0..1 MS
* extension contains
    RTIntentExtension named rtIntent 1..1 MS and
    RTTotalFractionsExtension named rtTotalFractions 1..1 MS and
    RTDosePerFractionExtension named rtDosePerFraction 1..1 MS and
    RTTreatmentTechniqueExtension named rtTreatmentTechnique 1..1 MS and
    RTTargetVolumeExtension named rtTargetVolume 1..* MS
