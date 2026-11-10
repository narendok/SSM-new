<a id="source-20"></a>
<a id="source-20-sample-data-and-test-plan"></a>
# Sample Data and Test Plan

**Status:** Canonical fictional sample and live-demo acceptance plan; updated 10 November 2026. New pack specified below is planned, not a claim of seeded or accepted runtime data.
**Authority:** [SSM One Master Plan](../SSM_ONE_MASTER_PLAN.md); lifecycle context: [Electronics Multi-Track Lifecycle and APQP Roadmap](../Electronics%20Multi-Track%20Lifecycle%20and%20APQP%20Roadmap.md). This document owns only fictional fixtures, reset boundaries and repeatable test scenarios. Older crosswalk passages below are historical context and do not supersede the active lifecycle roadmap or master.

<a id="source-20-purpose-and-boundaries"></a>
#### Purpose and boundaries

Auto-drafting acceptance is owned by the [consolidated generation and role Docs Vault plan](../SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.md#delivery-and-acceptance). Add a fictional portfolio covering the ten customer-data profiles, applicable deliverables in every TG-0–TG-9 phase, common/operational documents for all configured roles, one lead in multiple departments, genuine sample original files and audit checklist links. Exercise company/lead/policy/source changes, stale drafts, preserved manual edits, superseding revisions, expiry and denied access. Keep results, signatures, certification and business acceptance distinct from generated drafts. Missing profile/stage/question mappings remain explicit gaps rather than invented data.

Define a small, linked dataset for demonstrating and testing SSM One across web, Android, and backend. Every fixture is synthetic and visibly marked `DEMO_ONLY`. This plan defines the intended sample contents and lifecycle; it does not seed a database or authorize production data changes.

Use the master plan's department registry, access rules and terminology. The nine-stage examples below are preserved historical references. The current hierarchy is **Project → fixed Phase TG-0–TG-9 → configured Stage → Task**, with track/variant applicability applied to that graph. Active department labels initially are **SAL, EHW, FW, SW, MECH, PUR, QA, EMF, MMF, FIN, SIT, HR/OPS**; the registry and role assignments are configurable. **EMF** handles electronics box-build using outsourced PCB assemblies; **MMF** handles mechanical manufacturing and the confirmed enclosure/3D stages; in-house PCB assembly is out of scope. FW and SW are the active software department labels.

RACI describes work responsibility only. It never grants record access, approval authority, or signing rights. Access is checked independently using authenticated identity, organization membership, project/record scope, and capability. A project pins the approved responsibility-matrix version; future departments can be added through configuration without changing lifecycle stages.

## Current demo pack for role actions and lifecycle automation

**Pack key:** `SCMS-ROLE-LIFECYCLE-2026-11-10-v1`. This section governs new sample implementation and supersedes conflicting older starting states, nine-stage examples and hard-coded role/task assumptions below. Keep old manifests and historical records versioned; load this pack with its own deterministic entity keys. Link current fixtures to existing LC2 scenario keys without overwriting user-created work. Resolve current display names and assignments from the fixture's configured roster, not names copied from old narrative examples.

**Initial implementation checkpoint, 10 November:** the seven-track entry-stage slice is loaded and save/reload verified in browser-local TEST. Its manifest records the actual saved counts and selected Settings revision. Remaining later-phase, document/profile, original-file, supplemental-scenario, shared TEST and Android coverage stays planned. See the web implementation plan for runtime details; loading a fixture does not complete its business walkthrough.

### Shared sample configuration and provenance

Snapshot the chosen company, department/role assignments, lifecycle revision, stage RACI, default task definitions, deliverable/profile mappings, branding and policy versions into the pack manifest. Retain each entity's saved UUID, fixture key, environment, source references, owner, assignee, actor, revision, expected status and replay identity. Store actual loaded counts; do not force 110 stages, 477/478 tasks or a fixed department count if Settings has changed. Never generate a second configuration catalogue just for demonstrations.

Provision fictional Admin, lead/member pairs for every active department, document-controller capability, scoped client accounts for two different customers, a viewer and an unmapped employee. Add one multi-department lead, one authorized alternate reviewer and one inactive/replaced lead. Assign department responsibilities through Settings; CFT/PM belongs to Operations. Service/IT grouping preserves separate ticket responsibilities. Every relevant active role/profile/stage must have a sample or a recorded coverage gap. Keep credentials out of documents and fixture files.

Maintain two independent fixture modes: **walkthrough** starts from an unsent enquiry/internal request with no Project or selected engineering track; **checkpoint** opens a later phase with clearly labelled synthetic prior history and pinned source versions. Prefer real TEST actions during a walkthrough. Checkpoint history is seeded simulation, not proof those approvals/tests were executed. Never present seeded signatures as human decisions or use checkpoint status as live verification evidence.

### Seven technical track demonstrations

| Scenario key and intended post-feasibility track | Fictional project/story | Distinct required demonstration |
|---|---|---|
| LC2-P01 · `hardware_only` | Internal harness continuity/EOL jig | Internal requester and accepted scope; schematic/layout/BOM, outsourced PCBA and MMF fixture; QA verification and asset handoff. No default FW/SW development |
| LC2-P05 · `firmware_only` | Firmware defect correction on an existing controller | Exact existing board/HSI/build reference; defect → scoped requirements → patch/review/regression → candidate release. No new PCB or manufacturing branch unless explicitly required |
| LC2-P07 · `software_only` | Internal service application | PRD/SRS, role permissions, API/schema, implementation/security/integration, staging/rollback and release; no mandatory PCB/BOM/assembly |
| LC2-P03 · `hardware_firmware` | Client fleet-tracker PoC | Customer requirement → hardware/firmware interfaces → board bring-up → firmware integration → QA and client feedback. PoC approval never authorizes production automatically |
| LC2-P09 · `firmware_software_existing_hardware` | Existing device connectivity upgrade | Existing platform pinned; FW/cloud payload contract, simulator, compatibility, joint validation and coordinated releases; no new hardware design by default |
| LC2-P04 · `hardware_firmware_software` | Client vehicle gateway pilot | Parallel EHW/FW/SW and applicable MMF/PUR/QA/EMF work; exact interface/asset revisions, integration, field pilot, applicable production and service handoff |
| LC2-P08 · `ready_made` | Existing-product configuration and deployment | Fit/gap, existing released product/configuration, order/fulfilment, installation, verification and support; no automatic custom engineering from product contents |

The track column is the scenario's intended choice after an authorized feasibility decision; it is not preselected in the enquiry. Internal/client origin, new/variant/change intent, PoC/pilot/production purpose and certification applicability are independent dimensions. Use reviewed variants to cover them rather than multiplying unrelated copies. Add LC2-P06 as the production/reconciliation checkpoint, LC2-P10 as the uncertain multi-domain research case, and LC2-P02 as the declined enquiry/opportunity with no Project. Correct any old LC2-P10 example that pre-creates a Project while feasibility is pending: its future project key is reserved metadata only until start is authorized.

For each track retain the ten-phase overview, calculate applicable configured stages/dependencies, and show omitted stages with a reason. A software-only or ready-made project must not be forced through irrelevant fabrication, homologation or manufacturing work merely to fill every phase. Cover every phase through the overall portfolio and every applicable phase/stage in each track. Certification is a conditional branch with real applicability review, not a default successful certificate.

### Role actions and linked record types

| Role/function | Positive action sample | Related record/profile examples and negative case |
|---|---|---|
| Admin/configuration owner | Save lifecycle/role settings, preview impact and create new defaults revision | Company, department, stage/default task/RACI; old project stays pinned; ordinary member cannot configure global authority |
| SAL lead/member and scoped client | Capture/clarify enquiry, dispatch to Opportunity and selected feasibility reviewers | Customer, Enquiry, Opportunity, SOR/requirements, clarification, scope and quote input; another client cannot read it; Project/track unavailable before decision |
| Operations/CFT/PM | Coordinate readiness, charter/PMSS, risks and phase review | Charter, PMSS, risk, handoff and gate-review records; CFT is not an extra department; no bypass of engineering/QA decisions |
| EHW lead/member | Prepare requirements/design, BOM and linked sourcing handoff | PRS, KPA, Schematic, BOM, Gerber release, review/change; native original plus generated cover; future-stage upload and unrelated-department edits denied |
| FW lead/member | Prepare SWRS/HSI, implementation task, smoke/regression and release candidate | Firmware specification/design, test plan/report, Firmware release and change; developer cannot provide required independent review |
| SW lead/member | Prepare requirements/contracts, implementation, test and deployment candidate | PRD/SRS, API/payload/UI review, software FMEA, security/test/release; unauthorized production deployment not implied by a saved draft |
| MECH/MMF lead/member | Review assigned geometry, clearance, tooling and part/assembly work | STEP clearance, CAD original, FAI, tooling, dimensional/leak plan/report and WI; confirmed enclosure/3D stage ownership remains MMF |
| PUR/stores/dispatch | Receive goods/service request, compare suppliers, PO/receiving and packing | Supplier, Part, Purchase request/order, quotation, GRN and serial manifest; unqualified supplier/held stock block the corresponding action |
| EMF lead/member | Use released inputs for outsourced-PCBA acceptance and assembly/build trace | Traveler/build, PFD/PFMEA/control plan, startup, checks, maintenance and lot/serial records; no simulated in-house SMT process |
| QA/reviewer | Review evidence, request correction, decide permitted independent gate | DVP&R, IQC/IPQC/FQC/PDI, NCR/8D CAPA, PPAP/PSW and certificate index; blank template or absent actual result cannot pass a gate |
| FIN lead/member | Review direct travel/reimbursement, procurement-linked payment and budget/quote inputs | Expense, budget, invoice, settlement and financial summary; self-approval and unrelated HR/client access denied; no real payment |
| HR/Operations lead/member | Prepare people/competency/policy/operational readiness | Training, skill matrix, onboarding, controlled letter/policy, review/acknowledgement; protected employee details excluded from general project views |
| SIT/Service/IT/facilities | Create ticket, dispatch scoped help, record visit/RMA and recurring issue | Ticket/help response, service draft, backup/access/DR check, EHS/service register; help does not grant full access or silently close a ticket |
| Document controller and reviewer | View exact canonical revision, review pending draft and compile scoped audit coverage | Master document index, role vault and checklist/manifest; unissued Draft is never completed audit evidence |
| Multi-department lead/alternate/viewer | One account handles two assigned departments, alternate reviews when independence requires | No copied person/records; denied third-department access; replaced/inactive actor loses future authority while attribution remains |

Record names above are semantic coverage, not new enum declarations. Resolve each to the configured supported record/profile ID and owning stage before loading. Track missing/unsupported types explicitly. A generic `Stage evidence` wrapper cannot substitute for a required subtype's fields or native original. Shared Customer/Supplier/Part masters are reused by exact IDs across projects; edits and permission scope remain independent.

### Live walkthrough checkpoints by phase

| Checkpoint | Records and action demonstrated | Expected automation and blocked case |
|---|---|---|
| Settings foundation | Filter phase/department, edit one stage/default task, choose R and one A, preview/save/reload | New defaults revision; old project/task snapshots unchanged; inactive owner, dependency cycle and duplicate task key rejected |
| TG-0 intake/feasibility | Save enquiry/internal request, SOR answers, dispatch, department responses and decision | Dispatch idempotently creates Opportunity/feasibility work; chosen R/lead receives tasks; track/project creation waits for authorized decision |
| TG-1 requirements/interfaces | Accept baseline, start project, prepare applicable PRS/SRS/HSI/contracts | Project pins settings; eligible defaults generated once; missing required clarification or interface acceptance blocks dependent work |
| TG-2 PoC | Plan experiment, link exact sample/revision, enter synthetic observed results and review | Optional branch decision recorded; planned targets alone cannot populate actual test results or mark completion |
| TG-3 engineering | Prepare design/native original, BOM and procurement handoff; task reassignment/custom task | Cross-department tasks use configured owners; current/previous eligible record stage rules apply; no list-position inference for parallel branches |
| TG-4 integration | Pin board/FW/SW/mechanical configurations and interface evidence | Parallel work continues where ready; incompatible or missing interface/source revision blocks integration review |
| TG-5 verification | Populate actual TEST measurement fields, attach sample report, fail one check and retest | Failure routes controlled corrective work; no certificate/PASS inferred from template, upload or task completion |
| TG-6 field/certification | Field ticket/visit, conditional certification evidence, pilot review | Only applicable scope required; expired/missing evidence blocks the relevant release, not unrelated work |
| TG-7 pilot launch | PFD/PFMEA/control plan, WI, training/startup and pilot traveler | Released configuration and qualified/current inputs required; independent QA review remains separate |
| TG-8 ramp-up | Applicable PPAP, supplier/calibration/inspection, lot disposition | Reconcile planned/accepted/held/pending quantities; never release held/pending units or create real inventory transactions |
| TG-9 handover/closure | PDI/manifest, as-built/manual/service package, lessons learned, closure review | Canonical revision links and actual TEST decision; outstanding required work/acceptance prevents closure |
| Operational/change loop | Ticket/CAPA/policy/training/Finance event and requirement/template/lead update | Role vault/index updates; editable drafts show proposed differences; issued files and original actors stay immutable |

### Automation and configuration variation tests

- Generate tasks from the pinned version and applicable stage graph; use stable project/stage/default-task keys. Activating or refreshing twice and retrying the same request creates no duplicates. Future tasks stay planned until their prerequisites are satisfied.
- Vary default counts, task titles, owners and RACI through authorized Settings. A task assigned to a new R department routes to its configured lead/member; one A receives the review. C/I notifications respect access. Unknown/inactive department or missing owner is a visible blocking configuration gap, never a fallback assignment to Admin.
- Compare a new project with an existing pinned one after settings changes. New work uses accepted defaults; old work changes only through reviewed migration with impact preview. Lead replacement explicitly handles pending assignments/approvals and preserves past signatures.
- Create/edit/reorder a custom task before and during activation. Unused deletion and used-task cancellation follow configured controls; dependencies/evidence stay linked. Cancelled tasks never regenerate, and deleting work never passes a gate.
- Exercise two ready parallel branches, a blocked dependency, optional omission with rationale, a returned review, failed validation/retest, declined feasibility and a change after release. Derived progress must distinguish done work, pending review and approved phase decisions.
- Repeat with two clients and an internal project: no title/filename inference, no cross-client originals, and no client access to internal cost/HR/security data. Test explicit cross-department help without exposing the full protected record.

### Document generation and role audit vault samples

Use all ten source profiles (`INTAKE_SUMMARY`, `CRS`, `CLARIFICATIONS`, `SCOPE`, `FEASIBILITY_INPUT`, `QUOTATION_INPUT`, `PRS`, `FUNCTIONAL_REQ`, `TARGET_SPEC`, `DVP_PLAN`) and later-stage profiles from the catalogue. Each sample links its family ID, profile/template/branding version, stage eligibility, requirement baseline and source revisions. Native original samples must have actual bytes and expected size/hash/type; do not seed attachment metadata without a file and call upload verified. Use synthetic fixture originals, not forged certificates, lab findings or real customer files.

Include unanswered/conflicting inputs, true zero/false values, compatible and incompatible units, two variants, SOR extraction candidates and manual edits. The missing `SCMS_Expanded_Intake.json` and unresolved source stage aliases remain coverage gaps until reconciled. DVP planning populates expected targets only; actual TEST results come from a separate explicit simulated execution action and stay visibly synthetic.

For every configured role, include an applicable common/standard template, operational record where relevant, project deliverable where applicable, pending review and scoped vault/audit link. One canonical document may appear in several permitted views. Exercise Draft → review/return → approval → release on exact revisions, a superseding version, an expired item and a not-applicable audit clause with reason. Check company/branding/policy/source changes create reviewed draft updates and reminders rather than overwriting issued files. Confirm document list, preview, export and original download enforce the same scope.

### Manifest, demonstration order and acceptance receipt

The loader manifest must include `packVersion`, `schemaVersion`, `mode`, `scenarioKey`, environment/organization, configuration pins, deterministic entity map, expected roles/actions, upstream/downstream IDs, file hashes, synthetic-history flags, row counts and gaps. Track coverage in one generated view by **track × applicable stage × record/profile × role/action**. Counts derive from Settings; every required combination must be Verified, Failed, Planned, Needs source mapping or Not applicable with rationale.

Run Settings foundation first, then TG-0 intake/feasibility on a fresh fictional request, then each applicable phase in order with ready parallel tracks visible. Demonstrate the seven track variants and operational/audit loops using the same configuration source. After each completed feature, leave the exact screen/record open, explain expected versus observed behavior, and obtain the user's requirement confirmation before moving to the next demonstration. Record user confirmation separately from a business approval; approval of the UI never passes a gate.

Capture a concise acceptance receipt with environment, pack/config versions, actor/capability, scenario, record/revision, action, expected/observed result, save/reload readback, permission-denial result and remaining gaps. Test simulated decisions through authenticated TEST actors and explicit remarks; never silently impersonate a signer. Browser-local, shared TEST, web deployment and Android results have separate status. Existing settings UI save/reload evidence does not complete the rest of this pack. Implementation and actual seeded/verified counts belong in the platform plans; this document remains the fixture and acceptance specification.

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
<a id="source-20-example-stage-raci"></a>
#### Superseded nine-stage examples

The old nine-stage sample/RACI tables are retired from this active plan. Use the current seven-track demonstration and ten-phase checkpoints above; all RACI and default tasks come from the selected Settings revision. Historical manifests retain their original IDs and assignments. Do not translate old numeric stage labels by list position or use an old display name as current authority.

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

Legacy inventory fixture coverage (activate only after the authoritative inventory source/adapter is identified and the selected isolated fixture pack is authorized): separated inventory fixtures following [Electronics Project Lifecycle and APQP Roadmap §6.2](../SSM_ONE_PLANNING_ARCHIVE_2026-10-28.md#source-18-62-inventory-reusable-design-assets-and-plant-assets): inventory item masters for an electronics component, outsourced PCBA, mechanical raw material, and consumable/packaging item; synthetic lot/serial and movement records; reusable asset/module revisions with controlled BOM lines pointing to item IDs; project configurations pinning those revisions; and a fixed production/test-machine asset with plant/site, custody, maintenance/calibration, and compatibility metadata. Link a demo as-built unit/lot to the actual demo revisions and lots/serials used. All stock balances and movements remain synthetic demo fixtures. The machine is a plant asset, not consumable stock; selecting any reusable module does not reserve or move its linked inventory.

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

### Phase and milestone configuration source

Use TG-0–TG-9 and the current lifecycle revision from Settings. Internal gate labels, stage codes, task titles/counts, role ownership, dependencies and exit documents are properties of that revision. The former static stage/task catalogue is removed from this sample plan to prevent drift. Generate the fixture manifest and planned-work preview from the same selected revision and keep stable template-task identities. New or edited configurations are adopted by existing projects only through a reviewed migration.

BOM sourcing remains one linked review of the exact tentative BOM/revision: parts, quantities, currency, quote source/date, prices, availability, lead time and open assumptions. Do not generate one default price task per component. Technical RAM/Flash sizing remains engineering work. Missing quotes/alternate decisions may create scoped follow-up tasks. Read the configured stage dependencies and task owners rather than hard-coding an early technical task to a later BOM or assigning every task to its stage owner.

### Owner resolution and conditional links

The owner column is a profile default, not a new access/approval rule. Resolve actual task owners from the selected project's governed matrix and authenticated organization/member IDs before activation. For client intake and handover, SAL is the coordination default; for internal projects CM stages, INT_03, RM_01 and CL_02/CL_03 use the actual requesting/project-owning department. For FW+SW integration, INT_01 is coordinated by FW (with SW), not EHW. Findings such as C09 go to the responsible defect domain, not EHW unconditionally. QA participates independently where configured; pure SW/FW release coordination uses its configured domain owner rather than adding a mandatory QA gate. An unresolved required owner blocks activation and stays visible for assignment.

For CL_01, ready-made projects depend on RM_02 before deployment; software depends on SW_09, firmware on FW_11, and hardware on HW_32 plus applicable design-change readiness. For CL_02, add completed RM_03 / SW_10 / FW_12 / HW_37 as applicable alongside the authorized release decision. Domain release and project release can reference the same configured decision rather than forcing duplicate approvals. INT_01 requires HW_09+FW_02 only when new hardware and firmware are both selected, and FW_02+SW_02 when firmware/software are selected. A pure domain does not instantiate INT stages unless an actual integration dependency requires them. All conditional prerequisites require an explicit applicability decision; a missing required record is not automatically not-applicable.

### Progressive generation and actual sample values

- Store every applicable phase, stage and configured planned task definition in the fixture manifest, including future and not-applicable work. Future tasks are a plan preview, not active To Do rows or inflated workload counts.
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
| LC2-P10 Offline-capable telematics tracker | HW+FW+SW; client PoC → conditional pilot/production | CM_02 feasibility in review; no requirement baseline frozen until open connectivity, RF, power, coverage and certification decisions are resolved | Fictional client `DEMO-CLIENT-010`, enquiry `DEMO-ENQ-010`, draft OMS `DEMO-OMS-010`, reserved future project key `DEMO-PROJ-010` (no Project while feasibility is pending), product `DEMO-PROD-010`; 4G GNSS tracker concept with NavIC/IRNSS receiver support to be verified, and local LoRa research for no-internet operation. |

This current pack covers nine projects plus one declined enquiry, all seven tracks and the six requested outcome scenarios. Each selected profile includes every stage/task above in its full roadmap and marks genuinely inapplicable stages with a reason; only ready/past activated tasks exist as work rows. The duplicated HW+FW case intentionally tests PoC versus bulk-production purpose. LC2-P10 is an additional detailed client PoC case for feasibility, requirement freeze and multi-domain development handoffs.

<a id="source-20-lc2-p10-offline-telematics-tracker-walkthrough"></a>
### LC2-P10 — fictional offline-capable 4G/GNSS tracker with LoRa research

This is a synthetic end-to-end example for the portal walkthrough. All parties, IDs, values, remarks and status are `DEMO_ONLY`; they are not a real customer, accepted order, validated engineering target, quotation, measurement, regulatory conclusion, or approval. The concept combines new hardware, firmware and software, so it uses the confirmed **HW+FW+SW** track. Its purpose starts as a client PoC; any pilot or production purpose is a later, separately authorized scope decision.

#### Linked fictional intake records

| Record | Fictional value | Initial state / relationship |
|---|---|---|
| Client | `DEMO-CLIENT-010` — Northstar Field Systems (fictional) | Pending synthetic client profile; no contact address, legal identity or credentials. |
| Enquiry | `DEMO-ENQ-010` — remote-equipment visibility | Open intake; source asks for location/status when public internet is unavailable and later remote synchronization. |
| OMS | `DEMO-OMS-010` — feasibility/PoC request | Draft and unaccepted. Amount, tax, unit quantity, delivery promise and purchase commitment remain `Not recorded`. |
| Future Project | `DEMO-PROJ-010` — Offline-capable Fleet Tracker PoC | Reserved key only before feasibility acceptance; create through the authorized start action. HW+FW+SW is a proposed scenario intent, confirmed after review; no production authorization. |
| Product | `DEMO-PROD-010` — 4G/GNSS + local LoRa tracker concept | Draft concept only. NavIC/IRNSS compatibility and all radio/network choices require hardware and regulatory feasibility. |
| Fixture pack | `LC2-2026-10-28`, case `LC2-P10` | Reuse this template version; project-specific custom tasks are keyed by project and template version, not global edits. |

**Clarify “without internet” before freeze:** satellite navigation reception can be evaluated independently from public internet access, subject to the selected receiver and antenna. The proposed local LoRa path is a research item for nearby device-to-receiver/gateway exchange without public internet; topology, local gateway/storage, range, legal band, duty-cycle/power limits and capacity are unverified. The 4G path is a separate store-and-forward/remote-sync option when the selected carrier/private APN and backhaul are available. A 4G service is not described as internet-free. When neither cellular nor local LoRa peer/gateway is available, the device may buffer permitted records locally, subject to storage/power feasibility; no remote visibility is promised during that gap. No LoRaWAN, cloud, SIM, protocol, coverage or GNSS performance is assumed by this fixture.

#### Custom feasibility and requirement master table — review draft v0.1

This table is the shared analysis view for the example, not eight compulsory department tabs. Each row should map to the existing project-input/PMSS field set: requirement ID, proposed value, unit/source, owning department, feasibility remark, status, query and revision. Department owners respond only to applicable rows. All rows below are synthetic prompts; `TBD` means the client/owner must supply or approve the value. This example is **not frozen** while any freeze-blocking row is unresolved.

| ID | Domain / owner | Proposed requirement or decision question | Source / unit | Feasibility response and open question | Status before freeze |
|---|---|---|---|---|---|
| RQ-01 | SAL — use case | Track mobile/portable field equipment; define intended users, deployment geography and PoC success scenario. | Fictional enquiry; geography TBD | Confirm whether the PoC proves local positioning, nearby LoRa exchange, later 4G sync, or all three. | Open — client confirmation |
| RQ-02 | SAL / FIN — scope | Initial purpose is a bounded PoC; pilot, saleable product, recurring service, warranty and volume are not included unless separately approved. | OMS draft | Define demo audience, number of demo units and acceptance owner; quantity and commercial values remain TBD. | Open — commercial boundary |
| RQ-03 | EHW — location | Device shall evaluate GNSS-based position capture without depending on public internet. | Approved receiver/source requirement TBD | Select receiver only after verified constellation support, antenna, sensitivity, update-rate and availability analysis. GNSS fix performance is not guaranteed by this statement. | Open — technical feasibility |
| RQ-04 | EHW / PUR — NavIC | Assess support for NavIC (IRNSS) in addition to any required GNSS constellation(s). | Client confirmation and vendor datasheet required | Verify exact module/firmware support, regional availability, antenna/RF design and supplier lifecycle evidence before selecting parts. | Open — component evidence |
| RQ-05 | EHW / FW — 4G | Assess 4G cellular connectivity for remote data synchronization when service is available. | Regions, carrier, bands, SIM/APN TBD | Confirm geography, carrier bands, fallback expectations, antenna, subscription/APN ownership and data policy. No carrier or coverage promise. | Open — sourcing/network feasibility |
| RQ-06 | EHW / FW / SIT — offline behavior | Preserve and expose queued device records through a defined no-backhaul interval, then reconcile safely after connectivity returns. | Duration, event rate and retention TBD | Size memory, power and duplicate/replay policy from approved data rate and duration; define timestamps, loss handling, encryption and recovery. | Open — capacity/security |
| RQ-07 | EHW / FW — LoRa research | Compare direct LoRa point-to-point and local gateway options for nearby exchange without public internet. | Research task; range/data-rate TBD | Prototype topology with local receiver/storage; assess regional radio rules, link budget, payload size, collision behavior, security and practical coverage. LoRa is not itself satellite or long-range global tracking. | Open — research; not selected |
| RQ-08 | SW / SIT — remote services | Decide whether the PoC includes a local-only viewer, later-sync service, or both. | User stories/API/privacy TBD | Keep local data and cloud projection distinct; specify authentication, tenant/client separation, data retention, hosting and recovery before any cloud commitment. | Open — architecture |
| RQ-09 | FW / SW — payload | Define a versioned device-to-application payload and event identity for position/status records. | Field schema, units, cadence TBD | Agree timestamp source, coordinates/datum, accuracy metadata, GNSS source, device ID, sequence/replay key, privacy and version migration. No schema value is assumed frozen. | Open — interface |
| RQ-10 | EHW / FW — power | Establish supply source, normal/peak/standby operation and required operating duration. | Voltage/current/runtime TBD | Measure only against approved test conditions after hardware selection; evaluate 4G/LoRa transmit peaks, GNSS acquisition and storage. No fabricated battery-life number. | Open — client input + test plan |
| RQ-11 | MECH / EHW — enclosure | Define mounting, dimensions, ingress, temperature, vibration, connector and serviceability needs. | Environment/method TBD | Assess case, antenna placement, thermal/RF constraints and available process capability; no IP or environmental rating assumed. | Open — environment input |
| RQ-12 | QA — verification | Create traceable requirements-to-test coverage for offline capture, LoRa local exchange, 4G sync/recovery, GNSS/NavIC evidence, power and enclosure. | Approved method/configuration required | Separate planned criteria from actual measured results; external lab reports/certificates are authentic uploads only. Identify customer/regulatory applicability. | Open — verification plan |
| RQ-13 | PUR / EHW — supply | Identify candidate modem, receiver, LoRa radio, antenna, MCU/memory and alternates from controlled part/supplier records. | Datasheets/quotes and dates required | EHW owns technical shortlist; PUR links availability/quote/lead-time to the same tentative BOM revision; unknown prices remain blank. | Open — supplier evidence |
| RQ-14 | EMF / MMF — build | Define whether case and harness are prototype-supplier items; PCBA is received from an approved external source; EMF performs applicable electronics integration. | Capability and supplier review TBD | MMF owns any mechanical fabrication; EMF owns accepted PCBA traceability, box-build/programming and assigned checks. In-house SMT is not implied. | Open — make/buy |
| RQ-15 | HR/OPS / FIN / SIT — readiness | Confirm only the staffing, training, budget, data protection and support resources applicable to this PoC. | Owner inputs TBD | Horizontal contribution; no mandatory gate/task or private HR/finance data is exposed merely because the department is consulted. | Open — applicable inputs |

#### Stage 2 feasibility result and routing

SAL owns the consolidated review, while applicable departments return scoped responses in parallel. The illustrative result below intentionally keeps the project in **Feasibility In Review**; it does not claim a pass.

| Department | Example contribution | Decision / handoff |
|---|---|---|
| SAL | Confirm intended scenario, location, PoC demo audience, acceptance owner and exclusions. | Collect clarifications; do not mark order accepted or freeze requirements. |
| EHW | Compare candidate GNSS/NavIC-capable receiver, 4G modem, LoRa module, antennas, power and memory architecture. | Cite actual datasheet revisions; unresolved supplier capability remains open. |
| FW | Define offline queue/replay, local LoRa exchange, radio state control, device payload and fault recovery concept. | Draft interface contract; no implementation baseline until requirements are approved. |
| SW | Assess local-only demo view and optional later remote-sync service/API. | Keep public-internet and cloud access optional pending explicit client decision/security review. |
| MECH | Review antenna placement, mounting, enclosure and service access constraints. | Record fit/environment unknowns and drawing inputs. |
| PUR | Request candidate prices/availability, carrier/region evidence and external prototype/PCBA options. | Attach dated quotes to the exact tentative BOM; values stay `Not recorded` until received. |
| QA | Prepare traceability and DVP&R outline; identify standards/customer rules only from confirmed market/use. | No generic automotive certification is assumed; QA disposition remains independent. |
| EMF | Confirm external PCBA receipt, traceability, programming and box-build path. | No in-house PCB assembly; define sample traveler and checks when capability is confirmed. |
| MMF | Assess supplier/in-house enclosure and mounting prototype route. | Confirm process, drawing and inspection capability before assigning build. |
| FIN | Review draft PoC cost inputs and funding/approval route when quotes are available. | No prices, budget, payment, invoice or commitment invented. |
| SIT | Assess optional local gateway, remote service, connectivity/security and support responsibilities. | Cloud/backhaul is a separate decision; local-only research can proceed with a documented setup. |
| HR/OPS | Check only applicable staff capacity, RF/electrical handling competence and demo support. | Record capacity gap or not-applicable rationale; no people data copied into the client view. |

Illustrative Stage 2 exit: **Hold for clarification / feasibility incomplete** until geography/carrier, NavIC support evidence, no-internet success definition, LoRa topology/regulatory feasibility, data/power/environment targets, PoC acceptance and commercial boundary are answered. Once answered, route the consolidated `HLPL/F/MKT/01` feasibility record to its configured approvers. A task completion or PoC demo cannot itself freeze requirements.

#### Requirement freeze record — proposed baseline v1.0 gate

After Stage 2 clarifications, create one project-linked custom master input table revision; preserve its sources, contributors and decisions. At freeze, retain the final value or an explicit TBD/conditional value with owner, due event and impact. Only requirements necessary to start design must be resolved; other unresolved items are either explicitly accepted as non-blocking with an owner, or block the affected downstream release. The example should demonstrate the following freeze receipt, not pre-fill an approval:

| Freeze field | Example record |
|---|---|
| Baseline key | `DEMO-PROJ-010:PMSS-REQ:v1.0` |
| Scope | HW+FW+SW client PoC: local GNSS capture, research-driven LoRa local exchange without public internet, and separately scoped 4G sync when a selected network is available. |
| Included | Requirements accepted by the fictional client owner; named target region, offline duration, required constellations, PoC topology, payload, power/environment criteria, unit count and demo acceptance must be added from approved inputs before freeze. |
| Excluded unless change-approved | Production commitment, guaranteed coverage/range/runtime, in-house PCBA/SMT, automatic cloud deployment, production certification, real costs or shipment. |
| Required approvals | SAL/client scope acceptance; applicable EHW/FW/SW/MECH/PUR/QA/EMF/MMF/FIN/SIT/HR-OPS technical/commercial responses; configured authorized signers only. Consulted responses do not require unanimous approval unless policy says so. |
| Freeze decision | `PENDING — do not start baseline-dependent engineering until required values and authorized receipts are saved.` |
| Change after freeze | Versioned amendment with source, reason, affected requirements, departments/tasks/evidence, impact, review and authorized approval. Preserve v1.0 and flag affected downstream work only. |

#### Development example: phase → stage → task → evidence

This is the planned full path from intake through support. It uses the existing LC2 template namespace and its T01/T02 task definitions; case-specific custom tasks add detail without changing shared templates. Only stages whose prerequisites are met activate as real assigned tasks. The rest remain in the roadmap preview. Dates remain unplanned until the owner schedules them.

| Phase / stage | Default owner | Project-specific tasks and handoff | Exit evidence / gate |
|---|---|---|---|
| CM-P1 / CM_01 Request and input capture | SAL | T01 capture `DEMO-ENQ-010`; T02 link source and missing data. Custom: confirm no-internet use cases and geography. | Source-linked enquiry; gaps visible. |
| CM-P1 / CM_02 Applicable feasibility review | SAL + applicable domains | T01 collect department responses; T02 record recommendation. Custom: EHW module capability matrix; PUR supplier/carrier requests; QA applicability; SIT offline architecture review; LoRa local-path experiment proposal. | Signed/authorized feasibility disposition or reasoned decline; all blocking questions resolved. |
| CM-P2 / CM_03 Requirements baseline | SAL | T01 resolve requirements and exclusions; T02 route the PMSS input revision. Custom: assemble `PMSS-REQ:v1.0` from approved table rows and retain unanswered non-blocking rows explicitly. | Baseline frozen only with required value/source/owner and configured approval receipts. |
| CM-P2 / CM_04 Plan and kickoff | SAL / project owner | T01 assign track-specific owners and dependencies; T02 record agreed PoC success criteria. Custom: separate local LoRa research, device engineering, demo software and client demonstration workstreams. | Approved roadmap preview; no unauthorized or duplicate tasks. |
| HW-P1 / HW_01–HW_05 requirements & feasibility | EHW | T01 derive hardware requirements; T02 resolve queries. Custom: compare candidate GNSS/NavIC, 4G and LoRa combinations; power/memory/antenna trade study; tentative feasibility response. | Source-backed hardware PRS; options and unresolved risks recorded. |
| HW-P2 / HW_06–HW_16 architecture & schematic | EHW; FW consulted | T01 evaluation setup; T02 schematic review. Custom: bench LoRa topology comparison and offline local receiver test plan; native schematic authored externally and linked. | Reviewed architecture/interfaces and native source revision; no auto-generated schematic. |
| HW-P3 / HW_17–HW_24 PCB & BOM | EHW / MECH / PUR | T01 layout/floorplan; T02 one revision-linked tentative BOM cost/sourcing analysis. Custom: antenna keep-out/mechanical fit review, alternates and quote gap. | Native layout/fab package and BOM revision reviewed; no inventory reservation. |
| FW-P1–P2 / FW_01–FW_04 | FW | T01 assess resources; T02 propose interface. Custom: design offline event queue, time/position metadata and LoRa/4G state machine; define replay/idempotency behavior. | Versioned FW requirements/design; mock tests planned. |
| SW-P1–P2 / SW_01–SW_04 | SW / SIT | T01 scope local view and optional remote sync; T02 define payload/API. Custom: local demo dashboard or receiver simulator; access/privacy/retention boundary; cloud deferred unless selected. | Approved interface and local/offline deployment design. |
| INT-P1 / INT_01 interface agreement | FW with EHW/SW | T01 pin hardware-firmware interface and message schema; T02 resolve ownership/version conflicts. | Exact HSI and payload contract revisions acknowledged by consumers. |
| HW-P4 / HW_25–HW_32 prototype and validation | PUR / EMF / EHW / QA | T01 authorized external fabrication/receipt; T02 link QA disposition. Custom: EMF records accepted outsourced PCBA and box-build; EHW bring-up; QA traces GNSS/LoRa/4G/offline cases to actual criteria. | Pinned sample configuration and genuine measured evidence; failures create corrective/retest iterations. |
| FW-P3–P4 / FW_05–FW_11 | FW | T01 implement and review drivers/state logic; T02 integrate against pinned target. Custom: test no-backhaul buffer, local LoRa exchange, reconnection/replay and GNSS source metadata. | Versioned build/hash, test configuration and results; no claimed pass without measurements. |
| SW-P3–P4 / SW_05–SW_09 | SW | T01 implement selected local view/API; T02 test data projection and role access. Custom: demonstrate locally received LoRa data; later-sync behavior only if selected; test duplicate/out-of-order data and recovery. | Accepted test evidence and security checks against agreed criteria. |
| CERT-P1–P4 / C01–C15 (conditional) | QA | Apply only after market, customer and applicable requirement establish certification need. Link actual agency selection, sample, reports and external decision. | Genuine uploaded external reports/certificate; otherwise recorded not-applicable rationale or pending state. |
| HW-P5 / HW_33–HW_37; relevant FW/SW release | EHW / EMF / QA | T01 close applicable changes; T02 compile design/production handoff. Custom: client PoC demo review; distinguish demo acceptance from pilot/production authorization. | PoC decision and lessons; pilot requires separate scope/plan; production stays blocked without its release gates. |
| CL-P1 / CL_01–CL_03 | SAL + service owner | T01 link actual demo/delivery record if performed; T02 hand over support/lessons. Custom: record client feedback and decided next step (stop, refine, pilot, or close). | Authorized closure/continuation decision; prior baseline/evidence retained. |

**PoC demo script:** (1) show position acquisition and its source/status without claiming internet assistance; (2) disconnect public backhaul and demonstrate only the tested local LoRa path to the configured local receiver/gateway; (3) show queued record identity/time and storage state; (4) restore the separately configured cellular path and inspect duplicate-safe synchronization; (5) show any missing signal as an explicit unavailable state; (6) present measured data with test configuration and limitations; (7) ask the client to accept/reject the PoC criteria through the existing authorized decision flow. All screenshots or simulated transport states stay `DEMO_ONLY`; no real client sign-off or production release is generated.

**Acceptance of this sample case:** selecting LC2-P10 creates the fictional client/enquiry/OMS/project links once; the project selector carries the same project identity into feasibility, tasks, records and documents; applicable owners can respond while others remain permission-scoped; feasibility and v1.0 freeze receipts remain visibly pending until authorized; stage prerequisites prevent premature task activation; rejected test or changed requirement opens a linked iteration; PoC completion does not unlock production. The case is a specification only; applying it to the portal requires a separately authorized isolated TEST fixture operation.

For a ready/in-progress stage, T01 is In Progress with a meaningful fixture remark and T02 is To Do unless the case explicitly awaits review. For a blocked stage, explain the exact dependency and owner; do not create active tasks prematurely. An authorized fixture loader may establish clearly synthetic completed history in an isolated TEST pack, but this does not create official production approvals, measurements or signatures. Final evidence/results remain absent where not supplied. Every future task is still present in the planned manifest, satisfying whole-lifecycle sample coverage.

### PMSS, documents and sample release boundaries

Use the existing shared project-input sheet as the PMSS data baseline: value/unit/source/owner/feasibility remark/query/status plus versioned change history and links. Do not duplicate it in eight new tabs. Document grouping stays Department/Common, Internal Project and Client Project within the original Vault. Native schematic/layout, STEP/drawing, STL/DXF, Gerber/panel/stencil outputs come from their actual tools/suppliers; supplied reference data is not permission to generate fake binaries or certificates. DOCX/XLSX templates remain editable drafts; final client PDF requires configured Admin approval and preserves the editable source/revisions. A non-editable PDF is a controlled rendition, not a promise of tamper-proof content.

### Source adaptation and acceptance

The 28 October SCMS source has numbering inconsistencies (the '5 modes' table lists six and omits ready-made; G0–G11 is twelve gates), contradictory hardware code references, unconditional automotive limits, in-house SMT/TST assumptions and unscoped SQL. This catalogue preserves useful task ideas with versioned codes, correct dependencies and seven confirmed tracks; none of that SQL is deployed. The earlier milestone guide supplies outcome/owner/criteria/dependency fields rather than mandatory stage counts.

Verify all seven tracks, ready-only generation, repeat/concurrent activation, declined enquiry without project, optional certification/production, cross-track handshake, missing owners, denied access, rejected/ reopened gates, prior-version preservation, original task board and document numbering. Compare full manifest stage/task counts and canonical links after reload on web and Android. A populated reference card alone is not acceptance. Milestone approvals, finance/stock posting and production release remain separately authorized.


## Custom tasks and stage-plan changes — final implementation rules

Authorized responsible leads may add, edit, reorder or remove custom tasks within a stage/sub-stage during planning or ongoing execution. Admin retains configured oversight; permission comes from authenticated membership and project/department responsibility, not the selected workspace or a role URL. A custom task may reference another department without granting authority to assign or edit that department's work.

- Reuse existing task fields and compact create/edit interactions: title, stage context, responsible owner, priority, optional planned/due date, dependency, description and evidence links. Prefill project, department and stage; inherit company location. Ask only for missing required information. Use searchable canonical selections and authorized inline creation where applicable. Preserve draft values on failure.
- A task definition is a default, not an immutable checklist. Changes to one project do not silently edit global templates or other projects. A new reusable template revision requires the existing configured template-management authority; existing projects adopt it explicitly with a change preview.
- Unused planning tasks may be deleted if no evidence, comments, approvals, time/expense, records or dependent tasks reference them. Once used, remove them from active work by cancellation/retirement with a reason and audit history; preserve original ID, evidence and links. Keep completed or signed history immutable through its existing controls. Do not implement deletion by cascading away business records.
- Before removing a prerequisite, show affected dependents and require an explicit re-link, replacement or governed waiver; never treat removal as completion. Required release/evidence gates cannot be bypassed by deleting their task. Reopening, cancellation and material scope changes recalculate affected readiness and flag stale approval evidence according to existing change controls; unrelated work remains available.
- New tasks in an active eligible stage become actual assigned work; custom tasks in a future stage remain planned until that stage is ready. The full planned preview remains visible. Stable task-instance keys, expected versions and replay identities prevent regeneration, retry or concurrent-edit duplicates. A cancelled template task must not reappear on refresh or stage regeneration.
- Preserve Today / Tomorrow-Planned, priority sorting, overdue dates, Completed and the separate approval queue. Task completion is not automatic stage approval. Dates, mandatory gates and signatories are never invented.

Acceptance must include: adding tasks before and after stage activation; editing/reordering; unused deletion; cancellation with retained evidence; dependent-removal prevention; unchanged unrelated tasks; no global-template mutation; no regenerated cancelled tasks; concurrent edits/retry; authorized department versus read-only cross-department and client denial; shared web/mobile persistence after reload; and preservation of existing task numbering, approvals and history.


## Lifecycle and fixture authority — 10 November 2026

The [SSM One master plan](../SSM_ONE_MASTER_PLAN.md) owns shared lifecycle, department and RACI rules. This document owns fictional sample companies/projects, reset behavior, and repeatable test scenarios; samples must stay clearly TEST-only and never imply real customer approval, measured performance or release.

Current shared TEST lifecycle evidence is summarized in the master plan. Keep fixture IDs and expected outcomes aligned to the approved TG-0–TG-9 phases, editable settings-derived department stages/tasks, feasibility-before-track selection, controlled documents and reusable revisions. A local fixture is not proof of shared backend or Android parity.
