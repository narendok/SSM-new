# Customer data auto drafting pack

Scope: customer-intake content only. Uses the current generic intake bank and supplied Autodrafted template header/footer. Stage/task and later engineering automation remain in SSM-new.

This is a template/binding specification for implementation, not a deployed document generator. No customer answers have been fabricated.

## What can draft from customer data

| Output | Customer-data content | Limit |
|---|---|---|
| Customer Enquiry Summary | Customer and enquiry, Requested work, Quantity and schedule, Documents and open points | Creates a customer enquiry draft; no project activation, feasibility acceptance or contract approval. |
| Normalized Customer Requirement Specification | Purpose and application, Requirement register, Customer preferences and constraints, Clarifications and exclusions, Customer acceptance | Normalizes customer requirements. Does not establish design implementation, supplier feasibility or compliance success. |
| Customer Requirement Clarification List | Open questions, Proposed interpretation, Closure | No inferred answers or automatic closure from parser confidence. |
| Scope and Customer Acceptance Draft | Objective, Requested deliverables, Inclusions and explicit exclusions, Milestones and quantities, Acceptance and dependencies | Not an executed SOW, final contract, committed price or approved delivery plan. |
| Product Requirement Specification Draft | Purpose and intended use, Functional requirements, Technical requirements, Compliance requirements, Acceptance and verification needs, Assumptions and open items | A substantial requirements draft can be prepared. Final baseline still needs customer/engineering review; no schematic/BOM claims. |
| Functional and Application Requirement Draft | Actors and use cases, Functional behavior, Data events and reports, Acceptance and open points | Defines required behavior; does not claim firmware/cloud implementation, architecture or validated algorithms. Map its name to portal SRS/application profile. |
| Customer Target Technical Specification | Product identity and application, Target specification tables, Regional/configuration requirements, Open targets | Internal customer-target sheet, not a released product datasheet or certified performance claim. |
| Preliminary Design Verification Plan | Scope and configuration, Planned verification matrix, Method and acceptance gaps, Report fields | Produces the PLAN portion only. Customer targets never populate actual results or prove test method applicability. |
| Cross Functional Feasibility Review Input | Customer scope, Department review packets, Constraints and uncertainties, Review response | Customer-data input for review, not an approved feasibility report. |
| Quotation Scope and Estimate Input | Customer and requested supply, Quantity schedule and targets, Supplier estimate inputs, Open commercial terms | Creates quote INPUT only; no invented costs, margins, tax, commercial offer acceptance or commitment. |

## Reusable template structure

All templates use the supplied header/footer layout. Bind issuer company/logo, department, title, number, revision, date, classification and page fields. Keep approval/signature slots blank unless an actual approval record exists. Company identity is separate from customer identity. The supplied environmental-procedure body is replaced by the selected content below.

**Customer requirement table:** Requirement ID | Requirement | Value | Unit | Comparator | Conditions | Variant | Priority | Status. Source file/clause is retained in internal traceability; document reference sections use only applicable standards/references.

**DVP plan table:** Requirement ID | Test characteristic | Customer target | Unit | Test method/standard | Setup/conditions | Duration/cycles | Acceptance criterion | Required samples | Responsible function | Planned evidence. Actual-result, report, PASS/FAIL and signature fields remain unpopulated.

## Customer Enquiry Summary

Template profile: `INTAKE_SUMMARY`. Default output: draft for review.

### Customer and enquiry

Show supplied company/contact/device/application; missing fields TBD. Binding: `identity_table`.

### Requested work

Show explicitly selected capabilities; unanswered is not No. Binding: `capability_table`.

### Quantity and schedule

Show customer targets, currency and dates as requested, not accepted commitments. Binding: `commercial_targets`.

### Documents and open points

List supplied SOR revision and unresolved questions. Binding: `source_and_gap_list`.

Completion boundary: Creates a customer enquiry draft; no project activation, feasibility acceptance or contract approval.

## Normalized Customer Requirement Specification

Template profile: `CRS`. Default output: draft for review.

### Purpose and application

Use customer application and mandatory/optional functions. Binding: `application`.

### Requirement register

One row per applicable accepted/candidate answer; ID, wording, comparator, value, unit, condition, variant, source and state. Binding: `requirements_table`.

### Customer preferences and constraints

Distinguish preferences from mandatory constraints. Binding: `constraints_table`.

### Clarifications and exclusions

Record unanswered, ambiguous, conflicting and explicitly not-applicable items. Binding: `clarification_table`.

### Customer acceptance

Keep signature/acceptance blank unless actual record supplied. Binding: `acceptance_record`.

Completion boundary: Normalizes customer requirements. Does not establish design implementation, supplier feasibility or compliance success.

## Customer Requirement Clarification List

Template profile: `CLARIFICATIONS`. Default output: draft for review.

### Open questions

Only applicable missing/conflicting/uncertain fields; retain source text, question, owner and customer response. Binding: `clarifications`.

### Proposed interpretation

Label interpretations as proposals until agreed. Binding: `interpretations`.

### Closure

Close only with recorded answer and authorized review; keep baseline linkage. Binding: `clarification_closure`.

Completion boundary: No inferred answers or automatic closure from parser confidence.

## Scope and Customer Acceptance Draft

Template profile: `SCOPE`. Default output: draft for review.

### Objective

Customer problem and intended outcome. Binding: `application`.

### Requested deliverables

Requested hardware, firmware, software, samples, documentation, manufacturing and support; flag unknown responsibility. Binding: `deliverables`.

### Inclusions and explicit exclusions

Only explicit selected scope; blank answer is not an exclusion. Binding: `scope_decisions`.

