Extension: SessionIdExtension
Id: session-id-extension
Title: "Session ID Extension"
Description: "Unique session identifier from source system"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/session-id-extension"
* value[x] only string

Extension: SessionNumberExtension
Id: session-number-extension
Title: "Session Number Extension"
Description: "Sequential session number within a cycle"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/session-number-extension"
* value[x] only integer

Extension: RegimenReferenceExtension
Id: regimen-reference-extension
Title: "Regimen Reference Extension"
Description: "Reference to the oncology care plan (regimen)"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/regimen-reference-extension"
* value[x] only Reference(CarePlan)

Extension: TreatmentEligibilityExtension
Id: treatment-eligibility-extension
Title: "Treatment Eligibility Extension"
Description: "Flag indicating patient is eligible for treatment"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/treatment-eligibility-extension"
* value[x] only boolean

Extension: TreatmentSettingExtension
Id: treatment-setting-extension
Title: "Treatment Setting Extension"
Description: "Clinical setting where treatment is administered"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/treatment-setting-extension"
* value[x] only code
* valueCode from $VS_TREATMENT_SETTING (required)
