// ============================================================
// INVALID PROFILE EXAMPLES — ValueSet binding violations only
// Every instance satisfies all cardinality constraints so the
// IG Publisher (genonce) can render it.  The sole violation in
// each instance is a code drawn from the wrong system for a
// required ValueSet binding.  The IG Publisher validator will
// flag exactly the binding errors described in each Description.
//
// Title format  : "[ProfileName] – INVALID: [element] '[code]' not in [ValueSet]"
// Description   : "INVALID [ProfileName]. Violations: [element] '[code]' from
//                  [system] is not in [ValueSet] (required binding);
//                  valid values: A B C."
// ============================================================

// ---- Profile 1: OncologyCareplan ----
Instance: InvalidOncologyCareplanExample
InstanceOf: OncologyCareplan
Title: "OncologyCareplan – INVALID: regimenCode 'WRONG-REGIMEN' not in TreatmentCourseCodesVS"
Description: "INVALID OncologyCareplan. Violations: extension:regimenCode valueCoding 'WRONG-REGIMEN' from http://example.com/wrong-system is not in TreatmentCourseCodesVS (required binding); valid values: AC AC-T AC-TH CMF FAC FEC TC FOLFOX FOLFIRI CHOP R-CHOP ABVD BEP and others from TreatmentCourseCodesCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-careplan"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/careplan-id"
* identifier[0].value = "INVALID-CP-001"
* status = #active
* intent = #plan
* category[0] = CarePlanCategoryCS#CHEMOTHERAPY-PLAN "Chemotherapy Plan"
* title = "AC-T Plan — wrong regimenCode system"
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
* extension[regimenCode].valueCoding = http://example.com/wrong-system#WRONG-REGIMEN "Wrong regimen code"

// ---- Profile 34: RadiotherapyCarePlan ----
Instance: InvalidRadiotherapyCarePlanExample
InstanceOf: RadiotherapyCarePlan
Title: "RadiotherapyCarePlan – INVALID: rtIntent 'WRONG-INTENT' not in RTIntentVS"
Description: "INVALID RadiotherapyCarePlan. Violations: extension:rtIntent valueCode 'WRONG-INTENT' from http://example.com/wrong-system is not in RTIntentVS (required binding); valid values: PALLIATIVE ADJUVANT NEO-ADJUVANT PROPHYLACTIC SALVAGE STEREOTACTIC RADIOSURGERY CONCURRENT-CRT."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-care-plan"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/rt-careplan-id"
* identifier[0].value = "INVALID-RT-CP-001"
* status = #active
* intent = #plan
* category[0] = CarePlanCategoryCS#RADIOTHERAPY-PLAN "Radiotherapy Plan"
* subject = Reference(Patient/example-patient)
* author = Reference(Practitioner/example-practitioner)
* careTeam[0] = Reference(CareTeam/example-care-team)
* addresses[0] = Reference(Condition/example-condition)
* period.start = "2026-02-01"
* extension[rtIntent].valueCode = http://example.com/wrong-system#WRONG-INTENT
* extension[rtTotalFractions].valueInteger = 25
* extension[rtDosePerFraction].valueQuantity.value = 2.0
* extension[rtDosePerFraction].valueQuantity.unit = "Gy"
* extension[rtDosePerFraction].valueQuantity.system = "http://unitsofmeasure.org"
* extension[rtDosePerFraction].valueQuantity.code = #Gy
* extension[rtTreatmentTechnique].valueCode = #THREE-D-CRT
* extension[rtTargetVolume][0].valueCode = #PTV

// ---- Profile 2: OncologyDiagnosisCondition ----
Instance: InvalidOncologyDiagnosisConditionExample
InstanceOf: OncologyDiagnosisCondition
Title: "OncologyDiagnosisCondition – INVALID: diagnosisStatus 'WRONG-STATUS' not in DiagnosisStatusVS"
Description: "INVALID OncologyDiagnosisCondition. Violations: extension:diagnosisStatus valueCode 'WRONG-STATUS' from http://example.com/wrong-system is not in DiagnosisStatusVS (required binding); valid values: CONFIRMED-HISTOLOGICAL CONFIRMED-CYTOLOGICAL CONFIRMED-CLINICAL CONFIRMED-MOLECULAR SUSPECTED RULED-OUT DIFFERENTIAL INCIDENTAL."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-diagnosis-condition"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = ConditionCategoryCS#ENCOUNTER-DIAGNOSIS "Encounter Diagnosis"
* code.coding[stem].system = "https://icd.who.int/ct11"
* code.coding[stem].code = #2C61.1
* code.coding[stem].display = "Invasive carcinoma of breast"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* onsetDateTime = "2025-11-01"
* recordedDate = "2025-11-15"
* extension[diagnosisStatus].valueCode = http://example.com/wrong-system#WRONG-STATUS

// ---- Profile 3: MorphologyObservation ----
Instance: InvalidMorphologyObservationExample
InstanceOf: MorphologyObservation
Title: "MorphologyObservation – INVALID: code 'NOT-A-LOINC' not in observation-codes ValueSet"
Description: "INVALID MorphologyObservation. Violations: code 'NOT-A-LOINC' from http://example.com/wrong-system is not in observation-codes (http://hl7.org/fhir/ValueSet/observation-codes, required binding); valid: use a LOINC code, e.g., 33752-8 (Histology study) or 22634-0 (Pathology report)."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-morphology-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://example.com/wrong-system#NOT-A-LOINC "Invalid — not in observation-codes VS"
* subject = Reference(Patient/example-patient)
* focus[0] = Reference(Condition/example-condition)
* effectiveDateTime = "2025-11-10"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = MorphologyCodesCS#INVASIVE-DUCTAL-CARCINOMA "Invasive Ductal Carcinoma"
* method = MorphologyMethodCS#BIOPSY "Biopsy"

