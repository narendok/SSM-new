# Department Lifecycle and Gate Framework with APQP Audit and IATF Mapping

**Status:** Draft framework for department-owner review  
**Authority:** [SSM One Master Plan](../../SSM_ONE_MASTER_PLAN.md); see the [Electronics Project Lifecycle and APQP Roadmap](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md) for the nine-stage product flow and proposed 37-activity crosswalk.  
**Purpose:** Define how department work packages and evidence fit the shared project lifecycle without making departments into separate, disconnected lifecycles.

## 1. Lifecycle structure

Every project uses the master plan's nine top-level stages. Department profiles below describe the department's contribution, deliverables, and proposed exit checks at each stage. A department may have no standalone gate in a stage; the shared project gate still applies where the work package is relevant.

| Stage | Shared project stage |
|---|---|
| 1 | Sales intake and client portal |
| 2 | Cross-department feasibility |
| 3 | Requirement freeze and commercial confirmation |
| 4 | Design and development / PoC |
| 5 | Pilot build and manufacturing readiness |
| 6 | Client validation and pre-compliance |
| 7 | Production release and PPAP |
| 8 | Type approval and supply readiness / mass-run authorization |
| 9 | SOP, production inspection, delivery and feedback |

### Hardware/APQP and firmware relationship

The master retains **37 detailed hardware/APQP activities (`HW_01`–`HW_37`)** and identifiable APQP phase gates 1–5. These are detailed activities and phase gates mapped to the nine project stages; they are not 37 portal stages. The master crosswalk is proposed and requires accountable process-owner approval before it becomes a controlled operating workflow.

The master does not yet define a confirmed, numbered FW-specific gate sequence. The FW profile below proposes checkpoints aligned to the same nine stages. Firmware owners must approve the names, criteria, evidence, and mapping before they are treated as official gates. Do not invent a firmware gate count or claim an unapproved gate has passed.

## 2. Rules for configuring a gate

Each configured gate/work package must record its ID and version, project and product applicability, linked lifecycle stage, predecessor/dependency, accountable role, responsible roles, authorized signer capability if needed, required evidence and source revision, entry criteria, exit criteria, state, decision reason, audit event, and rework route. One accountable owner is assigned per decision/work package. Parallel packages are permitted when dependencies are explicit.

Use `Not applicable` only with a recorded reason and authorized reviewer. Missing or conflicting source data stays visible and blocks any dependent release. RACI, task assignment, and notification do not grant record access or signing authority. A project pins the approved responsibility-matrix version; changes to an active project's matrix require authorized impact review.

The profiles below are proposed planning content, not approved QMS procedures, customer-specific requirements, released signer lists, or production authorization. Department owners and QA must confirm each applicable gate and its criteria before implementation.

IATF 16949, ISO, customer-specific, and other external criteria are applicability-driven. Map an edition or clause only when the approved product/customer scope requires it; this framework does not claim certification or make every clause mandatory for every project.

## 3. Department gate profiles

### SAL — Sales & Business Development

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Intake accepted for feasibility | Enquiry, customer source documents, identity, owner, and missing fields recorded. |
| 2 | Feasibility response coordinated | Relevant departments assigned; risks, assumptions, capacity and customer clarifications tracked. |
| 3 | Commercial and requirement package confirmed | Approved requirement baseline and commercial disposition linked; unresolved conflicts block freeze. |
| 4 | Customer changes routed | Customer-facing scope, decision, and approved change links recorded. |
| 5 | Pilot/customer inputs ready | Pilot plan, samples, customer inputs, and acceptance expectations confirmed. |
| 6 | Validation feedback captured | Results and feedback linked to the approved validation package; open issues assigned. |
| 7 | Customer release/PPAP disposition recorded | Customer decision, conditions, and applicable sign-off evidence linked. |
| 8 | Mass-run authorization confirmed | Required customer, type-approval, commercial, and supply decisions recorded. |
| 9 | Delivery and feedback closed | Delivery evidence, customer feedback, open service issues, and closure status recorded. |

