// ============================================================
// VALID PROFILE EXAMPLES
// One conformant instance per profile not already in nccp-examples.fsh.
// Every 1..1 element and required extension is populated with a
// valid code from its bound ValueSet.
// ============================================================

// ---- Profile 34: RadiotherapyCarePlan ----
Instance: RadiotherapyCarePlanExample
InstanceOf: RadiotherapyCarePlan
Title: "Example Radiotherapy Care Plan — Adjuvant Breast RT"
Description: "Adjuvant 3DCRT care plan for left breast cancer post-lumpectomy: 25 fractions × 2 Gy (50 Gy total)"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-care-plan"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/rt-careplan-id"
* identifier[0].value = "RT-CP-2026-00456"
* status = #active
* intent = #plan
* category[0] = CarePlanCategoryCS#RADIOTHERAPY-PLAN "Radiotherapy Plan"
* subject = Reference(Patient/example-patient)
* author = Reference(Practitioner/example-practitioner)
* careTeam[0] = Reference(CareTeam/example-care-team)
* addresses[0] = Reference(Condition/example-condition)
* period.start = "2026-02-01"
* period.end = "2026-03-15"
* extension[rtIntent].valueCode = #ADJUVANT
* extension[rtTotalFractions].valueInteger = 25
* extension[rtDosePerFraction].valueQuantity.value = 2.0
* extension[rtDosePerFraction].valueQuantity.unit = "Gy"
* extension[rtDosePerFraction].valueQuantity.system = "http://unitsofmeasure.org"
* extension[rtDosePerFraction].valueQuantity.code = #Gy
* extension[rtTreatmentTechnique].valueCode = #THREE-D-CRT
* extension[rtTargetVolume][0].valueCode = #PTV

// ---- Profile 3: MorphologyObservation ----
Instance: MorphologyObservationExample
InstanceOf: MorphologyObservation
Title: "Example Morphology Observation — Invasive Ductal Carcinoma"
Description: "Histopathology core-needle biopsy confirming invasive ductal carcinoma of the left breast"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-morphology-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#33752-8 "Histology study"
* subject = Reference(Patient/example-patient)
* focus[0] = Reference(Condition/example-condition)
* effectiveDateTime = "2025-11-10"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = MorphologyCodesCS#INVASIVE-DUCTAL-CARCINOMA "Invasive Ductal Carcinoma"
* bodySite = CancerPrimarySiteCS#BREAST "Breast"
* method = MorphologyMethodCS#BIOPSY "Biopsy"

// ---- Profile 4: OncologyEpisodeOfCare ----
Instance: OncologyEpisodeOfCareExample
InstanceOf: OncologyEpisodeOfCare
Title: "Example Oncology Episode of Care — Breast Cancer"
Description: "Active episode of cancer care for a breast cancer patient at Kenyatta National Hospital"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-episode-of-care"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/episode-id"
* identifier[0].value = "EOC-2025-00789"
* status = EpisodeOfCareStatusCS#ACTIVE "Active"
* type[0] = EpisodeOfCareTypeCS#CANCER-CARE-PROGRAM "Cancer Care Program"
* diagnosis[0].condition = Reference(Condition/example-condition)
* patient = Reference(Patient/example-patient)
* managingOrganization = Reference(Organization/example-organization)
* period.start = "2025-11-01"

// ---- Profile 5: OncologyEncounter ----
Instance: OncologyEncounterExample
InstanceOf: OncologyEncounter
Title: "Example Oncology Encounter — Chemotherapy Treatment Session"
Description: "Day-case chemotherapy session at Kenyatta National Hospital oncology unit, cycle 1 session 1"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-encounter"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/encounter-id"
* identifier[0].value = "ENC-2026-00231"
* status = EncounterStatusCS#in-progress "In Progress"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type[0] = OncologyEncounterTypeCS#TREATMENT-ENCOUNTER "Treatment Encounter"
* subject = Reference(Patient/example-patient)
* episodeOfCare[0] = Reference(EpisodeOfCare/example-episode)
* period.start = "2026-01-15T09:00:00Z"
* period.end = "2026-01-15T13:00:00Z"
* serviceProvider = Reference(Organization/example-organization)
* location[0].location = Reference(Location/oncology-day-unit)
* diagnosis[0].condition = Reference(Condition/example-condition)
* extension[sessionId].valueString = "SES-00231"
* extension[sessionNumber].valueInteger = 1
* extension[cycleNumber].valueInteger = 1
* extension[treatmentSetting].valueCode = #DAY-CASE

