# SCMS generic customer intake handoff

Status: review and integration input. The portal has not been modified or released by this work.

## Use these latest files

- SCMS_Expanded_Customer_Intake.xlsx: latest human review view. Earlier generic/master workbooks are background material, not the current question-bank authority.
- SCMS_Expanded_Intake.json: matching question records, conditional rules, role routing, source audit and portal-preset references.

## Intended client flow

Sales shares a scoped enquiry/client link. Reuse the authenticated customer's company/contact profile and ask for missing details. Allow the customer to create a new device/project enquiry, upload SOR/reference documents, fill applicable fields, and save/resume. A submitted enquiry is not automatic project activation.

Ask application and capability questions first. Activate only relevant branches. Do not display the entire library to every customer. Existing SOR answers prefill candidates with source clause/page; review uncertain/conflicting mappings. Ask only relevant missing or unclear questions, retain the clarification answer, and obtain requirement-baseline acceptance before locking a version.

## Field and unit behavior

Each question has its own stable question ID and parameter key. Numeric values, chosen units, comparison operator, conditions, repeat-instance and source remain separate data. Do not store a range as one unvalidated string. Preserve original input as well as any reviewed normalized value. Zero and false remain valid values; unknown, not applicable and intentionally blank are different states.

Units are visible in the question workbook. Some quantities have fixed units; others require selection of signal type/metric first. For example an analog range might be volts, milliamps, resistance or a physical measurement. A reliability value may mean hours of MTBF, percentage availability, or years of service life; these must not be treated as equivalent.

Use a date picker for dates and explicit currency codes for money. Current limits must identify supply voltage, operating mode, enabled functions and temperature. GNSS timing choices are proposed customer targets, not measured capability; cold/warm/hot definitions and test conditions stay separate.

Use compatible unit conversion only. Do not convert battery mAh to Wh without required voltage/chemistry assumptions, or percentage uptime into MTBF. Validate minimum <= nominal <= maximum where applicable, ranges, integer counts and incompatible dimensions. A selected standard does not establish severity, acceptance or certification.

## Connector behavior

Ask customer preference, sealing/IP target, mating constraint, mounting, cable and space requirements. Preferred cavity count is optional. Engineering recommends the connector family and final cavity count based on accepted I/O counts, electrical loads and installation constraints. Historical DRG/international pin allocations are excluded from the intake. Design/HSI pin allocation follows later.

## Ownership and configuration

Sales coordinates customer communication; the assigned department member prepares details and lead reviews. Resolve people from the portal's configured role/department membership. The local plan confirms twelve departments with lead/member responsibilities; do not replace the actual registry with a hardcoded count of 25. Administration is configuration responsibility and does not grant automatic approval authority.

Use the existing smart-input and SOR importer structures as references. The existing portal parameter IDs and new draft keys differ; define an explicit reviewed mapping before implementation. Do not overwrite historic values, project baselines or signed records, and do not silently migrate old question IDs by row position. Version the question-bank schema and template bindings.

## DVP planning and documents

The requirement baseline provides expected values, conditions and acceptance requirements. QA/engineering reviews standard/edition/clause, stimulus, test setup/mode, duration, cycles, sample count, permitted degradation/recovery, lab and report needs. Actual results, signatures, test pass and release state require evidence later.

Use the supplied Autodrafted template's header/footer only, with versioned company name/logo/number/date/revision settings. The environmental procedure body is not generic engineering content. A generated document records its exact requirement baseline, template/branding version and linked evidence.

## Remaining review before customers rely on the form

- Complete semantic coverage review of compound source values against individual fields. The source audit accounts for the extracted records; it is not a claim every conceivable device parameter is included.
- Review overlapping scope questions and conditional triggers. Keep a general capability selector while showing detailed fields only when needed.
- Review unit/type/option rules in the actual form; conditional units require an explicit quantity/metric.
- Verify actual role registry, customer access isolation, SOR prefill/clarification behavior, save/resume and versioned acceptance in the portal.
- Verify the supplied Word header/footer's rendered output after binding. This workbook preparation did not validate or deploy the portal or Word generation engine.

## Checks completed here

Question/parameter IDs are unique; no historical numbered-pin or DRG/customer-specific prompts remain in Questions; answer/default values start blank; fixed/conditional/unitless states are explicit. The saved workbook opens and its row counts match the JSON. Rendered workbook views were inspected. Source audit is retained in JSON, outside the customer-facing question sheets.
