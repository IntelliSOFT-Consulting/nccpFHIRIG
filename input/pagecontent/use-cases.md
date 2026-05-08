### Use Cases

This page describes the primary clinical and administrative workflows supported by this
Implementation Guide. Each use case maps to one or more FHIR profiles defined in the
[Artifacts](artifacts.html) section.

---

#### UC-01: Cancer Diagnosis Registration

**Actor:** Oncologist / Pathologist at a cancer treatment facility  
**System:** Electronic Medical Record (EMR) / Cancer Registry System  
**Trigger:** New cancer diagnosis confirmed (pathology report received)

**Workflow:**

1. Oncologist records a new cancer diagnosis as a FHIR **Condition** constrained by the
   [OncologyDiagnosisCondition](StructureDefinition-nccp-oncology-diagnosis-condition.html) profile.
2. Morphology is recorded as a **MorphologyObservation** (ICD-O-3 code + method).
3. TNM staging is recorded as a **TNMStagingObservation** with T, N, M components.
4. An **OncologyEpisodeOfCare** is opened, linking the patient, diagnosis, care team, and facility.
5. Performance status (ECOG or Karnofsky) is captured as a **PerformanceStatusObservation**.

**Key Profiles Used:**
[OncologyDiagnosisCondition](StructureDefinition-nccp-oncology-diagnosis-condition.html) ·
[MorphologyObservation](StructureDefinition-nccp-morphology-observation.html) ·
[TNMStagingObservation](StructureDefinition-nccp-tnm-staging-observation.html) ·
[OncologyEpisodeOfCare](StructureDefinition-nccp-oncology-episode-of-care.html)

---

#### UC-02: Chemotherapy Prescription and Administration

**Actor:** Medical Oncologist (prescribing), Oncology Nurse (administering)  
**System:** Oncology Pharmacy / EMR  
**Trigger:** Decision to initiate or continue a chemotherapy regimen

**Workflow:**

1. Oncologist creates an **OncologyCareplan** specifying the regimen code, planned cycles,
   cycle length, and treatment intent (curative, palliative, adjuvant, neo-adjuvant).
2. Each cycle's medication orders are grouped in an **OncologyRequestGroup** with a cycle number.
3. Individual agents are prescribed as **ChemotherapyMedicationRequest** instances with BSA-based
   dose, route, and cycle day start/end.
4. On the day of administration, the oncology nurse records each agent as an
   **OncologyMedicationAdministration** linked to the encounter and session.
5. Adverse events (e.g., nausea grade 2) are captured as **CTCAEAdverseEventObservation** records.

**Key Profiles Used:**
[OncologyCareplan](StructureDefinition-nccp-oncology-careplan.html) ·
[ChemotherapyMedicationRequest](StructureDefinition-nccp-chemotherapy-medication-request.html) ·
[OncologyMedicationAdministration](StructureDefinition-nccp-oncology-medication-administration.html) ·
[OncologyRequestGroup](StructureDefinition-nccp-oncology-request-group.html)

---

#### UC-03: Radiotherapy Planning and Treatment

**Actor:** Radiation Oncologist (prescribing), Radiation Therapist (delivering)  
**System:** Radiotherapy Information System (RIS) / EMR  
**Trigger:** Decision to initiate radiotherapy

**Workflow:**

1. Radiation oncologist creates a **RadiotherapyServiceRequest** with intent, technique,
   target volume, and body site.
2. A **RadiotherapyCarePlan** is authored capturing the full treatment protocol
   (total fractions, dose per fraction, technique).
3. Each fraction is recorded as a **RadiotherapyTreatmentProcedure** with fraction number,
   cumulative dose, beam type, and treatment machine.
4. A **RadiotherapyDoseObservation** summarises cumulative dose at course completion.

**Key Profiles Used:**
[RadiotherapyServiceRequest](StructureDefinition-nccp-radiotherapy-service-request.html) ·
[RadiotherapyCarePlan](StructureDefinition-nccp-radiotherapy-care-plan.html) ·
[RadiotherapyTreatmentProcedure](StructureDefinition-nccp-radiotherapy-treatment-procedure.html) ·
[RadiotherapyDoseObservation](StructureDefinition-nccp-radiotherapy-dose-observation.html)

---

#### UC-04: Oncology Referral and Pre-Authorisation

**Actor:** Referring clinician (e.g., county hospital), Receiving oncologist (referral centre)  
**System:** Referral Management System / SHA Portal  
**Trigger:** Patient requires oncology care beyond referring facility's capability

**Workflow:**

1. Referring clinician creates an **OncologyReferralServiceRequest** specifying the reason,
   diagnosis reference, and priority.
2. An **OncologyCoverageEligibilityRequest** is submitted to SHA to verify the patient's
   cancer benefit coverage.
3. SHA responds with a CoverageEligibilityResponse confirming covered services.
4. On authorisation, the oncology centre begins treatment and submits
   **OncologyClaim** instances for reimbursement.
5. SHA adjudicates and returns an **OncologyClaimResponse** with payment details.

**Key Profiles Used:**
[OncologyReferralServiceRequest](StructureDefinition-nccp-oncology-referral-service-request.html) ·
[OncologyCoverageEligibilityRequest](StructureDefinition-nccp-oncology-coverage-eligibility-request.html) ·
[OncologyClaim](StructureDefinition-nccp-oncology-claim.html) ·
[OncologyClaimResponse](StructureDefinition-nccp-oncology-claim-response.html)

---

#### UC-05: Multidisciplinary Tumour Board

**Actor:** Multidisciplinary team (oncologist, surgeon, pathologist, radiologist, nurse, social worker)  
**System:** EMR / MDT Coordination System  
**Trigger:** New cancer case or treatment response review

**Workflow:**

1. An **OncologyCareTeam** resource is created, listing all participating practitioners
   and their roles for the patient's case.
2. The **OncologyPlanDefinition** is referenced as the treatment protocol template.
3. A new **OncologyCareplan** is authored based on the MDT consensus.
4. An **OncologyEncounter** of type "MDT Meeting" is recorded, linked to the episode of care.

**Key Profiles Used:**
[OncologyCareTeam](StructureDefinition-nccp-oncology-care-team.html) ·
[OncologyPlanDefinition](StructureDefinition-nccp-oncology-plan-definition.html) ·
[OncologyCareplan](StructureDefinition-nccp-oncology-careplan.html) ·
[OncologyEncounter](StructureDefinition-nccp-oncology-encounter.html)

---

#### UC-06: Treatment Response Assessment (RECIST)

**Actor:** Oncologist / Radiologist  
**System:** EMR / PACS  
**Trigger:** Imaging review after chemotherapy cycles or radiotherapy course

**Workflow:**

1. Radiologist performs imaging assessment using RECIST 1.1 criteria.
2. A **RECISTResponseObservation** is recorded with timepoint and overall response category
   (CR, PR, SD, PD).
3. A new cycle of chemotherapy is initiated or the care plan is modified based on response.

**Key Profiles Used:**
[RECISTResponseObservation](StructureDefinition-nccp-recist-response-observation.html)

---

<div class="nccp-info-box green">
  <strong>Actor Definitions</strong>
  All actors referenced in these use cases are implementers (EMR systems, RIS, pharmacy systems,
  SHA portal) or clinical roles. No actor profiles are formally defined in this version of the IG.
</div>
