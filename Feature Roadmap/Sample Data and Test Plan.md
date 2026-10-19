# Sample Data and Test Plan

**Status:** Reusable non-production fixture specification  
**Authority:** [SSM One Master Plan](../../SSM_ONE_MASTER_PLAN.md); lifecycle context: [Electronics Project Lifecycle and APQP Roadmap](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md); generic delivery phases: [Product Build Roadmap](Product%20Build%20Roadmap.md).

## Purpose and boundaries

Define a small, linked dataset for demonstrating and testing SSM One across web, Android, and backend. Every fixture is synthetic and visibly marked `DEMO_ONLY`. This plan defines the intended sample contents and lifecycle; it does not seed a database or authorize production data changes.

Use the master plan's twelve departments, nine project stages, access rules, and terminology. Active department labels are **SAL, EHW, FW, SW, MECH, PUR, QA, EMF, MMF, FIN, SIT, HR/OPS**. **EMF** handles electronics box-build using outsourced PCB assemblies; **MMF** handles mechanical manufacturing; in-house PCB assembly is out of scope. FW and SW are the active software department labels.

RACI describes work responsibility only. It never grants record access, approval authority, or signing rights. Access is checked independently using authenticated identity, organization membership, project/record scope, and capability. A project pins the approved responsibility-matrix version; future departments can be added through configuration without changing lifecycle stages.

## Sample data operations

Provide three distinct, authenticated, audited actions in an isolated non-production environment:

1. **Load sample data** creates the versioned baseline. Repeating the same load is idempotent and creates no duplicates.
2. **Restore sample defaults** returns demo-owned records to the selected fixture version. Preview the target environment and affected record counts; preserve or explicitly remove demo-user work according to policy.
3. **Remove sample data** removes only records owned by the selected demo dataset. It must not replace this action with a blank-company reset.

Application settings, company configuration, department setup, and responsibility matrices have separate administration flows. Never seed or reset production, alter non-demo records, send real notifications, post finances, or create real stock, approvals, test evidence, or customer commitments. Store a manifest with fixture version, schema version, target environment, deterministic dataset ID, affected record IDs, operation time, outcome, and audit actor. Keep credentials and secrets outside fixtures.

The current browser prototype's sample controls are local-browser behavior; they do not establish shared backend persistence or server-enforced safety. Treat these actions as production-ready only after authenticated backend operations and isolation checks pass.

## Demo team and responsibility examples

Use two fictional sample employees per department: a lead (`A`) and a member (`M`). The `DEMO-*` value is the stable fixture/login ID; the adjacent name is the display name used in screens, task ownership, and examples. These are invented sample identities, not real employees or pre-approved signers. Do not add personal emails, passwords, or real employee data. The MMF identities are examples only and do not decide the real department lead.

