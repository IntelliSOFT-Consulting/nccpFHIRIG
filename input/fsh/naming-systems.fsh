// ============================================================
// NAMING SYSTEMS
// Formally registers every identifier system URL used in this IG.
// The IG Publisher resolves these to eliminate
// "No definition could be found for URL value" QA warnings.
// ============================================================

Instance: nccp-careplan-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Oncology Care Plan Identifier"
Description: "Identifier system for oncology chemotherapy care plans issued within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPCarePlanId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier assigned to each oncology (chemotherapy) care plan within the NCCP system. Format: CP-YYYY-NNNNN."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/careplan-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Assigned by the NCCP source system at care-plan creation."

// ---------------------------------------------------------------

Instance: nccp-rt-careplan-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Radiotherapy Care Plan Identifier"
Description: "Identifier system for radiotherapy care plans issued within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPRTCarePlanId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier assigned to each radiotherapy care plan. Format: RT-CP-YYYY-NNNNN."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/rt-careplan-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Assigned by the NCCP source system at radiotherapy plan creation."

// ---------------------------------------------------------------

Instance: nccp-encounter-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Oncology Encounter Identifier"
Description: "Identifier system for oncology clinical encounters (treatment sessions, consultations, diagnostic visits) within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPEncounterId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier for each oncology encounter. Format: ENC-YYYY-NNNNN."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/encounter-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Assigned by the facility EMR or NCCP system at encounter creation."

// ---------------------------------------------------------------

Instance: nccp-episode-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Episode of Care Identifier"
Description: "Identifier system for oncology episodes of care within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPEpisodeId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier assigned to each cancer care episode for a patient. Format: EOC-YYYY-NNNNN."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/episode-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Assigned at episode registration; spans the full cancer care journey."

// ---------------------------------------------------------------

Instance: nccp-med-request-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Medication Request Identifier"
Description: "Identifier system for chemotherapy and oncology medication requests within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPMedRequestId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier for each medication request (prescription). Format: MR-YYYY-NNNNN."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/med-request-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Assigned by the prescribing system; links to the care plan and session."

// ---------------------------------------------------------------

Instance: nccp-regimen-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Regimen / Plan Definition Identifier"
Description: "Identifier system for oncology regimen templates (PlanDefinitions) within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPRegimenId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier for each chemotherapy or radiotherapy regimen protocol template. Format: REG-XXXXXX."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/regimen-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Assigned by the DHA clinical team; stable across revisions (version is tracked separately)."

// ---------------------------------------------------------------

Instance: nccp-request-group-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Treatment Session Request Group Identifier"
Description: "Identifier system for oncology request groups (treatment session bundles) within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPRequestGroupId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier for a treatment session request group that bundles all medication orders for one cycle-day. Format: RG-YYYY-NNNNN."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/request-group-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Generated at session dispatch; links all cycle-day medication requests."

// ---------------------------------------------------------------

Instance: nccp-service-request-id
InstanceOf: NamingSystem
Title: "Kenya NCCP Diagnostic Service Request Identifier"
Description: "Identifier system for oncology diagnostic service requests (lab, imaging, pathology) within the Kenya NCCP programme."
Usage: #definition
* name = "NCCPServiceRequestId"
* status = #active
* kind = #identifier
* date = "2026-06-04"
* publisher = "Digital Health Agency (DHA) — Kenya"
* responsible = "Digital Health Agency (DHA) — Kenya"
* description = "Unique identifier for each diagnostic investigation request. Format: SR-DIAG-YYYY-NNNNN."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://nshr-uat.sha.go.ke/fhir/service-request-id"
* uniqueId[0].preferred = true
* uniqueId[0].comment = "Assigned by the requesting system; referenced by the resulting DiagnosticReport."
