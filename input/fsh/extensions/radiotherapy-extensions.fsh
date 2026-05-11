Extension: RTIntentExtension
Id: rt-intent-extension
Title: "Radiotherapy Intent Extension"
Description: "Intent of radiotherapy treatment"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-intent-extension"
* value[x] only code
* valueCode from $VS_RT_INTENT (required)

Extension: RTTotalFractionsExtension
Id: rt-total-fractions-extension
Title: "Radiotherapy Total Fractions Extension"
Description: "Total number of radiotherapy fractions planned"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-total-fractions-extension"
* value[x] only integer

Extension: RTDosePerFractionExtension
Id: rt-dose-per-fraction-extension
Title: "Radiotherapy Dose Per Fraction Extension"
Description: "Dose delivered per radiotherapy fraction (in Gy)"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-dose-per-fraction-extension"
* value[x] only Quantity

Extension: RTTreatmentTechniqueExtension
Id: rt-treatment-technique-extension
Title: "Radiotherapy Treatment Technique Extension"
Description: "Technique used for radiotherapy delivery"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-treatment-technique-extension"
* value[x] only code
* valueCode from $VS_RT_TREATMENT_TECHNIQUE (required)

Extension: RTTargetVolumeExtension
Id: rt-target-volume-extension
Title: "Radiotherapy Target Volume Extension"
Description: "Target volume definition for radiotherapy"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-target-volume-extension"
* value[x] only code
* valueCode from $VS_RT_TARGET_VOLUME (required)

Extension: RTBeamTypeExtension
Id: rt-beam-type-extension
Title: "Radiotherapy Beam Type Extension"
Description: "Type of beam used in radiotherapy"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-beam-type-extension"
* value[x] only code
* valueCode from $VS_RT_BEAM_TYPE (required)

Extension: RTFractionNumberExtension
Id: rt-fraction-number-extension
Title: "Radiotherapy Fraction Number Extension"
Description: "Sequential fraction number in the radiotherapy course"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-fraction-number-extension"
* value[x] only integer

Extension: RTCumulativeDoseExtension
Id: rt-cumulative-dose-extension
Title: "Radiotherapy Cumulative Dose Extension"
Description: "Cumulative radiation dose delivered to date"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-cumulative-dose-extension"
* value[x] only Quantity

Extension: RTTreatmentMachineExtension
Id: rt-treatment-machine-extension
Title: "Radiotherapy Treatment Machine Extension"
Description: "Identifier of the radiotherapy treatment machine used"
* ^url = "https://fhir.dha.go.ke/nccp/StructureDefinition/rt-treatment-machine-extension"
* value[x] only string