// ---- Profile 4: OncologyEpisodeOfCare ----
Instance: InvalidOncologyEpisodeOfCareExample
InstanceOf: OncologyEpisodeOfCare
Title: "OncologyEpisodeOfCare – INVALID: status 'NOT-VALID' not in EpisodeOfCareStatusVS"
Description: "INVALID OncologyEpisodeOfCare. Violations: status 'NOT-VALID' from http://example.com/wrong-system is not in EpisodeOfCareStatusVS (required binding); valid values: planned waitlist active onhold finished cancelled entered-in-error."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-episode-of-care"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/episode-id"
* identifier[0].value = "INVALID-EOC-001"
* status = http://example.com/wrong-system#NOT-VALID "Not a valid EpisodeOfCare status"
* type[0] = EpisodeOfCareTypeCS#CANCER-CARE-PROGRAM "Cancer Care Program"
* diagnosis[0].condition = Reference(Condition/example-condition)
* patient = Reference(Patient/example-patient)
* managingOrganization = Reference(Organization/example-organization)
* period.start = "2025-11-01"

// ---- Profile 5: OncologyEncounter ----
Instance: InvalidOncologyEncounterExample
InstanceOf: OncologyEncounter
Title: "OncologyEncounter – INVALID: type 'WRONG-TYPE' not in OncologyEncounterTypeVS"
Description: "INVALID OncologyEncounter. Violations: type 'WRONG-TYPE' from http://example.com/wrong-system is not in OncologyEncounterTypeVS (required binding); valid values: TREATMENT-ENCOUNTER DIAGNOSTIC-ENCOUNTER RESTAGING-ENCOUNTER FOLLOW-UP-ENCOUNTER CONSULTATION-ENCOUNTER."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-encounter"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/encounter-id"
* identifier[0].value = "INVALID-ENC-001"
* status = EncounterStatusCS#in-progress "In Progress"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type[0] = http://example.com/wrong-system#WRONG-TYPE "Wrong encounter type"
* subject = Reference(Patient/example-patient)
* episodeOfCare[0] = Reference(EpisodeOfCare/example-episode)
* period.start = "2026-01-15T09:00:00Z"
* period.end = "2026-01-15T13:00:00Z"
* serviceProvider = Reference(Organization/example-organization)
* location[0].location = Reference(Location/oncology-day-unit)
* diagnosis[0].condition = Reference(Condition/example-condition)

// ---- Profile 6: OncologyCareTeam ----
Instance: InvalidOncologyCareTeamExample
InstanceOf: OncologyCareTeam
Title: "OncologyCareTeam – INVALID: category 'WRONG-CATEGORY' not in CareTeamCategoryVS"
Description: "INVALID OncologyCareTeam. Violations: category 'WRONG-CATEGORY' from http://example.com/wrong-system is not in CareTeamCategoryVS (required binding); valid values: ENCOUNTER-CARE-TEAM EPISODE-CARE-TEAM LONGITUDINAL-CARE-TEAM MULTIDISCIPLINARY-TUMOR-BOARD."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-care-team"
* status = #active
* category[0] = http://example.com/wrong-system#WRONG-CATEGORY "Wrong care team category"
* subject = Reference(Patient/example-patient)
* period.start = "2025-11-01"
* participant[0].role[0] = PractitionerRolesCS#MEDICAL-ONCOLOGIST "Medical Oncologist"
* participant[0].member = Reference(Practitioner/example-practitioner)
* managingOrganization = Reference(Organization/example-organization)

// ---- Profile 7: OncologyPlanDefinition ----
Instance: InvalidOncologyPlanDefinitionExample
InstanceOf: OncologyPlanDefinition
Title: "OncologyPlanDefinition – INVALID: type 'WRONG-TYPE' not in PlanDefinitionTypeVS"
Description: "INVALID OncologyPlanDefinition. Violations: type 'WRONG-TYPE' from http://example.com/wrong-system is not in PlanDefinitionTypeVS (required binding); valid values: REGIMEN-TEMPLATE RADIOTHERAPY-PROTOCOL INVESTIGATION-PROTOCOL."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-plan-definition"
* url = "https://fhir.dha.go.ke/nccp/PlanDefinition/invalid-regimen"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/regimen-id"
* identifier[0].value = "INVALID-REG-001"
* title = "Invalid Regimen — wrong type code"
* status = #active
* type = http://example.com/wrong-system#WRONG-TYPE "Wrong plan definition type"
* action[0].title = "Drug A"
* extension[plannedCycles].valueInteger = 6
* extension[cycleLengthDays].valueInteger = 21

// ---- Profile 8: OncologyRequestGroup ----
Instance: InvalidOncologyRequestGroupExample
InstanceOf: OncologyRequestGroup
Title: "OncologyRequestGroup – INVALID: intent 'WRONG-INTENT' not in request-intent ValueSet"
Description: "INVALID OncologyRequestGroup. Violations: intent 'WRONG-INTENT' from http://example.com/wrong-system is not in request-intent (http://hl7.org/fhir/ValueSet/request-intent, required binding); valid values: proposal plan directive order original-order reflex-order filler-order instance-order option."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-request-group"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/request-group-id"
* identifier[0].value = "INVALID-RG-001"
* status = #active
* intent = http://example.com/wrong-system#WRONG-INTENT "Wrong intent code"
* subject = Reference(Patient/example-patient)
* author = Reference(Practitioner/example-practitioner)
* action[0].timingPeriod.start = "2026-01-15"
* action[0].timingPeriod.end = "2026-01-15"
* action[0].resource = Reference(MedicationRequest/example-med-request)
* extension[cycleNumber].valueInteger = 1

