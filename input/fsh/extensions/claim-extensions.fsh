// ============================================================
// CLAIM & COVERAGE EXTENSIONS
// ============================================================

Extension: CarcinomasStagingExtension
Id: nccp-carcinoma-staging-extension
Title: "Carcinoma Staging Extension"
Description: "Overall cancer stage for claims"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-carcinoma-staging-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only code
* valueCode from CancerStageSummaryVS (required)

Extension: SessionExpectedDateExtension
Id: nccp-session-expected-date-extension
Title: "Session Expected Date Extension"
Description: "Expected date of the treatment session"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-session-expected-date-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only date

Extension: SessionsRequiredExtension
Id: nccp-sessions-required-extension
Title: "Sessions Required Extension"
Description: "Total number of sessions required for the course"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-sessions-required-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only integer

Extension: CostPerSessionExtension
Id: nccp-cost-per-session-extension
Title: "Cost Per Session Extension"
Description: "Cost of a single treatment session"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-cost-per-session-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only Money

Extension: ParentAuthorizationExtension
Id: nccp-parent-authorization-extension
Title: "Parent Authorization Extension"
Description: "Reference to a parent prior authorization claim"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-parent-authorization-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only Reference(Claim)

Extension: HasCoinsuranceExtension
Id: nccp-has-coinsurance-extension
Title: "Has Coinsurance Extension"
Description: "Indicates whether coinsurance applies"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-has-coinsurance-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only boolean

Extension: CoinsuranceDetailsExtension
Id: nccp-coinsurance-details-extension
Title: "Coinsurance Details Extension"
Description: "Details of coinsurance arrangement"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-coinsurance-details-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: ComorbidityExtension
Id: nccp-comorbidity-extension
Title: "Comorbidity Extension"
Description: "Comorbidity information relevant to the claim"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-comorbidity-extension"
* ^context[0].type = #element
* ^context[0].expression = "Claim"
* value[x] only string

Extension: SessionsCoveredExtension
Id: nccp-sessions-covered-extension
Title: "Sessions Covered Extension"
Description: "Number of sessions covered by insurer in claim response"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-sessions-covered-extension"
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only integer

Extension: SessionsUsedExtension
Id: nccp-sessions-used-extension
Title: "Sessions Used Extension"
Description: "Number of sessions already used"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-sessions-used-extension"
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only integer

Extension: StartCycleExtension
Id: nccp-start-cycle-extension
Title: "Start Cycle Extension"
Description: "First cycle covered by authorization"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-start-cycle-extension"
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only integer

Extension: EndCycleExtension
Id: nccp-end-cycle-extension
Title: "End Cycle Extension"
Description: "Last cycle covered by authorization"
* ^url = "https://nshr-uat.sha.go.ke/fhir/StructureDefinition/nccp-end-cycle-extension"
* ^context[0].type = #element
* ^context[0].expression = "ClaimResponse"
* value[x] only integer