// ---- Profile 6: OncologyCareTeam ----
Instance: OncologyCareTeamExample
InstanceOf: OncologyCareTeam
Title: "Example Oncology Care Team — Breast Cancer MDT"
Description: "Multidisciplinary team managing a breast cancer patient at Kenyatta National Hospital"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-care-team"
* status = #active
* category[0] = CareTeamCategoryCS#EPISODE-CARE-TEAM "Episode Care Team"
* subject = Reference(Patient/example-patient)
* period.start = "2025-11-01"
* participant[0].role[0] = PractitionerRolesCS#MEDICAL-ONCOLOGIST "Medical Oncologist"
* participant[0].member = Reference(Practitioner/example-practitioner)
* managingOrganization = Reference(Organization/example-organization)

// ---- Profile 7: OncologyPlanDefinition ----
Instance: OncologyPlanDefinitionExample
InstanceOf: OncologyPlanDefinition
Title: "Example Oncology Plan Definition — AC-T Regimen Template"
Description: "Regimen template for AC-T: Doxorubicin + Cyclophosphamide → Paclitaxel, 8 × 21-day cycles"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-plan-definition"
* url = "https://fhir.dha.go.ke/nccp/PlanDefinition/ac-t-regimen"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/regimen-id"
* identifier[0].value = "REG-AC-T-V1"
* title = "AC-T Chemotherapy Regimen (21-day cycles)"
* status = #active
* type = PlanDefinitionTypeCS#REGIMEN-TEMPLATE "Regimen Template"
* action[0].title = "Doxorubicin 60 mg/m² IV — Day 1"
* action[1].title = "Cyclophosphamide 600 mg/m² IV — Day 1"
* extension[plannedCycles].valueInteger = 8
* extension[cycleLengthDays].valueInteger = 21

// ---- Profile 8: OncologyRequestGroup ----
Instance: OncologyRequestGroupExample
InstanceOf: OncologyRequestGroup
Title: "Example Oncology Request Group — Cycle 1 Session 1 (AC)"
Description: "Groups all medication requests for AC cycle 1 session 1 for breast cancer patient"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-request-group"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/request-group-id"
* identifier[0].value = "RG-2026-00101"
* status = #active
* intent = #order
* subject = Reference(Patient/example-patient)
* author = Reference(Practitioner/example-practitioner)
* action[0].timingPeriod.start = "2026-01-15"
* action[0].timingPeriod.end = "2026-01-15"
* action[0].resource = Reference(MedicationRequest/example-med-request-doxorubicin)
* extension[cycleNumber].valueInteger = 1

// ---- Profile 9: ChemotherapyMedicationRequest ----
Instance: ChemotherapyMedicationRequestExample
InstanceOf: ChemotherapyMedicationRequest
Title: "Example Chemotherapy Medication Request — Doxorubicin"
Description: "Doxorubicin 60 mg/m² IV short infusion, day 1 of cycle 1 for breast cancer (AC regimen)"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-chemotherapy-medication-request"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/med-request-id"
* identifier[0].value = "MR-2026-00301"
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
* extension[clinicalCategory].valueCode = #CHEMOTHERAPY

// ---- Profile 10: OncologyMedicationAdministration ----
Instance: OncologyMedicationAdministrationExample
InstanceOf: OncologyMedicationAdministration
Title: "Example Medication Administration — Doxorubicin Cycle 1 Day 1"
Description: "Actual administration of Doxorubicin 105 mg IV (BSA 1.75 m²) on 15 Jan 2026, cycle 1"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-medication-administration"
* status = #completed
* category = http://terminology.hl7.org/CodeSystem/medication-admin-category#inpatient "Inpatient"
* medicationCodeableConcept = GenericProductsCS#DOXORUBICIN "Doxorubicin"
* subject = Reference(Patient/example-patient)
* context = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-01-15T10:30:00Z"
* performer[0].actor = Reference(Practitioner/example-practitioner)
* request = Reference(MedicationRequest/example-med-request-doxorubicin)
* dosage.dose.value = 105
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mg
* dosage.route = MedAdminRouteCS#IV-INFUSION-SHORT "IV Short Infusion"
* extension[cycleNumber].valueInteger = 1
* extension[sessionId].valueString = "SES-00231"