// ---- Profile 9: ChemotherapyMedicationRequest ----
Instance: InvalidChemotherapyMedicationRequestExample
InstanceOf: ChemotherapyMedicationRequest
Title: "ChemotherapyMedicationRequest – INVALID: clinicalCategory 'WRONG-CATEGORY' not in MedClinicalCategoryVS"
Description: "INVALID ChemotherapyMedicationRequest. Violations: extension:clinicalCategory valueCode 'WRONG-CATEGORY' from http://example.com/wrong-system is not in MedClinicalCategoryVS (required binding); valid values: CHEMOTHERAPY IMMUNOTHERAPY TARGETED-THERAPY HORMONAL-THERAPY SUPPORTIVE-CARE ANTI-EMETIC GROWTH-FACTOR CORTICOSTEROID BISPHOSPHONATE ANALGESIC."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-chemotherapy-medication-request"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/med-request-id"
* identifier[0].value = "INVALID-MR-001"
* status = #active
* intent = #order
* category[0] = http://terminology.hl7.org/CodeSystem/medicationrequest-category#inpatient "Inpatient"
* medicationCodeableConcept = GenericProductsCS#DOXORUBICIN "Doxorubicin"
* subject = Reference(Patient/example-patient)
* authoredOn = "2026-01-10"
* requester = Reference(Practitioner/example-practitioner)
* reasonReference[0] = Reference(Condition/example-condition)
* basedOn[0] = Reference(CarePlan/example-careplan)
* dosageInstruction[0].route = RouteOfAdministrationCS#RT10036 "Intravenous"
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 60
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg/m2"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "https://fhir.dha.go.ke/nccp/CodeSystem/unit-of-measure-cs"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #MG-PER-M2
* extension[cycleDayStart].valueInteger = 1
* extension[cycleDayEnd].valueInteger = 1
* extension[clinicalCategory].valueCode = http://example.com/wrong-system#WRONG-CATEGORY

// ---- Profile 10: OncologyMedicationAdministration ----
Instance: InvalidOncologyMedicationAdministrationExample
InstanceOf: OncologyMedicationAdministration
Title: "OncologyMedicationAdministration – INVALID: dosage.route 'WRONG-ROUTE' not in MedAdminRouteVS"
Description: "INVALID OncologyMedicationAdministration. Violations: dosage.route 'WRONG-ROUTE' from http://example.com/wrong-system is not in MedAdminRouteVS (required binding); valid values: IV-BOLUS IV-PUSH IV-INFUSION-SHORT IV-INFUSION-LONG ORAL SUBCUTANEOUS INTRAMUSCULAR INTRATHECAL and others from MedAdminRouteCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-medication-administration"
* status = #completed
* category = http://terminology.hl7.org/CodeSystem/medication-admin-category#inpatient "Inpatient"
* medicationCodeableConcept = GenericProductsCS#CYCLOPHOSPHAMIDE "Cyclophosphamide"
* subject = Reference(Patient/example-patient)
* context = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-01-15T11:00:00Z"
* performer[0].actor = Reference(Practitioner/example-practitioner)
* request = Reference(MedicationRequest/example-med-request)
* dosage.dose.value = 1050
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mg
* dosage.route = http://example.com/wrong-system#WRONG-ROUTE "Wrong route code"
* extension[cycleNumber].valueInteger = 1
* extension[sessionId].valueString = "SES-00231"

// ---- Profile 11: TNMStagingObservation ----
Instance: InvalidTNMStagingObservationExample
InstanceOf: TNMStagingObservation
Title: "TNMStagingObservation – INVALID: component[clinicalT] value 'T-WRONG' not in ClinicalTVS"
Description: "INVALID TNMStagingObservation. Violations: component:clinicalT valueCodeableConcept 'T-WRONG' from http://example.com/wrong-system is not in ClinicalTVS (required binding); valid values: TX T0 TIS T1 T2 T3 T4."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-tnm-staging-observation"
* status = #final
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* effectiveDateTime = "2025-11-15"
* performer[0] = Reference(Practitioner/example-practitioner)
* method = CancerStageTypeCS#CLINICAL-STAGE-TYPE "Clinical Stage Type"
* component[clinicalT].code = CancerStageTypeCS#CLINICAL-STAGE-TYPE "Clinical Stage Type"
* component[clinicalT].valueCodeableConcept = http://example.com/wrong-system#T-WRONG "Wrong T code"
* component[clinicalN].code = CancerStageTypeCS#CLINICAL-STAGE-TYPE "Clinical Stage Type"
* component[clinicalN].valueCodeableConcept = ClinicalNCS#N1 "N1"
* component[clinicalM].code = CancerStageTypeCS#CLINICAL-STAGE-TYPE "Clinical Stage Type"
* component[clinicalM].valueCodeableConcept = ClinicalMCS#M0 "M0"
* component[overallStage].code = CancerStageTypeCS#CLINICAL-STAGE-TYPE "Clinical Stage Type"
* component[overallStage].valueCodeableConcept = CancerStageSummaryCS#STAGE-2 "Stage 2"

