// ============================================================
// EXAMPLES
// ============================================================

Instance: OncologyCareplanExample
InstanceOf: OncologyCareplan
Title: "Example NCCP Oncology Care Plan (AC-T Chemotherapy)"
Description: "Example AC-T 21-day chemotherapy care plan for a breast cancer patient"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-careplan"
* identifier[0].system = "http://livia.intellisoftkenya.com/regimen-id"
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
* extension[regimenCode].valueCoding.system = "https://ilm-hie.dha.go.ke/ocl/orgs/Livia/ValueSet/treatment-course-codes"
* extension[regimenCode].valueCoding.code = #AC-T

Instance: OncologyDiagnosisConditionExample
InstanceOf: OncologyDiagnosisCondition
Title: "Example NCCP Oncology Diagnosis — Invasive Ductal Carcinoma"
Description: "Example diagnosis of breast cancer using ICD-11 coding"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-diagnosis-condition"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved "Resolved"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = ConditionCategoryCS#ENCOUNTER-DIAGNOSIS "Encounter Diagnosis"
* code.coding[stem].system = "https://icd.who.int/ct11"
* code.coding[stem].code = #2C61.1
* code.coding[stem].display = "Invasive carcinoma of breast"
* code.coding[histopathology] = MorphologyCodesCS#INVASIVE-DUCTAL-CARCINOMA "Invasive Ductal Carcinoma"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* onsetDateTime = "2025-11-01"
* recordedDate = "2025-11-15"
* stage.summary = CancerStageSummaryCS#STAGE-2 "Stage 2"
* stage.type = CancerStageTypeCS#CLINICAL-STAGE-TYPE "Clinical Stage Type"
* extension[diagnosisStatus].valueCode = #CONFIRMED

Instance: TNMStagingObservationExample
InstanceOf: TNMStagingObservation
Title: "Example TNM Staging Observation — Breast Cancer Stage IIB"
Description: "TNM staging observation T2 N1 M0 for a breast cancer patient"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-tnm-staging-observation"
* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #21908-9
* code.coding[0].display = "Stage group.clinical Cancer"
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* effectiveDateTime = "2025-11-15"
* performer[0] = Reference(Practitioner/example-practitioner)
* method = CancerStageTypeCS#CLINICAL-STAGE-TYPE
* component[clinicalT].code.coding[0].system = "http://loinc.org"
* component[clinicalT].code.coding[0].code = #21905-5
* component[clinicalT].valueCodeableConcept = ClinicalTCS#T2 "T2"
* component[clinicalN].code.coding[0].system = "http://loinc.org"
* component[clinicalN].code.coding[0].code = #21906-3
* component[clinicalN].valueCodeableConcept = ClinicalNCS#N1 "N1"
* component[clinicalM].code.coding[0].system = "http://loinc.org"
* component[clinicalM].code.coding[0].code = #21907-1
* component[clinicalM].valueCodeableConcept = ClinicalMCS#M0 "M0"
* component[overallStage].code.coding[0].system = "http://loinc.org"
* component[overallStage].code.coding[0].code = #21908-9
* component[overallStage].valueCodeableConcept = CancerStageSummaryCS#STAGE-2 "Stage 2"

Instance: RECISTResponseExample
InstanceOf: RECISTResponseAssessmentObservation
Title: "Example RECIST Overall Response Assessment — Partial Response"
Description: "RECIST response assessment after 2 cycles of chemotherapy"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-recist-response-assessment-observation"
* status = #final
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #21976-6
* code.coding[0].display = "Response to cancer treatment"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = RECISTResponseCS#PARTIAL-RESPONSE "Partial Response"
* derivedFrom[0] = Reference(Observation/example-target-lesion)
* extension[recistTimepoint].valueCode = #ON-TREATMENT