// ---- Profile 12: PerformanceStatusObservation ----
Instance: PerformanceStatusObservationExample
InstanceOf: PerformanceStatusObservation
Title: "Example ECOG Performance Status Observation — ECOG 1"
Description: "ECOG performance status 1 recorded at cycle 1 pre-treatment assessment; patient ambulatory with mild symptoms"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-performance-status-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-01-10"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = PerformanceStatusECOGCS#ECOG-1 "ECOG 1"

// ---- Profile 13: BodySurfaceAreaObservation ----
Instance: BodySurfaceAreaObservationExample
InstanceOf: BodySurfaceAreaObservation
Title: "Example Body Surface Area Observation — 1.75 m²"
Description: "BSA 1.75 m² calculated by Mosteller formula (height 165 cm, weight 70 kg) pre-cycle 1"
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
* method = BSAFormulaCS#MOSTELLER "Mosteller"

// ---- Profile 14: CancerSuspicionObservation ----
Instance: CancerSuspicionObservationExample
InstanceOf: CancerSuspicionObservation
Title: "Example Cancer Suspicion Observation — High Suspicion Cervical Cancer"
Description: "High-level clinical suspicion of cervical cancer at screening visit based on abnormal cytology and clinical finding"
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
* component[suspicionLevel].valueCodeableConcept = CancerSuspicionLevelCS#SUSPICION-HIGH "Suspicion High"
* component[reasonForSuspicion][0].code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* component[reasonForSuspicion][0].valueCodeableConcept = ReasonForSuspicionCS#CLINICAL-FINDING "Clinical Finding"
* component[presentingSymptoms].code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* component[presentingSymptoms].valueString = "Post-coital bleeding and mucopurulent vaginal discharge for 3 months"
* component[plannedDiagnosticWorkup].code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* component[plannedDiagnosticWorkup].valueString = "Colposcopy with directed biopsy"

// ---- Profile 15: OncologyDiagnosticServiceRequest ----
Instance: OncologyDiagnosticServiceRequestExample
InstanceOf: OncologyDiagnosticServiceRequest
Title: "Example Diagnostic Service Request — Colposcopy-directed Biopsy"
Description: "Urgent colposcopy and directed biopsy request for suspected cervical cancer"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-diagnostic-service-request"
* identifier[0].system = "https://fhir.dha.go.ke/nccp/service-request-id"
* identifier[0].value = "SR-DIAG-2025-00112"
* status = #active
* intent = #order
* category[0] = SHAInterventionsCS#SHA-BIOPSY "SHA: Diagnostic Biopsy"
* priority = DiagnosticTestUrgencyCS#URGENT "Urgent"
* code = SHAInterventionsCS#SHA-BIOPSY "SHA: Diagnostic Biopsy"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* authoredOn = "2025-09-15"
* requester = Reference(Practitioner/example-practitioner)
* reasonCode[0] = ConditionCodesCS#C53 "C53 — Malignant neoplasm of cervix uteri"
* bodySite[0] = CancerPrimarySiteCS#CERVIX-UTERI "Cervix Uteri"

// ---- Profile 16: OncologyDiagnosticReport ----
Instance: OncologyDiagnosticReportExample
InstanceOf: OncologyDiagnosticReport
Title: "Example Diagnostic Report — Cervical Biopsy Histopathology"
Description: "Histopathology report confirming squamous cell carcinoma of the cervix from colposcopy-directed biopsy"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-diagnostic-report"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology (gross & histopath, not surgical)"
* code = http://loinc.org#60568-3 "Pathology Synoptic report"
* basedOn[0] = Reference(ServiceRequest/example-diagnostic-request)
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* issued = "2025-09-22T14:30:00Z"
* performer[0] = Reference(Practitioner/example-practitioner)
* conclusion = "Moderately differentiated squamous cell carcinoma of the cervix. Margins not assessed on biopsy specimen."
* conclusionCode[0] = ConditionCodesCS#C53 "C53 — Malignant neoplasm of cervix uteri"

