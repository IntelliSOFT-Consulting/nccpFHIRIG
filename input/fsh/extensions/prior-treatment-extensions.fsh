// ============================================================
// PRIOR TREATMENT & REFERRAL EXTENSIONS
// ============================================================

Extension: BMTTypeExtension
Id: nccp-bmt-type-extension
Title: "BMT Type Extension"
Description: "Type of bone marrow transplant procedure"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-bmt-type-extension"
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only code
* valueCode from $VS_BMT_TYPE (required)

Extension: ReferralSourceExtension
Id: nccp-referral-source-extension
Title: "Referral Source Extension"
Description: "Source of the oncology referral"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-referral-source-extension"
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
* value[x] only code
* valueCode from $VS_REFERRAL_SOURCE (required)

Extension: TreatmentStartedAtNotificationExtension
Id: nccp-treatment-started-at-notification-extension
Title: "Prior Treatment Outcome Extension"
Description: "Outcome of prior treatment before referral"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-treatment-started-at-notification-extension"
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
* value[x] only code
* valueCode from $VS_PRIOR_TREATMENT_OUTCOME (required)
