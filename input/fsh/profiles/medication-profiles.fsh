// ============================================================
// MEDICATION PROFILES
// ============================================================

// ---- PROFILE 9: ChemotherapyMedicationRequest ----
Profile: ChemotherapyMedicationRequest
Parent: MedicationRequest
Id: nccp-chemotherapy-medication-request
Title: "NCCP Chemotherapy Medication Request"
Description: "Electronic prescription for a chemotherapy agent, including dose, route, cycle timing and BSA-based dosing details."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-chemotherapy-medication-request"
* ^status = #draft

* meta.profile 1..* MS
* identifier 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationrequest-status (required)
* statusReason 0..1 MS
* statusReason from MedicationRequestStatusReasonVS (extensible)
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/medicationrequest-intent (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/medicationrequest-category (extensible)
* priority 0..1 MS
* priority from http://hl7.org/fhir/ValueSet/request-priority (required)
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from $VS_GENERIC_PRODUCTS (extensible)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* authoredOn 1..1 MS
* requester 1..1 MS
* reasonReference 1..* MS
* reasonReference only Reference(OncologyDiagnosisCondition)
* basedOn 1..* MS
* basedOn only Reference(CarePlan)
* dosageInstruction 1..* MS
* dosageInstruction.text 0..1 MS
* dosageInstruction.route 1..1 MS
* dosageInstruction.route from RouteOfAdministrationVS (required)
* dosageInstruction.method 0..1 MS
* dosageInstruction.method from RouteOfAdministrationVS (extensible)
* dosageInstruction.doseAndRate.doseQuantity 1..1 MS
* dosageInstruction.timing.repeat.frequency 0..1 MS
* dosageInstruction.timing.repeat.period 0..1 MS
* dosageInstruction.timing.repeat.periodUnit 1..1 MS
* dosageInstruction.timing.repeat.periodUnit from $VS_UOM (required)
* dispenseRequest.quantity 0..1 MS
* dispenseRequest.expectedSupplyDuration 0..1 MS
* note 0..* MS
* extension contains
    CycleNumberExtension named cycleNumber 0..* MS and
    CycleDayStartExtension named cycleDayStart 1..1 MS and
    CycleDayEndExtension named cycleDayEnd 1..1 MS and
    AppliesFromCycleExtension named appliesFromCycle 0..1 MS and
    AppliesToCycleExtension named appliesToCycle 0..1 MS and
    ClinicalCategoryExtension named clinicalCategory 1..1 MS and
    BSABasedDoseExtension named bsaBasedDose 0..1 MS and
    DosePerUnitExtension named dosePerUnit 0..1 MS and
    TreatmentIntentExtension named treatmentIntent 0..1 MS

// ---- PROFILE 10: OncologyMedicationAdministration ----
Profile: OncologyMedicationAdministration
Parent: MedicationAdministration
Id: nccp-oncology-medication-administration
Title: "NCCP Oncology Medication Administration"
Description: "Records the actual administration of a chemotherapy agent during a treatment session."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-medication-administration"
* ^status = #draft

* meta.profile 1..* MS
* identifier 0..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medication-admin-status (required)
* statusReason 0..* MS
* statusReason from MedicationAdminStatusReasonVS (extensible)
* category 1..1 MS
* category from http://hl7.org/fhir/ValueSet/medication-admin-category (extensible)
* medication[x] only CodeableConcept
* medicationCodeableConcept 1..1 MS
* medicationCodeableConcept from $VS_GENERIC_PRODUCTS (extensible)
* subject 1..1 MS
* subject only Reference(Patient)
* context 1..1 MS
* context only Reference(Encounter)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* performer.actor 1..1 MS
* request 1..1 MS
* request only Reference(MedicationRequest)
* reasonReference 0..* MS
* reasonReference only Reference(OncologyDiagnosisCondition)
* dosage.dose 1..1 MS
* dosage.rate[x] 0..1 MS
* dosage.route 1..1 MS
* dosage.route from $VS_MED_ADMIN_ROUTE (required)
* note 0..* MS
* extension contains
    CycleNumberExtension named cycleNumber 1..1 MS and
    SessionIdExtension named sessionId 1..1 MS and
    SessionNumberExtension named sessionNumber 0..1 MS
