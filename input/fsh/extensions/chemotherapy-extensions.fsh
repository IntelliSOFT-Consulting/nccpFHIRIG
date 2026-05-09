Extension: TreatmentIntentExtension
Id: treatment-intent-extension
Title: "Treatment Intent Extension"
Description: "The intended treatment goal (curative, palliative, etc.)"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/treatment-intent-extension"
* value[x] only code
* valueCode from $VS_TREATMENT_INTENT (required)

Extension: PlannedCyclesExtension
Id: planned-cycles-extension
Title: "Planned Cycles Extension"
Description: "Number of planned treatment cycles"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/planned-cycles-extension"
* value[x] only integer

Extension: CycleLengthDaysExtension
Id: cycle-length-days-extension
Title: "Cycle Length Days Extension"
Description: "Length of each treatment cycle in days"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/cycle-length-days-extension"
* value[x] only integer

Extension: SessionsPerCycleExtension
Id: sessions-per-cycle-extension
Title: "Sessions Per Cycle Extension"
Description: "Number of sessions per treatment cycle"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/sessions-per-cycle-extension"
* value[x] only integer

Extension: RegimenCodeExtension
Id: regimen-code-extension
Title: "Regimen Code Extension"
Description: "Code identifying the treatment regimen from Livia"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/regimen-code-extension"
* value[x] only Coding
* valueCoding from $VS_TREATMENT_COURSE_CODES (required)

Extension: CycleNumberExtension
Id: cycle-number-extension
Title: "Cycle Number Extension"
Description: "Treatment cycle number"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/cycle-number-extension"
* value[x] only integer

Extension: CycleDayStartExtension
Id: cycle-day-start-extension
Title: "Cycle Day Start Extension"
Description: "First day of cycle on which medication is given"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/cycle-day-start-extension"
* value[x] only integer

Extension: CycleDayEndExtension
Id: cycle-day-end-extension
Title: "Cycle Day End Extension"
Description: "Last day of cycle on which medication is given"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/cycle-day-end-extension"
* value[x] only integer

Extension: AppliesFromCycleExtension
Id: applies-from-cycle-extension
Title: "Applies From Cycle Extension"
Description: "Cycle number from which this medication applies"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/applies-from-cycle-extension"
* value[x] only integer

Extension: AppliesToCycleExtension
Id: applies-to-cycle-extension
Title: "Applies To Cycle Extension"
Description: "Cycle number up to which this medication applies"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/applies-to-cycle-extension"
* value[x] only integer

Extension: ClinicalCategoryExtension
Id: clinical-category-extension
Title: "Clinical Category Extension"
Description: "Clinical category of the medication in the regimen"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/clinical-category-extension"
* value[x] only code
* valueCode from $VS_MED_CLINICAL_CATEGORY (required)

Extension: BSABasedDoseExtension
Id: bsa-based-dose-extension
Title: "BSA Based Dose Extension"
Description: "Indicates if dose is calculated based on body surface area"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/bsa-based-dose-extension"
* value[x] only boolean

Extension: DosePerUnitExtension
Id: dose-per-unit-extension
Title: "Dose Per Unit Extension"
Description: "Dose per unit (e.g., mg/m2 or mg/kg)"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/dose-per-unit-extension"
* value[x] only Quantity

Extension: BSAFormulaExtension
Id: bsa-formula-extension
Title: "BSA Formula Extension"
Description: "Formula used to calculate body surface area"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/bsa-formula-extension"
* value[x] only code
* valueCode from BSAFormulaVS (required)

Extension: ProtocolMarkersExtension
Id: protocol-markers-extension
Title: "Protocol Markers Extension"
Description: "OCM protocol markers for diagnostic ordering"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/protocol-markers-extension"
* value[x] only Coding
* valueCoding from $VS_OCM_PROTOCOL_MARKERS (required)