// ---- Profile 17: PriorSurgeryProcedure ----
Instance: PriorSurgeryProcedureExample
InstanceOf: PriorSurgeryProcedure
Title: "Example Prior Surgery Procedure — Left Breast Wide Local Excision"
Description: "Prior wide local excision (lumpectomy) of left breast for stage IIB invasive ductal carcinoma"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-surgery-procedure"
* status = #completed
* category = SHAInterventionsCS#SHA-SURGERY-CURATIVE "SHA: Surgery — Curative"
* code = SHAInterventionsCS#SHA-SURGERY-CURATIVE "SHA: Surgery — Curative"
* subject = Reference(Patient/example-patient)
* performedDateTime = "2025-10-05"
* reasonReference[0] = Reference(Condition/example-condition)
* note[0].text = "Wide local excision with sentinel lymph node biopsy. Clear margins achieved. 2 of 3 sentinel nodes positive."

// ---- Profile 18: PriorRadiotherapyProcedure ----
Instance: PriorRadiotherapyProcedureExample
InstanceOf: PriorRadiotherapyProcedure
Title: "Example Prior Radiotherapy Procedure — Cervical Cancer RT"
Description: "Prior concurrent chemoradiotherapy (CCRT) for locally advanced cervical cancer in 2023"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-radiotherapy-procedure"
* status = #completed
* category = SHAInterventionsCS#SHA-RT-CONCURRENT-CRT "SHA: Concurrent Chemo-Radiotherapy"
* code = SHAInterventionsCS#SHA-RT-CONCURRENT-CRT "SHA: Concurrent Chemo-Radiotherapy"
* subject = Reference(Patient/example-patient)
* performedPeriod.start = "2023-03-01"
* performedPeriod.end = "2023-04-15"
* bodySite[0] = CancerPrimarySiteCS#CERVIX-UTERI "Cervix Uteri"
* note[0].text = "External beam RT 45 Gy/25 fractions plus brachytherapy boost. Concurrent weekly cisplatin 40 mg/m²."

// ---- Profile 19: PriorBMTProcedure ----
Instance: PriorBMTProcedureExample
InstanceOf: PriorBMTProcedure
Title: "Example Prior BMT Procedure — Autologous Stem Cell Transplant for Myeloma"
Description: "Prior autologous peripheral blood stem cell transplant after melphalan conditioning for multiple myeloma"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-bmt-procedure"
* status = #completed
* category = SHAInterventionsCS#SHA-BMT-AUTOLOGOUS "SHA: BMT — Autologous"
* code = SHAInterventionsCS#SHA-BMT-AUTOLOGOUS "SHA: BMT — Autologous"
* subject = Reference(Patient/example-patient)
* performedDateTime = "2022-08-20"
* note[0].text = "High-dose melphalan 200 mg/m² conditioning. Day 0 stem cell infusion 15 Aug 2022. Engraftment day +12."
* extension[bmtType].valueCode = #AUTOLOGOUS

// ---- Profile 20: PriorSystemicTherapyStatement ----
Instance: PriorSystemicTherapyStatementExample
InstanceOf: PriorSystemicTherapyStatement
Title: "Example Prior Systemic Therapy Statement — Tamoxifen Adjuvant Hormonal Therapy"
Description: "5 years of adjuvant tamoxifen for ER+ breast cancer (2018–2023) prior to current recurrence"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-prior-systemic-therapy-statement"
* status = #completed
* category = MedClinicalCategoryCS#HORMONAL-THERAPY "Hormonal Therapy"
* medicationCodeableConcept = GenericProductsCS#TAMOXIFEN "Tamoxifen"
* subject = Reference(Patient/example-patient)
* effectivePeriod.start = "2018-03-01"
* effectivePeriod.end = "2023-02-28"
* reasonReference[0] = Reference(Condition/example-condition)
* note[0].text = "Completed 5 years of adjuvant tamoxifen. Switched to letrozole following menopause in 2021."