// ---- Profile 12: PerformanceStatusObservation ----
Instance: InvalidPerformanceStatusObservationExample
InstanceOf: PerformanceStatusObservation
Title: "PerformanceStatusObservation – INVALID: valueCodeableConcept 'ECOG-WRONG' not in PerformanceStatusECOGVS"
Description: "INVALID PerformanceStatusObservation. Violations: valueCodeableConcept 'ECOG-WRONG' from http://example.com/wrong-system is not in PerformanceStatusECOGVS (required binding); valid values: ECOG-0 ECOG-1 ECOG-2 ECOG-3 ECOG-4."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-performance-status-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-01-10"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = http://example.com/wrong-system#ECOG-WRONG "Wrong ECOG code"

// ---- Profile 13: BodySurfaceAreaObservation ----
Instance: InvalidBodySurfaceAreaObservationExample
InstanceOf: BodySurfaceAreaObservation
Title: "BodySurfaceAreaObservation – INVALID: method 'WRONG-FORMULA' not in BSAFormulaVS"
Description: "INVALID BodySurfaceAreaObservation. Violations: method 'WRONG-FORMULA' from http://example.com/wrong-system is not in BSAFormulaVS (required binding); valid values: MOSTELLER DUBOIS BSA-OTHER."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-body-surface-area-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-01-10"
* valueQuantity.value = 1.75
* valueQuantity.unit = "m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #m2
* method = http://example.com/wrong-system#WRONG-FORMULA "Wrong BSA formula"

// ---- Profile 14: CancerSuspicionObservation ----
Instance: InvalidCancerSuspicionObservationExample
InstanceOf: CancerSuspicionObservation
Title: "CancerSuspicionObservation – INVALID: suspicionLevel 'WRONG-LEVEL' not in CancerSuspicionLevelVS"
Description: "INVALID CancerSuspicionObservation. Violations: component:suspicionLevel valueCodeableConcept 'WRONG-LEVEL' from http://example.com/wrong-system is not in CancerSuspicionLevelVS (required binding); valid values: SUSPICION-LOW SUSPICION-MODERATE SUSPICION-HIGH."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-cancer-suspicion-observation"
* status = #preliminary
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2025-09-15"
* component[suspectedCancerType].code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* component[suspectedCancerType].valueString = "Cervical Cancer"
* component[suspicionLevel].code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* component[suspicionLevel].valueCodeableConcept = http://example.com/wrong-system#WRONG-LEVEL "Wrong suspicion level"
* component[reasonForSuspicion][0].code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* component[reasonForSuspicion][0].valueCodeableConcept = ReasonForSuspicionCS#CLINICAL-FINDING "Clinical Finding"

// ---- Profile 15: OncologyDiagnosticServiceRequest ----
Instance: InvalidOncologyDiagnosticServiceRequestExample
InstanceOf: OncologyDiagnosticServiceRequest
Title: "OncologyDiagnosticServiceRequest – INVALID: priority 'NOT-IN-VS' not in DiagnosticTestUrgencyVS"
Description: "INVALID OncologyDiagnosticServiceRequest. Violations: priority 'NOT-IN-VS' from http://example.com/wrong-system is not in DiagnosticTestUrgencyVS (required binding); valid values: STAT URGENT ROUTINE."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-diagnostic-service-request"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/service-request-id"
* identifier[0].value = "INVALID-SR-001"
* status = #active
* intent = #order
* category[0] = SHAInterventionsCS#SHA-BIOPSY "SHA: Diagnostic Biopsy"
* priority = http://example.com/wrong-system#NOT-IN-VS "Wrong urgency code"
* code = SHAInterventionsCS#SHA-BIOPSY "SHA: Diagnostic Biopsy"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* authoredOn = "2025-09-15"
* requester = Reference(Practitioner/example-practitioner)
* reasonCode[0] = ConditionCodesCS#C53 "C53 — Malignant neoplasm of cervix uteri"

// ---- Profile 16: OncologyDiagnosticReport ----
Instance: InvalidOncologyDiagnosticReportExample
InstanceOf: OncologyDiagnosticReport
Title: "OncologyDiagnosticReport – INVALID: category 'WRONG-CAT' not in diagnostic-service-sections"
Description: "INVALID OncologyDiagnosticReport. Violations: category 'WRONG-CAT' from http://example.com/wrong-system is not in diagnostic-service-sections (http://hl7.org/fhir/ValueSet/diagnostic-service-sections, required binding); valid values include: PAT (Pathology) RAD (Radiology) LAB (Laboratory) and others from v2-0074."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-diagnostic-report"
* status = #final
* category[0] = http://example.com/wrong-system#WRONG-CAT "Wrong diagnostic service section"
* code = http://loinc.org#60568-3 "Pathology Synoptic report"
* basedOn[0] = Reference(ServiceRequest/example-diagnostic-request)
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* issued = "2025-09-22T14:30:00Z"
* performer[0] = Reference(Practitioner/example-practitioner)

// ---- Profile 17: PriorSurgeryProcedure ----
Instance: InvalidPriorSurgeryProcedureExample
InstanceOf: PriorSurgeryProcedure
Title: "PriorSurgeryProcedure – INVALID: code 'WRONG-CODE' not in SHAInterventionsVS"
Description: "INVALID PriorSurgeryProcedure. Violations: code 'WRONG-CODE' from http://example.com/wrong-system is not in SHAInterventionsVS (required binding); valid values include: SHA-SURGERY-CURATIVE SHA-SURGERY-PALLIATIVE and others from SHAInterventionsCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-surgery-procedure"
* status = #completed
* category = SHAInterventionsCS#SHA-SURGERY-CURATIVE "SHA: Surgery — Curative"
* code = http://example.com/wrong-system#WRONG-CODE "Wrong SHA intervention code"
* subject = Reference(Patient/example-patient)
* performedDateTime = "2025-10-05"

