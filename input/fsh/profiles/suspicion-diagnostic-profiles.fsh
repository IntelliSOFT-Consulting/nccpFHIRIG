// ============================================================
// SUSPICION & DIAGNOSTIC PROFILES
// ============================================================

// ---- PROFILE 14: CancerSuspicionObservation ----
Profile: CancerSuspicionObservation
Parent: Observation
Id: ke-nccp-cancer-suspicion-observation
Title: "NCCP Cancer Suspicion Observation"
Description: "Records the clinical suspicion of cancer prior to confirmed diagnosis, capturing suspicion level and reasons."
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-cancer-suspicion-observation"
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
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    suspectedCancerType 0..1 MS and
    suspicionLevel 1..1 MS and
    reasonForSuspicion 1..* MS and
    presentingSymptoms 0..1 MS and
    plannedDiagnosticWorkup 0..1 MS
* component[suspectedCancerType].value[x] only string
* component[suspectedCancerType].valueString 1..1 MS
* component[suspicionLevel].value[x] only CodeableConcept
* component[suspicionLevel].valueCodeableConcept 1..1 MS
* component[suspicionLevel].valueCodeableConcept from CancerSuspicionLevelVS (required)
* component[reasonForSuspicion].value[x] only CodeableConcept
* component[reasonForSuspicion].valueCodeableConcept 1..1 MS
* component[reasonForSuspicion].valueCodeableConcept from ReasonForSuspicionVS (required)
* component[presentingSymptoms].value[x] only string
* component[presentingSymptoms].valueString 1..1 MS
* component[plannedDiagnosticWorkup].value[x] only string
* component[plannedDiagnosticWorkup].valueString 1..1 MS

// ---- PROFILE 15: OncologyDiagnosticServiceRequest ----
Profile: OncologyDiagnosticServiceRequest
Parent: ServiceRequest
Id: ke-nccp-oncology-diagnostic-service-request
Title: "NCCP Oncology Diagnostic Service Request"
Description: "Electronic request for diagnostic investigations (lab, imaging, pathology) in the oncology workflow."
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-diagnostic-service-request"
* ^status = #draft

* meta.profile 1..* MS
* identifier 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/request-intent (required)
* category 1..* MS
* category from $VS_SHA_INTERVENTIONS (required)
* priority 1..1 MS
* priority from DiagnosticTestUrgencyVS (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* authoredOn 1..1 MS
* requester 1..1 MS
* requester only Reference(Practitioner)
* reasonCode 1..* MS
* reasonCode from ConditionCodesVS (required)
* reasonReference 0..* MS
* bodySite 0..* MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* note 0..* MS
* instantiatesCanonical 0..* MS
* extension contains
    ProtocolMarkersExtension named protocolMarkers 0..* MS

// ---- PROFILE 16: OncologyDiagnosticReport ----
Profile: OncologyDiagnosticReport
Parent: DiagnosticReport
Id: ke-nccp-oncology-diagnostic-report
Title: "NCCP Oncology Diagnostic Report"
Description: "Diagnostic report for oncology investigations including pathology and radiology."
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-diagnostic-report"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/diagnostic-report-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/diagnostic-service-sections (required)
* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/report-codes (required)
* basedOn 1..* MS
* basedOn only Reference(OncologyDiagnosticServiceRequest)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* effective[x] 0..1 MS
* issued 1..1 MS
* performer 1..* MS
* result 0..* MS
* conclusion 0..1 MS
* conclusionCode 0..* MS
