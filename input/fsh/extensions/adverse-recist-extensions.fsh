Extension: CTCAEAttributionExtension
Id: ctcae-attribution-extension
Title: "CTCAE Attribution Extension"
Description: "Causality attribution of adverse event to treatment"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ctcae-attribution-extension"
* value[x] only code
* valueCode from CTCAEAttributionVS (required)

Extension: CausativeMedicationAdministrationExtension
Id: causative-medication-administration-extension
Title: "Causative Medication Administration Extension"
Description: "Reference to the medication administration that caused the adverse event"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/causative-medication-administration-extension"
* value[x] only Reference(MedicationAdministration)

Extension: CTCAEGradeExtension
Id: ctcae-grade-extension
Title: "CTCAE Grade Extension"
Description: "CTCAE severity grade (1-5)"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ctcae-grade-extension"
* value[x] only integer

Extension: CTCAEActionTakenExtension
Id: ctcae-action-taken-extension
Title: "CTCAE Action Taken Extension"
Description: "Action taken in response to the adverse event"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/ctcae-action-taken-extension"
* value[x] only code
* valueCode from $VS_CTCAE_ACTION_TAKEN (required)

Extension: RECISTTimepointExtension
Id: recist-timepoint-extension
Title: "RECIST Timepoint Extension"
Description: "RECIST assessment timepoint (baseline, on-treatment, etc.)"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/recist-timepoint-extension"
* value[x] only code
* valueCode from $VS_RECIST_TIMEPOINT (required)

Extension: RECISTTargetLesionIdExtension
Id: recist-target-lesion-id-extension
Title: "RECIST Target Lesion ID Extension"
Description: "Unique identifier for a RECIST target lesion"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/recist-target-lesion-id-extension"
* value[x] only string