// ---- Profile 18: PriorRadiotherapyProcedure ----
Instance: InvalidPriorRadiotherapyProcedureExample
InstanceOf: PriorRadiotherapyProcedure
Title: "PriorRadiotherapyProcedure – INVALID: bodySite 'WRONG-SITE' not in CancerPrimarySiteVS"
Description: "INVALID PriorRadiotherapyProcedure. Violations: bodySite 'WRONG-SITE' from http://example.com/wrong-system is not in CancerPrimarySiteVS (required binding); valid values: BREAST CERVIX-UTERI PROSTATE LUNG COLON LIVER and others from CancerPrimarySiteCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-radiotherapy-procedure"
* status = #completed
* category = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* code = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* subject = Reference(Patient/example-patient)
* performedPeriod.start = "2023-03-01"
* performedPeriod.end = "2023-04-15"
* bodySite[0] = http://example.com/wrong-system#WRONG-SITE "Wrong primary cancer site"

// ---- Profile 19: PriorBMTProcedure ----
Instance: InvalidPriorBMTProcedureExample
InstanceOf: PriorBMTProcedure
Title: "PriorBMTProcedure – INVALID: bmtType 'WRONG-BMT' not in BMTTypeVS"
Description: "INVALID PriorBMTProcedure. Violations: extension:bmtType valueCode 'WRONG-BMT' from http://example.com/wrong-system is not in BMTTypeVS (required binding); valid values: AUTOLOGOUS ALLOGENEIC-MATCHED-SIBLING ALLOGENEIC-MATCHED-UNRELATED HAPLOIDENTICAL CORD-BLOOD TANDEM."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-bmt-procedure"
* status = #completed
* category = SHAInterventionsCS#SHA-BMT-AUTOLOGOUS "SHA: BMT — Autologous"
* code = SHAInterventionsCS#SHA-BMT-AUTOLOGOUS "SHA: BMT — Autologous"
* subject = Reference(Patient/example-patient)
* performedDateTime = "2022-08-20"
* extension[bmtType].valueCode = http://example.com/wrong-system#WRONG-BMT

// ---- Profile 20: PriorSystemicTherapyStatement ----
Instance: InvalidPriorSystemicTherapyStatementExample
InstanceOf: PriorSystemicTherapyStatement
Title: "PriorSystemicTherapyStatement – INVALID: medication 'TAMOXIFEN-XX' not in GenericProductsVS"
Description: "INVALID PriorSystemicTherapyStatement. Violations: medicationCodeableConcept 'TAMOXIFEN-XX' from http://example.com/wrong-drugs is not in GenericProductsVS (required binding); medication must come from the Kenya formulary. Valid: GenericProductsCS#TAMOXIFEN GenericProductsCS#LETROZOLE GenericProductsCS#ANASTROZOLE and others from GenericProductsCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-systemic-therapy-statement"
* status = #completed
* category = MedClinicalCategoryCS#HORMONAL-THERAPY "Hormonal Therapy"
* medicationCodeableConcept = http://example.com/wrong-drugs#TAMOXIFEN-XX "Wrong drug code"
* subject = Reference(Patient/example-patient)
* effectivePeriod.start = "2018-03-01"
* effectivePeriod.end = "2023-02-28"

// ---- Profile 21: OncologyReferralServiceRequest ----
Instance: InvalidOncologyReferralServiceRequestExample
InstanceOf: OncologyReferralServiceRequest
Title: "OncologyReferralServiceRequest – INVALID: referralSource 'WRONG-SOURCE' not in ReferralSourceVS"
Description: "INVALID OncologyReferralServiceRequest. Violations: extension:referralSource valueCode 'WRONG-SOURCE' from http://example.com/wrong-system is not in ReferralSourceVS (required binding); valid values: SELF COMMUNITY-HEALTH-WORKER PRIMARY-HEALTH-FACILITY COUNTY-HOSPITAL NATIONAL-REFERRAL-HOSPITAL PRIVATE-FACILITY NGO SCREENING-PROGRAMME OTHER."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-referral-service-request"
* status = #active
* intent = #order
* category = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* subject = Reference(Patient/example-patient)
* reasonCode[0] = ConditionCodesCS#C50 "C50 — Malignant neoplasm of breast"
* extension[referralSource].valueCode = http://example.com/wrong-system#WRONG-SOURCE

// ---- Profile 22: OncologyCoverageEligibilityRequest ----
Instance: InvalidOncologyCoverageEligibilityRequestExample
InstanceOf: OncologyCoverageEligibilityRequest
Title: "OncologyCoverageEligibilityRequest – INVALID: item.productOrService 'WRONG-INT' not in SHAInterventionsVS"
Description: "INVALID OncologyCoverageEligibilityRequest. Violations: item.productOrService 'WRONG-INT' from http://example.com/wrong-system is not in SHAInterventionsVS (required binding); valid values: SHA-CHEMO-NEO-ADJUVANT SHA-CHEMO-PALLIATIVE SHA-RT-RADICAL SHA-RT-ADJUVANT SHA-SURGERY-CURATIVE and others from SHAInterventionsCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-coverage-eligibility-request"
* status = #active
* purpose[0] = #auth-requirements
* patient = Reference(Patient/example-patient)
* created = "2026-01-08"
* provider = Reference(Organization/example-organization)
* insurer = Reference(Organization/sha-kenya)
* insurance[0].coverage = Reference(Coverage/example-coverage)
* item[0].productOrService = http://example.com/wrong-system#WRONG-INT "Wrong SHA intervention code"

