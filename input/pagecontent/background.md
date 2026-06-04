### Background

#### Kenya's Cancer Burden

Cancer is a leading cause of morbidity and mortality in Kenya. The Kenya National Cancer Registry
estimates over **47,000 new cancer cases** annually, with breast, cervical, prostate, oesophageal,
and colorectal cancers among the most prevalent. Childhood cancers — including Burkitt lymphoma and
Wilms tumour — present a significant burden unique to the Kenyan context.

Kenya's cancer mortality rate is high, partly due to late-stage diagnosis and limited access to
comprehensive cancer care outside major referral centres such as Kenyatta National Hospital (KNH),
Moi Teaching and Referral Hospital (MTRH), and a growing network of county hospitals.

<div class="nccp-info-box">
  <strong>National Cancer Incidence (2023 Estimate)</strong>
  Kenya National Cancer Registry estimates approximately 47,887 new cancer cases per year,
  with a cancer-related mortality of roughly 32,987 deaths annually.
</div>

---

#### The National Cancer Control Programme (NCCP)

The **National Cancer Control Programme (NCCP)** is Kenya's coordinated government framework for
reducing the cancer burden through:

- **Primary prevention** — tobacco control, HPV vaccination, cancer risk reduction campaigns
- **Early detection and screening** — cervical, breast, and colorectal cancer screening programmes
- **Diagnosis and staging** — strengthening pathology, imaging, and molecular diagnostics
- **Treatment** — expanding access to surgery, chemotherapy, radiotherapy, and palliative care
- **Palliative care** — pain management and end-of-life support
- **Surveillance and research** — population-based cancer registries and clinical data collection

The NCCP operates under the Division of Non-Communicable Diseases (DNCD) within the Ministry
of Health, in collaboration with county health departments, national referral hospitals, and
development partners.

---

#### Digital Health Agency (DHA) Role

The **Digital Health Agency (DHA)**, established under the Kenya Health Policy 2014–2030 and the
Kenya Digital Health Act, is the statutory body responsible for coordinating digital health
infrastructure in Kenya. DHA's mandate includes:

- Developing and maintaining national health information systems
- Setting interoperability standards for health data exchange
- Managing the Kenya Health Information System (KHIS/DHIS2)
- Publishing and maintaining national FHIR Implementation Guides
- Operating the Kenya National Health Terminology Service (KNHTS)

This NCCP FHIR IG is one of a suite of DHA-published IGs that together form the **Kenya National
Health Information Interoperability Framework (NHIIF)**.

---

#### Policy and Legislative Context

| Policy / Act | Relevance |
|---|---|
| Kenya Health Policy 2014–2030 | Mandates a functional national cancer control programme |
| Kenya Digital Health Act (2023) | Establishes DHA and mandates interoperability standards |
| Social Health Insurance Act (2023) | Establishes SHA as the universal health coverage insurer |
| National Cancer Prevention and Control Strategy 2023–2027 | Current NCCP strategic plan |
| Kenya National Cancer Registry Regulations | Governs cancer data collection and reporting |

---

#### Social Health Authority (SHA) Integration

The **Social Health Authority (SHA)** replaced the National Health Insurance Fund (NHIF) as Kenya's
universal health coverage insurer under the Social Health Insurance Act of 2023. Cancer treatment
is a high-cost SHA benefit package. This IG includes claim and eligibility profiles aligned with
SHA's cancer package benefit structure to enable:

- Electronic pre-authorisation for chemotherapy regimens and radiotherapy courses
- Structured itemised claims submission for oncology services
- Real-time eligibility verification before treatment initiation

---

#### Relationship to International Standards

This IG aligns with and references the following international standards:

- **HL7 FHIR R4** — Base specification for all profiles
- **mCODE (Minimal Common Oncology Data Elements)** — Conceptual alignment for oncology data elements
- **SNOMED CT** — Clinical terminology for diagnoses, procedures, and body sites
- **LOINC** — Laboratory observation codes for staging and biomarker results
- **ICD-O-3** — International Classification of Diseases for Oncology, 3rd Edition (morphology)
- **ICD-10** — WHO International Classification of Diseases (diagnosis codes)
- **CTCAE v5.0** — Common Terminology Criteria for Adverse Events (toxicity grading)

---

{% include dependency-table.xhtml %}

{% include cross-version-analysis.xhtml %}
