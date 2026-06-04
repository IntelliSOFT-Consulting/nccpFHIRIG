Extension: SessionIdExtension
Id: nccp-session-id-extension
Title: "Session ID Extension"
Description: "Unique session identifier from source system"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-session-id-extension"
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* ^context[1].type = #element
* ^context[1].expression = "MedicationAdministration"
* value[x] only string

Extension: SessionNumberExtension
Id: nccp-session-number-extension
Title: "Session Number Extension"
Description: "Sequential session number within a cycle"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-session-number-extension"
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* ^context[1].type = #element
* ^context[1].expression = "MedicationAdministration"
* ^context[2].type = #element
* ^context[2].expression = "Claim"
* value[x] only integer

Extension: RegimenReferenceExtension
Id: nccp-regimen-reference-extension
Title: "Regimen Reference Extension"
Description: "Reference to the oncology care plan (regimen)"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-regimen-reference-extension"
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* ^context[1].type = #element
* ^context[1].expression = "CoverageEligibilityRequest"
* ^context[2].type = #element
* ^context[2].expression = "Claim"
* value[x] only Reference(CarePlan)

Extension: TreatmentEligibilityExtension
Id: nccp-treatment-eligibility-extension
Title: "Treatment Eligibility Extension"
Description: "Flag indicating patient is eligible for treatment"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-treatment-eligibility-extension"
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only boolean

Extension: TreatmentSettingExtension
Id: nccp-treatment-setting-extension
Title: "Treatment Setting Extension"
Description: "Clinical setting where treatment is administered"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-treatment-setting-extension"
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* ^context[1].type = #element
* ^context[1].expression = "Claim"
* value[x] only code
* valueCode from $VS_TREATMENT_SETTING (required)
