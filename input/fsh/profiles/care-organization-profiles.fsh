// ============================================================
// CARE TEAM, PLAN DEFINITION & REQUEST GROUP PROFILES
// ============================================================

// ---- PROFILE 6: OncologyCareTeam ----
Profile: OncologyCareTeam
Parent: CareTeam
Id: nccp-oncology-care-team
Title: "NCCP Oncology Care Team"
Description: "The multidisciplinary oncology care team responsible for the patient's cancer management."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-care-team"
* ^status = #draft

* meta.profile 1..* MS
* identifier 0..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/care-team-status (required)
* category 1..* MS
* category from CareTeamCategoryVS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* period 1..1 MS
* participant 1..* MS
* participant.role 1..* MS
* participant.role from $VS_PRACTITIONER_ROLES (extensible)
* participant.member 1..1 MS
* managingOrganization 1..1 MS
* managingOrganization only Reference(Organization)
* reasonReference 0..* MS

// ---- PROFILE 7: OncologyPlanDefinition ----
Profile: OncologyPlanDefinition
Parent: PlanDefinition
Id: nccp-oncology-plan-definition
Title: "NCCP Oncology Plan Definition"
Description: "Template for an oncology treatment regimen (e.g., AC-T, FOLFOX) used to instantiate care plans."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-plan-definition"
* ^status = #draft

* meta.profile 1..* MS
* url 1..1 MS
* identifier 1..* MS
* version 0..1 MS
* title 1..1 MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/publication-status (required)
* type 1..1 MS
* type from PlanDefinitionTypeVS (required)
* action 1..* MS
* action.title 0..1 MS
* action.timingTiming 0..1 MS
* action.action 0..* MS
* action.action.definitionCanonical 0..1 MS
* extension contains
    TreatmentIntentExtension named treatmentIntent 0..1 MS and
    PlannedCyclesExtension named plannedCycles 1..1 MS and
    CycleLengthDaysExtension named cycleLengthDays 1..1 MS

// ---- PROFILE 8: OncologyRequestGroup ----
Profile: OncologyRequestGroup
Parent: RequestGroup
Id: nccp-oncology-request-group
Title: "NCCP Oncology Request Group"
Description: "Groups all medication requests for a single chemotherapy cycle session."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-request-group"
* ^status = #draft

* meta.profile 1..* MS
* identifier 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/request-intent (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* author 1..1 MS
* author only Reference(Practitioner)
* action 1..* MS
* action.timingPeriod 1..1 MS
* action.resource 0..1 MS
* action.resource only Reference(MedicationRequest)
* extension contains
    CycleNumberExtension named cycleNumber 1..1 MS and
    SessionsPerCycleExtension named sessionsPerCycle 0..1 MS