### EHW — Embedded Hardware Engineering

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Hardware intake screened | Hardware-related customer requirements and source revisions identified. |
| 2 | Hardware feasibility reviewed | Architecture options, component/sourcing risks, safety/security concerns, and assumptions recorded. |
| 3 | Hardware requirements frozen | Approved hardware requirements, interfaces, constraints, and baseline revision linked. |
| 4 | Hardware design review and design freeze | Schematics, PCB/design records, DFMEA, design review, and approved release evidence linked. |
| 5 | Manufacturing package ready | Released design/BOM inputs, DFM/DFA actions, supplier interface, and pilot prerequisites verified. |
| 6 | Hardware validation disposition | Approved DVP&R criteria, configuration, measured results, defects, and disposition linked. |
| 7 | Production design package approved | Released design/BOM revision and applicable PPAP/design evidence accepted. |
| 8 | Type-approval support complete | Required hardware compliance evidence and approved changes linked; authority decision remains traceable. |
| 9 | Field/production change loop controlled | Issues and ECN/ECO records linked; impacted baselines routed for review. |

Trace detailed hardware work to the master's `HW_01`–`HW_37` IDs. Do not renumber or collapse those source activities when mapping them into this profile.

### FW — Firmware Engineering

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Firmware scope identified | Firmware functions, interfaces, and customer requirements extracted with source links. |
| 2 | Firmware feasibility reviewed | MCU/resource fit, boot/update/security constraints, dependencies, risks, and assumptions recorded. |
| 3 | Firmware requirements frozen | Approved FRS, interface assumptions, safety/security requirements, and trace links baselined. |
| 4 | Firmware design/build review | Architecture, code review, unit/static checks, build identity, and design risks linked. |
| 5 | Pilot firmware package ready | Candidate build, configuration, release notes, compatibility, recovery path, and controlled loading instructions verified. |
| 6 | Firmware validation disposition | Integration/regression, update/recovery, fault handling, and DVP&R evidence linked to exact build/configuration. |
| 7 | Production firmware release approved | Authorized release package, immutable checksum/version, signing record, compatibility matrix, and rollback/recovery evidence linked. |
| 8 | Type-approval and mass-run support complete | Approved firmware version and required compliance evidence included in the controlled release package. |
| 9 | Field update and defect loop controlled | Monitoring/field defects, authorized update history, service impact, and corrective changes traceable to builds. |

These are proposed checkpoints, not a confirmed FW gate list. Firmware process owners must define the official gate names/count, required test depth, signing authority, and applicability.

### SW — Cloud & Application Software

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Software scope identified | Client/application, cloud, integration, and data needs linked to source requirements. |
| 2 | Software feasibility reviewed | Interface, hosting, connectivity, privacy/security, dependency, and capacity risks recorded. |
| 3 | Software requirements frozen | Approved SRS, API/interface contracts, data ownership, and acceptance criteria baselined. |
| 4 | Software design/build reviewed | Architecture, versioned code/build, tests, security review, and interface evidence linked. |
| 5 | Pilot integration ready | Versioned environment/configuration and integration package verified; deployment remains non-production unless authorized. |
| 6 | Client/system validation disposition | End-to-end, interoperability, security, reliability, and user acceptance results linked to exact versions. |
| 7 | Production release approved | Change approval, release artifact, migration/rollback, monitoring, and access-control evidence recorded. |
| 8 | Service capacity ready | Production capacity, availability, support, backup/recovery, and dependent-provider readiness approved. |
| 9 | Operations and feedback loop active | Incidents, customer feedback, service changes, and release impacts linked and reviewed. |

### MECH — Mechanical Engineering

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Mechanical scope identified | Enclosure, harness, mounting, interface, and environmental requirements linked. |
| 2 | Mechanical feasibility reviewed | Packaging, thermal, ingress, material, tooling, supplier, and fit risks recorded. |
| 3 | Mechanical requirements frozen | Approved MRS, interfaces, material/finish constraints, and drawing baseline linked. |
| 4 | Mechanical design reviewed | CAD/drawing revisions, tolerance/fit analysis, DFMEA, and DFM actions reviewed. |
| 5 | Pilot/tooling package ready | Released drawings, tooling/fixture plan, inspection features, and sample build inputs verified. |
| 6 | Mechanical validation disposition | Fit, dimensional, environmental, and durability evidence linked to controlled criteria. |
| 7 | Production mechanical package approved | Released drawings, control characteristics, and applicable PPAP evidence accepted. |
| 8 | Supply/type-approval support complete | Approved material/process and authority evidence supplied where applicable. |
| 9 | Field/mechanical change loop controlled | Fit/field issues and engineering changes linked to affected revisions and lots. |

