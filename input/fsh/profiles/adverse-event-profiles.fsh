// ============================================================
// ADVERSE EVENT PROFILES
// ============================================================

// ---- PROFILE 25: CTCAEAdverseEventObservation ----
Profile: CTCAEAdverseEventObservation
Parent: Observation
Id: nccp-ctcae-adverse-event-observation
Title: "NCCP CTCAE Adverse Event Observation"
Description: "Records a CTCAE-graded adverse event observation linked to a chemotherapy administration."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-ctcae-adverse-event-observation"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (extensible)
* code 1..1 MS
* code from $VS_CTCAE_TERMS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* performer 1..* MS
* performer only Reference(Practitioner)
* value[x] only integer
* valueInteger 1..1 MS
* bodySite 0..1 MS
* bodySite from $VS_CANCER_PRIMARY_SITE (extensible)
* note 0..* MS
* extension contains
    CTCAEAttributionExtension named ctcaeAttribution 1..1 MS and
    CausativeMedicationAdministrationExtension named causativeMedicationAdministration 0..* MS

// ---- PROFILE 26: OncologyAdverseEvent ----
Profile: OncologyAdverseEvent
Parent: AdverseEvent
Id: nccp-oncology-adverse-event
Title: "NCCP Oncology Adverse Event"
Description: "Captures an oncology adverse event including CTCAE grade, attribution and actions taken."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-adverse-event"
* ^status = #draft

* meta.profile 1..* MS
* identifier 0..1 MS
* actuality 1..1 MS
* actuality from http://hl7.org/fhir/ValueSet/adverse-event-actuality (required)
* category 1..* MS
* category from AdverseEventCategoryVS (required)
* event 1..1 MS
* event from $VS_CTCAE_TERMS (extensible)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* date 1..1 MS
* detected 0..1 MS
* severity 1..1 MS
* outcome 1..1 MS
* outcome from CTCAEOutcomeVS (required)
* recorder 1..1 MS
* recorder only Reference(Practitioner)
* suspectEntity.instance 1..1 MS
* suspectEntity.causality.assessment 0..1 MS
* suspectEntity.causality.assessment from CTCAEAttributionVS (extensible)
* referenceDocument 0..* MS
* extension contains
    CTCAEGradeExtension named ctcaeGrade 1..1 MS and
    CTCAEActionTakenExtension named ctcaeActionTaken 0..* MS
