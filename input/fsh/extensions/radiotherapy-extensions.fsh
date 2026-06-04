Extension: RTIntentExtension
Id: nccp-rt-intent-extension
Title: "Radiotherapy Intent Extension"
Description: "Intent of radiotherapy treatment"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-intent-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "ServiceRequest"
* value[x] only code
* valueCode from $VS_RT_INTENT (required)

Extension: RTTotalFractionsExtension
Id: nccp-rt-total-fractions-extension
Title: "Radiotherapy Total Fractions Extension"
Description: "Total number of radiotherapy fractions planned"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-total-fractions-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition"
* ^context[2].type = #element
* ^context[2].expression = "Procedure"
* value[x] only integer

Extension: RTDosePerFractionExtension
Id: nccp-rt-dose-per-fraction-extension
Title: "Radiotherapy Dose Per Fraction Extension"
Description: "Dose delivered per radiotherapy fraction (in Gy)"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-dose-per-fraction-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition"
* ^context[2].type = #element
* ^context[2].expression = "Procedure"
* value[x] only Quantity

Extension: RTTreatmentTechniqueExtension
Id: nccp-rt-treatment-technique-extension
Title: "Radiotherapy Treatment Technique Extension"
Description: "Technique used for radiotherapy delivery"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-treatment-technique-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition"
* ^context[2].type = #element
* ^context[2].expression = "ServiceRequest"
* ^context[3].type = #element
* ^context[3].expression = "Procedure"
* value[x] only code
* valueCode from $VS_RT_TREATMENT_TECHNIQUE (required)

Extension: RTTargetVolumeExtension
Id: nccp-rt-target-volume-extension
Title: "Radiotherapy Target Volume Extension"
Description: "Target volume definition for radiotherapy"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-target-volume-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "ServiceRequest"
* ^context[2].type = #element
* ^context[2].expression = "Observation"
* value[x] only code
* valueCode from $VS_RT_TARGET_VOLUME (required)

Extension: RTBeamTypeExtension
Id: nccp-rt-beam-type-extension
Title: "Radiotherapy Beam Type Extension"
Description: "Type of beam used in radiotherapy"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-beam-type-extension"
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only code
* valueCode from $VS_RT_BEAM_TYPE (required)

Extension: RTFractionNumberExtension
Id: nccp-rt-fraction-number-extension
Title: "Radiotherapy Fraction Number Extension"
Description: "Sequential fraction number in the radiotherapy course"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-fraction-number-extension"
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only integer

Extension: RTCumulativeDoseExtension
Id: nccp-rt-cumulative-dose-extension
Title: "Radiotherapy Cumulative Dose Extension"
Description: "Cumulative radiation dose delivered to date"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-cumulative-dose-extension"
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only Quantity

Extension: RTTreatmentMachineExtension
Id: nccp-rt-treatment-machine-extension
Title: "Radiotherapy Treatment Machine Extension"
Description: "Identifier of the radiotherapy treatment machine used"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-rt-treatment-machine-extension"
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* value[x] only string
