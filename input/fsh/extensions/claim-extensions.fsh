// ============================================================
// CLAIM & COVERAGE EXTENSIONS
// ============================================================

Extension: CarcinomasStagingExtension
Id: carcinoma-staging-extension
Title: "Carcinoma Staging Extension"
Description: "Overall cancer stage for claims"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/carcinoma-staging-extension"
* value[x] only code
* valueCode from CancerStageSummaryVS (required)

Extension: SessionExpectedDateExtension
Id: session-expected-date-extension
Title: "Session Expected Date Extension"
Description: "Expected date of the treatment session"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/session-expected-date-extension"
* value[x] only date

Extension: SessionsRequiredExtension
Id: sessions-required-extension
Title: "Sessions Required Extension"
Description: "Total number of sessions required for the course"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/sessions-required-extension"
* value[x] only integer

Extension: CostPerSessionExtension
Id: cost-per-session-extension
Title: "Cost Per Session Extension"
Description: "Cost of a single treatment session"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/cost-per-session-extension"
* value[x] only Money

Extension: ParentAuthorizationExtension
Id: parent-authorization-extension
Title: "Parent Authorization Extension"
Description: "Reference to a parent prior authorization claim"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/parent-authorization-extension"
* value[x] only Reference(Claim)

Extension: HasCoinsuranceExtension
Id: has-coinsurance-extension
Title: "Has Coinsurance Extension"
Description: "Indicates whether coinsurance applies"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/has-coinsurance-extension"
* value[x] only boolean

Extension: CoinsuranceDetailsExtension
Id: coinsurance-details-extension
Title: "Coinsurance Details Extension"
Description: "Details of coinsurance arrangement"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/coinsurance-details-extension"
* value[x] only string

Extension: ComorbidityExtension
Id: comorbidity-extension
Title: "Comorbidity Extension"
Description: "Comorbidity information relevant to the claim"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/comorbidity-extension"
* value[x] only string

Extension: SessionsCoveredExtension
Id: sessions-covered-extension
Title: "Sessions Covered Extension"
Description: "Number of sessions covered by insurer in claim response"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/sessions-covered-extension"
* value[x] only integer

Extension: SessionsUsedExtension
Id: sessions-used-extension
Title: "Sessions Used Extension"
Description: "Number of sessions already used"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/sessions-used-extension"
* value[x] only integer

Extension: StartCycleExtension
Id: start-cycle-extension
Title: "Start Cycle Extension"
Description: "First cycle covered by authorization"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/start-cycle-extension"
* value[x] only integer

Extension: EndCycleExtension
Id: end-cycle-extension
Title: "End Cycle Extension"
Description: "Last cycle covered by authorization"
* ^url = "https://fhir.dha.go.ke/core/StructureDefinition/end-cycle-extension"
* value[x] only integer
