Extension: TreatmentIntentExtension
Id: nccp-treatment-intent-extension
Title: "Treatment Intent Extension"
Description: "The intended treatment goal (curative, palliative, etc.)"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-treatment-intent-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition"
* ^context[2].type = #element
* ^context[2].expression = "MedicationRequest"
* value[x] only code
* valueCode from $VS_TREATMENT_INTENT (required)

Extension: PlannedCyclesExtension
Id: nccp-planned-cycles-extension
Title: "Planned Cycles Extension"
Description: "Number of planned treatment cycles"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-planned-cycles-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition"
* value[x] only integer

Extension: CycleLengthDaysExtension
Id: nccp-cycle-length-days-extension
Title: "Cycle Length Days Extension"
Description: "Length of each treatment cycle in days"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-cycle-length-days-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition"
* value[x] only integer

Extension: SessionsPerCycleExtension
Id: nccp-sessions-per-cycle-extension
Title: "Sessions Per Cycle Extension"
Description: "Number of sessions per treatment cycle"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-sessions-per-cycle-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* ^context[1].type = #element
* ^context[1].expression = "RequestGroup"
* value[x] only integer

Extension: RegimenCodeExtension
Id: nccp-regimen-code-extension
Title: "Regimen Code Extension"
Description: "Code identifying the treatment regimen from Livia"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-regimen-code-extension"
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
* value[x] only Coding
* valueCoding from $VS_TREATMENT_COURSE_CODES (required)

Extension: CycleNumberExtension
Id: nccp-cycle-number-extension
Title: "Cycle Number Extension"
Description: "Treatment cycle number"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-cycle-number-extension"
* ^context[0].type = #element
* ^context[0].expression = "RequestGroup"
* ^context[1].type = #element
* ^context[1].expression = "Encounter"
* ^context[2].type = #element
* ^context[2].expression = "MedicationRequest"
* ^context[3].type = #element
* ^context[3].expression = "MedicationAdministration"
* ^context[4].type = #element
* ^context[4].expression = "Claim"
* value[x] only integer

Extension: CycleDayStartExtension
Id: nccp-cycle-day-start-extension
Title: "Cycle Day Start Extension"
Description: "First day of cycle on which medication is given"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-cycle-day-start-extension"
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only integer

Extension: CycleDayEndExtension
Id: nccp-cycle-day-end-extension
Title: "Cycle Day End Extension"
Description: "Last day of cycle on which medication is given"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-cycle-day-end-extension"
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only integer

Extension: AppliesFromCycleExtension
Id: nccp-applies-from-cycle-extension
Title: "Applies From Cycle Extension"
Description: "Cycle number from which this medication applies"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-applies-from-cycle-extension"
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only integer

Extension: AppliesToCycleExtension
Id: nccp-applies-to-cycle-extension
Title: "Applies To Cycle Extension"
Description: "Cycle number up to which this medication applies"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-applies-to-cycle-extension"
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only integer

Extension: ClinicalCategoryExtension
Id: nccp-clinical-category-extension
Title: "Clinical Category Extension"
Description: "Clinical category of the medication in the regimen"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-clinical-category-extension"
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only code
* valueCode from $VS_MED_CLINICAL_CATEGORY (required)

Extension: BSABasedDoseExtension
Id: nccp-bsa-based-dose-extension
Title: "BSA Based Dose Extension"
Description: "Indicates if dose is calculated based on body surface area"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-bsa-based-dose-extension"
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only boolean

Extension: DosePerUnitExtension
Id: nccp-dose-per-unit-extension
Title: "Dose Per Unit Extension"
Description: "Dose per unit (e.g., mg/m2 or mg/kg)"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-dose-per-unit-extension"
* ^context[0].type = #element
* ^context[0].expression = "MedicationRequest"
* value[x] only Quantity

Extension: BSAFormulaExtension
Id: nccp-bsa-formula-extension
Title: "BSA Formula Extension"
Description: "Formula used to calculate body surface area"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-bsa-formula-extension"
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* value[x] only code
* valueCode from BSAFormulaVS (required)

Extension: ProtocolMarkersExtension
Id: nccp-protocol-markers-extension
Title: "Protocol Markers Extension"
Description: "OCM protocol markers for diagnostic ordering"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-protocol-markers-extension"
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
* value[x] only Coding
* valueCoding from $VS_OCM_PROTOCOL_MARKERS (required)