// ---- Profile 21: OncologyReferralServiceRequest ----
Instance: OncologyReferralServiceRequestExample
InstanceOf: OncologyReferralServiceRequest
Title: "Example Oncology Referral — From County Hospital to National Cancer Centre"
Description: "Referral of a newly diagnosed breast cancer patient from Machakos County Hospital to KNH Oncology"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-referral-service-request"
* status = #active
* intent = #order
* category = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* code = SHAInterventionsCS#SHA-ONCOLOGY-CONSULT "SHA: Oncology Consultation"
* subject = Reference(Patient/example-patient)
* performer[0] = Reference(Organization/knh-oncology)
* reasonCode[0] = ConditionCodesCS#C50 "C50 — Malignant neoplasm of breast"
* note[0].text = "45-year-old female with newly diagnosed invasive ductal carcinoma left breast (T2N1M0, Stage IIB). Requires medical oncology review for systemic treatment planning."
* extension[referralSource].valueCode = #COUNTY-HOSPITAL

// ---- Profile 22: OncologyCoverageEligibilityRequest ----
Instance: OncologyCoverageEligibilityRequestExample
InstanceOf: OncologyCoverageEligibilityRequest
Title: "Example Coverage Eligibility Request — SHA Chemotherapy Pre-authorisation"
Description: "Request to verify SHA coverage eligibility for AC-T chemotherapy regimen (breast cancer)"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-coverage-eligibility-request"
* status = #active
* purpose[0] = #auth-requirements
* patient = Reference(Patient/example-patient)
* created = "2026-01-08"
* provider = Reference(Organization/example-organization)
* insurer = Reference(Organization/sha-kenya)
* insurance[0].coverage = Reference(Coverage/example-coverage)
* item[0].productOrService = SHAInterventionsCS#SHA-CHEMO-NEO-ADJUVANT "SHA: Chemotherapy — Neo-adjuvant"
* extension[regimenReference].valueReference = Reference(CarePlan/example-careplan)

// ---- Profile 23: OncologyClaim ----
Instance: OncologyClaimExample
InstanceOf: OncologyClaim
Title: "Example Oncology Claim — AC Chemotherapy Cycle 1 Session 1"
Description: "SHA insurance claim for Doxorubicin + Cyclophosphamide (AC) cycle 1 session 1 for breast cancer"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-claim"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #preauthorization
* patient = Reference(Patient/example-patient)
* created = "2026-01-15"
* provider = Reference(Organization/example-organization)
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(Coverage/example-coverage)
* diagnosis[0].sequence = 1
* diagnosis[0].diagnosisReference = Reference(Condition/example-condition)
* item[0].sequence = 1
* item[0].productOrService = SHAInterventionsCS#SHA-CHEMO-NEO-ADJUVANT "SHA: Chemotherapy — Neo-adjuvant"
* item[0].unitPrice.value = 15000
* item[0].unitPrice.currency = #KES
* item[0].quantity.value = 1
* item[0].detail[0].sequence = 1
* item[0].detail[0].productOrService = SHAInterventionsCS#SHA-CHEMO-NEO-ADJUVANT "SHA: Chemotherapy — Neo-adjuvant"
* item[0].detail[0].unitPrice.value = 7500
* item[0].detail[0].unitPrice.currency = #KES
* item[0].detail[0].quantity.value = 1
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"
* extension[carcinomaStaging].valueCode = #STAGE-2
* extension[treatmentSetting][0].valueCode = #DAY-CASE
* extension[sessionExpectedDate].valueDate = "2026-01-15"
* extension[sessionsRequired].valueInteger = 8
* extension[costPerSession].valueMoney.value = 15000
* extension[costPerSession].valueMoney.currency = #KES
* extension[regimenReference].valueReference = Reference(CarePlan/example-careplan)