// ---- Profile 23: OncologyClaim ----
Instance: InvalidOncologyClaimExample
InstanceOf: OncologyClaim
Title: "OncologyClaim – INVALID: carcinomaStaging 'WRONG-STAGE' not in CancerStageSummaryVS"
Description: "INVALID OncologyClaim. Violations: extension:carcinomaStaging valueCode 'WRONG-STAGE' from http://example.com/wrong-system is not in CancerStageSummaryVS (required binding); SHA uses this to determine benefit tier. Valid values: STAGE-1 STAGE-2 STAGE-3 STAGE-4."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-claim"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #preauthorization
* patient = Reference(Patient/example-patient)
* created = "2026-01-15"
* provider = Reference(Organization/example-organization)
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/example-coverage)
* item[0].sequence = 1
* item[0].productOrService = SHAInterventionsCS#SHA-CHEMO-NEO-ADJUVANT "SHA: Chemotherapy — Neo-adjuvant"
* item[0].unitPrice.value = 15000
* item[0].unitPrice.currency = #KES
* item[0].quantity.value = 1
* item[0].detail[0].sequence = 1
* item[0].detail[0].productOrService = SHAInterventionsCS#SHA-CHEMO-NEO-ADJUVANT "SHA: Chemotherapy — Neo-adjuvant"
* item[0].detail[0].quantity.value = 1
* extension[carcinomaStaging].valueCode = http://example.com/wrong-system#WRONG-STAGE
* extension[treatmentSetting][0].valueCode = #DAY-CASE
* extension[sessionExpectedDate].valueDate = "2026-01-15"
* extension[sessionsRequired].valueInteger = 8
* extension[costPerSession].valueMoney.value = 15000
* extension[costPerSession].valueMoney.currency = #KES
* extension[regimenReference].valueReference = Reference(CarePlan/example-careplan)

// ---- Profile 24: OncologyClaimResponse ----
Instance: InvalidOncologyClaimResponseExample
InstanceOf: OncologyClaimResponse
Title: "OncologyClaimResponse – INVALID: outcome 'WRONG-OUTCOME' not in remittance-outcome ValueSet"
Description: "INVALID OncologyClaimResponse. Violations: outcome 'WRONG-OUTCOME' from http://example.com/wrong-system is not in remittance-outcome (http://hl7.org/fhir/ValueSet/remittance-outcome, required binding); valid values: queued partial complete error."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-claim-response"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #preauthorization
* patient = Reference(Patient/example-patient)
* created = "2026-01-18"
* insurer = Reference(Organization/sha-kenya)
* request = Reference(Claim/example-oncology-claim)
* outcome = http://example.com/wrong-system#WRONG-OUTCOME "Wrong outcome code"
* extension[sessionsCovered].valueInteger = 8
* extension[sessionsUsed].valueInteger = 0

// ---- Profile 25: CTCAEAdverseEventObservation ----
Instance: InvalidCTCAEAdverseEventObservationExample
InstanceOf: CTCAEAdverseEventObservation
Title: "CTCAEAdverseEventObservation – INVALID: ctcaeAttribution 'WRONG-ATTR' not in CTCAEAttributionVS"
Description: "INVALID CTCAEAdverseEventObservation. Violations: extension:ctcaeAttribution valueCode 'WRONG-ATTR' from http://example.com/wrong-system is not in CTCAEAttributionVS (required binding); valid values: UNRELATED UNLIKELY POSSIBLE PROBABLE DEFINITE."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-ctcae-adverse-event-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = CTCAETermsCS#VOMITING "Vomiting"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-01-18"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueInteger = 2
* extension[ctcaeAttribution].valueCode = http://example.com/wrong-system#WRONG-ATTR

// ---- Profile 26: OncologyAdverseEvent ----
Instance: InvalidOncologyAdverseEventExample
InstanceOf: OncologyAdverseEvent
Title: "OncologyAdverseEvent – INVALID: outcome 'WRONG-OUTCOME' not in CTCAEOutcomeVS"
Description: "INVALID OncologyAdverseEvent. Violations: outcome 'WRONG-OUTCOME' from http://example.com/wrong-system is not in CTCAEOutcomeVS (required binding); valid values: RECOVERED RECOVERING NOT-RECOVERED RECOVERED-WITH-SEQUELAE FATAL OUTCOME-UNKNOWN."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-adverse-event"
* actuality = #actual
* category[0] = AdverseEventCategoryCS#MEDICATION-MISHAP "Medication Mishap"
* event = CTCAETermsCS#NEUTROPENIA "Neutropenia"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* date = "2026-01-25"
* severity = http://terminology.hl7.org/CodeSystem/adverse-event-severity#severe "Severe"
* outcome = http://example.com/wrong-system#WRONG-OUTCOME "Wrong outcome code"
* recorder = Reference(Practitioner/example-practitioner)
* suspectEntity[0].instance = Reference(MedicationAdministration/example-med-admin)
* extension[ctcaeGrade].valueInteger = 3

