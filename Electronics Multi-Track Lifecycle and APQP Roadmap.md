# Electronics Multi-Track Lifecycle and APQP Roadmap

**Status:** Current lifecycle requirements — updated 12 November 2026
**Scope:** Cross-platform lifecycle, engineering tracks, milestone handoffs, quality/certification, and change loops  
**Authority:** Subordinate to the [SSM-new master plan](SSM_ONE_MASTER_PLAN.md); implementation is governed by the [Web implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md) and [Android build plan](https://github.com/narendok/SSM-new-app/blob/main/docs/planning/SSM_ONE_ANDROID_BUILD_PLAN.md).
**Input reviewed:** [SCMS & Multi-Track Lifecycle Requirements.docx](References/SCMS%20%26%20Multi-Track%20Lifecycle%20Requirements.docx) (user-supplied updated reference) and [New Hexa Format.xlsx](References/New%20Hexa%20Format.xlsx) for the fixed TG-0–TG-9 names. SQL and database-schema sections were not adopted or implemented.

This is the dedicated product-lifecycle reference requested for hardware, firmware, software, manufacturing, quality and shared-function handoffs. It defines how lifecycle views fit together; it does not certify that any gate, integration, database operation, or sample lifecycle is implemented or live.

## Decisions carried forward

- A project may use one or more applicable engineering tracks. Hardware, firmware, software, mechanical design, quality/certification, manufacturing, sourcing, finance, service/IT and HR/operations can progress in parallel where their dependencies allow.
- Fixed TG-0…TG-9 company phases supersede the earlier nine-phase proposal; editable department gates/stages retain explicit dependencies and revision history.
- The hardware track retains the 37-stage `HW_01`–`HW_37` framework. Firmware and software use configured track stages beneath TG-0–TG-9; internal numbering never adds company phases. A stage number in the supplied document is not itself a registered stable ID.
- Each stage/gate has versioned applicability, entry/exit criteria, dependencies, evidence, ownership, and decision authority. A project pins the accepted lifecycle and responsibility-matrix versions.
- QA owns quality governance and applicable certification disposition. Engineering, manufacturing, sourcing, finance, service/IT, and other departments contribute according to the project matrix. RACI assignment never grants data access or signing authority by itself.
- Component/asset qualification and finished-product/project certification are separate scopes. Reusable PCB/assembly, enclosure, harness, firmware, or other asset evidence is linked to its exact revision; product certification is tied to the integrated project configuration, market and applicable authority.
- Cross-track handoffs are reviewable records with explicit acceptance. They never imply that a physical test, approval, client acceptance, certificate, deployment, or inventory transaction occurred.

## Lifecycle hierarchy

| Level | Governing configuration |
|---|---|
| Project | Accepted track scope and pinned lifecycle/RACI version |
| Phase | Fixed TG-0–TG-9 company phase |
| Stage | Editable scoped work, dependencies, deliverables and RACI beneath a phase |
| Task | Configured default task generated from the project's pinned phase/stage, track, department, RACI and task-template settings, with assignee and evidence links |

The hierarchy is navigational and traceable: a completed task does not automatically complete its parent gate. A gate is satisfied only when all applicable predecessor gates, required work, evidence, acceptance criteria and authorized decisions are satisfied. A gate can be marked not applicable only by an authorized role with a recorded rationale. A missing or unverified value remains pending; it is never inferred from a label, percentage, animation, or local demo fixture.

## Fixed phases and configurable department execution

### Canonical TG-0 to TG-9 phase names

The reconciled New Hexa workbook is the source for these ten fixed company phase IDs and display names. The portal labels them as phases; the source wording retains “Gate” in each title. Department stages, track gates and tasks remain configurable beneath the selected phase and do not create additional company phases.

| Phase ID | Fixed phase name |
|---|---|
| TG-0 | Kickoff, Technical Feasibility & System Sizing |
| TG-1 | Concept, Architecture & Interface Freeze |
| TG-2 | Proof of Concept & Subsystem Bring-Up |
| TG-3 | Detailed Engineering & Prototype Tooling |
| TG-4 | Prototype Integration & Alpha Validation |
| TG-5 | Design Verification (DV) & Environmental Stress |
| TG-6 | Field Validation, Homologation & Pilot Sign-Off |
| TG-7 | Pre-Production Pilot & Controlled Launch |
| TG-8 | Industrialization, Part Approval (PPAP) & Ramp-Up |
| TG-9 | Handover, Audit Compliance & Project Closure |

Use the [current role-action and lifecycle demo pack](Feature%20Roadmap/Sample%20Data%20and%20Test%20Plan.md#current-demo-pack-for-role-actions-and-lifecycle-automation) to demonstrate all seven tracks and applicable TG-0–TG-9 stages. Sample counts, tasks, record/profile types, assignees and RACI derive from the selected settings revision. Fresh walkthroughs start before project creation; synthetic later-phase checkpoints are labelled separately. Feature acceptance requires actual saved-state readback, role isolation and user requirement confirmation.

Use **Project → Phase → Stage → Task**, with exactly ten company phases TG-0–TG-9 and the fixed names in the table above. The earlier nine-phase overview is superseded. Internal track gates are stages under a phase; a tollgate is the authorized boundary decision, not another work level.

The [master plan's department and lead rules](SSM_ONE_MASTER_PLAN.md#department-ownership-and-multiple-lead-roles) govern configurable departments, multiple department assignments per lead and access. Settings map stage/default-task ownership and RACI to departments; resolve people from department assignments instead of hard-coded names or one primary role. CFT/PM belongs to Operations; confirmed enclosure/3D manufacturing stages belong to MMF. Shared workspace grouping preserves separate records and permissions.

Authorized leads refine scoped stages/default tasks; Admin manages shared mappings. Generate eligible default tasks once according to dependencies and the pinned configuration. Cross-department handoffs link the same project, stage, task, controlled record and document revision. Deliverables support auto-drafting from verified source parameters and/or original upload according to their configured type and eligible stage. Show provenance and missing inputs. Drafting, upload and task completion do not automatically approve a stage or tollgate. Existing projects change configuration only through a reviewed update.

### Stage durations, feasibility estimates and task assignment

- Admin maintains editable default target/range durations for each configured stage beneath fixed phases TG-0–TG-9, plus phase-level target/range rollups and task SLAs. Start with duration suggestions in the supplied SCMS lifecycle reference as editable defaults; they become company settings only after an authorized Admin saves them. Track-specific stage/task applicability still comes from the active versioned lifecycle and project track, not from hard-coded department lists.
- During feasibility, each participating department lead prepares effort and a task timeline for that department's applicable track stages, then saves the project-specific task schedule as part of its feasibility baseline. **The planned stage window is a hard boundary for its dependency-aware task schedule:** suggest each task's planned duration and start/end window from its task timing defaults, the stage's planned start/end window and dependencies; allow overlap only when dependencies permit. The lead can edit each task's planned duration, dates and effort. Every task and the resulting schedule must fit inside its parent stage duration and the enclosing TG-0–TG-9 phase boundary. The stage duration bounds the schedule and is never silently extended to make tasks fit. If the task plan does not fit, show the over-capacity and let the lead revise task estimates or submit the stage duration for authorized review. Where no task timing default exists, ask the lead to set the estimate rather than inventing equal splits or making each task last the whole stage. When a stage duration changes, recalculate a proposed task schedule and flag affected plans for lead review; never overwrite a reviewed timeline without an authorized update. Later lifecycle settings or organization-chart changes must not silently rewrite an accepted project feasibility schedule, assignment or history. Phase duration is a separate rollup/target, not a substitute for stage duration. A server-side check enforces both boundaries. Changing the active lifecycle settings while an estimate is open requires a reload/review before saving.
- Keep planned task effort, elapsed task time and financial actuals separate. An assigned person starts/stops a task timer; elapsed seconds are recorded against that task. Time does not complete a task or satisfy a gate. Reassignment, lead changes and saved RACI do not rewrite existing time history.
- Resolve task assignees through configurable **L1 lead → L2 senior/specialist → L3 associate/technician → L4 operator/trainee** profiles in the organization chart defined by the [master plan's organization and role rules](SSM_ONE_MASTER_PLAN.md#department-ownership-and-multiple-lead-roles). Each task template names its intended profile level; Settings maps it to an active person in the owning department. Do not substitute another level silently. If that level is unmapped or has multiple eligible assignees, leave the task assignment pending for the department lead to resolve. Existing projects keep their pinned task baseline; changing the org chart does not silently rewrite current assignments or history.

The fictional people used to exercise this assignee resolution are maintained once in the [canonical sample roster](Feature%20Roadmap/Sample%20Data%20and%20Test%20Plan.md#canonical-employee-and-organization-chart-sample-roster); lifecycle stages and task templates reference configured role levels, never duplicate the roster or hard-code a person's name as the live authority.
- Feasibility estimates may include preliminary BOM, reusable/consumable materials, lab/certification fees and tooling. They are forecasts, never purchase or spend approval. Finance/Admin must configure and approve role/department hourly or daily rates and cost-recognition rules before labor is converted to currency or an estimate-versus-actual variance is presented. Without those settings, report effort hours and source-linked cost categories separately.
- Project cost, customer commercial value and margin views follow the [master plan's project economics rules](SSM_ONE_MASTER_PLAN.md#project-economics-spend-and-growth-reporting): preserve forecast versus commitment versus settled actuals, retain canonical source links and currency, and show margin/growth only when the required approved/sourced inputs exist. Auto-generated business cases and commercial summaries remain Draft until their configured approver records a decision.

The cross-platform requirements are canonical here; current implementation state, migration/deployment boundaries and browser evidence belong in the [web implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md). A locally implemented timer or estimate is not shared TEST acceptance until its migration, permission checks, save/readback and role-specific access are verified.

## Track catalogue and applicability

| Track / function | Default planning scope | Current boundary |
|---|---|---|
| EHW — Embedded Hardware Engineering | Requirements, architecture, circuit/PCB design, tentative/released BOM, verification, change and release | Use the reconciled `HW_01`–`HW_37` register; the supplied attachment's detailed task mapping is proposed material, not the verified register. |
| FW — Firmware | Firmware requirements, architecture, BSP/drivers, application, security, testing, hardware integration, signed release and field maintenance | Use configured stages and default tasks beneath TG-0–TG-9. |
| SW — Cloud & Application Software | Product/app/cloud requirements, interface contracts, architecture, implementation, security, tests, integration, staged deployment and monitoring | Use configured stages/default tasks beneath TG-0–TG-9; product software is distinct from portal implementation. |
| MECH — Mechanical Engineering | Enclosure/part design, fit/thermal/DFM, drawings, tooling/package and design changes | Separate from MMF manufacturing. The attachment combines EHW and MECH without defining a standalone authoritative MECH gate register. |
| QA — Quality Assurance & APQP | Quality planning, risk analysis, verification criteria, inspection/disposition, nonconformance/corrective action, audit and release review | Independent quality authority remains separate from the executing department. Regulatory applicability is product/market-specific. |
| PUR — Purchasing & SCM | Sourcing, supplier qualification, RFQ/PO and supply readiness | Supplier/commercial actions require their verified contracts and approvals. |
| EMF — Electronics Manufacturing | Accepted outsourced PCBA receipt/traceability, line integration/box-build, controlled programming, in-line/final process checks, EOL testing role/work scope and electronic travelers | EOL testing is a distinct configurable EMF sub-role, not a separate active TST department. Preserve historical TST record IDs and links; route new EOL tasks through EMF. In-house bare-board fabrication and SMT/PCBA process are out of current scope unless explicitly re-approved. QA retains independent acceptance. |
| MMF — Mechanical Manufacturing | Mechanical material/part fabrication, finishing, mechanical subassembly and inspection | Process capability and sourcing are configured by plant/project. Coordinate product integration with EMF. |
| FIN, SIT, HR/OPS | Horizontal finance, service/IT, staffing, competency, training and operational readiness activities | Apply only when relevant. HR-private and financial/security-sensitive records remain separately scoped. |

The project track selection is an extensible set, not a fixed list of “five modes.” The supplied table says five while enumerating six combinations; the portal should store applicable tracks and explicit dependencies rather than hard-code a contradictory mode count. Department registry changes must not rename or rewrite historical gate IDs.

## Standard cross-track handoffs

Use these as reusable default handoff patterns, with project-specific applicability and acceptance criteria configured by authorized owners.

| Handoff | Sender → receiver | Minimum package | Acceptance / downstream effect |
|---|---|---|---|
| HW–FW interface freeze | EHW ↔ FW | Controlled pin/interface revision, electrical limits, signal definitions, unresolved items and change owner | Both accountable owners accept the exact revision before dependent PCB routing or firmware implementation proceeds. A draft HSI is not a frozen interface. |
| Parallel development during fabrication | EHW/PUR → FW | Released-to-fabrication board revision, expected availability, evaluation-kit mapping, known deviations | Firmware may develop against the named evaluation hardware while board fabrication is in progress; this does not mark the physical target integrated. |
| Board bring-up and firmware integration | EHW/EMF → FW, with QA as applicable | Identified PCB/assembly revision and lot, inspection/bring-up evidence, firmware build identity, deviations and owner | Firmware integration begins only for the accepted physical configuration. Failed checks create corrective work and may reopen affected design gates. |
| Production diagnostic/application image | FW → EMF, QA | Separate diagnostic and production binaries where required, signatures/checksums, target hardware revisions, flashing instructions and controlled release status | EMF uses only the authorized image/configuration. QA verifies required checks; actual unit outcomes remain recorded measurements. |
| FW–SW contract freeze | FW ↔ SW | Versioned message/payload/API contract, scaling/units, compatibility, error behavior, security assumptions and owner | Both accountable owners accept the same version before dependent implementation/integration. DBC or protocol files remain native uploaded artifacts. |
| Contract simulator and independent tests | FW ↔ SW | Versioned mock/simulator inputs, expected outputs, compatibility and test evidence | Allows parallel work against the pinned contract; a mock result is not device-to-cloud acceptance. |
| Device-to-cloud integration | FW/SW → QA/SIT and applicable project owner | Exact hardware/firmware/software revisions, environment, test dataset, telemetry/command evidence, security and failure/recovery outcomes | Accepted in an authorized non-production environment before any release decision. Live client/device access is not implied. |
| Manufacturing and service handoff | EMF/MMF/QA → SIT/Service, as applicable | Released/as-built identity, serialized or lot trace, firmware and mechanical revisions, test/quality disposition, warranty/service instructions | Service lookup uses recorded configuration. Replacement, repair and dispatch each require their own authorized operational record. |

Handoffs are persistent, attributable events tied to exact versions. A request, returned-for-change decision, approval, rejection and acceptance are distinct outcomes. A notification tells an eligible recipient that work is available; it does not grant access or approve a gate.

## Dependencies, change loops and task creation

- Model dependencies as a directed graph with multiple prerequisites, applicability conditions, blocking/non-blocking links, and explicit not-applicable rationale. Reject cycles at template validation.
- Parallel work remains open when its prerequisites are satisfied; a project-level stepper may show several active tracks at once.
- A failed test, changed customer requirement, mechanical interference, supplier discontinuity, security issue or field return initiates an impact review. Only an authorized change decision reopens affected baselines/gates and creates approved follow-up work.
- A change impact review identifies affected requirements, assets/revisions, BOM, manufacturing process, tests/certification, documents, suppliers, WIP/stock, field units and project timelines. Previous approvals remain immutable; the new revision gets its own review and effectivity.
- Task templates are versioned and scoped to a selected lifecycle/track, project type and applicability. Generate them only after an authorized project baseline/configuration decision. Duplicate generation must be prevented; users review scope/owners before tasks become active.
- Never automatically mark a task/gate done from a generated document, uploaded file, elapsed time, successful build, fixture, demo animation, or external certificate reference alone.

## Milestone and gate definition checklist

Every reusable milestone/gate definition should specify:

1. Stable ID, display name, definition version, parent overview phase, track, owning department and applicability rules.
2. Purpose, entry criteria, exit criteria, evidence types, acceptance thresholds and permitted status transitions.
3. One accountable decision owner, responsible work owners, consulted parties, informed notification scope, and a separately verified signing capability.
4. Predecessor gates, cross-track handoffs, condition/branch logic, not-applicable policy and downstream blocks.
5. Required/optional subtasks, templates, controlled document types and native evidence file types.
6. Planned/actual dates, decision history, revision/effectivity, returned/rejected reason, and links to the project, asset, build/lot/serial, issue or change record.
7. Permission scope and audit requirements independent of RACI; no assignment or notification grants read/write access.

## Certification and compliance track

The attachment's `C01`–`C15` sequence is a useful candidate decomposition for regulatory scope, test planning, lab/supplier coordination, samples, test execution, corrective action, report review, formal certificate and closure. It is **not yet an approved canonical gate register**. QA must reconcile it against the current APQP/QMS process, product family, customer, target markets and applicable standards before stable IDs, requiredness, dependencies, owners, durations or auto-generated tasks are configured.

Certification/evidence rules:

- Applicability is recorded with its basis; a standards list in a template does not make every listed standard mandatory.
- Distinguish component/asset qualification for an exact PCB/assembly, enclosure/material, harness or module revision from finished-product/project certification for the exact integrated configuration, customer/market and authority/lab scope.
- Record issuer, standard/edition, certificate/report ID, covered revision/configuration, sample and conditions, limitations, validity and authentic source file. Expired or superseded evidence remains historical and cannot silently satisfy a current gate.
- A certificate reference or generated cover sheet is not a certificate. The portal may draft metadata/checklists from verified inputs; external lab reports and certificates are uploaded/linked, not generated.
- Do not copy the attachment's fixed weeks, laboratory durations, test results or blanket QA sign-off claims as organizational policy.

## Change, field service and dispatch loops

Keep the four candidate loops separate and evidence-based:

1. Requirement/customer scope change → impact review → controlled baseline amendment and affected-gate reapproval.
2. Mechanical/PCB interference or design issue → linked corrective task/change record → revised native files, compatibility check and delta verification.
3. Verification failure → actual test result, nonconformance/corrective action, disposition, retest and affected release/certification review.
4. Production/field issue → service/RMA or manufacturing case → as-built and serial/lot trace, diagnosis, warranty/quality disposition, approved repair/replacement, regression evidence and design/process feedback.

Production shipment, service/RMA return or replacement, and R&D evaluation/sample shipment are distinct record types with distinct authority, destination, contents, traceability and dispatch checks. Service may send an authorized repaired/replacement device; manufacturing may dispatch finished production units; any direct R&D-to-client evaluation shipment remains a policy decision to configure before activation. Do not combine these into a generic send-device button or bypass inventory/QA/Finance controls.

## Lifecycle views and platform behavior

- **Project page:** show the project overview and all applicable track gates in a clear dependency view. Allow simultaneous active tracks, visible blocked-by reasons, pending handoffs, evidence/decision status and subtasks. Animation is a navigation aid; the text/table view exposes the same state and supports reduced-motion/accessibility settings.
- **Department project view:** show only that department's applicable work packages, relevant cross-department handoffs, recorded owners, linked evidence and dependencies, while retaining authorized project context. Do not expose unrelated departments' private records.
- **Executive/admin view:** aggregate all authorized project tracks and phase/gate status, with drill-down using the same persisted source records.
- Selecting another project switches all project-scoped stage, task, document, approval, handoff and ownership context using stable project IDs. Department-wide unlinked work remains clearly separate.
- The web and Android clients use the same versioned lifecycle definitions and backend decisions. Until that contract is live, show a clearly labeled unavailable/planned state; do not present local demo stages as an operational project.

## Document-control alignment

Use the catalogue's [consolidated generation and role Docs Vault plan](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.md#consolidated-generation-and-role-docs-vault-plan) for role profiles, generation/upload boundaries and TG-0–TG-9 document coverage. Every configured stage binds applicable required/optional profile IDs and exact source revisions. Reconcile conflicting source stage aliases before activation; a missing mapping is visible pending work. Project deliverables and operational/audit documents link into authorized role vaults and the central index without copies. Source changes propose draft updates and preserve approved history; independent review controls phase completion.

The document catalogue remains the authority for document families, formats, auto-draft boundaries, uploads and the four top-level department groups: **Common & Standards**, **Internal Projects**, **Client Projects**, and **Department Operations & References**. This lifecycle plan does not add a seven-folder hardware tree or cap the system at twelve templates. A project's PMSS is a structured, versioned project baseline that links approved requirements, track configuration, gate decisions and controlled files; it does not replace native engineering artifacts or the catalogue.

Auto-generated drafts may prefill only from authorized, verified project fields and linked source revisions. Native schematics, PCB/Gerber, firmware/software source and builds, mechanical STEP/CAD/drawings, actual test reports, and certificates are authored/issued in specialist tools and uploaded or linked. BOM is created in the portal from controlled item records; tentative BOM does not reserve stock or authorize procurement. Preview and downloaded DOCX/PDF rendition must reflect the same saved revision. A file attachment alone does not satisfy a gate without the configured review/acceptance decision.

## Source and acceptance boundaries

The reconciled New Hexa source governs fixed TG-0–TG-9 phase names and stage/task mappings; the master plan governs current department, lead-role and RACI decisions. Older SCMS proposals, nine-phase summaries and candidate internal gate numbering do not override these settings. Retire old labels through explicit stable-ID mappings so historical records remain readable.

QA confirms certification applicability and genuine component/product evidence for the actual market and configuration. Engineering, manufacturing and service handoffs retain scoped ownership and acceptance. Do not import illustrative quantities, costs, durations, thresholds or test claims as company facts. Supplied SQL proposals do not authorize database changes.

Verify configured task generation, cross-department access, handoff/review decisions, draft/upload and revision reuse through the sample test plan. Platform implementation and deployment status belong in the web and Android plans; historical test counts are not current acceptance claims.

## Companion references

- [Cross-platform master plan](SSM_ONE_MASTER_PLAN.md)
- [Web portal implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md)
- [Android build plan](https://github.com/narendok/SSM-new-app/blob/main/docs/planning/SSM_ONE_ANDROID_BUILD_PLAN.md)
- [Document catalogue — Auto-Drafting, Audit, and Native Upload Rules](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.md)
- [Sample Data and Test Plan](Feature%20Roadmap/Sample%20Data%20and%20Test%20Plan.md) — concrete fixtures for exercising the lifecycle; sample values do not define required gates or real project facts.
- [Android backend status snapshot](../SSM-new-app/docs/backend-handoff/mobile_backend_contract.json)

## 12 November 2026 — Settings and sample refresh safety

TG-0–TG-9 are fixed company phases. Stage codes are stable references; Admin may retire a non-core stage with no active dependents from future project defaults, or restore it in a later lifecycle revision. The canonical code remains registered for historical snapshots and database references. Existing project baselines and generated tasks are never silently rewritten. Core intake/closeout stages and prerequisite-linked stages cannot be retired. Adding a new stage code requires an Admin-only database registry change and a forward migration; it is not a free-text Settings edit.

The user-approved Shared TEST refresh scope is fictional demo projects only. The role lifecycle sample pack currently loads browser-local TEST data; it is not the hosted reset pack. Shared TEST contains three active demo-marked projects and related test records, but no fixture manifest currently binds those rows to the new pack. Do not delete or reload them until an Admin-only, transactional replacement loader validates the pack, tags its records, and confirms project/customer/task/document references after save and reload. Production and non-demo TEST rows remain outside this reset.
