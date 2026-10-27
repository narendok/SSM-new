# Sample Data and Test Plan

**Status:** Canonical reusable non-production fixture specification; sample requirements reconciled 27 October 2026
**Authority:** [SSM One Master Plan](../SSM_ONE_MASTER_PLAN.md); lifecycle context: [Electronics Project Lifecycle and APQP Roadmap](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md); generic delivery phases: [Product Build Roadmap](Product%20Build%20Roadmap.md).

## Purpose and boundaries

Define a small, linked dataset for demonstrating and testing SSM One across web, Android, and backend. Every fixture is synthetic and visibly marked `DEMO_ONLY`. This plan defines the intended sample contents and lifecycle; it does not seed a database or authorize production data changes.

Use the master plan's department registry, access rules and terminology. The nine-stage examples below are the preserved legacy baseline, not a mandatory lifecycle for every track. New sample packs follow track → phases → stages → tasks, with track-specific applicability and versioned mapping to existing stage IDs. Active department labels are **SAL, EHW, FW, SW, MECH, PUR, QA, EMF, MMF, FIN, SIT, HR/OPS**. **EMF** handles electronics box-build using outsourced PCB assemblies; **MMF** handles mechanical manufacturing; in-house PCB assembly is out of scope. FW and SW are the active software department labels.

RACI describes work responsibility only. It never grants record access, approval authority, or signing rights. Access is checked independently using authenticated identity, organization membership, project/record scope, and capability. A project pins the approved responsibility-matrix version; future departments can be added through configuration without changing lifecycle stages.

## Sample data operations

Provide three distinct, authenticated, audited actions in an isolated non-production environment:

1. **Load sample data** creates the versioned baseline. Repeating the same load is idempotent and creates no duplicates.
2. **Restore sample defaults** returns demo-owned records to the selected fixture version. Preview the target environment and affected record counts; preserve or explicitly remove demo-user work according to policy.
3. **Remove sample data** removes only records owned by the selected demo dataset. It must not replace this action with a blank-company reset.

Application settings, company configuration, department setup, and responsibility matrices have separate administration flows. Never seed or reset production, alter non-demo records, send real notifications, post finances, or create real stock, approvals, test evidence, or customer commitments. Store a manifest with fixture version, schema version, target environment, deterministic dataset ID, affected record IDs, operation time, outcome, and audit actor. Keep credentials and secrets outside fixtures.

The earlier browser prototype's sample controls are local-browser behavior. Later shared TEST fixture contracts and records must be inspected individually; they do not by themselves prove all three Load/Restore/Remove operations are implemented. Accept each operation only after authenticated backend and isolation checks pass. Do not mix local mutations with shared operational data.

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

### Legacy baseline: detailed development gates mapped to nine portal stages