// ---- Profile 27: RECISTBaselineObservation ----
Instance: InvalidRECISTBaselineObservationExample
InstanceOf: RECISTBaselineObservation
Title: "RECISTBaselineObservation – INVALID: recistTimepoint 'WRONG-TP' not in RECISTTimepointVS"
Description: "INVALID RECISTBaselineObservation. Violations: extension:recistTimepoint valueCode 'WRONG-TP' from http://example.com/wrong-system is not in RECISTTimepointVS (required binding); valid values: BASELINE WEEK-4 WEEK-8 WEEK-12 WEEK-16 END-OF-TREATMENT FOLLOW-UP-3M FOLLOW-UP-6M FOLLOW-UP-12M PROGRESSION OTHER."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-recist-baseline-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#imaging "Imaging"
* code = SHAInterventionsCS#SHA-IMAGING "SHA: Oncology Diagnostic Imaging"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* effectiveDateTime = "2026-01-08"
* valueQuantity.value = 58
* valueQuantity.unit = "mm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm
* extension[recistTimepoint].valueCode = http://example.com/wrong-system#WRONG-TP

// ---- Profile 28: RECISTTargetLesionObservation ----
Instance: InvalidRECISTTargetLesionObservationExample
InstanceOf: RECISTTargetLesionObservation
Title: "RECISTTargetLesionObservation – INVALID: bodySite 'WRONG-SITE' not in CancerPrimarySiteVS"
Description: "INVALID RECISTTargetLesionObservation. Violations: bodySite 'WRONG-SITE' from http://example.com/wrong-system is not in CancerPrimarySiteVS (required binding); valid values: BREAST CERVIX-UTERI PROSTATE LUNG COLON LIVER and others from CancerPrimarySiteCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-recist-target-lesion-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#imaging "Imaging"
* code = SHAInterventionsCS#SHA-IMAGING "SHA: Oncology Diagnostic Imaging"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-03-15"
* valueQuantity.value = 18
* valueQuantity.unit = "mm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm
* bodySite = http://example.com/wrong-system#WRONG-SITE "Wrong primary cancer site"
* extension[recistTargetLesionId].valueString = "TL-001"
* extension[recistTimepoint].valueCode = #WEEK-8

// ---- Profile 29: RECISTNonTargetLesionObservation ----
Instance: InvalidRECISTNonTargetLesionObservationExample
InstanceOf: RECISTNonTargetLesionObservation
Title: "RECISTNonTargetLesionObservation – INVALID: bodySite 'WRONG-SITE' not in CancerPrimarySiteVS"
Description: "INVALID RECISTNonTargetLesionObservation. Violations: bodySite 'WRONG-SITE' from http://example.com/wrong-system is not in CancerPrimarySiteVS (required binding); valid values: BREAST CERVIX-UTERI LIVER LUNG and others from CancerPrimarySiteCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-recist-non-target-lesion-observation"
* status = #final
* code = SHAInterventionsCS#SHA-IMAGING "SHA: Oncology Diagnostic Imaging"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = RECISTResponseCS#STABLE-DISEASE "Stable Disease"
* bodySite = http://example.com/wrong-system#WRONG-SITE "Wrong primary cancer site"
* extension[recistTimepoint].valueCode = #WEEK-8

// ---- Profile 30: RECISTNewLesionObservation ----
Instance: InvalidRECISTNewLesionObservationExample
InstanceOf: RECISTNewLesionObservation
Title: "RECISTNewLesionObservation – INVALID: code 'NOT-IN-SHA-VS' not in SHAInterventionsVS"
Description: "INVALID RECISTNewLesionObservation. Violations: code 'NOT-IN-SHA-VS' from http://example.com/wrong-system is not in SHAInterventionsVS (required binding); valid values include: SHA-IMAGING SHA-ONCOLOGY-CONSULT and others from SHAInterventionsCS."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-recist-new-lesion-observation"
* status = #final
* code = http://example.com/wrong-system#NOT-IN-SHA-VS "Invalid — not in SHAInterventionsVS"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-03-15"
* valueBoolean = false

// ---- Profile 31: RECISTResponseAssessmentObservation ----
Instance: InvalidRECISTResponseAssessmentObservationExample
InstanceOf: RECISTResponseAssessmentObservation
Title: "RECISTResponseAssessmentObservation – INVALID: valueCodeableConcept 'WRONG-RESP' not in RECISTResponseVS"
Description: "INVALID RECISTResponseAssessmentObservation. Violations: valueCodeableConcept 'WRONG-RESP' from http://example.com/wrong-system is not in RECISTResponseVS (required binding); valid values: COMPLETE-RESPONSE PARTIAL-RESPONSE STABLE-DISEASE PROGRESSIVE-DISEASE NOT-EVALUABLE."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-recist-response-assessment-observation"
* status = #final
* code = SHAInterventionsCS#SHA-IMAGING "SHA: Oncology Diagnostic Imaging"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = http://example.com/wrong-system#WRONG-RESP "Wrong RECIST response code"
* derivedFrom[0] = Reference(Observation/example-target-lesion)
* extension[recistTimepoint].valueCode = #WEEK-8

// ---- Profile 32: RadiotherapyServiceRequest ----
Instance: InvalidRadiotherapyServiceRequestExample
InstanceOf: RadiotherapyServiceRequest
Title: "RadiotherapyServiceRequest – INVALID: rtTreatmentTechnique 'WRONG-TECH' not in RTTreatmentTechniqueVS"
Description: "INVALID RadiotherapyServiceRequest. Violations: extension:rtTreatmentTechnique valueCode 'WRONG-TECH' from http://example.com/wrong-system is not in RTTreatmentTechniqueVS (required binding); valid values: TWO-D-RT THREE-D-CRT IMRT VMAT SBRT SRS PROTON-THERAPY BRACHYTHERAPY-HDR BRACHYTHERAPY-LDR ELECTRON-THERAPY TOTAL-BODY-IRRAD OTHER."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-service-request"
* status = #active
* intent = #order
* category[0] = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* code = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* subject = Reference(Patient/example-patient)
* requester = Reference(Practitioner/example-practitioner)
* reasonReference[0] = Reference(Condition/example-condition)
* bodySite[0] = CancerPrimarySiteCS#BREAST "Breast"
* extension[rtIntent].valueCode = #ADJUVANT
* extension[rtTreatmentTechnique].valueCode = http://example.com/wrong-system#WRONG-TECH
* extension[rtTargetVolume][0].valueCode = #PTV