| Department | Fixture ID | Sample employee | Demo role | Example responsibilities |
|---|---|---|---|---|
| SAL | `DEMO-SAL-A` | Priya Sharma | Sales Lead | Own intake; coordinate feasibility; hand off client/order records. |
| SAL | `DEMO-SAL-M` | Neha Verma | Sales Coordinator | Check enquiry completeness; maintain demo status updates. |
| EHW | `DEMO-EHW-A` | Avery Vale | Hardware Lead | Own hardware requirements and design baseline. |
| EHW | `DEMO-EHW-M` | Rohan Iyer | Hardware Engineer | Link schematic/BOM fixtures and design evidence. |
| FW | `DEMO-FW-A` | Devon Lane | Firmware Lead | Own firmware requirements and build lifecycle. |
| FW | `DEMO-FW-M` | Arjun Menon | Firmware Engineer | Link firmware test cases and build evidence. |
| SW | `DEMO-SW-A` | Siddharth Roy | Software Lead | Own cloud/application requirements and software release. |
| SW | `DEMO-SW-M` | Kavya Rao | Software Engineer | Link API and integration test evidence. |
| MECH | `DEMO-MECH-A` | Samira Holt | Mechanical Engineering Lead | Own the mechanical design baseline. |
| MECH | `DEMO-MECH-M` | Nikhil Shah | Mechanical Designer | Link drawing revisions and fit-risk notes. |
| PUR | `DEMO-PUR-A` | Morgan Reed | Purchasing Lead | Own supplier readiness and purchasing drafts. |
| PUR | `DEMO-PUR-M` | Isha Kulkarni | Buyer | Check quote/document completeness; create receiving drafts. |
| QA | `DEMO-QA-A` | Jordan Blake | Quality Lead | Own independent quality review and disposition examples. |
| QA | `DEMO-QA-M` | Ananya Das | Quality Engineer | Review DVP&R, inspection, and NCR evidence. |
| EMF | `DEMO-EMF-A` | Casey Rowan | Electronics Manufacturing Lead | Track outsourced-PCBA receipt and electronics box-build. |
| EMF | `DEMO-EMF-M` | Vivek Nair | Manufacturing Technician | Record assembly, in-line/final checks, and packaging fixtures. |
| MMF | `DEMO-MMF-A` | Alex Martin | Mechanical Manufacturing Lead (sample only) | Own a sample mechanical manufacturing work package. |
| MMF | `DEMO-MMF-M` | Meera Joshi | Manufacturing Technician | Record dimensional/finish checks and EMF handoff fixture. |
| FIN | `DEMO-FIN-A` | Priya Voss | Finance Lead | Review sample budget/quotation boundary. |
| FIN | `DEMO-FIN-M` | Karan Mehta | Finance Analyst | Check draft cost-line completeness; do not post transactions. |
| SIT | `DEMO-SIT-A` | Kai Morgan | Service & IT Lead | Own service readiness and access/system checks. |
| SIT | `DEMO-SIT-M` | Ritu Sen | Service Desk Analyst | Record ticket intake and service handoff fixtures. |
| HR/OPS | `DEMO-HROPS-A` | Taylor Quinn | HR & Operations Lead | Own capacity, competency, and policy workflow examples. |
| HR/OPS | `DEMO-HROPS-M` | Aman Kapoor | HR/Operations Coordinator | Record training assignments and evidence fixtures. |

### How detailed development gates fit the nine portal stages

The sample lifecycle and RACI below use the master plan's **nine top-level project stages**. They do not replace detailed engineering activities or turn every activity into a separate portal stage. The [Electronics Project Lifecycle and APQP Roadmap](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md) retains **37 detailed activities (`HW_01`–`HW_37`)**, with APQP phase gates 1–5, and proposes their mapping to the nine portal stages in [§5.2](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md#52-preserve-the-complete-37-activity-apqp-framework). That crosswalk still needs process-owner approval before it becomes the operating workflow.

The master plan does not yet define a numbered firmware-specific gate sequence. Firmware requirements, builds, and verification belong in the shared project lifecycle and should use versioned firmware work packages/gates mapped to the relevant portal stages once the firmware process owner approves them. This sample plan does not invent gate names or counts. Hardware and firmware gates should link to common project requirements, revisions, evidence, owners, and approval controls. See the [Department Lifecycle and Gate Framework — APQP, Audit, and IATF Mapping](../Decisions%20and%20Controls/Department%20Lifecycle%20and%20Gate%20Framework%20-%20APQP%20Audit%20IATF%20Mapping.md) for the proposed department-by-department profiles.

### Example stage RACI

This is an illustrative, versioned demo configuration. `A` is accountable for the named demo gate/work package, `R` performs work, `C` is consulted, and `I` is informed only if authorized to read the record. `—` means no default assignment. Split stage work into separate packages where needed (for example, EMF build and MMF build), with exactly one accountable owner per package.