### PUR — Purchasing & Supply Chain

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Sourcing needs identified | Customer/project needs and known long-lead items recorded without committing spend. |
| 2 | Sourcing feasibility reviewed | Supplier options, lead times, capacity, risk, and make/buy assumptions documented. |
| 3 | Commercial sourcing baseline ready | Quote comparisons, approved supplier status, and sourcing assumptions linked to the frozen scope. |
| 4 | Prototype sourcing controlled | Approved prototype requisitions/orders and revision-specific supplier inputs linked. |
| 5 | Pilot supply ready | Supplier readiness, outsourced-PCBA receipt plan, traceability, and receiving criteria verified. |
| 6 | Validation samples traceable | Sample/lot identity, supplier certificates, and test-unit genealogy linked. |
| 7 | Production supply approved | Approved suppliers, production terms, PPAP/quality status, and purchase controls recorded. |
| 8 | Capacity and continuity approved | Capacity, lead-time, continuity, and mass-run supply readiness evidence accepted. |
| 9 | Replenishment and supplier feedback controlled | Receipts, supplier issues, corrective actions, and supply changes traceable; no unapproved stock posting. |

### QA — Quality Assurance

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Quality/customer clauses identified | Applicable customer quality requirements and source revisions recorded. |
| 2 | Quality feasibility reviewed | APQP/risk plan, compliance applicability, quality resources, and open risks reviewed. |
| 3 | Quality baseline approved | Quality plan, acceptance criteria, document/evidence needs, and responsibility version linked. |
| 4 | Design verification plan reviewed | DVP&R methods/criteria are source-backed; design review and risk actions tracked. |
| 5 | Process controls ready | PFMEA, control plan, work instructions, MSA/calibration needs, and inspection criteria reviewed. |
| 6 | Validation evidence dispositioned | Actual results trace to the exact integrated project configuration, sample/lot and method. Link component/asset certificate evidence as supporting inputs; it does not replace finished-product tests. Deviations and re-tests have controlled disposition. |
| 7 | PPAP and production release dispositioned | Required package, exact released BOM/asset revisions and as-built/traceability evidence reviewed; authorized quality/customer decision and unresolved exceptions recorded. |
| 8 | Type approval/supply evidence verified | Component/asset qualification and the separate finished-product/project certificate or authority report are each checked for exact scope, configuration, issuer, applicable standard/edition, conditions, limitations and validity. Supplier/production readiness is reviewed separately; one certificate scope never substitutes for the other. |
| 9 | Production quality and feedback active | Inspection, NCR/CAPA, audit, field issues, and lessons learned linked to affected product/lot/revision. |

QA's independent disposition remains separate from production test execution and department RACI membership.

### EMF — Electronics Manufacturing

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Electronics build scope identified | Box-build, firmware loading, test, packaging, and customer-specific needs captured. |
| 2 | Electronics process feasibility reviewed | Capacity, equipment, skills, outsourced-PCBA route, traceability, and process risks recorded. |
| 3 | Manufacturing requirements frozen | Approved EMF process requirements and interface to design/supplier/quality baselined. |
| 4 | Buildability review complete | DFM/DFA, assembly sequence, test access, and design-for-box-build actions reviewed. |
| 5 | Pilot line/package ready | Accepted outsourced-PCBA identity, traveler, work instructions, tooling, checks, and training verified. |
| 6 | Pilot build evidence reviewed | Actual pilot units/lots, in-line/final checks, defects, rework, and handoffs recorded. |
| 7 | Production process release approved | Production traveler, control plan, traceability, capability/PPAP evidence, and quality disposition accepted. |
| 8 | Mass-run readiness confirmed | People, materials, line capacity, suppliers, and authorized ramp conditions verified. |
| 9 | SOP build/delivery records complete | Lot/serial, firmware version, inspection, packaging, and delivery records traceable. |

In-house SMT/PCBA assembly is outside current scope. EMF receives accepted outsourced PCB assemblies and performs electronics box-build and assigned checks.

### MMF — Mechanical Manufacturing

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Mechanical build scope identified | Fabricated/received parts, finishing, subassembly, and fit interfaces identified. |
| 2 | Mechanical process feasibility reviewed | Make/buy, supplier capability, tooling, material, capacity, and inspection risks recorded. |
| 3 | Manufacturing requirements frozen | Approved MMF process requirements, drawing inputs, finish, and inspection characteristics baselined. |
| 4 | Manufacturability review complete | Tooling/process route, tolerances, finish, and design-for-manufacture actions reviewed. |
| 5 | Pilot process ready | Controlled traveler, work instructions, tools, inspection method, and operator readiness verified. |
| 6 | Pilot mechanical evidence reviewed | Dimensional/finish results, fit checks, deviations, and EMF handoff recorded by lot/revision. |
| 7 | Production process release approved | Production controls, applicable PPAP, inspection, capacity, and quality disposition accepted. |
| 8 | Mass-run readiness confirmed | Mechanical supply/process capacity and continuity evidence verified. |
| 9 | Production and field feedback controlled | Lot traceability, inspection, nonconformance, and mechanical change loop maintained. |

