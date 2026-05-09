// ============================================================
// REFERRAL & FINANCIAL PROFILES
// ============================================================

// ---- PROFILE 21: OncologyReferralServiceRequest ----
Profile: OncologyReferralServiceRequest
Parent: ServiceRequest
Id: nccp-oncology-referral-service-request
Title: "NCCP Oncology Referral Service Request"
Description: "Records referral of a patient to an oncology specialist or cancer centre."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-referral-service-request"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* intent 1..1 MS
* intent from http://hl7.org/fhir/ValueSet/request-intent (required)
* category 1..1 MS
* category from $VS_SHA_INTERVENTIONS (required)
* code 1..1 MS
* code from $VS_SHA_INTERVENTIONS (required)
* subject 1..1 MS
* subject only Reference(Patient)
* requester 0..1 MS
* performer 0..* MS
* performer only Reference(Organization)
* reasonCode 1..* MS
* reasonCode from ConditionCodesVS (required)
* note 0..* MS
* extension contains
    ReferralSourceExtension named referralSource 1..1 MS and
    TreatmentStartedAtNotificationExtension named treatmentStartedAtNotification 0..1 MS

// ---- PROFILE 22: OncologyCoverageEligibilityRequest ----
Profile: OncologyCoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Id: nccp-oncology-coverage-eligibility-request
Title: "NCCP Oncology Coverage Eligibility Request"
Description: "Request to verify patient insurance coverage eligibility for oncology treatment."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-coverage-eligibility-request"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)
* purpose 1..* MS
* purpose from http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose (required)
* patient 1..1 MS
* patient only Reference(Patient)
* created 1..1 MS
* provider 1..1 MS
* insurer 1..1 MS
* insurer only Reference(Organization)
* insurance.coverage 1..1 MS
* insurance.coverage only Reference(Coverage)
* item.productOrService 0..1 MS
* item.productOrService from $VS_SHA_INTERVENTIONS (required)
* extension contains
    RegimenReferenceExtension named regimenReference 0..1 MS

// ---- PROFILE 23: OncologyClaim ----
Profile: OncologyClaim
Parent: Claim
Id: nccp-oncology-claim
Title: "NCCP Oncology Claim"
Description: "Insurance claim for oncology treatment submitted to SHA, including staging, treatment setting and session details."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-claim"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)
* type 1..1 MS
* type from http://hl7.org/fhir/ValueSet/claim-type (required)
* subType 0..1 MS
* subType from $VS_SHA_INTERVENTIONS (required)
* use 1..1 MS
* use from http://hl7.org/fhir/ValueSet/claim-use (required)
* patient 1..1 MS
* patient only Reference(Patient)
* created 1..1 MS
* provider 1..1 MS
* insurance.coverage 1..1 MS
* insurance.coverage only Reference(Coverage)
* diagnosis.diagnosisReference 0..1 MS
* diagnosis.diagnosisReference only Reference(OncologyDiagnosisCondition)
* item.productOrService 1..1 MS
* item.productOrService from $VS_SHA_INTERVENTIONS (required)
* item.unitPrice 1..1 MS
* item.quantity 1..1 MS
* item.detail.productOrService 1..1 MS
* item.detail.productOrService from $VS_SHA_INTERVENTIONS (required)
* item.detail.unitPrice 0..1 MS
* item.detail.quantity 0..1 MS
* supportingInfo.value[x] MS
* extension contains
    CarcinomasStagingExtension named carcinomaStaging 1..1 MS and
    MetastasesSitesExtension named metastasesSites 0..* MS and
    TreatmentSettingExtension named treatmentSetting 1..* MS and
    SessionExpectedDateExtension named sessionExpectedDate 1..1 MS and
    SessionsRequiredExtension named sessionsRequired 1..1 MS and
    CostPerSessionExtension named costPerSession 1..1 MS and
    CycleNumberExtension named cycleNumber 0..1 MS and
    SessionNumberExtension named sessionNumber 0..1 MS and
    RegimenReferenceExtension named regimenReference 1..1 MS and
    ParentAuthorizationExtension named parentAuthorization 0..1 MS and
    HasCoinsuranceExtension named hasCoinsurance 0..1 MS and
    CoinsuranceDetailsExtension named coinsuranceDetails 0..1 MS and
    ComorbidityExtension named comorbidity 0..1 MS

// ---- PROFILE 24: OncologyClaimResponse ----
Profile: OncologyClaimResponse
Parent: ClaimResponse
Id: nccp-oncology-claim-response
Title: "NCCP Oncology Claim Response"
Description: "Response from SHA to an oncology prior authorization or claim, including sessions covered and cycle boundaries."
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/nccp-oncology-claim-response"
* ^status = #draft

* meta.profile 1..* MS
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/fm-status (required)
* type 1..1 MS
* type from http://hl7.org/fhir/ValueSet/claim-type (required)
* use 1..1 MS
* use from http://hl7.org/fhir/ValueSet/claim-use (required)
* patient 1..1 MS
* patient only Reference(Patient)
* created 1..1 MS
* insurer 1..1 MS
* insurer only Reference(Organization)
* request 1..1 MS
* request only Reference(Claim)
* outcome 1..1 MS
* outcome from http://hl7.org/fhir/ValueSet/remittance-outcome (required)
* preAuthRef 0..1 MS
* payment.amount MS
* extension contains
    SessionsCoveredExtension named sessionsCovered 1..1 MS and
    SessionsUsedExtension named sessionsUsed 1..1 MS and
    StartCycleExtension named startCycle 0..1 MS and
    EndCycleExtension named endCycle 0..1 MS