| Stage | A | R | C | I | Demo remark |
|---|---|---|---|---|---|
| 1. Sales intake and client portal | SAL | SAL | EHW, FW, SW, MECH, QA | PUR, FIN | Fictional enquiry and client profile; no real contact or commitment. |
| 2. Cross-department feasibility | SAL | EHW, FW, SW, MECH, PUR, QA, EMF, MMF, FIN, SIT, HR/OPS | — | — | Show department responses and one open assumption. |
| 3. Requirement freeze and commercial confirmation | SAL | EHW, FW, SW, MECH, PUR, FIN | QA, EMF, MMF | SIT, HR/OPS | Draft baseline with deliberately missing source values; cannot be marked verified. |
| 4. Design and development / PoC | EHW | EHW, FW, SW, MECH | QA, PUR, SIT | SAL, EMF, MMF, FIN, HR/OPS | Link revisioned design and software drafts; no fabricated build artifacts. |
| 5. Pilot build and manufacturing readiness | EMF | EMF, MMF, PUR | EHW, MECH, QA, FIN, HR/OPS | SAL, FW, SW, SIT | Separate EMF/MMF travelers and simulated outsourced-PCBA receipt. |
| 6. Client validation and pre-compliance | QA | EHW, FW, SW, MECH, EMF, MMF | SAL, SIT | PUR, FIN, HR/OPS | DVP&R plan with simulated results only; no claimed measurements. |
| 7. Production release and PPAP | QA | EHW, FW, SW, MECH, EMF, MMF, PUR | FIN, SAL | SIT, HR/OPS | Demonstrate blocked release until required evidence is approved. |
| 8. Type approval and supply readiness / mass-run authorization | SAL | QA, PUR, EMF, MMF, FIN | EHW, FW, SW, MECH | SIT, HR/OPS | Authority, capacity, and supply values remain `Not recorded`. |
| 9. SOP, production inspection, delivery and feedback | EMF | EMF, MMF, QA, PUR, SAL, FIN, SIT | EHW, FW, SW, MECH | HR/OPS | Demonstrate blocked closure without verified release and delivery records. |

This example is for UI and workflow tests only. Replace it with an owner-approved matrix before using it for a real project. Matrix membership, assignment, and RACI do not imply access or signer authority.

## Linked client, OMS, and project fixtures

`OMS` means Order Management System. Keep all names and values fictional; no amount, tax, price, quantity, delivery promise, or legal commitment is implied.

| Fixture | Linked data | Intended checks |
|---|---|---|
| `DEMO-CLIENT-001` | `DEMO-OMS-001`; enquiry `DEMO-ENQ-001`; project `DEMO-PROJ-001` | Intake, feasibility, draft quote, clarification, and controlled client-visible projection. |
| `DEMO-CLIENT-002` | `DEMO-OMS-002`; enquiry `DEMO-ENQ-002`; project `DEMO-PROJ-002` | Project switching, missing source fields, and isolation from project 001. |

Both OMS records remain draft/pending demo records. Record only synthetic status and links. No actual customer communication, accepted order, invoice, inventory, or shipment is created.

| Project | Product | Project type and seeded state | Purpose |
|---|---|---|---|
| `DEMO-PROJ-001` — DEMO · Connected Vehicle Controller | `DEMO-PROD-001` | New-product fixture; stage 6 simulated; baseline `DEMO_ONLY` | Exercises linked lifecycle, tasks, documents, approvals, and tests. |
| `DEMO-PROJ-002` — DEMO · Fleet Telematics Gateway | `DEMO-PROD-002` | Customer-variant fixture; stage 3 draft; missing values visible | Exercises project selector, empty states, and no cross-project leakage. |

Each project has a separate owner, stage instance, task set, document links, remarks, and approval fixtures. Project 002 starts with one draft requirement, one To Do task, one explicitly unlinked document, and no approvals. Switching projects must clear all records from the previously selected project. “All projects” shows only records the current identity may access.

### Reusable asset and configuration fixtures

Use synthetic, clearly `DEMO_ONLY` master assets to test reuse lineage without implying real compatibility or certification. Seed reusable PCB assembly, enclosure/case, and harness revisions, each with fictional owner/status, interfaces, linked native-file placeholders/checksums, and verification state marked `DEMO_ONLY`. Link their exact revisions to Project 001 through a project configuration record; make Project 002 a proposed variant with one changed interface and an unresolved compatibility/qualification item. Add visibly invalid certificate-evidence placeholders that distinguish component/asset scope (PCB, enclosure/material, harness) from the separate pending finished-project certificate/test scope. They must be labeled `DEMO_ONLY — NOT VALID` and never appear as proof or release evidence. Include a synthetic reuse assessment showing requirement links, fit/gap, delta-test requirement, decision owner, and pending status, plus an as-built trace fixture recording actual demo revisions for a unit/lot.

