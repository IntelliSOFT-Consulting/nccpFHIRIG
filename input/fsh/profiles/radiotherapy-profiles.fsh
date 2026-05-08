// ============================================================
// RADIOTHERAPY PROFILES
// ============================================================

// ---- PROFILE 32: RadiotherapyServiceRequest ----
Profile: RadiotherapyServiceRequest
Parent: ServiceRequest
Id: nccp-radiotherapy-service-request
Title: "NCCP Radiotherapy Service Request"
Description: "Prescription and referral for radiotherapy treatment, including intent, technique and target volume."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-radiotherapy-service-request"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/request-intent (required)
* category 1..* MS
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* encounter only Reference(Encounter)
* requester 1..1 MS
* requester only Reference(Practitioner)
* reasonReference 1..* MS
* reasonReference only Reference(OncologyDiagnosisCondition)
* bodySite 1..* MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* extension contains
    RTIntentExtension named rtIntent 1..1 MS and
    RTTreatmentTechniqueExtension named rtTreatmentTechnique 1..1 MS and
    RTTargetVolumeExtension named rtTargetVolume 1..* MS

// ---- PROFILE 33: RadiotherapyPlanDefinition ----
Profile: RadiotherapyPlanDefinition
Parent: PlanDefinition
Id: nccp-radiotherapy-plan-definition
Title: "NCCP Radiotherapy Plan Definition"
Description: "Template radiotherapy protocol defining total fractions, dose per fraction and technique."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-radiotherapy-plan-definition"
* ^status = #draft

* meta.profile 1..* MS
* url 1..1 MS
* title 1..1 MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/publication-status (required)
* type 1..1 MS
* extension contains
    RTTotalFractionsExtension named rtTotalFractions 1..1 MS and
    RTDosePerFractionExtension named rtDosePerFraction 1..1 MS and
    RTTreatmentTechniqueExtension named rtTreatmentTechnique 1..1 MS

// ---- PROFILE 35: RadiotherapyTreatmentProcedure ----
Profile: RadiotherapyTreatmentProcedure
Parent: Procedure
Id: nccp-radiotherapy-treatment-procedure
Title: "NCCP Radiotherapy Treatment Procedure"
Description: "Records a single radiotherapy fraction delivery event, including dose, beam type and machine."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-radiotherapy-treatment-procedure"
* ^status = #draft

* meta.profile 1..* MS
* identifier 0..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/procedure-status (required)
* category 1..1 MS
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* basedOn 1..1 MS
* basedOn only Reference(CarePlan)
* performed[x] only dateTime
* performedDateTime 1..1 MS
* performer.actor 1..1 MS
* bodySite 1..* MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* extension contains
    RTFractionNumberExtension named rtFractionNumber 1..1 MS and
    RTTotalFractionsExtension named rtTotalFractions 1..1 MS and
    RTDosePerFractionExtension named rtDosePerFraction 1..1 MS and
    RTCumulativeDoseExtension named rtCumulativeDose 1..1 MS and
    RTBeamTypeExtension named rtBeamType 1..1 MS and
    RTTreatmentTechniqueExtension named rtTreatmentTechnique 1..1 MS and
    RTTreatmentMachineExtension named rtTreatmentMachine 0..1 MS

// ---- PROFILE 36: RadiotherapyDoseObservation ----
Profile: RadiotherapyDoseObservation
Parent: Observation
Id: nccp-radiotherapy-dose-observation
Title: "NCCP Radiotherapy Dose Observation"
Description: "Summarises cumulative dose, dose per fraction and total fractions for a radiotherapy course."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-radiotherapy-dose-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* focus 1..1 MS
* focus only Reference(OncologyDiagnosisCondition)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* value[x] only Quantity
* valueQuantity 1..1 MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    dosePerFraction 1..1 MS and
    totalFractions 1..1 MS
* component[dosePerFraction].value[x] only Quantity
* component[dosePerFraction].valueQuantity 1..1 MS
* component[totalFractions].value[x] only integer
* component[totalFractions].valueInteger 1..1 MS
* extension contains
    RTTargetVolumeExtension named rtTargetVolume 1..* MS
