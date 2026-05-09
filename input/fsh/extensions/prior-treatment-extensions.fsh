// ============================================================
// PRIOR TREATMENT & REFERRAL EXTENSIONS
// ============================================================

Extension: BMTTypeExtension
Id: bmt-type-extension
Title: "BMT Type Extension"
Description: "Type of bone marrow transplant procedure"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/bmt-type-extension"
* value[x] only code
* valueCode from $VS_BMT_TYPE (required)

Extension: ReferralSourceExtension
Id: referral-source-extension
Title: "Referral Source Extension"
Description: "Source of the oncology referral"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/referral-source-extension"
* value[x] only code
* valueCode from $VS_REFERRAL_SOURCE (required)

Extension: TreatmentStartedAtNotificationExtension
Id: treatment-started-at-notification-extension
Title: "Prior Treatment Outcome Extension"
Description: "Outcome of prior treatment before referral"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/treatment-started-at-notification-extension"
* value[x] only code
* valueCode from $VS_PRIOR_TREATMENT_OUTCOME (required)
