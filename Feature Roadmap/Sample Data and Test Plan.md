<a id="source-20"></a>
<a id="source-20-sample-data-and-test-plan"></a>
# Sample Data and Test Plan

**Status:** Canonical reusable non-production fixture specification; sample requirements reconciled 27 October 2026
**Authority:** [SSM One Master Plan](../SSM_ONE_MASTER_PLAN.md#source-32); lifecycle context: [Electronics Project Lifecycle and APQP Roadmap](../SSM_ONE_MASTER_PLAN.md#source-18); generic delivery phases: [Product Build Roadmap](../SSM_ONE_MASTER_PLAN.md#source-19).

<a id="source-20-purpose-and-boundaries"></a>
#### Purpose and boundaries

Define a small, linked dataset for demonstrating and testing SSM One across web, Android, and backend. Every fixture is synthetic and visibly marked `DEMO_ONLY`. This plan defines the intended sample contents and lifecycle; it does not seed a database or authorize production data changes.

Use the master plan's department registry, access rules and terminology. The nine-stage examples below are the preserved legacy baseline, not a mandatory lifecycle for every track. New sample packs follow track → phases → stages → tasks, with track-specific applicability and versioned mapping to existing stage IDs. Active department labels are **SAL, EHW, FW, SW, MECH, PUR, QA, EMF, MMF, FIN, SIT, HR/OPS**. **EMF** handles electronics box-build using outsourced PCB assemblies; **MMF** handles mechanical manufacturing; in-house PCB assembly is out of scope. FW and SW are the active software department labels.

RACI describes work responsibility only. It never grants record access, approval authority, or signing rights. Access is checked independently using authenticated identity, organization membership, project/record scope, and capability. A project pins the approved responsibility-matrix version; future departments can be added through configuration without changing lifecycle stages.

<a id="source-20-sample-data-operations"></a>
#### Sample data operations

Provide three distinct, authenticated, audited actions in an isolated non-production environment:

1. **Load sample data** creates the versioned baseline. Repeating the same load is idempotent and creates no duplicates.
2. **Restore sample defaults** returns demo-owned records to the selected fixture version. Preview the target environment and affected record counts; preserve or explicitly remove demo-user work according to policy.
3. **Remove sample data** removes only records owned by the selected demo dataset. It must not replace this action with a blank-company reset.

Application settings, company configuration, department setup, and responsibility matrices have separate administration flows. Never seed or reset production, alter non-demo records, send real notifications, post finances, or create real stock, approvals, test evidence, or customer commitments. Store a manifest with fixture version, schema version, target environment, deterministic dataset ID, affected record IDs, operation time, outcome, and audit actor. Keep credentials and secrets outside fixtures.

The earlier browser prototype's sample controls are local-browser behavior. Later shared TEST fixture contracts and records must be inspected individually; they do not by themselves prove all three Load/Restore/Remove operations are implemented. Accept each operation only after authenticated backend and isolation checks pass. Do not mix local mutations with shared operational data.

<a id="source-20-demo-team-and-responsibility-examples"></a>
#### Demo team and responsibility examples

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

<a id="source-20-legacy-baseline-detailed-development-gates-mapped-to-nine-portal-stages"></a>
##### Legacy baseline: detailed development gates mapped to nine portal stages

The legacy sample lifecycle and RACI below use the earlier **nine top-level project stages**. Preserve these as a versioned reference and map them explicitly when adopting the latest track → phases → stages → tasks hierarchy; do not force all nine stages or every department into every track. They do not replace detailed engineering activities or turn every activity into a separate portal stage. The [Electronics Project Lifecycle and APQP Roadmap](../SSM_ONE_MASTER_PLAN.md#source-18) retains **37 detailed activities (`HW_01`–`HW_37`)**, with APQP phase gates 1–5, and proposes their mapping to the nine portal stages in [§5.2](../SSM_ONE_MASTER_PLAN.md#source-18-52-preserve-the-complete-37-activity-apqp-framework). That crosswalk still needs process-owner approval before it becomes the operating workflow.

The master plan does not yet define a numbered firmware-specific gate sequence. Firmware requirements, builds, and verification belong in the shared project lifecycle and should use versioned firmware work packages/gates mapped to the relevant portal stages once the firmware process owner approves them. This sample plan does not invent gate names or counts. Hardware and firmware gates should link to common project requirements, revisions, evidence, owners, and approval controls. See the [Department Lifecycle and Gate Framework — APQP, Audit, and IATF Mapping](../SSM_ONE_MASTER_PLAN.md#source-17) for the proposed department-by-department profiles.

<a id="source-20-example-stage-raci"></a>
##### Example stage RACI

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

<a id="source-20-legacy-baseline-linked-client-oms-and-project-fixtures"></a>
#### Legacy baseline: linked client, OMS, and project fixtures

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

<a id="source-20-reusable-asset-and-configuration-fixtures"></a>
##### Reusable asset and configuration fixtures

Use synthetic, clearly `DEMO_ONLY` master assets to test reuse lineage without implying real compatibility or certification. Seed reusable PCB assembly, enclosure/case, and harness revisions, each with fictional owner/status, interfaces, linked native-file placeholders/checksums, and verification state marked `DEMO_ONLY`. Link their exact revisions to Project 001 through a project configuration record; make Project 002 a proposed variant with one changed interface and an unresolved compatibility/qualification item. Add visibly invalid certificate-evidence placeholders that distinguish component/asset scope (PCB, enclosure/material, harness) from the separate pending finished-project certificate/test scope. They must be labeled `DEMO_ONLY — NOT VALID` and never appear as proof or release evidence. Include a synthetic reuse assessment showing requirement links, fit/gap, delta-test requirement, decision owner, and pending status, plus an as-built trace fixture recording actual demo revisions for a unit/lot.

Legacy inventory fixture coverage (activate only after the authoritative inventory source/adapter is identified and the selected isolated fixture pack is authorized): separated inventory fixtures following [Electronics Project Lifecycle and APQP Roadmap §6.2](../SSM_ONE_MASTER_PLAN.md#source-18-62-inventory-reusable-design-assets-and-plant-assets): inventory item masters for an electronics component, outsourced PCBA, mechanical raw material, and consumable/packaging item; synthetic lot/serial and movement records; reusable asset/module revisions with controlled BOM lines pointing to item IDs; project configurations pinning those revisions; and a fixed production/test-machine asset with plant/site, custody, maintenance/calibration, and compatibility metadata. Link a demo as-built unit/lot to the actual demo revisions and lots/serials used. All stock balances and movements remain synthetic demo fixtures. The machine is a plant asset, not consumable stock; selecting any reusable module does not reserve or move its linked inventory.

Acceptance: reuse never silently copies or changes a master asset; the project pins exact revisions; unresolved fit/qualification gaps remain visible and block any simulated skip; a changed variant has a new ID/revision and source lineage; and the as-built view shows what was actually selected. Component-level certificate placeholders never satisfy the pending project-level certification scope. Inventory item classes, lots, and plant assets stay distinguishable, and viewing/selecting fixtures does not post stock movements. No fixture may claim real qualification, regulatory approval, savings, or production use.

<a id="source-20-project-001-stage-remarks"></a>
##### Project 001 stage remarks

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

<a id="source-20-product-test-and-dvpr-fixtures"></a>
#### Product test and DVP&R fixtures

Separate planned criteria, simulated UI states, and actual measured results. This plan supplies no technical limits, sample counts, measured values, or certification claims. Copy criteria and units only from an approved, versioned requirement or method; otherwise show `Not recorded` and do not permit a verified result.

| Fixture | Test family | Required source | Allowed demo state |
|---|---|---|---|
| `DEMO-DVP-001` | Electrical power and protection | Approved requirement and configuration | Planned; Simulated Pass/Fail/Retest |
| `DEMO-DVP-002` | Connectivity and protocol interoperability | Approved interface/specification revision | Planned or simulated outcome |
| `DEMO-DVP-003` | Firmware update and recovery | Approved firmware requirement/build identity | Planned or simulated outcome |
| `DEMO-DVP-004` | Environmental/mechanical integrity | Approved method and limits | Planned or simulated outcome |
| `DEMO-DVP-005` | EMF/MMF process and final inspection | Approved control plan and inspection method | Planned or simulated outcome |

Every case should link requirement/method IDs and revisions, product configuration, demo sample identity, owner, criterion and unit provenance, result and unit, attachment, reviewer/disposition, retest/NCR, and audit event. Simulated outcomes remain visibly `DEMO_ONLY`; they are never displayed as measured `PASS` or used to release production.

<a id="source-20-minimum-acceptance-checks"></a>
#### Minimum acceptance checks

- For the legacy baseline pack, retain the twelve-department/two-fictional-member examples, two isolated project examples, nine-stage RACI reference, five test families and reusable-asset lineage coverage above. For current connected packs, verify S01–S06 plus seven-track coverage below and only applicable phases/stages/tasks. Do not silently provision users, duplicate identities or force every department into each project.
- Each role sees only authorized tasks, projects, documents, references, teams, counts, and approval queues. Unauthorized and invalid identities fail closed; client views expose only explicitly published fields.
- Project switching updates every scoped panel and leaves no stale records. Empty and unlinked states remain explicit.
- Sample load and restore are repeatable and idempotent. Removal affects only the selected demo dataset. No action can target production or modify non-demo records.
- Simulated approvals, test outcomes, receipts, and releases remain visibly simulated and cannot trigger real business actions.
- Record the application revision, schema and fixture versions, environment, tested roles, evidence, failures, and reset result. A pass applies only to that exact revision and environment.

<a id="source-20-current-connected-sample-packs--27-october-2026"></a>
#### Current connected sample packs — 27 October 2026

This file is the single reusable sample-data specification for new portals and existing isolated TEST environments. The unnecessary web and workspace SAMPLE_DATA_PLAN.md duplicates have been removed; future sample requirements belong here. The [consolidated implementation handoff](https://github.com/narendok/ssm-new-web/blob/main/docs/ANTIGRAVITY_READY_TO_USE_CONSOLIDATED_HANDOFF_2026-10-21.md) records implementation and verification evidence, not a competing sample catalogue.

<a id="source-20-reusable-loading-and-pack-compatibility"></a>
##### Reusable loading and pack compatibility

- Preserve the original Load sample data / Restore sample defaults / Remove sample data operations and their audited environment/count previews. Removal/restoration targets only the selected dataset and its proven owned rows; never clear a company or assume linked user-created records can be deleted. A new portal load is explicit, never an automatic production bootstrap.
- Use stable dataset/pack/version/fixture keys with an environment-specific canonical ID map. On a new portal, resolve organization, departments, allowed members and schema/template versions before loading. Generate or resolve actual target UUIDs; never copy another organization's UUIDs, credentials, access grants, signed URLs or private files. On an existing TEST portal, reuse that run's persisted manifest IDs and never create duplicates on replay.
- Provide two selectable pack families: the preserved legacy baseline and the current connected lifecycle pack. Do not import both implicitly. The current pack covers the six outcome cases and all seven tracks, adding supplementary track cases only where source inspection proves coverage is missing. S02 is a non-project enquiry case, so six scenarios do not imply six project rows.
- Every row/file remains explicitly synthetic in its provenance and appropriate UI identity (existing TEST labels/IDs are retained; do not rename persisted records merely to add `DEMO_ONLY`). Store actual field values, remarks, project/source links, stage/task ownership, revisions and expected permissions in a versioned manifest. Separate read-only training cards are not a substitute for entries in the real registers.
- Existing fictional team names are examples for an isolated pack, not real employee records or implicit permission to create authentication accounts. Identity provisioning and role assignments are separately authorized; reuse permitted existing TEST members where available. No real notifications, financial posting, stock movements, signatures or client commitments.
- Existing nine-stage/APQP examples remain versioned references; owner-approved mapping is required before changing an active project. Do not assign mandatory PCB/manufacturing/certification work to software-only or firmware-only tracks. Hardware + Software development includes Firmware under the user's project-scope rule; ready-made deployment does not imply new hardware/firmware development.

<a id="source-20-existing-lifecycle-cases-to-reconcile-first"></a>
#### Existing lifecycle cases to reconcile first

| Existing case | Required actual linked state | Key invariant / proof |
| --- | --- | --- |
| S01 Internal equipment | Internal project, approved internal requirements where present, assigned department work, jig/test evidence and applicable common references | No invented external client; internal project documents remain linked to the actual project UUID. |
| S02 Declined feasibility | Enquiry/opportunity source, complete applicable feasibility remarks, reasoned terminal decline | No project exists; no downstream project, production or delivery is fabricated. |
| S03 Client PoC | Intake and requirement source → project → prototype tasks/BOM/design references → 10-unit delivery → pending client feedback | PoC completion does not authorize production release. |
| S04 System integration → customer pilot | Actual requirements, departmental inputs, dependencies, integration evidence, pilot deployment and ongoing field observation | Show provider/owner/waiting department/next action; pilot observation is not silently marked passed. |
| S05 Pilot needing refinement | Earlier completed phases plus open change/refinement tasks, revised firmware/design evidence where applicable, regression work | Preserve earlier approvals and revisions; project remains open despite completed earlier work. |
| S06 Bulk production | Released applicable engineering outputs, verified masters, procurement, incoming disposition, production lot, QC and deliveries | 150 accepted + 5 held + 45 pending = 200 in Lot 1; 300 of the 500 planned remain. Held/pending are not released as accepted. |

These cases have prior implementation reports and some persisted fixture evidence. Audit actual manifests and source records; do not claim all are fully accepted from this plan.

<a id="source-20-track-coverage-six-user-confirmed-lifecycle-types"></a>
#### Track coverage: seven user-confirmed lifecycle types

| Track | Minimum distinctive sample evidence |
| --- | --- |
| Software only | Software requirements, API/data dependencies, implementation/test/deployment tasks and software release evidence; no mandatory PCB/BOM/fabrication work. |
| Firmware only | Existing board/platform reference, firmware interfaces, implementation/flashing/regression tasks; hardware consulted only for real dependency. No new PCB development by default. |
| Hardware only | Electrical parameters, schematic/layout/BOM/native fabrication references, prototype and test tasks; no firmware/software development tasks by default. |
| Hardware + Firmware | Linked board and firmware versions, bring-up dependencies, joint verification and applicable pilot/release. |
| Firmware + Software | Existing hardware/platform reference; firmware/cloud interface contract, decoupled simulators, end-to-end verification and coordinated releases; no new PCB development. |
| Hardware + Firmware + Software | End-to-end hardware/firmware/software parameter inputs and integration dependencies. No Hardware + Software development combination that silently omits required Firmware under the user's scope rule. |
| Ready-made deployment | Existing product/model and original technical references; applicable configuration, integration, verification, fulfilment and support work. Do not generate custom hardware/firmware development merely because the product contains them. |

Map existing S01–S06 to tracks only from actual source evidence. If coverage is missing, add clearly labelled supplementary TEST cases under a new idempotent manifest version; do not overwrite a case's existing scope or assume the six outcome scenarios automatically cover the seven tracks. Internal/client origin and PoC/pilot/production purpose are independent dimensions.

<a id="source-20-connected-record-and-value-manifest"></a>
#### Connected record and value manifest

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

<a id="source-20-documents--vault-samples-in-the-original-library"></a>
#### Documents & Vault: samples in the original library

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

<a id="source-20-sample-delivery-patches-and-evidence"></a>
#### Sample delivery patches and evidence

1. Read current manifests/source and report coverage gaps without changing data.
2. Reconcile track → phase → stage → task mappings and permissions; preserve existing IDs/history.
3. Prepare idempotent supplementary TEST seed payloads and original-file manifest; validate locally first. No new users or permissions are implied.
4. Apply only authorized TEST fixtures through existing contracts, then verify actual registers, project inputs, documents and shared reload. Keep a fixture-only recovery/removal plan; no company-wide database clear.
5. Verify lead/employee/admin/client boundaries, exact quantity/revision links, cross-platform IDs and original layouts. Record source revision, run ID, actual counts and remaining failures. A screenshot or scenario card alone is not acceptance.

Current status: this update adds the requested sample coverage and placement plan only; it does not import lifecycle or document fixtures. A separate self-only Chat verification channel/message/reply/poll is recorded in consolidated handoff §16.9; it is not a scenario-pack import.

## Complete development fixture catalogue — 28 October 2026

**Current source and decision boundary.** This catalogue adapts the user's milestone guide and SCMS Multi-Track reference, keeping the confirmed portal scope and original UI. It is a versioned planning/fixture contract, not deployed SQL, a claim of standards compliance or authorization to seed real business data. Seven tracks are now confirmed, including Firmware + Software on existing hardware. Task generation is progressive, while the full planned roadmap stays visible.

### Phase and milestone model

| Profile | Default phases | Applicability |
|---|---|---|
| Common | CM-P1 Request/feasibility; CM-P2 baseline/plan; CL-P1 release/handover/closure | Internal requests need no client; a declined enquiry remains pre-project. |
| Hardware | HW-P1 requirements/feasibility; HW-P2 architecture/schematic; HW-P3 layout/native outputs; HW-P4 prototype/verification; HW-P5 pilot/release | All 37 reference activities are preserved below. Mechanical, jig, external testing and production work apply only if required; outsourced PCBA replaces in-house SMT assumptions. |
| Firmware | FW-P1 scope/interfaces; FW-P2 architecture/environment; FW-P3 implementation; FW-P4 verification/integration; FW-P5 release/support | FW_01–FW_13 are distinct activities grouped into phases; G0–G11 remain source gate aliases, not 12 mandatory project phases. |
| Software | SW-P1 scope/contracts; SW-P2 design/environment; SW-P3 implementation/security; SW-P4 verification/acceptance; SW-P5 deployment/support | SW_01–SW_11; cloud, telemetry, device registry and OTA details are conditional, not required for every application. |
| Coupled integration | INT-P1 interface agreement, integrated verification and pilot feedback | Apply HW/FW and/or FW/SW handshakes to selected domains; no dependency on absent new hardware. |
| Ready-made | RM-P1 fit/gap; RM-P2 configuration; RM-P3 deployment checks | No new schematic, board or firmware development by default. A custom extension changes the reviewed scope. |
| QA certification | CERT-P1 applicability/agency; CERT-P2 pre-compliance; CERT-P3 final testing; CERT-P4 evidence/decision | C01–C15 are optional QA-owned workstream activities, not an eighth project track. |

Milestones record completed outcomes and link stage evidence: M01 requirements accepted; M02 plan/kickoff agreed; M03 design/interface baseline; M04 prototype or feature build ready; M05 integration verified; M06 validation accepted; M07 pilot disposition; M08 authorized release/deployment; M09 support handover; M10 closure. Select applicable milestones rather than force ten onto every project. A milestone needs owner, criteria, dependencies, actual evidence and configured approval where required. Unplanned dates remain empty. No automatic financial posting, client acceptance or release follows from a task checkbox.

### All phase/stage/task templates in one file

Template namespace is **LC2-2026-10-28**. Each stage key is `LC2-2026-10-28:<code>`; its two ordered task keys are `<stage-key>:T01` and `<stage-key>:T02`. Reference codes HW_01 etc are aliases inside this version only. Never overwrite an older stage UUID or infer equivalence from equal numbers. Owners below are default Responsible departments; Accountable/signatory assignments follow the existing governed matrix. Supporting departments do not gain access through a dependency.

| Phase | Stage code and name | Default owner | Prerequisites / applicability | T01 — default task | T02 — default task |
|---|---|---|---|---|---|
| CM-P1 | CM_01 — Request and input capture | SAL | none | Capture internal request or client source and objective | Link verified input sources and identify missing values |
| CM-P1 | CM_02 — Applicable feasibility review | SAL | CM_01 | Collect relevant departmental feasibility remarks and risks | Record accepted scope or reasoned decline without creating a dummy project |
| CM-P2 | CM_03 — Requirements baseline | SAL | CM_02 | Resolve required parameters and document exclusions | Route baseline to existing authorized approvers |
| CM-P2 | CM_04 — Plan and kickoff | SAL | CM_03 | Assign accountable owners and dependency-aware schedule | Record kickoff decisions and agreed acceptance criteria |
| HW-P1 | HW_01 — Hardware requirement capture | EHW | CM_01 | Review electrical and physical requirements with source provenance | Record clarification queries and missing parameters |
| HW-P1 | HW_02 — Hardware PRS baseline | EHW | HW_01,CM_03 | Populate the shared electrical and interface parameter table | Review the hardware requirement baseline through existing authority |
| HW-P1 | HW_03 — Component feasibility and alternatives | EHW | HW_01 | Search canonical parts and compare supported alternatives | Link sourcing availability and obsolescence risks from approved sources |
| HW-P1 | HW_04 — System architecture and power tree | EHW | HW_02,HW_03 | Draft functional blocks and interface boundaries | Calculate power and thermal budgets from approved requirements |
| HW-P1 | HW_05 — Initial cost and feasibility response | EHW | HW_03,HW_04 | Link tentative BOM and supplier cost evidence | Submit technical feasibility and unresolved commercial assumptions |
| HW-P2 | HW_06 — Evaluation setup or breadboard | EHW | HW_04,HW_05 | Select existing evaluation boards and bench setup | Record configuration and verify the required concept functions |
| HW-P2 | HW_07 — Prototype component request | EHW | HW_03 | Select canonical part revisions and requested quantities | Submit linked prototype request with approved alternates where available |
| HW-P2 | HW_08 — Prototype procurement and acceptance references | PUR | HW_07 | Link authorized supplier order and receipt records | Obtain QA acceptance or keep held components unavailable |
| HW-P2 | HW_09 — Pinout and draft hardware-firmware interface | EHW | HW_04,FW_02 when FW is selected | Review required pin assignments and conflicts | Record the joint interface baseline or existing-platform reference |
| HW-P2 | HW_10 — Circuit calculations and simulation | EHW | HW_04 | Calculate selected circuit blocks against source requirements | Link native simulation evidence and design assumptions |
| HW-P2 | HW_11 — Symbols footprints and native models | EHW | HW_03 | Validate library pin mappings and package footprints | Attach authorized native model references and library revision |
| HW-P2 | HW_12 — Concept peripheral and signal checks | EHW | HW_06,HW_08 | Run approved bench checks using available test tools | Record interface observations and linked firmware build only where applicable |
| HW-P2 | HW_13 — Design risk review | EHW | HW_04,HW_10 | Identify circuit failure modes and mitigation actions | Review risks using the applicable company-approved method |
| HW-P2 | HW_14 — Verification planning | QA | HW_02,HW_13 | Map requirements to tests criteria units and configurations | Review planned evidence and applicable external testing needs |
| HW-P2 | HW_15 — Schematic preparation | EHW | HW_09,HW_10,HW_11 | Create revisioned schematics in the engineering tool | Link the native schematic and source requirements |
| HW-P2 | HW_16 — Schematic review | EHW | HW_15,HW_13 | Run configured electrical checks and peer review | Resolve findings and record the authorized review decision |
| HW-P3 | HW_17 — Mechanical interface and board outline | MECH | HW_16 | Confirm outline mounting connector and height constraints | Link existing or revised drawing STEP and outline files |
| HW-P3 | HW_18 — Placement and floorplan | EHW | HW_16,HW_17 | Place parts using the approved interface constraints | Review power signal thermal and accessibility concerns |
| HW-P3 | HW_19 — Tentative BOM | EHW | HW_16 | Export the tentative revisioned BOM and canonical part links | Request sourcing review without implying production release |
| HW-P3 | HW_20 — Fit and thermal review | MECH | HW_17,HW_18 | Check populated board fit against enclosure references | Record clearance thermal findings and required changes |
| HW-P3 | HW_21 — PCB stackup and routing | EHW | HW_18,HW_20 | Route against approved stackup and electrical constraints | Review return paths clearances and required impedance targets |
| HW-P3 | HW_22 — Board marking and fabrication preparation | EHW | HW_21 | Review identifiers polarity revision markings and fiducials | Define applicable panel constraints with the supplier |
| HW-P3 | HW_23 — Layout and manufacturability review | EHW | HW_21,HW_22 | Run configured DRC and supplier DFM checks | Record and close peer-review findings before export |
| HW-P3 | HW_24 — Prototype fabrication package | EHW | HW_23 | Export native-tool Gerber drill and assembly outputs | Register original package revision and integrity hash |
| HW-P4 | HW_25 — Authorized supplier fabrication request | PUR | HW_24 | Link approved supplier request for PCB PCBA and stencil as applicable | Resolve fabrication questions against the exact package revision |
| HW-P4 | HW_26 — Prototype enclosure and kitting | MMF | HW_17,HW_19 | Link authorized prototype enclosure drawing or existing case | Prepare a traceable kit through the agreed inventory source |
| HW-P4 | HW_27 — Applicable pre-compliance evidence | QA | HW_32,C08 when certification workstream applies | Coordinate the applicable formal pre-compliance checks | Link QA test evidence rather than duplicate C08 execution tasks |
| HW-P4 | HW_28 — Verified final hardware-firmware interface | EHW | HW_09,HW_31 | Verify actual pin behaviour and electrical scaling | Record the final joint interface reference where firmware is in scope |
| HW-P4 | HW_29 — Production test fixture readiness | EMF | HW_14,HW_16 | Link the approved test fixture design and diagnostic interface | Verify fixture readiness when production testing is required |
| HW-P4 | HW_30 — Outsourced PCBA receipt and prototype box-build | EMF | HW_25,HW_08 | Link supplier assembly receipt and independent QA disposition | Perform applicable authorized box-build and inspection checks |
| HW-P4 | HW_31 — Board bring-up | EHW | HW_30 | Perform approved current-limited power and basic interface checks | Record measurements against source criteria and log faults |
| HW-P4 | HW_32 — Bench functional validation | EHW | HW_31,HW_14,FW_08 when FW is selected | Execute the applicable bench validation plan on pinned revisions | Link defects corrective iterations and retest evidence |
| HW-P5 | HW_33 — Pilot or field evaluation | EHW | HW_32,HW_28,HW_27 if required | Support the authorized pilot configuration and installation | Capture user feedback and unresolved acceptance conditions |
| HW-P5 | HW_34 — Production BOM baseline | EHW | HW_33,HW_36 | Verify released part revisions and approved sourcing references | Submit the final BOM through the configured release authority |
| HW-P5 | HW_35 — Final fabrication and panel package | EHW | HW_34,HW_23 | Export the approved native fabrication package and associated panel stencil files | Pin the source Gerber revision checksum and release evidence |
| HW-P5 | HW_36 — Relevant design-change closure | EHW | HW_32 | Resolve or formally disposition open design changes | Preserve the prior revisions and link verified corrective evidence |
| HW-P5 | HW_37 — Production handover readiness | EMF | HW_34,HW_35,HW_29 if required,C15 if certification is required | Review applicable design manufacturing and QA handover evidence | Request authorized production release without auto-approving it |
| FW-P1 | FW_01 — Firmware feasibility and target sizing | FW | CM_01 | Assess existing target resources and required behaviours | Record firmware risks and implementation assumptions |
| FW-P1 | FW_02 — Firmware requirements and interface proposal | FW | FW_01,CM_03 | Define state behaviour and required peripheral protocol contracts | Review interface proposals against the selected existing or new hardware baseline |
| FW-P2 | FW_03 — Firmware architecture | FW | FW_02 | Design scheduling memory fault handling and persistence | Review resource allocation and testability |
| FW-P2 | FW_04 — Toolchain and evaluation environment | FW | FW_03 | Configure the approved source toolchain and reproducible build | Verify the development target and mock interfaces |
| FW-P3 | FW_05 — Core drivers and protocol implementation | FW | FW_04 | Implement only the required hardware abstraction and protocol behaviours | Link code changes and module checks to requirements |
| FW-P3 | FW_06 — Application security update and power behaviour | FW | FW_05 | Implement applicable application state and power logic | Implement and verify secure update or boot behaviour only where required |
| FW-P4 | FW_07 — Code review and unit verification | FW | FW_05,FW_06 | Run agreed static analysis and unit checks | Record peer review and fix required findings without invented coverage thresholds |
| FW-P4 | FW_08 — Target integration | FW | FW_07,HW_31 when new HW is selected | Integrate against the pinned target and HSI revision | Record timing peripheral and configuration findings |
| FW-P4 | FW_09 — Production diagnostic support | FW | FW_08 | Prepare diagnostic firmware or test interface when required | Verify its controlled handoff to the production test fixture |
| FW-P4 | FW_10 — Recovery and persistence verification | FW | FW_08 | Test applicable communication recovery buffering and retained state | Record failures and corrective tests against approved criteria |
| FW-P4 | FW_11 — Firmware validation | FW | FW_07,FW_08,FW_10 | Execute the agreed functional robustness and environmental plan | Review required defects and evidence before release |
| FW-P5 | FW_12 — Controlled firmware release | FW | FW_11 | Pin the approved source build configuration and binary hash | Obtain configured release authorization and record rollback instructions |
| FW-P5 | FW_13 — Field support and update monitoring | FW | FW_12 | Monitor the agreed deployment and diagnostic feedback | Record follow-up updates through versioned change control |
| SW-P1 | SW_01 — Software feasibility and scope | SW | CM_01 | Identify users features interfaces and deployment scope | Record capacity security and delivery assumptions |
| SW-P1 | SW_02 — Software requirements and API contract | SW | SW_01,CM_03 | Define agreed workflows data and API behaviours | Review the firmware payload contract only where devices are in scope |
| SW-P2 | SW_03 — Software architecture and access design | SW | SW_02 | Design application data and authenticated authorization boundaries | Review UI flows and external integration contracts |
| SW-P2 | SW_04 — Build environment and simulators | SW | SW_03 | Configure approved source testing and staging tools | Create contract-based mock inputs for independent development |
| SW-P3 | SW_05 — Feature implementation | SW | SW_04 | Implement the planned application and service capabilities | Link changes to requirements and preserve existing APIs |
| SW-P3 | SW_06 — Access security and operations controls | SW | SW_03 | Implement the agreed identity permissions and sensitive-data controls | Verify applicable operational and update-management behaviour |
| SW-P4 | SW_07 — Automated tests and peer review | SW | SW_05,SW_06 | Run unit integration regression and authorization checks | Resolve required review findings before integration |
| SW-P4 | SW_08 — End-to-end integration | SW | SW_07,FW_08 when FW is selected | Verify the selected external or device-to-application contract end to end | Record failures and recovery behaviour using agreed test data |
| SW-P4 | SW_09 — Acceptance and security validation | SW | SW_08 | Run applicable user acceptance security and performance checks | Record authorized acceptance and required issue disposition |
| SW-P5 | SW_10 — Controlled deployment | SW | SW_09,FW_12 for coordinated firmware release | Rehearse the approved deployment data migration and rollback | Obtain release authorization and verify the intended environment |
| SW-P5 | SW_11 — Post-release monitoring | SIT | SW_10 | Monitor agreed service indicators and recovery readiness | Record support handover and follow-up improvements without invented SLA values |
| INT-P1 | INT_01 — Cross-track baseline handshake | EHW | HW_09 and FW_02 for HW-FW; FW_02 and SW_02 for FW-SW | Pin the joint interface and participating version references | Record the accountable joint review before dependent implementation |
| INT-P1 | INT_02 — Integrated system verification | QA | selected HW_32 FW_11 SW_08 | Verify end-to-end behaviour on the pinned full configuration | Record unresolved cross-department blockers and owners |
| INT-P1 | INT_03 — Coordinated pilot acceptance | SAL | INT_02 | Collect authorized customer or internal pilot feedback | Record accepted scope limitations and refinement actions |
| RM-P1 | RM_01 — Existing product fit and gap review | SAL | CM_03 | Select the actual existing product and released reference configuration | Record fit gaps and conditions without creating a new engineering development track |
| RM-P2 | RM_02 — Configuration and integration preparation | SIT | RM_01 | Prepare approved installation configuration and interface settings | Verify existing version compatibility and authorization |
| RM-P3 | RM_03 — Ready-made deployment verification | SIT | RM_02 | Execute the authorized installation or deployment plan | Record operational checks and exceptions against agreed criteria |
| CL-P1 | CL_01 — Release decision readiness | QA | applicable engineering or RM completion | Compile the applicable signed evidence and unresolved conditions | Obtain the configured release decision without replacing it with task completion |
| CL-P1 | CL_02 — Delivery and support handover | SAL | CL_01 | Link the actual authorized dispatch or deployment evidence | Record recipient acceptance documents and support ownership |
| CL-P1 | CL_03 — Closure and lessons | SAL | CL_02 | Review remaining obligations defects and follow-up ownership | Record authorized closure or keep the project open for refinement |
| CERT-P1 | C01 — Certification applicability review | QA | CM_03 | Identify only the approved applicable regulatory and customer requirements | Map required configurations and test evidence without asserting blanket certification |
| CERT-P1 | C02 — External test matrix | QA | C01 | Prepare the relevant test criteria samples and method references | Review technical inputs and required approval authority |
| CERT-P1 | C03 — Test agency selection | PUR | C02 | Collect permitted agency quotations and capability evidence | Route the selection through existing commercial and QA authority |
| CERT-P1 | C04 — Pre-compliance service authorization | PUR | C03 | Prepare the authorized testing order request | Link Finance-approved payment evidence only if actually available |
| CERT-P2 | C05 — Sample readiness | EMF | C04,HW_31 if new HW,FW_08 if FW | Prepare traceable samples and applicable test configuration | Record QA readiness checks before dispatch |
| CERT-P2 | C06 — Technical file compilation | QA | C04,applicable design baseline | Compile original requirements design and configuration references | Record authorized submission and external reference if submitted |
| CERT-P2 | C07 — Lab scheduling and dispatch readiness | QA | C05,C06 | Confirm the actual agreed test slot and attendance | Link authorized sample dispatch evidence |
| CERT-P2 | C08 — Pre-compliance execution evidence | QA | C07 | Coordinate applicable external testing against the approved plan | Record genuine lab reports observations and configuration references |
| CERT-P2 | C09 — Findings and corrective verification | EHW | C08 | Assign findings to the responsible domain and link corrective changes | Record QA-reviewed retest or justified disposition |
| CERT-P3 | C10 — Final test service authorization | PUR | C09 | Prepare the applicable final test order request | Link actual Finance-authorized payment evidence if available |
| CERT-P3 | C11 — Final controlled sample readiness | QA | C10,HW_34 and HW_35 if new HW,FW_12 if FW | Verify sample build and version provenance against released engineering references | Record QA sample-release evidence without inventing results |
| CERT-P3 | C12 — Final compliance evidence | QA | C11 | Track actual applicable external test execution | Link original reports and open findings without simulated measurements |
| CERT-P4 | C13 — Report accuracy review | QA | C12 | Review report identity version criteria and result provenance | Resolve documented report discrepancies with the responsible source |
| CERT-P4 | C14 — External certificate decision | QA | C13 | Track the actual authority decision where certification is required | Upload the issued original or retain a clearly pending state |
| CERT-P4 | C15 — Compliance record handover | QA | C14 | Archive verified original evidence and applicable approval references | Update compliance readiness for the separate authorized release decision |

Hardware ordering deliberately follows the dependency graph rather than the attachment's numeric sequence: HW_30 receipt/assembly precedes HW_31 bring-up; HW_32 bench validation precedes HW_27 formal pre-compliance. HW_36 corrective closure precedes final production release. HW_27 links C08 evidence when that workstream applies; do not create duplicate test execution for the same event. FW_09 production diagnostics, mechanical customization, external certification and production handover can be explicitly not applicable. No blanket 72-hour soak, 80% coverage, fixed impedance/voltage, SLA or universal client approval is imposed.

### Owner resolution and conditional links

The owner column is a profile default, not a new access/approval rule. Resolve actual task owners from the selected project's governed matrix and authenticated organization/member IDs before activation. For client intake and handover, SAL is the coordination default; for internal projects CM stages, INT_03, RM_01 and CL_02/CL_03 use the actual requesting/project-owning department. For FW+SW integration, INT_01 is coordinated by FW (with SW), not EHW. Findings such as C09 go to the responsible defect domain, not EHW unconditionally. QA participates independently where configured; pure SW/FW release coordination uses its configured domain owner rather than adding a mandatory QA gate. An unresolved required owner blocks activation and stays visible for assignment.

For CL_01, ready-made projects depend on RM_02 before deployment; software depends on SW_09, firmware on FW_11, and hardware on HW_32 plus applicable design-change readiness. For CL_02, add completed RM_03 / SW_10 / FW_12 / HW_37 as applicable alongside the authorized release decision. Domain release and project release can reference the same configured decision rather than forcing duplicate approvals. INT_01 requires HW_09+FW_02 only when new hardware and firmware are both selected, and FW_02+SW_02 when firmware/software are selected. A pure domain does not instantiate INT stages unless an actual integration dependency requires them. All conditional prerequisites require an explicit applicability decision; a missing required record is not automatically not-applicable.

### Progressive generation and actual sample values

- Store every applicable phase, stage and both planned task definitions in the fixture manifest, including future and not-applicable work. Future tasks are a plan preview, not active To Do rows or inflated workload counts.
- At baseline activate only entry stages whose source/baseline prerequisites are satisfied. Once a stage becomes ready, create its actual tasks once using project + template version + stage key + task key. A retry, refresh, double click or two concurrent completions cannot create duplicates. Independent ready stages can activate in parallel.
- A completed task prepares the stage for review where a review is required; it does not approve a milestone. Missing evidence, required sign-off, unresolved blocking change, revoked owner or rejected predecessor keeps dependent work blocked. Reopening creates a linked correction/retest iteration, preserves history, and holds affected future releases. Never silently mark them complete again.
- Cross-track prerequisites apply only to selected domains and capabilities. Existing-device FW/SW projects pin an existing board/platform reference. Pure software uses agreed service/mock interfaces and cannot depend on HW_31 or FW_08. Certification dependencies use applicable design references, not invented PCB requirements.
- Proposed canonical sample statuses map through the existing backend adapter: Planned/Locked has no active task row; Ready creates To Do; active work uses In Progress; review uses Review; an authorized completed TEST record may display Complete with synthetic provenance. Do not introduce a four-column board; keep Today/Tomorrow-Planned and the separate review queue.
- For every stage/task fixture record store source pack/version/key, project or enquiry UUID map, phase/stage/task links, owner member fixture key, title, applicability/reason, dependency keys, status, priority, planned/actual date provenance, remarks, requirement/evidence references and revision. Default priority is Normal unless the fixture explicitly sets High; do not assign a fabricated Critical rating. Owner resolution is by organization/member identity, not display-name fallback.
- Use a configurable sample epoch D0 supplied in the load preview. Illustrative active tasks are due D0+1, one explicitly overdue unfinished task is due D0-1, later-stage dates are unplanned until scheduling; completed sample dates are fixture history, not current measurement timestamps. These are test values, not company SLA defaults.

### Full connected fixture pack v2 — proposed new-portal baseline

This pack uses new stable fixture keys and can be selected instead of the preserved legacy pack. Existing S01–S06 are not renamed/reclassified automatically. On an existing portal first map persisted manifests; import a new pack only through an authorized, idempotent TEST operation with its own run/provenance and conflict preview.

| Fixture key | Track / origin / purpose | Active sample point and realistic remark | Required linked sample values |
|---|---|---|---|
| LC2-P01 Internal harness jig | HW; internal equipment | HW_31 active: current-limited bring-up pending; no client | Internal requester, shared requirement sheet, schematic/native layout, tentative BOM, outsourced board receipt and QA status. |
| LC2-E02 Declined enquiry | Pre-project feasibility only | CM_02 declined: synthetic 14-week component availability cannot meet the requested 6-week window | Source enquiry, requested timing, supplier evidence/assumption, decision owner and decline reason; **no project UUID or downstream work**. |
| LC2-P03 Fleet tracker PoC | HW+FW; client PoC | INT_03 waiting: ten prototype units delivered, debounce feedback open | Synthetic target nominal 12 V, operating range 9–16 V, desired sleep 2 mA, two CAN interfaces; these are clearly synthetic requested targets, not measured results or reusable real-project defaults. |
| LC2-P04 Gateway customer pilot | HW+FW+SW; client system pilot | Integrated system verified in fixture history; pilot observation remains In Progress | Pinned board/FW/application versions, interface contract, device-to-service test references, pilot deployment and feedback owners; no invented acceptance signature. |
| LC2-P05 Firmware refinement | FW only; existing platform | FW_11 Review: duplicate-alert fix requires regression evidence | Existing board/HSI reference, prior and candidate build IDs, defect, patch task, reviewer and pending retest; no new PCB design. |
| LC2-P06 Released-product bulk run | HW+FW; client production purpose | Development baseline is synthetic history; current lot disposition remains mixed | Planned 500; Lot 1 = 200 = 150 accepted + 5 held + 45 pending; 300 not yet in Lot 1. Link BOM/package/build, approved TEST master provenance, lot/IQC and held dispositions; never release held units. |
| LC2-P07 Service application | SW only; internal tool | SW_08 active: service workflow integration using synthetic API fixtures | User roles, service API contract, schema/version, access tests, staging and rollback plan; HW/FW/manufacturing stages not applicable. |
| LC2-P08 Existing product deployment | Ready-made; client deployment | RM_03 active: configuration verification awaiting recipient feedback | Existing product/model and released references, configuration, installation/checklist and handover; no automatically generated custom engineering stages. |
| LC2-P09 Device connectivity upgrade | FW+SW; existing hardware | INT_02 active: firmware payload/cloud decoder compatibility needs verification | Existing platform identity, payload contract, firmware/application versions, mock simulator, reconnect test and coordinated release dependency; no new HW development. |

This current pack covers eight projects plus one declined enquiry, all seven tracks and the six requested outcome scenarios. Each selected profile includes every stage/task above in its full roadmap and marks genuinely inapplicable stages with a reason; only ready/past activated tasks exist as work rows. The duplicated HW+FW case intentionally tests PoC versus bulk-production purpose.

For a ready/in-progress stage, T01 is In Progress with a meaningful fixture remark and T02 is To Do unless the case explicitly awaits review. For a blocked stage, explain the exact dependency and owner; do not create active tasks prematurely. An authorized fixture loader may establish clearly synthetic completed history in an isolated TEST pack, but this does not create official production approvals, measurements or signatures. Final evidence/results remain absent where not supplied. Every future task is still present in the planned manifest, satisfying whole-lifecycle sample coverage.

### PMSS, documents and sample release boundaries

Use the existing shared project-input sheet as the PMSS data baseline: value/unit/source/owner/feasibility remark/query/status plus versioned change history and links. Do not duplicate it in eight new tabs. Document grouping stays Department/Common, Internal Project and Client Project within the original Vault. Native schematic/layout, STEP/drawing, STL/DXF, Gerber/panel/stencil outputs come from their actual tools/suppliers; supplied reference data is not permission to generate fake binaries or certificates. DOCX/XLSX templates remain editable drafts; final client PDF requires configured Admin approval and preserves the editable source/revisions. A non-editable PDF is a controlled rendition, not a promise of tamper-proof content.

### Source adaptation and acceptance

The 28 October SCMS source has numbering inconsistencies (the '5 modes' table lists six and omits ready-made; G0–G11 is twelve gates), contradictory hardware code references, unconditional automotive limits, in-house SMT/TST assumptions and unscoped SQL. This catalogue preserves useful task ideas with versioned codes, correct dependencies and seven confirmed tracks; none of that SQL is deployed. The earlier milestone guide supplies outcome/owner/criteria/dependency fields rather than mandatory stage counts.

Verify all seven tracks, ready-only generation, repeat/concurrent activation, declined enquiry without project, optional certification/production, cross-track handshake, missing owners, denied access, rejected/ reopened gates, prior-version preservation, original task board and document numbering. Compare full manifest stage/task counts and canonical links after reload on web and Android. A populated reference card alone is not acceptance. Milestone approvals, finance/stock posting and production release remain separately authorized.
