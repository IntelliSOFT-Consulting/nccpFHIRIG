// ============================================================
// STUB / PLACEHOLDER RESOURCES
// Minimal instances used only to satisfy IG Publisher reference
// resolution checks on example instances. Not intended as
// conformant clinical records.
// ============================================================

Instance: example-patient
InstanceOf: Patient
Title: "Example Patient (Stub)"
Description: "Placeholder patient used as a reference target in example instances."
Usage: #example
* id = "example-patient"
* name[0].family = "Wanjiku"
* name[0].given[0] = "Mary"
* gender = #female
* birthDate = "1975-06-15"

// ---------------------------------------------------------------

Instance: example-practitioner
InstanceOf: Practitioner
Title: "Example Practitioner (Stub)"
Description: "Placeholder practitioner (oncologist) used as a reference target in example instances."
Usage: #example
* id = "example-practitioner"
* name[0].family = "Otieno"
* name[0].given[0] = "James"
* name[0].prefix[0] = "Dr."

// ---------------------------------------------------------------

Instance: example-radiation-therapist
InstanceOf: Practitioner
Title: "Example Radiation Therapist (Stub)"
Description: "Placeholder radiation therapist used as a reference target in radiotherapy examples."
Usage: #example
* id = "example-radiation-therapist"
* name[0].family = "Mwangi"
* name[0].given[0] = "Faith"

// ---------------------------------------------------------------

Instance: example-organization
InstanceOf: Organization
Title: "Example Organization (Stub)"
Description: "Placeholder oncology unit organisation used as a reference target in example instances."
Usage: #example
* id = "example-organization"
* name = "Kenyatta National Hospital — Oncology Unit"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"

// ---------------------------------------------------------------

Instance: sha-kenya
InstanceOf: Organization
Title: "SHA Kenya (Stub)"
Description: "Placeholder Social Health Authority insurer used as a reference target in financial examples."
Usage: #example
* id = "sha-kenya"
* name = "Social Health Authority — Kenya"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#ins "Insurance Company"

// ---------------------------------------------------------------

Instance: knh-oncology
InstanceOf: Organization
Title: "KNH Oncology (Stub)"
Description: "Placeholder KNH Oncology department used as a reference target in referral examples."
Usage: #example
* id = "knh-oncology"
* name = "KNH Oncology Department"
* type[0] = http://terminology.hl7.org/CodeSystem/organization-type#dept "Hospital Department"

// ---------------------------------------------------------------

Instance: example-condition
InstanceOf: Condition
Title: "Example Condition (Stub)"
Description: "Placeholder condition instance used as a reference target in example instances."
Usage: #example
* id = "example-condition"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* code = ConditionCodesCS#C50 "C50 — Malignant neoplasm of breast"
* subject = Reference(Patient/example-patient)

// ---------------------------------------------------------------

Instance: example-episode
InstanceOf: EpisodeOfCare
Title: "Example Episode of Care (Stub)"
Description: "Placeholder episode of care used as a reference target in encounter examples."
Usage: #example
* id = "example-episode"
* status = #active
* type[0] = EpisodeOfCareTypeCS#CANCER-CARE-PROGRAM "Cancer Care Program"
* diagnosis[0].condition = Reference(Condition/example-condition)
* patient = Reference(Patient/example-patient)
* managingOrganization = Reference(Organization/example-organization)

// ---------------------------------------------------------------

Instance: example-encounter
InstanceOf: Encounter
Title: "Example Encounter (Stub)"
Description: "Placeholder encounter used as a reference target in example instances."
Usage: #example
* id = "example-encounter"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type[0] = OncologyEncounterTypeCS#TREATMENT-ENCOUNTER "Treatment Encounter"
* subject = Reference(Patient/example-patient)
* episodeOfCare[0] = Reference(EpisodeOfCare/example-episode)
* period.start = "2026-01-15T09:00:00Z"
* period.end = "2026-01-15T13:00:00Z"
* serviceProvider = Reference(Organization/example-organization)
* location[0].location = Reference(Location/oncology-day-unit)
* diagnosis[0].condition = Reference(Condition/example-condition)

// ---------------------------------------------------------------

