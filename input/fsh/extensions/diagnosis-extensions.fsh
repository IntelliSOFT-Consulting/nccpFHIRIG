Extension: DiagnosisStatusExtension
Id: nccp-diagnosis-status-extension
Title: "Diagnosis Status Extension"
Description: "Current status of the oncology diagnosis"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-diagnosis-status-extension"
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only code
* valueCode from $VS_DIAGNOSIS_STATUS (required)

Extension: SuspicionLevelExtension
Id: nccp-suspicion-level-extension
Title: "Cancer Suspicion Level Extension"
Description: "Level of clinical suspicion for cancer"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-suspicion-level-extension"
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only code
* valueCode from CancerSuspicionLevelVS (required)

Extension: ReasonForSuspicionExtension
Id: nccp-reason-for-suspicion-extension
Title: "Reason For Suspicion Extension"
Description: "Reason for clinical cancer suspicion"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-reason-for-suspicion-extension"
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only code
* valueCode from ReasonForSuspicionVS (required)

Extension: PostCoordinatedCodeExtension
Id: nccp-post-coordinated-code-extension
Title: "Post-Coordinated ICD-11 Code Extension"
Description: "Full post-coordinated ICD-11 code string"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-post-coordinated-code-extension"
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only string

Extension: MetastasesSitesExtension
Id: nccp-metastases-sites-extension
Title: "Metastases Sites Extension"
Description: "Sites of metastatic disease"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-metastases-sites-extension"
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* ^context[1].type = #element
* ^context[1].expression = "Claim"
* value[x] only code
* valueCode from $VS_METASTASES_SITES (required)