// ---- Profile 24: OncologyClaimResponse ----
Instance: OncologyClaimResponseExample
InstanceOf: OncologyClaimResponse
Title: "Example Oncology Claim Response — SHA Pre-authorisation Approved"
Description: "SHA pre-authorisation approval for 6 cycles of AC-T chemotherapy (8 sessions) for breast cancer"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-claim-response"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #preauthorization
* patient = Reference(Patient/example-patient)
* created = "2026-01-18"
* insurer = Reference(Organization/sha-kenya)
* request = Reference(Claim/example-oncology-claim)
* outcome = #complete
* preAuthRef = "SHA-PREAUTH-2026-00789"
* payment.type = http://terminology.hl7.org/CodeSystem/ex-paymenttype#complete "Complete"
* payment.amount.value = 120000
* payment.amount.currency = #KES
* extension[sessionsCovered].valueInteger = 8
* extension[sessionsUsed].valueInteger = 0
* extension[startCycle].valueInteger = 1
* extension[endCycle].valueInteger = 8

// ---- Profile 25: CTCAEAdverseEventObservation ----
Instance: CTCAEAdverseEventObservationExample
InstanceOf: CTCAEAdverseEventObservation
Title: "Example CTCAE Adverse Event Observation — Grade 2 Nausea"
Description: "CTCAE Grade 2 nausea recorded on cycle 1 day 3 post AC chemotherapy; dose not modified"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-ctcae-adverse-event-observation"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = CTCAETermsCS#NAUSEA "Nausea"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2026-01-18"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueInteger = 2
* extension[ctcaeAttribution].valueCode = #PROBABLE

// ---- Profile 26: OncologyAdverseEvent ----
Instance: OncologyAdverseEventExample
InstanceOf: OncologyAdverseEvent
Title: "Example Oncology Adverse Event — Grade 3 Febrile Neutropenia"
Description: "Grade 3 febrile neutropenia reported day 10 post AC cycle 1; patient hospitalised for IV antibiotics"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-oncology-adverse-event"
* actuality = #actual
* category[0] = AdverseEventCategoryCS#MEDICATION-MISHAP "Medication Mishap"
* event = CTCAETermsCS#FEBRILE-NEUTROPENIA "Febrile Neutropenia"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* date = "2026-01-25"
* severity = http://terminology.hl7.org/CodeSystem/adverse-event-severity#severe "Severe"
* outcome = CTCAEOutcomeCS#RECOVERING "Recovering"
* recorder = Reference(Practitioner/example-practitioner)
* suspectEntity[0].instance = Reference(MedicationAdministration/example-med-admin)
* suspectEntity[0].causality[0].assessment = CTCAEAttributionCS#PROBABLE "Probable"
* extension[ctcaeGrade].valueInteger = 3
* extension[ctcaeActionTaken][0].valueCode = #HOSPITALISED

// ---- Profile 27: RECISTBaselineObservation ----
Instance: RECISTBaselineObservationExample
InstanceOf: RECISTBaselineObservation
Title: "Example RECIST Baseline Observation — Sum of Target Lesion Diameters"
Description: "Baseline RECIST measurement: sum of longest diameters of 3 target lesions = 58 mm (breast cancer)"
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
* extension[recistTimepoint].valueCode = #BASELINE

// ---- Profile 28: RECISTTargetLesionObservation ----
Instance: RECISTTargetLesionObservationExample
InstanceOf: RECISTTargetLesionObservation
Title: "Example RECIST Target Lesion Observation — Left Axillary Node Week 8"
Description: "RECIST target lesion measurement of left axillary lymph node at week 8 (after 2 AC cycles): 18 mm"
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
* bodySite = CancerPrimarySiteCS#BREAST "Breast"
* extension[recistTargetLesionId].valueString = "TL-001"
* extension[recistTimepoint].valueCode = #WEEK-8

// ---- Profile 29: RECISTNonTargetLesionObservation ----
Instance: RECISTNonTargetLesionObservationExample
InstanceOf: RECISTNonTargetLesionObservation
Title: "Example RECIST Non-Target Lesion Observation — Liver Metastasis at Week 8"
Description: "RECIST non-target lesion assessment: liver lesion present/non-measurable at week 8 assessment"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-recist-non-target-lesion-observation"
* status = #final
* code = SHAInterventionsCS#SHA-IMAGING "SHA: Oncology Diagnostic Imaging"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = RECISTResponseCS#STABLE-DISEASE "Stable Disease"
* bodySite = CancerPrimarySiteCS#LIVER "Liver and Intrahepatic Ducts"
* extension[recistTimepoint].valueCode = #WEEK-8

