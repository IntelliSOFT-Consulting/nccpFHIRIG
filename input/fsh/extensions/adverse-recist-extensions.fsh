Extension: CTCAEAttributionExtension
Id: nccp-ctcae-attribution-extension
Title: "CTCAE Attribution Extension"
Description: "Causality attribution of adverse event to treatment"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-ctcae-attribution-extension"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only code
* valueCode from CTCAEAttributionVS (required)

Extension: CausativeMedicationAdministrationExtension
Id: nccp-causative-medication-administration-extension
Title: "Causative Medication Administration Extension"
Description: "Reference to the medication administration that caused the adverse event"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-causative-medication-administration-extension"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only Reference(MedicationAdministration)

Extension: CTCAEGradeExtension
Id: nccp-ctcae-grade-extension
Title: "CTCAE Grade Extension"
Description: "CTCAE severity grade (1-5)"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-ctcae-grade-extension"
* ^context[0].type = #element
* ^context[0].expression = "AdverseEvent"
* value[x] only integer

Extension: CTCAEActionTakenExtension
Id: nccp-ctcae-action-taken-extension
Title: "CTCAE Action Taken Extension"
Description: "Action taken in response to the adverse event"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-ctcae-action-taken-extension"
* ^context[0].type = #element
* ^context[0].expression = "AdverseEvent"
* value[x] only code
* valueCode from $VS_CTCAE_ACTION_TAKEN (required)

Extension: RECISTTimepointExtension
Id: nccp-recist-timepoint-extension
Title: "RECIST Timepoint Extension"
Description: "RECIST assessment timepoint (baseline, on-treatment, etc.)"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-recist-timepoint-extension"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only code
* valueCode from $VS_RECIST_TIMEPOINT (required)

Extension: RECISTTargetLesionIdExtension
Id: nccp-recist-target-lesion-id-extension
Title: "RECIST Target Lesion ID Extension"
Description: "Unique identifier for a RECIST target lesion"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-recist-target-lesion-id-extension"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only string
