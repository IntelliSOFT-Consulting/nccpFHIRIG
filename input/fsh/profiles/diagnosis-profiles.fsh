// ============================================================
// DIAGNOSIS PROFILES
// ============================================================

// ---- PROFILE 2: OncologyDiagnosisCondition ----
Profile: OncologyDiagnosisCondition
Parent: Condition
Id: nccp-oncology-diagnosis-condition
Title: "NCCP Oncology Diagnosis Condition"
Description: "Represents a confirmed or suspected cancer diagnosis using ICD-11 post-coordinated coding for the NCCP."
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-oncology-diagnosis-condition"
* ^status = #draft

* meta.profile 1..* MS
* identifier 0..* MS
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* category 1..1 MS
* category from ConditionCategoryVS (required)
* severity 0..1 MS
* severity from ConditionSeverityVS (required)
* code 1..1 MS
* code from $VS_CONDITION_CODES (required)
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    stem 1..1 MS and
    specificAnatomy 0..1 MS and
    laterality 0..1 MS and
    severityAxis 0..1 MS and
    grade 0..1 MS and
    diseaseExtent 0..1 MS and
    histopathology 0..1 MS and
    manifestation 0..1 MS
* code.coding[stem].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/condition-codes-cs"
* code.coding[histopathology].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/morphology-codes-cs"
* code.coding[specificAnatomy].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-anatomy-cs"
* code.coding[laterality].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/laterality-codes-cs"
* code.coding[severityAxis].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/icd11-severity-cs"
* code.coding[grade].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/cancer-grade-cs"
* code.coding[diseaseExtent].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/disease-extent-codes-cs"
* code.coding[manifestation].system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/manifestation-codes-cs"
* code.coding[specificAnatomy] from $VS_ICD11_ANATOMY (required)
* code.coding[laterality] from $VS_LATERALITY_CODES (required)
* code.coding[severityAxis] from $VS_ICD11_SEVERITY (required)
* code.coding[grade] from $VS_CANCER_GRADE (required)
* code.coding[diseaseExtent] from $VS_DISEASE_EXTENT_CODES (required)
* code.coding[histopathology] from MorphologyCodesVS (required)
* code.coding[manifestation] from $VS_MANIFESTATION_CODES (required)
* bodySite 0..* MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* onsetDateTime 1..1 MS
* abatement[x] 0..1 MS
* recordedDate 1..1 MS
* recorder 0..1 MS
* asserter 0..1 MS
* stage 0..1 MS
* stage.summary 0..1 MS
* stage.summary from CancerStageSummaryVS (required)
* stage.assessment 0..* MS
* stage.type 0..1 MS
* stage.type from CancerStageTypeVS (required)
* evidence 0..* MS
* evidence.code 0..* MS
* evidence.code from ManifestationOrSymptomVS (required)
* evidence.detail 0..* MS
* note 0..* MS
* extension contains
    DiagnosisStatusExtension named diagnosisStatus 1..1 MS and
    SuspicionLevelExtension named suspicionLevel 0..1 MS and
    ReasonForSuspicionExtension named reasonForSuspicion 0..* MS and
    PostCoordinatedCodeExtension named postCoordinatedCode 0..1 MS and
    MetastasesSitesExtension named metastasesSites 0..* MS

// ---- PROFILE 3: MorphologyObservation ----
Profile: MorphologyObservation
Parent: Observation
Id: nccp-morphology-observation
Title: "NCCP Morphology Observation"
Description: "Records histopathological morphology findings for an oncology diagnosis, including tissue type and biopsy method."
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-morphology-observation"
* ^status = #draft

* meta.profile 1..* MS
* identifier 0..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* focus 1..* MS
* focus only Reference(OncologyDiagnosisCondition)
* encounter 0..1 MS
* effective[x] 1..1 MS
* performer 1..* MS
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from MorphologyCodesVS (required)
* bodySite 0..1 MS
* bodySite from $VS_CANCER_PRIMARY_SITE (required)
* method 1..1 MS
* method from MorphologyMethodVS (required)
* specimen 0..1 MS
* note 0..* MS
