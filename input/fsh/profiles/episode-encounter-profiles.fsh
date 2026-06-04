// ============================================================
// EPISODE OF CARE & ENCOUNTER PROFILES
// ============================================================

// ---- PROFILE 4: OncologyEpisodeOfCare ----
Profile: OncologyEpisodeOfCare
Parent: EpisodeOfCare
Id: nccp-oncology-episode-of-care
Title: "NCCP Oncology Episode of Care"
Description: "Represents the full episode of cancer care for a patient, linking diagnosis, care team and managing organization."
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-oncology-episode-of-care"
* ^status = #draft

* meta.profile 1..* MS
* identifier 1..* MS
* status 1..1 MS
* type 1..1 MS
* type from EpisodeOfCareTypeVS (required)
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(OncologyDiagnosisCondition)
* diagnosis.role 0..1 MS
* diagnosis.role from http://hl7.org/fhir/ValueSet/diagnosis-role (required)
* diagnosis.rank 0..1 MS
* patient 1..1 MS
* patient only Reference(Patient)
* managingOrganization 1..1 MS
* managingOrganization only Reference(Organization)
* period 1..1 MS
* careManager 0..1 MS
* careManager only Reference(PractitionerRole)
* team 0..* MS

// ---- PROFILE 5: OncologyEncounter ----
Profile: OncologyEncounter
Parent: Encounter
Id: nccp-oncology-encounter
Title: "NCCP Oncology Encounter"
Description: "An oncology clinical encounter (treatment session, diagnostic visit, consultation) linked to the oncology episode of care."
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-oncology-encounter"
* ^status = #draft

* meta.profile 1..* MS
* identifier 1..1 MS
* status 1..1 MS
* class 1..1 MS
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (required)
* type 1..* MS
* type from OncologyEncounterTypeVS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* episodeOfCare 1..* MS
* episodeOfCare only Reference(OncologyEpisodeOfCare)
* basedOn 0..* MS
* participant.individual 0..1 MS
* period 1..1 MS
* serviceProvider 1..1 MS
* serviceProvider only Reference(Organization)
* location.location 1..1 MS
* diagnosis.condition 1..1 MS
* reasonReference 0..* MS
* extension contains
    SessionIdExtension named sessionId 0..1 MS and
    SessionNumberExtension named sessionNumber 0..1 MS and
    CycleNumberExtension named cycleNumber 0..1 MS and
    RegimenReferenceExtension named regimenReference 0..1 MS and
    TreatmentEligibilityExtension named treatmentEligibility 0..1 MS and
    TreatmentSettingExtension named treatmentSetting 0..* MS