Also seed separated inventory fixtures following [Electronics Project Lifecycle and APQP Roadmap §6.2](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md#62-inventory-reusable-design-assets-and-plant-assets): inventory item masters for an electronics component, outsourced PCBA, mechanical raw material, and consumable/packaging item; synthetic lot/serial and movement records; reusable asset/module revisions with controlled BOM lines pointing to item IDs; project configurations pinning those revisions; and a fixed production/test-machine asset with plant/site, custody, maintenance/calibration, and compatibility metadata. Link a demo as-built unit/lot to the actual demo revisions and lots/serials used. All stock balances and movements remain synthetic demo fixtures. The machine is a plant asset, not consumable stock; selecting any reusable module does not reserve or move its linked inventory.

Acceptance: reuse never silently copies or changes a master asset; the project pins exact revisions; unresolved fit/qualification gaps remain visible and block any simulated skip; a changed variant has a new ID/revision and source lineage; and the as-built view shows what was actually selected. Component-level certificate placeholders never satisfy the pending project-level certification scope. Inventory item classes, lots, and plant assets stay distinguishable, and viewing/selecting fixtures does not post stock movements. No fixture may claim real qualification, regulatory approval, savings, or production use.

### Project 001 stage remarks

Remarks are demo notes attached to a stage instance. They never complete a gate or replace evidence.

| Stage | Demo state and remark |
|---|---|
| 1 | Simulated complete — fictional enquiry linked to `DEMO-CLIENT-001`. |
| 2 | Simulated complete — responses linked; one open assumption remains visible. |
| 3 | In review — draft baseline contains missing commercial and requirement sources. |
| 4 | Simulated complete — EHW, FW, SW, and MECH drafts linked with revisions. |
| 5 | In progress — outsourced-PCBA receipt and separate EMF/MMF traveler fixtures. |
| 6 | In review — DVP&R plan linked; results are simulated only. |
| 7 | Not started — release waits for the complete QA-reviewed evidence package. |
| 8 | Not started — approval, supply, and capacity evidence are not recorded. |
| 9 | Not started — delivery and feedback remain blocked pending verified release. |

## Product test and DVP&R fixtures

Separate planned criteria, simulated UI states, and actual measured results. This plan supplies no technical limits, sample counts, measured values, or certification claims. Copy criteria and units only from an approved, versioned requirement or method; otherwise show `Not recorded` and do not permit a verified result.

| Fixture | Test family | Required source | Allowed demo state |
|---|---|---|---|
| `DEMO-DVP-001` | Electrical power and protection | Approved requirement and configuration | Planned; Simulated Pass/Fail/Retest |
| `DEMO-DVP-002` | Connectivity and protocol interoperability | Approved interface/specification revision | Planned or simulated outcome |
| `DEMO-DVP-003` | Firmware update and recovery | Approved firmware requirement/build identity | Planned or simulated outcome |
| `DEMO-DVP-004` | Environmental/mechanical integrity | Approved method and limits | Planned or simulated outcome |
| `DEMO-DVP-005` | EMF/MMF process and final inspection | Approved control plan and inspection method | Planned or simulated outcome |

Every case should link requirement/method IDs and revisions, product configuration, demo sample identity, owner, criterion and unit provenance, result and unit, attachment, reviewer/disposition, retest/NCR, and audit event. Simulated outcomes remain visibly `DEMO_ONLY`; they are never displayed as measured `PASS` or used to release production.

## Minimum acceptance checks

- Seed contains all twelve departments, two synthetic members per department, both isolated projects, linked client/OMS records, the nine-stage responsibility example, all five product-test fixtures, and the reusable-asset/configuration/lineage fixtures above.
- Each role sees only authorized tasks, projects, documents, references, teams, counts, and approval queues. Unauthorized and invalid identities fail closed; client views expose only explicitly published fields.
- Project switching updates every scoped panel and leaves no stale records. Empty and unlinked states remain explicit.
- Sample load and restore are repeatable and idempotent. Removal affects only the selected demo dataset. No action can target production or modify non-demo records.
- Simulated approvals, test outcomes, receipts, and releases remain visibly simulated and cannot trigger real business actions.
- Record the application revision, schema and fixture versions, environment, tested roles, evidence, failures, and reset result. A pass applies only to that exact revision and environment.