### Milestones and quantities

Customer requested dates/quantities; acceptance/commitment separately recorded. Binding: `commercial_targets`.

### Acceptance and dependencies

Use supplied acceptance criteria and customer dependencies; no promised feasibility. Binding: `acceptance_conditions`.

Completion boundary: Not an executed SOW, final contract, committed price or approved delivery plan.

## Product Requirement Specification Draft

Template profile: `PRS`. Default output: draft for review.

### Purpose and intended use

Use supplied product purpose/users/application. Binding: `application`.

### Functional requirements

Mandatory/optional functions, operating modes, response/fault behavior. Binding: `functional_requirements`.

### Technical requirements

Applicable power, I/O, communications, GNSS, memory, indicators, mechanical/environment requirements with units and conditions. Binding: `technical_tables`.

### Compliance requirements

Exact requested standards/editions/markets, with applicability pending where unknown. Binding: `compliance_requests`.

### Acceptance and verification needs

Link requirement IDs to supplied acceptance criteria and planned method; no results. Binding: `acceptance_conditions`.

### Assumptions and open items

Unknowns stay TBD; do not add implicit customer requirements. Binding: `gap_list`.

Completion boundary: A substantial requirements draft can be prepared. Final baseline still needs customer/engineering review; no schematic/BOM claims.

## Functional and Application Requirement Draft

Template profile: `FUNCTIONAL_REQ`. Default output: draft for review.

### Actors and use cases

Only supplied user groups/functions. Binding: `actors_use_cases`.

### Functional behavior

One selected function per requirement with trigger, mode and required outcome. Binding: `functional_requirements`.

### Data events and reports

Sampling/reporting, event thresholds/latency, alerts, permissions, reports and offline behavior. Binding: `software_requirements`.

### Acceptance and open points

Use supplied criteria; missing logic stays TBD. Binding: `functional_acceptance`.

Completion boundary: Defines required behavior; does not claim firmware/cloud implementation, architecture or validated algorithms. Map its name to portal SRS/application profile.

## Customer Target Technical Specification

Template profile: `TARGET_SPEC`. Default output: draft for review.

### Product identity and application

Customer-requested device/context. Binding: `application`.

### Target specification tables

Confirmed/customer-target parameters only; visible target/status column. Binding: `technical_tables`.

### Regional/configuration requirements

Keep variant-specific answers separated. Binding: `variant_tables`.

### Open targets

List unspecified or disputed targets. Binding: `gap_list`.

Completion boundary: Internal customer-target sheet, not a released product datasheet or certified performance claim.

## Preliminary Design Verification Plan

Template profile: `DVP_PLAN`. Default output: draft for review.

### Scope and configuration

Link applicable requirements/variants; unknown actual HW/FW/sample revisions stay TBD. Binding: `test_scope`.

### Planned verification matrix

Requirement ID; characteristic; target/comparator/unit; method/standard/edition/clause; stimulus/setup/mode; duration/cycles; acceptance; sample need; owner; planned evidence. Binding: `dvp_plan_table`.

### Method and acceptance gaps

QA/engineering must define missing method/severity/sample plan. Binding: `dvp_gap_list`.

### Report fields

Actual sample, measured result, PASS/FAIL, report, date, witness and approval remain blank. Binding: `result_placeholders`.

Completion boundary: Produces the PLAN portion only. Customer targets never populate actual results or prove test method applicability.

## Cross Functional Feasibility Review Input

Template profile: `FEASIBILITY_INPUT`. Default output: draft for review.

### Customer scope

Summarize requested product/application/markets/quantities/dates. Binding: `scope_summary`.

### Department review packets

Group relevant requirements by configured department ownership; avoid importing unrelated confidential data. Binding: `department_requirements`.

### Constraints and uncertainties

Highlight novel/mandatory/conflicting requirements and missing details. Binding: `review_points`.

### Review response

Leave feasibility decision, effort, cost and signoff to actual reviewers. Binding: `review_response_fields`.

Completion boundary: Customer-data input for review, not an approved feasibility report.

## Quotation Scope and Estimate Input

Template profile: `QUOTATION_INPUT`. Default output: draft for review.

### Customer and requested supply

Requested deliverables and customer identity. Binding: `identity_scope`.

### Quantity schedule and targets

Customer target prices/budgets shown explicitly as targets. Binding: `commercial_targets`.

### Supplier estimate inputs

Actual BOM/labor/engineering/tooling/service prices and taxes require supplier/Finance evidence. Binding: `estimate_placeholders`.

### Open commercial terms

Keep unagreed payment, warranty and commitments open. Binding: `commercial_gaps`.

Completion boundary: Creates quote INPUT only; no invented costs, margins, tax, commercial offer acceptance or commitment.

## Progressive drafting rule

When a customer answer is added or clarified, regenerate affected editable sections against the same tracked requirement version and show the diff. Do not silently rewrite approved history. Requirement lock creates a versioned input baseline; it does not certify design feasibility or tests. Later stages supply their own controlled design, risk, verification and approval data through the portal.

## Additional information needed later

SAR, final HSI, KPA, DFMEA, executed DVP reports, PPAP, production SOPs, ECN/4M changes, released datasheets/manuals, audit findings and lessons learned cannot be completed from customer requirements alone. Only their customer-requirement inputs can be linked now. Do not auto-generate plausible engineering values to fill these sections.

## Integration handoff

The JSON lists exact current intake parameter keys per profile, content-section bindings, common branding variables and rendering rules. Map these to existing portal document profile IDs; do not rename existing controlled document identities or change stage settings here. Customer/data review and source-coverage review remain required before production use.