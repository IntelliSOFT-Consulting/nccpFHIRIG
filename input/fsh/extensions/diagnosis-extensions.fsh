Extension: DiagnosisStatusExtension
Id: diagnosis-status-extension
Title: "Diagnosis Status Extension"
Description: "Current status of the oncology diagnosis"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/diagnosis-status-extension"
* value[x] only code
* valueCode from $VS_DIAGNOSIS_STATUS (required)

Extension: SuspicionLevelExtension
Id: suspicion-level-extension
Title: "Cancer Suspicion Level Extension"
Description: "Level of clinical suspicion for cancer"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/suspicion-level-extension"
* value[x] only code
* valueCode from CancerSuspicionLevelVS (required)

Extension: ReasonForSuspicionExtension
Id: reason-for-suspicion-extension
Title: "Reason For Suspicion Extension"
Description: "Reason for clinical cancer suspicion"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/reason-for-suspicion-extension"
* value[x] only code
* valueCode from ReasonForSuspicionVS (extensible)

Extension: PostCoordinatedCodeExtension
Id: post-coordinated-code-extension
Title: "Post-Coordinated ICD-11 Code Extension"
Description: "Full post-coordinated ICD-11 code string"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/post-coordinated-code-extension"
* value[x] only string

Extension: MetastasesSitesExtension
Id: metastases-sites-extension
Title: "Metastases Sites Extension"
Description: "Sites of metastatic disease"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/metastases-sites-extension"
* value[x] only code
* valueCode from $VS_METASTASES_SITES (extensible)
