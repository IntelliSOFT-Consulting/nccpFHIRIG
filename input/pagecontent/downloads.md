### Downloads

This page provides downloadable artefacts for implementers integrating with the Kenya NCCP FHIR
Implementation Guide.

---

#### FHIR Package

The FHIR NPM package contains all compiled profiles, extensions, value sets, code systems, and
example instances as FHIR R4 JSON resources, suitable for loading into any FHIR validator or server.

| Resource | Format | Description |
|---|---|---|
| `fhir.ke.nccp-0.1.0.tgz` | NPM Package (`.tgz`) | Full IG FHIR NPM package |
| `package.json` | JSON | Package manifest |

<div class="nccp-info-box">
  <strong>Package ID:</strong> <code>fhir.ke.nccp</code><br/>
  <strong>Version:</strong> <code>0.1.0</code><br/>
  <strong>FHIR Version:</strong> <code>4.0.1</code><br/>
  <strong>Canonical:</strong> <code>https://nshr-uat.sha.go.ke/fhir</code>
</div>

---

#### Validation

To validate FHIR resources against this IG, use the HL7 FHIR Validator with this package loaded:

```
java -jar validator_cli.jar <resource.json> \
  -ig fhir.ke.nccp#0.1.0 \
  -version 4.0.1
```

Alternatively, validate online at [validator.fhir.org](https://validator.fhir.org) by loading the
package from this IG.

---

#### Source Files

The FSH source files for this IG are organised into the following structure:

```
input/fsh/
  aliases.fsh                    — External ValueSet aliases
  profiles/
    diagnosis-profiles.fsh       — OncologyDiagnosisCondition, MorphologyObservation
    staging-observation-profiles.fsh — TNM, Performance Status, BSA
    oncology-careplan-profiles.fsh   — OncologyCareplan, RadiotherapyCarePlan
    care-organization-profiles.fsh   — CareTeam, PlanDefinition, RequestGroup
    episode-encounter-profiles.fsh   — EpisodeOfCare, Encounter
    medication-profiles.fsh          — ChemotherapyMedicationRequest, MedicationAdministration
    radiotherapy-profiles.fsh        — RT ServiceRequest, TreatmentProcedure, DoseObservation
    adverse-event-profiles.fsh       — CTCAEAdverseEvent, OncologyAdverseEvent
    referral-financial-profiles.fsh  — Referral, Claim, ClaimResponse, CoverageEligibility
    suspicion-diagnostic-profiles.fsh — CancerSuspicion, DiagnosticRequest, RECIST
    prior-treatment-profiles.fsh     — Prior Chemotherapy, Radiotherapy, BMT
  extensions/
    chemotherapy-extensions.fsh
    radiotherapy-extensions.fsh
    session-extensions.fsh
    diagnosis-extensions.fsh
    adverse-recist-extensions.fsh
    claim-extensions.fsh
    prior-treatment-extensions.fsh
  codesystems/
    care-plan-codesystems.fsh
    condition-codesystems.fsh
    staging-morphology-codesystems.fsh
    tnm-performance-codesystems.fsh
    medication-codesystems.fsh
    suspicion-diagnostic-codesystems.fsh
    adverse-recist-codesystems.fsh
  valuesets/
    nccp-valuesets.fsh
  examples/
    nccp-examples.fsh
```

---

#### External Terminology Dependencies

This IG references the following external terminology servers. Implementers must have access
to these servers for full terminology validation:

| Terminology | Server | Organisation |
|---|---|---|
| KNHTS Clinical Value Sets | `https://ilm-hie.dha.go.ke/ocl/` | Digital Health Agency (DHA) |
| PPB Generic Products | `https://ilm-hie.dha.go.ke/ocl/orgs/MOH-PPB/` | Pharmacy and Poisons Board (PPB) |
| SHA Interventions | `https://ilm-hie.dha.go.ke/ocl/orgs/MOH-KENYA/` | Social Health Authority (SHA) |
| SNOMED CT | `https://snomed.info/sct` | SNOMED International |
| LOINC | `https://loinc.org` | Regenstrief Institute |

---

#### Contact

For technical queries about implementation:

- **Email:** [info@dha.go.ke](mailto:info@dha.go.ke)
- **Website:** [https://dha.go.ke](https://dha.go.ke)
- **DHA FHIR Registry:** [https://fhir.dha.go.ke](https://fhir.dha.go.ke)
