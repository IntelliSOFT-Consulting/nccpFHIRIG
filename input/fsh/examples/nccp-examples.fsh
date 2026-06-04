// ============================================================
// EXAMPLES
// ============================================================

Instance: OncologyCareplanExample
InstanceOf: OncologyCareplan
Title: "Example NCCP Oncology Care Plan (AC-T Chemotherapy)"
Description: "Example AC-T 21-day chemotherapy care plan for a breast cancer patient"
Usage: #example
* meta.profile = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-oncology-careplan"
* identifier[0].system = "https://nshr-uat.sha.go.ke/fhir/careplan-id"
* identifier[0].value = "REG-2026-00123"
* status = #active
* intent = #plan
* category[0] = CarePlanCategoryCS#CHEMOTHERAPY-PLAN "Chemotherapy Plan"
* title = "AC-T 21 Day Cycle"
* subject = Reference(Patient/example-patient)
* period.start = "2026-01-10"
* author = Reference(Practitioner/example-practitioner)
* careTeam[0] = Reference(CareTeam/example-care-team)
* addresses[0] = Reference(Condition/example-condition)
* activity[0].detail.status = #scheduled
* extension[treatmentIntent].valueCode = #CURATIVE
* extension[plannedCycles].valueInteger = 6
* extension[cycleLengthDays].valueInteger = 21
* extension[sessionsPerCycle].valueInteger = 1
* extension[regimenCode].valueCoding.system = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/treatment-course-codes-cs"
* extension[regimenCode].valueCoding.code = #AC-T

Instance: OncologyDiagnosisConditionExample
InstanceOf: OncologyDiagnosisCondition
Title: "Example NCCP Oncology Diagnosis — Invasive Ductal Carcinoma"
Description: "Example diagnosis of breast cancer using ICD-11 coding"
Usage: #example
* meta.profile = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-oncology-diagnosis-condition"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved "Resolved"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = ConditionCategoryCS#ENCOUNTER-DIAGNOSIS "Encounter Diagnosis"
* code.coding[stem] = ConditionCodesCS#C50 "C50 — Malignant neoplasm of breast"
* code.coding[histopathology] = MorphologyCodesCS#INVASIVE-DUCTAL-CARCINOMA "Invasive Ductal Carcinoma"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* onsetDateTime = "2025-11-01"
* recordedDate = "2025-11-15"
* stage.summary = CancerStageSummaryCS#STAGE-2 "Stage 2"
* stage.type = CancerStageTypeCS#CLINICAL-STAGE-TYPE "Clinical Stage Type"
* extension[diagnosisStatus].valueCode = DiagnosisStatusCS#CONFIRMED-HISTOLOGICAL

Instance: TNMStagingObservationExample
InstanceOf: TNMStagingObservation
Title: "Example TNM Staging Observation — Breast Cancer Stage IIB"
Description: "TNM staging observation T2 N1 M0 for a breast cancer patient"
Usage: #example
* meta.profile = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-tnm-staging-observation"
* status = #final
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* effectiveDateTime = "2025-11-15"
* performer[0] = Reference(Practitioner/example-practitioner)
* method = CancerStageTypeCS#CLINICAL-STAGE-TYPE
* component[clinicalT].code = CancerStageTypeCS#CLINICAL-T
* component[clinicalT].valueCodeableConcept = ClinicalTCS#T2 "T2"
* component[clinicalN].code = CancerStageTypeCS#CLINICAL-N
* component[clinicalN].valueCodeableConcept = ClinicalNCS#N1 "N1"
* component[clinicalM].code = CancerStageTypeCS#CLINICAL-M
* component[clinicalM].valueCodeableConcept = ClinicalMCS#M0 "M0"
* component[overallStage].code = CancerStageTypeCS#OVERALL-STAGE
* component[overallStage].valueCodeableConcept = CancerStageSummaryCS#STAGE-2 "Stage 2"

Instance: RECISTResponseExample
InstanceOf: RECISTResponseAssessmentObservation
Title: "Example RECIST Overall Response Assessment — Partial Response"
Description: "RECIST response assessment after 2 cycles of chemotherapy"
Usage: #example
* meta.profile = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-recist-response-assessment-observation"
* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #21976-6
* code.coding[0].display = "Cancer outcome status"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-03-15"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = RECISTResponseCS#PARTIAL-RESPONSE "Partial Response"
* derivedFrom[0] = Reference(Observation/example-target-lesion)
* extension[recistTimepoint].valueCode = RECISTTimepointCS#WEEK-8