// ---- Profile 33: RadiotherapyPlanDefinition ----
Instance: InvalidRadiotherapyPlanDefinitionExample
InstanceOf: RadiotherapyPlanDefinition
Title: "RadiotherapyPlanDefinition – INVALID: rtTreatmentTechnique 'WRONG-TECH' not in RTTreatmentTechniqueVS"
Description: "INVALID RadiotherapyPlanDefinition. Violations: extension:rtTreatmentTechnique valueCode 'WRONG-TECH' from http://example.com/wrong-system is not in RTTreatmentTechniqueVS (required binding); valid values: TWO-D-RT THREE-D-CRT IMRT VMAT SBRT SRS PROTON-THERAPY BRACHYTHERAPY-HDR BRACHYTHERAPY-LDR ELECTRON-THERAPY TOTAL-BODY-IRRAD OTHER."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-plan-definition"
* url = "https://fhir.dha.go.ke/nccp/PlanDefinition/invalid-rt-protocol"
* title = "Invalid RT Protocol — wrong treatment technique code"
* status = #active
* type = PlanDefinitionTypeCS#RADIOTHERAPY-PROTOCOL "Radiotherapy Protocol"
* extension[rtTotalFractions].valueInteger = 25
* extension[rtDosePerFraction].valueQuantity.value = 2.0
* extension[rtDosePerFraction].valueQuantity.unit = "Gy"
* extension[rtDosePerFraction].valueQuantity.system = "http://unitsofmeasure.org"
* extension[rtDosePerFraction].valueQuantity.code = #Gy
* extension[rtTreatmentTechnique].valueCode = http://example.com/wrong-system#WRONG-TECH

// ---- Profile 35: RadiotherapyTreatmentProcedure ----
Instance: InvalidRadiotherapyTreatmentProcedureExample
InstanceOf: RadiotherapyTreatmentProcedure
Title: "RadiotherapyTreatmentProcedure – INVALID: rtBeamType 'WRONG-BEAM' not in RTBeamTypeVS"
Description: "INVALID RadiotherapyTreatmentProcedure. Violations: extension:rtBeamType valueCode 'WRONG-BEAM' from http://example.com/wrong-system is not in RTBeamTypeVS (required binding); valid values: PHOTON-X-RAY ELECTRON PROTON NEUTRON CARBON-ION COBALT-60 BRACHY-HDR-IR192 BRACHY-LDR-PD103 BRACHY-LDR-I125 BRACHY-HDR-OTHER."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-treatment-procedure"
* status = #completed
* category = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* code = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* basedOn = Reference(CarePlan/example-rt-careplan)
* performedDateTime = "2026-02-03T10:15:00Z"
* performer[0].actor = Reference(Practitioner/example-radiation-therapist)
* bodySite[0] = ICD11AnatomyCS#BREAST "Breast"
* extension[rtFractionNumber].valueInteger = 1
* extension[rtTotalFractions].valueInteger = 25
* extension[rtDosePerFraction].valueQuantity.value = 2.0
* extension[rtDosePerFraction].valueQuantity.unit = "Gy"
* extension[rtDosePerFraction].valueQuantity.system = "http://unitsofmeasure.org"
* extension[rtDosePerFraction].valueQuantity.code = #Gy
* extension[rtCumulativeDose].valueQuantity.value = 2.0
* extension[rtCumulativeDose].valueQuantity.unit = "Gy"
* extension[rtCumulativeDose].valueQuantity.system = "http://unitsofmeasure.org"
* extension[rtCumulativeDose].valueQuantity.code = #Gy
* extension[rtBeamType].valueCode = http://example.com/wrong-system#WRONG-BEAM
* extension[rtTreatmentTechnique].valueCode = #THREE-D-CRT

// ---- Profile 36: RadiotherapyDoseObservation ----
Instance: InvalidRadiotherapyDoseObservationExample
InstanceOf: RadiotherapyDoseObservation
Title: "RadiotherapyDoseObservation – INVALID: rtTargetVolume 'WRONG-VOL' not in RTTargetVolumeVS"
Description: "INVALID RadiotherapyDoseObservation. Violations: extension:rtTargetVolume valueCode 'WRONG-VOL' from http://example.com/wrong-system is not in RTTargetVolumeVS (required binding); valid values: GTV CTV ITV PTV OAR PRV RVR BOOST."
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-dose-observation"
* status = #final
* code = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* subject = Reference(Patient/example-patient)
* focus = Reference(Condition/example-condition)
* effectiveDateTime = "2026-03-14"
* valueQuantity.value = 50.0
* valueQuantity.unit = "Gy"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Gy
* component[dosePerFraction].code = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* component[dosePerFraction].valueQuantity.value = 2.0
* component[dosePerFraction].valueQuantity.unit = "Gy"
* component[dosePerFraction].valueQuantity.system = "http://unitsofmeasure.org"
* component[dosePerFraction].valueQuantity.code = #Gy
* component[totalFractions].code = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* component[totalFractions].valueInteger = 25
* extension[rtTargetVolume][0].valueCode = http://example.com/wrong-system#WRONG-VOL
