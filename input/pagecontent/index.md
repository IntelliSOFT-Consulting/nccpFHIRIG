<div class="nccp-hero">
  <span class="hero-badge">Draft · Version 0.1.0 · FHIR R4</span>
  <h1>Kenya NCCP FHIR Implementation Guide</h1>
  <p class="hero-subtitle">
    Standardizing oncology data exchange for the <strong>National Cancer Control Programme</strong>
    across Kenya's cancer treatment facilities, referral networks, and Social Health Authority (SHA)
    claims system.
  </p>
</div>

<div class="nccp-stats">
  <div class="nccp-stat-card">
    <span class="stat-number">36</span>
    <span class="stat-label">FHIR Profiles</span>
  </div>
  <div class="nccp-stat-card">
    <span class="stat-number">55</span>
    <span class="stat-label">Extensions</span>
  </div>
  <div class="nccp-stat-card">
    <span class="stat-number">31</span>
    <span class="stat-label">Value Sets</span>
  </div>
  <div class="nccp-stat-card">
    <span class="stat-number">31</span>
    <span class="stat-label">Code Systems</span>
  </div>
</div>

### About This Guide

This Implementation Guide (IG) defines the FHIR R4 data exchange specification for the
**Kenya National Cancer Control Programme (NCCP)**, published by the
**Digital Health Agency (DHA)** under the Ministry of Health, Republic of Kenya.

The NCCP IG enables interoperable, structured exchange of oncology clinical data — including
diagnosis, chemotherapy and radiotherapy care plans, treatment administration records,
adverse events, staging observations, and insurance claims — across Kenya's cancer care ecosystem.

<div class="nccp-info-box">
  <strong>Current Status: Draft (CI Build)</strong>
  This Implementation Guide is under active development. Content is subject to change.
  Feedback and contributions are welcome via the
  <a href="https://dha.go.ke" no-external="true">Digital Health Agency</a>.
</div>

---

### Scope of This Guide

<div class="nccp-card-grid">

<div class="nccp-card">
  <h3>Oncology Diagnosis</h3>
  Structured FHIR profiles for cancer diagnosis conditions, morphology observations, TNM staging,
  and performance status. Supports ICD-O-3, SNOMED CT, and LOINC coding.
</div>

<div class="nccp-card">
  <h3>Chemotherapy</h3>
  Profiles for chemotherapy care plans, medication requests (BSA-based dosing), medication
  administration records, and request groups for cycle/session management.
</div>

<div class="nccp-card">
  <h3>Radiotherapy</h3>
  Profiles capturing radiotherapy service requests, treatment plans (fractions, dose, technique),
  fraction delivery procedures, cumulative dose observations, and target volumes.
</div>

<div class="nccp-card">
  <h3>Care Coordination</h3>
  Oncology episode of care, encounters, multidisciplinary care team, and care plan structures
  linking diagnosis through treatment across facilities.
</div>

<div class="nccp-card">
  <h3>Adverse Events and Toxicity</h3>
  CTCAE-graded adverse event observations and oncology adverse event profiles for toxicity
  monitoring during active cancer treatment.
</div>

<div class="nccp-card">
  <h3>Claims and Eligibility</h3>
  SHA insurance claim and claim response profiles, coverage eligibility requests, and referral
  service request profiles aligned with SHA benefit packages.
</div>

</div>

---

### Design Principles

This IG is built on the following principles aligned with Kenya's national digital health strategy:

- **FHIR R4 Compliance** — All profiles are valid FHIR R4 constraints that do not relax base
  resource cardinalities or override required terminology bindings.
- **Kenya-first Terminology** — Value sets and code systems reference the Kenya National Health
  Terminology Service (KNHTS) hosted at `ilm-hie.dha.go.ke`, the Kenya Pharmaceutical and
  Poisons Board (PPB), and the Social Health Authority (SHA) intervention catalogue.
- **Interoperability with KHIS/SHA** — Resources are designed for exchange with the Kenya Health
  Information System (KHIS) and the Social Health Authority (SHA) claims platform.
- **Extensibility** — Extensions follow FHIR best practices and are named, typed, and scoped
  to the resources they extend.
- **Alignment with mCODE** — Where applicable, profiles align conceptually with the HL7 minimal
  Common Oncology Data Elements (mCODE) standard.

---

### Relationship to Other Kenya Health IGs

| Implementation Guide | Relationship |
|---|---|
| Kenya Core FHIR IG | This IG builds on Kenya Core Patient, Practitioner, and Organization profiles |
| Kenya ePrescription IG | Chemotherapy medication requests align with ePrescription patterns |
| SHA Claims IG | Claim and ClaimResponse profiles are compatible with SHA adjudication workflows |

---

### How to Read This Guide

- **[Background](background.html)** — Policy context, National Cancer Control Programme overview,
  and cancer burden in Kenya
- **[Use Cases](use-cases.html)** — Supported clinical workflows and data exchange scenarios
- **[Artifacts](artifacts.html)** — All FHIR profiles, extensions, value sets, code systems, and
  example instances
- **[Downloads](downloads.html)** — Package downloads and integration resources

---

<div class="nccp-info-box green">
  <strong>Contact and Feedback</strong>
  For questions about this Implementation Guide, contact the Digital Health Agency FHIR Team
  at <a href="mailto:info@dha.go.ke">info@dha.go.ke</a> or visit
  <a href="https://dha.go.ke" no-external="true">dha.go.ke</a>.
</div>