The legacy sample lifecycle and RACI below use the earlier **nine top-level project stages**. Preserve these as a versioned reference and map them explicitly when adopting the latest track → phases → stages → tasks hierarchy; do not force all nine stages or every department into every track. They do not replace detailed engineering activities or turn every activity into a separate portal stage. The [Electronics Project Lifecycle and APQP Roadmap](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md) retains **37 detailed activities (`HW_01`–`HW_37`)**, with APQP phase gates 1–5, and proposes their mapping to the nine portal stages in [§5.2](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md#52-preserve-the-complete-37-activity-apqp-framework). That crosswalk still needs process-owner approval before it becomes the operating workflow.

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

## Legacy baseline: linked client, OMS, and project fixtures

Preserve these two earlier project examples and their IDs as an optional legacy fixture pack. They do not replace the connected S01–S06 coverage below, and new portal loads must not silently load both packs or duplicate projects. Record the selected pack/version in the manifest.

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

Legacy inventory fixture coverage (activate only after the authoritative inventory source/adapter is identified and the selected isolated fixture pack is authorized): separated inventory fixtures following [Electronics Project Lifecycle and APQP Roadmap §6.2](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md#62-inventory-reusable-design-assets-and-plant-assets): inventory item masters for an electronics component, outsourced PCBA, mechanical raw material, and consumable/packaging item; synthetic lot/serial and movement records; reusable asset/module revisions with controlled BOM lines pointing to item IDs; project configurations pinning those revisions; and a fixed production/test-machine asset with plant/site, custody, maintenance/calibration, and compatibility metadata. Link a demo as-built unit/lot to the actual demo revisions and lots/serials used. All stock balances and movements remain synthetic demo fixtures. The machine is a plant asset, not consumable stock; selecting any reusable module does not reserve or move its linked inventory.

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

- For the legacy baseline pack, retain the twelve-department/two-fictional-member examples, two isolated project examples, nine-stage RACI reference, five test families and reusable-asset lineage coverage above. For current connected packs, verify S01–S06 plus six-track coverage below and only applicable phases/stages/tasks. Do not silently provision users, duplicate identities or force every department into each project.
- Each role sees only authorized tasks, projects, documents, references, teams, counts, and approval queues. Unauthorized and invalid identities fail closed; client views expose only explicitly published fields.
- Project switching updates every scoped panel and leaves no stale records. Empty and unlinked states remain explicit.
- Sample load and restore are repeatable and idempotent. Removal affects only the selected demo dataset. No action can target production or modify non-demo records.
- Simulated approvals, test outcomes, receipts, and releases remain visibly simulated and cannot trigger real business actions.
- Record the application revision, schema and fixture versions, environment, tested roles, evidence, failures, and reset result. A pass applies only to that exact revision and environment.

## Current connected sample packs — 27 October 2026

This file is the single reusable sample-data specification for new portals and existing isolated TEST environments. The temporary web `docs/SAMPLE_DATA_PLAN.md` is now a compatibility pointer only; future sample requirements belong here. The [consolidated implementation handoff](https://github.com/narendok/ssm-new-web/blob/main/docs/ANTIGRAVITY_READY_TO_USE_CONSOLIDATED_HANDOFF_2026-10-21.md) records implementation and verification evidence, not a competing sample catalogue.

### Reusable loading and pack compatibility

- Preserve the original Load sample data / Restore sample defaults / Remove sample data operations and their audited environment/count previews. Removal/restoration targets only the selected dataset and its proven owned rows; never clear a company or assume linked user-created records can be deleted. A new portal load is explicit, never an automatic production bootstrap.
- Use stable dataset/pack/version/fixture keys with an environment-specific canonical ID map. On a new portal, resolve organization, departments, allowed members and schema/template versions before loading. Generate or resolve actual target UUIDs; never copy another organization's UUIDs, credentials, access grants, signed URLs or private files. On an existing TEST portal, reuse that run's persisted manifest IDs and never create duplicates on replay.
- Provide two selectable pack families: the preserved legacy baseline and the current connected lifecycle pack. Do not import both implicitly. The current pack covers the six outcome cases and all six tracks, adding supplementary track cases only where source inspection proves coverage is missing. S02 is a non-project enquiry case, so six scenarios do not imply six project rows.
- Every row/file remains explicitly synthetic in its provenance and appropriate UI identity (existing TEST labels/IDs are retained; do not rename persisted records merely to add `DEMO_ONLY`). Store actual field values, remarks, project/source links, stage/task ownership, revisions and expected permissions in a versioned manifest. Separate read-only training cards are not a substitute for entries in the real registers.
- Existing fictional team names are examples for an isolated pack, not real employee records or implicit permission to create authentication accounts. Identity provisioning and role assignments are separately authorized; reuse permitted existing TEST members where available. No real notifications, financial posting, stock movements, signatures or client commitments.
- Existing nine-stage/APQP examples remain versioned references; owner-approved mapping is required before changing an active project. Do not assign mandatory PCB/manufacturing/certification work to software-only or firmware-only tracks. Hardware + Software development includes Firmware under the user's project-scope rule; ready-made deployment does not imply new hardware/firmware development.

## Existing lifecycle cases to reconcile first

| Existing case | Required actual linked state | Key invariant / proof |
| --- | --- | --- |
| S01 Internal equipment | Internal project, approved internal requirements where present, assigned department work, jig/test evidence and applicable common references | No invented external client; internal project documents remain linked to the actual project UUID. |
| S02 Declined feasibility | Enquiry/opportunity source, complete applicable feasibility remarks, reasoned terminal decline | No project exists; no downstream project, production or delivery is fabricated. |
| S03 Client PoC | Intake and requirement source → project → prototype tasks/BOM/design references → 10-unit delivery → pending client feedback | PoC completion does not authorize production release. |
| S04 System integration → customer pilot | Actual requirements, departmental inputs, dependencies, integration evidence, pilot deployment and ongoing field observation | Show provider/owner/waiting department/next action; pilot observation is not silently marked passed. |
| S05 Pilot needing refinement | Earlier completed phases plus open change/refinement tasks, revised firmware/design evidence where applicable, regression work | Preserve earlier approvals and revisions; project remains open despite completed earlier work. |
| S06 Bulk production | Released applicable engineering outputs, verified masters, procurement, incoming disposition, production lot, QC and deliveries | 150 accepted + 5 held + 45 pending = 200 in Lot 1; 300 of the 500 planned remain. Held/pending are not released as accepted. |

These cases have prior implementation reports and some persisted fixture evidence. Audit actual manifests and source records; do not claim all are fully accepted from this plan.

## Track coverage: six user-confirmed lifecycle types

| Track | Minimum distinctive sample evidence |
| --- | --- |
| Software only | Software requirements, API/data dependencies, implementation/test/deployment tasks and software release evidence; no mandatory PCB/BOM/fabrication work. |
| Firmware only | Existing board/platform reference, firmware interfaces, implementation/flashing/regression tasks; hardware consulted only for real dependency. No new PCB development by default. |
| Hardware only | Electrical parameters, schematic/layout/BOM/native fabrication references, prototype and test tasks; no firmware/software development tasks by default. |
| Hardware + Firmware | Linked board and firmware versions, bring-up dependencies, joint verification and applicable pilot/release. |
| Hardware + Firmware + Software | End-to-end hardware/firmware/software parameter inputs and integration dependencies. No Hardware + Software development combination that silently omits required Firmware under the user's scope rule. |
| Ready-made deployment | Existing product/model and original technical references; applicable configuration, integration, verification, fulfilment and support work. Do not generate custom hardware/firmware development merely because the product contains them. |

Map existing S01–S06 to tracks only from actual source evidence. If coverage is missing, add clearly labelled supplementary TEST cases under a new idempotent manifest version; do not overwrite a case's existing scope or assume the six outcome scenarios automatically cover the six tracks. Internal/client origin and PoC/pilot/production purpose are independent dimensions.

## Connected record and value manifest

Every sample entity needs: fixture key, canonical saved UUID, organization, owning department, project/source UUID if applicable, entity type, origin/track/template version, actual values, owner/assignee, state, revision, remark, upstream/downstream IDs, seed-run provenance and expected viewer/editor. Missing authoritative fields stay missing with a reason; samples must not introduce fake company rules.

| Actual portal location | Sample content / connection | Acceptance |
| --- | --- | --- |
| Project list / workspace | Actual project title/code, internal/client context, track, phases/stages, accountable team and linked intake | One canonical entry; selection updates the relevant workspace/analysis/document context. |
| Inputs & Feasibility / Analysis | Track-applicable power, voltage/range/protection, connectivity/network/region/SIM/GNSS/CAN, storage, I/O, mechanical/IP/thermal and compliance questions; each with value, unit, source, owner, feasibility remark, status and queries | Explicitly synthetic values, not defaults for real projects. Missing-input count updates after actual shared save/reload. Leads edit only owned inputs; others query/comment within permission. |
| Stages and tasks | Realistic completed, active, blocked, overdue and planned tasks; dependency, assignee, due date, priority, remark and evidence | Pinned lifecycle template; no duplicate auto-generation; added stages/tasks do not erase history or auto-approve gates. |
| Department record creation | Appropriate actual catalogue types in each applicable department, canonical supplier/part/customer selections, source/order/BOM/revision links | Automatic numbering preserved; no repeated prototype/mass-production choice; permitted inline creation returns selected canonical master and preserves parent draft. |
| Deliveries / PoC units | Actual synthetic lot/dispatch/serial evidence where supported, receiver and delivery status | Physical delivery records are distinct from document deliverables; reconcile quantities and link original evidence. |
| Approval / Decision & Deviation | Separate author/reviewer where required; pending, recorded, rejected or approved examples with meaningful synthetic reasons | Do not forge signatures or bypass required approval to seed final states. Use authorized existing workflow or clearly provenance-labelled fixture contract. |
| Team Chat | A permitted channel with realistic synthetic discussion, reply, open/closed poll and searchable tags related to a sample project | Use actual members only with permission; never auto-add every employee. Poll agreement does not approve a gate. No broadcast/import is authorized by this planning row. |
| Profiles / budgets / assets | Only safe synthetic account-owned data supported by actual canonical source | No fabricated private letters/assets or stock. Inventory source is still a separate unresolved decision. |

## Documents & Vault: samples in the original library

Keep the original full-page document library. Sidebar navigation must not expose a raw database utility. Avoid duplicated document menus, stacked dialogs and separate copies of the same file.

| Library grouping | Examples to plan | Link / permission rule |
| --- | --- | --- |
| Department / Common | Internal requirement checklist, approved template, reference guideline, test procedure | Owning department and explicit common scope; no forced dummy project. Cross-department sharing is explicit, not implied by the folder name. |
| Internal Project | Internal jig requirements, design/BOM, test evidence, internal delivery or commissioning report | Actual internal project UUID and applicable stage/task/source links. |
| Client Project | Requirement/PRS, feasibility review, linked BOM/design references, integration/pilot evidence, delivery and permitted client outputs | Actual client project UUID; client access requires explicit release/share, never a title, category or file extension. |

| Document source type | Sample handling |
| --- | --- |
| Auto-draftable DOCX / XLSX | Editable draft from provided/approved template and verified linked values; retain editable revision. After the configured Admin final approval, create the controlled non-editable client rendition (normally PDF) without destroying editable source/history. Mark draft and final states accurately; do not imply this pipeline is already implemented. |
| Native external engineering files | Schematic/layout, mechanical drawing/STEP, STL/DXF prototype files come from engineering software or suppliers. Link/upload original files; do not pretend the portal generates them. Keep project/revision/software provenance. |
| PCB fabrication packages | Gerber ZIP, panel ZIP and stencil/PCB fab outputs remain original generated packages; panel/stencil evidence links the actual source Gerber revision/hash. No automatic panel generation commitment. |
| Outsourced certificates / reports | Original uploaded synthetic clearly labelled specimen or user-supplied authorized sample. Never fabricate an issued certificate, test result, accreditation or approval. |
| Viewer references | Reuse authorized Altium viewer/design links when provided; KiKit/PCB viewer integration is not implied by this sample plan. |

## Sample delivery patches and evidence

1. Read current manifests/source and report coverage gaps without changing data.
2. Reconcile track → phase → stage → task mappings and permissions; preserve existing IDs/history.
3. Prepare idempotent supplementary TEST seed payloads and original-file manifest; validate locally first. No new users or permissions are implied.
4. Apply only authorized TEST fixtures through existing contracts, then verify actual registers, project inputs, documents and shared reload. Keep a fixture-only recovery/removal plan; no company-wide database clear.
5. Verify lead/employee/admin/client boundaries, exact quantity/revision links, cross-platform IDs and original layouts. Record source revision, run ID, actual counts and remaining failures. A screenshot or scenario card alone is not acceptance.

Current status: this update adds the requested sample coverage and placement plan only; it does not import lifecycle or document fixtures. A separate self-only Chat verification channel/message/reply/poll is recorded in consolidated handoff §16.9; it is not a scenario-pack import.