// ---- Profile 30: RECISTNewLesionObservation ----
Instance: RECISTNewLesionObservationExample
InstanceOf: RECISTNewLesionObservation
Title: "Example RECIST New Lesion Observation — No New Lesions at Week 8"
Description: "RECIST new lesion check at week 8 assessment: no new lesions identified on CT scan"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-recist-new-lesion-observation"
* status = #final
* code = SHAInterventionsCS#SHA-IMAGING "SHA: Oncology Diagnostic Imaging"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-03-15"
* valueBoolean = false

// ---- Profile 32: RadiotherapyServiceRequest ----
Instance: RadiotherapyServiceRequestExample
InstanceOf: RadiotherapyServiceRequest
Title: "Example Radiotherapy Service Request — Adjuvant Whole Breast RT"
Description: "Prescription for adjuvant whole breast radiotherapy following lumpectomy for left breast cancer"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-service-request"
* status = #active
* intent = #order
* category[0] = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* code = SHAInterventionsCS#SHA-RT-ADJUVANT "SHA: Radiotherapy — Adjuvant"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)
* requester = Reference(Practitioner/example-practitioner)
* reasonReference[0] = Reference(Condition/example-condition)
* bodySite[0] = CancerPrimarySiteCS#BREAST "Breast"
* extension[rtIntent].valueCode = #ADJUVANT
* extension[rtTreatmentTechnique].valueCode = #THREE-D-CRT
* extension[rtTargetVolume][0].valueCode = #PTV

// ---- Profile 33: RadiotherapyPlanDefinition ----
Instance: RadiotherapyPlanDefinitionExample
InstanceOf: RadiotherapyPlanDefinition
Title: "Example Radiotherapy Plan Definition — Whole Breast 3DCRT Protocol"
Description: "Standard adjuvant whole breast radiotherapy protocol: 50 Gy in 25 fractions using 3D conformal technique"
Usage: #example
* meta.profile = "https://fhir.dha.go.ke/nccp/StructureDefinition/ke-nccp-radiotherapy-plan-definition"
* url = "https://fhir.dha.go.ke/nccp/PlanDefinition/whole-breast-50gy-25fr"
* title = "Whole Breast RT — 50 Gy / 25 Fractions (3DCRT)"
* status = #active
* type = PlanDefinitionTypeCS#RADIOTHERAPY-PROTOCOL "Radiotherapy Protocol"
* extension[rtTotalFractions].valueInteger = 25
* extension[rtDosePerFraction].valueQuantity.value = 2.0
* extension[rtDosePerFraction].valueQuantity.unit = "Gy"
* extension[rtDosePerFraction].valueQuantity.system = "http://unitsofmeasure.org"
* extension[rtDosePerFraction].valueQuantity.code = #Gy
* extension[rtTreatmentTechnique].valueCode = #THREE-D-CRT

// ---- Profile 35: RadiotherapyTreatmentProcedure ----
Instance: RadiotherapyTreatmentProcedureExample
InstanceOf: RadiotherapyTreatmentProcedure
Title: "Example Radiotherapy Treatment Procedure — Fraction 1 of 25"
Description: "First fraction delivery of adjuvant left breast radiotherapy; 2 Gy delivered, cumulative dose 2 Gy"
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
* extension[rtBeamType].valueCode = #PHOTON-X-RAY
* extension[rtTreatmentTechnique].valueCode = #THREE-D-CRT
* extension[rtTreatmentMachine].valueString = "Varian TrueBeam #1 — KNH"

// ---- Profile 36: RadiotherapyDoseObservation ----
Instance: RadiotherapyDoseObservationExample
InstanceOf: RadiotherapyDoseObservation
Title: "Example Radiotherapy Dose Observation — End-of-Treatment Summary"
Description: "End-of-treatment dose summary: 50 Gy total dose, 25 fractions × 2 Gy, PTV whole breast"
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
* extension[rtTargetVolume][0].valueCode = #PTV