Instance: oncology-day-unit
InstanceOf: Location
Title: "Oncology Day Unit (Stub)"
Description: "Placeholder oncology day unit location used as a reference target in example instances."
Usage: #example
* id = "oncology-day-unit"
* name = "KNH Oncology Day Treatment Unit"
* status = #active

// ---------------------------------------------------------------

Instance: example-careplan
InstanceOf: CarePlan
Title: "Example Care Plan (Stub)"
Description: "Placeholder care plan used as a reference target in medication and financial example instances."
Usage: #example
* id = "example-careplan"
* status = #active
* intent = #plan
* subject = Reference(Patient/example-patient)

// ---------------------------------------------------------------

Instance: example-rt-careplan
InstanceOf: CarePlan
Title: "Example RT Care Plan (Stub)"
Description: "Placeholder radiotherapy care plan used as a reference target in radiotherapy treatment examples."
Usage: #example
* id = "example-rt-careplan"
* status = #active
* intent = #plan
* subject = Reference(Patient/example-patient)

// ---------------------------------------------------------------

Instance: example-care-team
InstanceOf: CareTeam
Title: "Example Care Team (Stub)"
Description: "Placeholder care team used as a reference target in care plan examples."
Usage: #example
* id = "example-care-team"
* status = #active
* subject = Reference(Patient/example-patient)

// ---------------------------------------------------------------

Instance: example-coverage
InstanceOf: Coverage
Title: "Example Coverage (Stub)"
Description: "Placeholder SHA insurance coverage used as a reference target in financial examples."
Usage: #example
* id = "example-coverage"
* status = #active
* beneficiary = Reference(Patient/example-patient)
* payor[0] = Reference(Organization/sha-kenya)

// ---------------------------------------------------------------

Instance: example-med-request-doxorubicin
InstanceOf: MedicationRequest
Title: "Example MedicationRequest — Doxorubicin (Stub)"
Description: "Placeholder medication request used as a reference target in medication administration examples."
Usage: #example
* id = "example-med-request-doxorubicin"
* status = #active
* intent = #order
* medicationCodeableConcept = GenericProductsCS#DOXORUBICIN "Doxorubicin"
* subject = Reference(Patient/example-patient)
* authoredOn = "2026-01-10"

// ---------------------------------------------------------------

Instance: example-med-admin
InstanceOf: MedicationAdministration
Title: "Example MedicationAdministration (Stub)"
Description: "Placeholder medication administration used as a reference target in adverse event examples."
Usage: #example
* id = "example-med-admin"
* status = #completed
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

// ---------------------------------------------------------------

Instance: example-diagnostic-request
InstanceOf: ServiceRequest
Title: "Example Diagnostic ServiceRequest (Stub)"
Description: "Placeholder diagnostic service request used as a reference target in diagnostic report examples."
Usage: #example
* id = "example-diagnostic-request"
* status = #completed
* intent = #order
* code = SHAInterventionsCS#SHA-BIOPSY "SHA: Diagnostic Biopsy"
* subject = Reference(Patient/example-patient)

// ---------------------------------------------------------------

Instance: example-oncology-claim
InstanceOf: Claim
Title: "Example Oncology Claim (Stub)"
Description: "Placeholder claim used as a reference target in claim response examples."
Usage: #example
* id = "example-oncology-claim"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #preauthorization
* patient = Reference(Patient/example-patient)
* created = "2026-01-15"
* provider = Reference(Organization/example-organization)
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
* item[0].detail[0].unitPrice.value = 15000
* item[0].detail[0].unitPrice.currency = #KES
* item[0].detail[0].quantity.value = 1
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"

// ---------------------------------------------------------------

Instance: example-target-lesion
InstanceOf: Observation
Title: "Example Target Lesion Observation (Stub)"
Description: "Placeholder RECIST target lesion observation used as a reference target in response assessment examples."
Usage: #example
* id = "example-target-lesion"
* status = #final
* code = SHAInterventionsCS#SHA-IMAGING "SHA: Oncology Diagnostic Imaging"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-03-15"
* performer[0] = Reference(Practitioner/example-practitioner)
* valueQuantity.value = 18
* valueQuantity.unit = "mm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mm