### FIN — Finance

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Commercial inputs identified | Costing/terms data needs identified; confidential records remain access-controlled. |
| 2 | Financial feasibility reviewed | Cost model assumptions, NRE, cash/credit exposure, and commercial risks documented. |
| 3 | Commercial baseline approved | Authorized quote/budget and commercial conditions linked to the approved project baseline. |
| 4 | Development cost/change impact reviewed | Approved engineering changes and development spend impact linked; no unsupported actuals. |
| 5 | Pilot cost disposition recorded | Pilot procurement/build cost forecast and approved commitments reconciled. |
| 6 | Validation/compliance cost reviewed | Test/certification cost assumptions and approved commitments tracked. |
| 7 | Production commercial readiness reviewed | Approved costing, payment/commercial terms, and required financial control checks complete. |
| 8 | Mass-run commercial readiness approved | Margin/cash/supply exposure and authorization evidence reviewed by authorized finance roles. |
| 9 | Invoice and delivery reconciliation complete | Authorized invoice, delivery, receivable, and variance records linked; no demo posting. |

### SIT — Service & IT

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | Service/IT scope identified | Connectivity, client environment, support, access, and data needs captured. |
| 2 | Service/IT feasibility reviewed | Hosting, infrastructure, security, privacy, integration, and support risks recorded. |
| 3 | Service requirements frozen | Approved service/security requirements, access model, retention, and support assumptions baselined. |
| 4 | Architecture/security review complete | Approved architecture, identity, storage, integration, and threat/control evidence linked. |
| 5 | Pilot environment ready | Non-production configuration, monitoring, access, support route, and recovery plan checked. |
| 6 | Service validation complete | Access/denial, integration, backup/recovery, support, and readiness tests evidenced. |
| 7 | Production deployment readiness approved | Environment, migration, monitoring, security, rollback, and access controls authorized. |
| 8 | Service capacity and continuity ready | Capacity, support coverage, backup, recovery, and third-party dependencies approved. |
| 9 | Operations/support active | Incidents, service tickets, RMA, monitoring, and feedback routed to owners with audit history. |

### HR/OPS — Human Resources & Operations

| Stage | Proposed checkpoint | Minimum evidence / exit |
|---|---|---|
| 1 | People/operations needs identified | Skill, capacity, safety, and operational constraints captured without exposing restricted HR data. |
| 2 | Resource feasibility reviewed | Role coverage, competency gaps, staffing capacity, and training needs assessed. |
| 3 | Responsibility and competency baseline approved | Versioned responsibility matrix, role capability, training, and staffing assumptions linked. |
| 4 | Development competency ready | Required design, security, safety, and controlled-process competency evidence recorded. |
| 5 | Pilot workforce ready | Training, authorization, equipment competency, and shift coverage verified. |
| 6 | Validation support ready | Competent operators/reviewers and applicable safety controls assigned. |
| 7 | Production role qualification complete | Production competency, training effectiveness, and authorized-role evidence current. |
| 8 | Ramp workforce readiness confirmed | Capacity, shift, training, safety, and support coverage approved. |
| 9 | Operational learning maintained | Training updates, lessons, staffing actions, and controlled procedure updates recorded. |

HR/OPS records remain restricted to authorized users. Matrix membership or project assignment never exposes confidential personnel data.

## 4. Default department dependencies and handoffs

The routes below are the proposed standard choreography. They turn department outputs into explicit, linked work for the next department; they do not assume that every department participates in every project. Project applicability is checked at Stage 2 and pinned at Stage 3. Run independent work in parallel when its inputs are stable; block dependent work until its required upstream baseline is approved.

| Stage | Default dependency and handoff route | Receiver action and gate control |
|---|---|---|
| 1. Sales intake | SAL creates the project intake packet and routes it to the departments indicated by product scope. Typical recipients: EHW, FW, SW, MECH, PUR, QA, FIN, SIT, EMF, MMF, HR/OPS. | Each applicable department acknowledges its assigned intake and flags missing inputs. SAL coordinates clarifications; no feasibility or design approval is implied. |
| 2. Cross-department feasibility | SAL opens parallel feasibility requests to applicable departments. EHW/FW/SW/MECH identify technical needs; PUR sourcing; QA quality/compliance; EMF/MMF production; FIN commercial; SIT infrastructure/service; HR/OPS capability/capacity. Each response returns to SAL's consolidated feasibility package. | Each department records response, owner, assumptions, risks, constraints, and recommendation. SAL may not close feasibility while a mandatory response is missing; QA and authorized project authority review applicable risks and the feasibility decision. |
| 3. Requirement freeze and commercial confirmation | Every applicable department submits a versioned domain requirement sheet to SAL. QA checks required quality/compliance criteria; FIN confirms commercial baseline; SAL compiles the consolidated project baseline. | Department owners approve their own submitted baseline; authorized project authority approves the project freeze. Downstream development tasks are released only against the frozen revision. A missing/conflicting source or required approval blocks freeze. |
| 4. Design and development / PoC | EHW publishes hardware/interface baselines to FW, SW, MECH, PUR, and QA. FW and SW publish versioned interface/build requirements to each other and to SIT/QA where applicable. MECH publishes enclosure/mounting interfaces to EHW and MMF. Engineering sends design reviews and planned evidence to QA; PUR receives revision-specific sourcing requests. | Receivers acknowledge the exact revision and record compatibility/review outcomes. QA reviews planned verification and risk controls; it does not replace engineering approval. Interface or baseline changes create impact review for every downstream consumer. |
| 5. Pilot build and manufacturing readiness | Released design/BOM/process inputs go from EHW/FW/SW/MECH to PUR, EMF, MMF, and QA as applicable. PUR manages supplier readiness and accepted outsourced-PCBA handoff to EMF. MECH sends released drawings/process inputs to MMF. EMF and MMF exchange explicit assembly/fit/lot handoffs. QA reviews PFMEA/control-plan/inspection readiness; HR/OPS verifies required competence; SIT prepares the approved pilot environment. | EMF/MMF acknowledge input revisions and lot identity before build. QA disposition and required training/process approvals gate pilot start. Outsourced PCBA is received/traceable; no in-house SMT/PCBA route is implied. |
| 6. Client validation and pre-compliance | EHW/FW/SW/MECH and EMF/MMF execute assigned verification and submit configuration-linked evidence to QA. PUR supplies traceable sample/supplier records. SIT supports test/service integrations. QA consolidates disposition; SAL routes approved client-facing validation requests/results. | QA approves, returns, or rejects evidence within its authority. Failed/returned results create linked rework/retest work for the responsible department. Client response is a separate decision and cannot be inferred from internal QA approval. |
| 7. Production release and PPAP | EHW/FW/SW/MECH, EMF/MMF, PUR, and SIT submit their released design, software, process, supply, and service-readiness packages to QA. FIN supplies applicable commercial controls; SAL coordinates customer PPAP/submission. | QA checks the complete, revision-matched release package and records its disposition. Customer approval is recorded by SAL as a separate external gate. Missing or stale evidence blocks production release; no department can self-approve another department's controlled output. |
| 8. Type approval and supply readiness / mass-run authorization | QA verifies applicable authority certificates and final quality status; PUR confirms supplier capacity; EMF/MMF confirm process/line capacity; SIT confirms service/IT capacity; FIN confirms commercial readiness; SAL assembles the authorization package. | The configured authorized project authority records mass-run authorization after all mandatory internal and external decisions are present. A certificate or supplier document is not approved merely because it was uploaded. |
| 9. SOP, inspection, delivery and feedback | EMF/MMF record actual work, lot/serial, inspection, and handoff evidence to QA. QA records disposition. SAL coordinates authorized delivery/feedback; FIN handles authorized invoice/reconciliation; SIT receives service/field issues; HR/OPS updates training/competency where needed. EHW/FW/SW/MECH/PUR receive linked defects or change requests affecting their outputs. | Delivery is blocked by required quality/release holds. Service issues, field failures, supplier issues, and engineering changes reopen linked corrective/change workflows without rewriting released history. |

## 5. Handoff, approval, and synchronization contract

### Handoff record

Every cross-department handoff is a persistent project record containing: unique handoff ID; project and lifecycle stage; sending and receiving departments; accountable sender and receiving role; requested action; exact linked record/document IDs and revisions; required evidence; dependencies; due date/SLA if configured; client visibility; current state; timestamps; comments/reason; and audit history. A handoff must not rely on a filename, an unlinked reference, or a chat notification as its only payload.

Default handoff states are **Draft → Ready → Sent → Acknowledged → In progress → Completed**. The receiver may **Return** it with a reason and missing-item list; the sender revises and resubmits while prior revisions remain traceable. Acknowledging receipt means only “received,” not “approved.” A mandatory handoff cannot satisfy a stage dependency until its required response is completed; a sent notification or missing acknowledgement never counts as completion. Closing a handoff means the requested deliverable or response is recorded; any required approval remains a separate controlled decision.

### Approval request

An approval request is linked to one exact record revision and names the required capability, authorized approver, decision, rationale, and audit event. Default decisions are **Pending**, **Approved**, **Returned for rework**, **Rejected**, or **Withdrawn**. Approval is valid only from a current authorized signer under the project's pinned responsibility/access configuration. RACI or department membership alone never grants signing rights. Returned/rejected decisions keep the gate blocked and route work to the named owner. Approval of one department's output does not approve the receiving department's output or the full project gate.

### Cross-department synchronization

- The authenticated backend is the shared source of truth. A successful handoff, approval, task, stage transition, or revision is persisted once and emits an auditable event; notifications link users back to the authorized record.
- Updates are idempotent and revision-aware. Duplicate submits do not create duplicate handoffs or approvals; conflicting concurrent edits are surfaced for resolution rather than silently overwritten.
- When a consumed upstream record changes, the system identifies downstream handoffs/evidence that reference its old revision, marks affected reviews stale, creates or reopens configured impact-review tasks, and notifies authorized owners. It never silently updates an approved downstream package.
- Web and Android read the same project/stage/handoff state and permission decisions. Offline work may be saved as a clearly labeled draft; approvals, release decisions, and production transactions require an authorized online server decision unless an explicitly approved contract defines otherwise.
- Notifications are delivery aids, not workflow state. A missed notification must not lose a handoff; queues and badges derive from persisted authorized records.

## 6. Settings and customization

Provide controlled workflow settings for authorized administrators to configure department profiles and route templates without changing code. Default templates should be usable out of the box; configuration supports project/product applicability and these options:

| Setting | Configurable behavior | Guardrail |
|---|---|---|
| Department and role routing | Sender/receiver departments, responsible role/capability, accountable owner, signer capability | RACI does not grant read/write access or signature authority; access policy is configured and tested separately. |
| Dependencies | Required predecessor records/gates, parallel or sequential work, optional branches, rework/return routes | Cannot bypass mandatory frozen baselines, safety/quality holds, or required approval dependencies. |
| Gate content | Required fields, evidence/document types, source revisions, checklist, acceptance criteria, N/A reason | Criteria need an owner and approved revision; no fabricated standard or threshold is seeded. |
| Handoff controls | Receipt acknowledgement, response expectation, due date/SLA, escalation and reminder policy | Notification/escalation never counts as completion or approval. |
| Approval controls | Required review/sign-off capability, quorum/order where applicable, external customer decision | Only authorized identities may decide; self-approval is denied by default; stale-revision approval is denied. |
| Scope and visibility | Project/product applicability and approved client-visible projection | Configuration cannot widen access beyond server-enforced permissions. |

Configurations are versioned. New projects use the newly approved version by default. Active projects retain their pinned version unless an authorized, audited impact review approves a migration; prior decisions and evidence remain immutable. Provide preview/simulation, dependency validation, change summary, owner approval, effective date, rollback path, and audit history before a workflow version becomes active. No setting may remove the global fail-closed access policy or disguise missing evidence as completion.

## 7. Validation and release before operational use

Before any profile or route becomes an operational workflow, each department owner and QA must approve its applicability, gate names, required fields/evidence, criteria, predecessor/handoff routes, N/A rules, accountable roles, signer capabilities, synchronization behavior, and rework loop. Confirm customer-specific requirements and applicable standards separately. Preserve the source `HW_01`–`HW_37` identifiers and map FW gates only after the firmware owner defines them.

Implementation acceptance must demonstrate versioned project-pinned profiles, department/project access enforcement, required evidence and source revision checks, blocked incomplete transitions, authorized sign-off, audit history, rework/reopen, explicit N/A rationale, change-impact handling, and cross-platform consistency. Demo or browser-local fixtures cannot satisfy operational release evidence.
