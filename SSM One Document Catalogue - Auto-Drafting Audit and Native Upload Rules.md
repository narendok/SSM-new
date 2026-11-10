<a id="source-31"></a>
<a id="source-31-ssm-one-document-catalogue--auto-drafting-audit-and-native-upload-rules"></a>
# SSM One Document Catalogue — Auto-Drafting, Audit, and Native Upload Rules

Refined: 10 November 2026. **Canonical plan for role documents, lifecycle deliverables, auto-drafting, native uploads and the audit Docs Vault.**

## Consolidated generation and role Docs Vault plan

This section owns current generation requirements. The [master plan](SSM_ONE_MASTER_PLAN.md) owns organization, permissions and lifecycle policy; the [multi-track roadmap](Electronics%20Multi-Track%20Lifecycle%20and%20APQP%20Roadmap.md) owns stage/dependency definitions. The existing D01–D38 families below retain their stable IDs. Add versioned document profiles within those families for distinct formats, roles and deliverables; do not create duplicate plans or one mandatory file per family. This is a planning update; source files do not establish deployed template support.

### Source reconciliation and priority

| Supplied reference | Use in this plan |
|---|---|
| [Role and stage drafting specification](References/SCMS%20Role-Based%20%26%20Stage-Wise%20Auto-Drafting%20Master%20Specification.docx) | Role/document coverage, generation pipeline, variables and audit dossier candidates |
| [Header and footer template](References/Autodrafted%20template%20for%20header%20footer.docx) | Visual source for issuer branding, document metadata, page numbering and approval slots; replace its environmental-procedure body |
| [Customer drafting pack](References/SCMS_Customer_Data_Drafting_Pack.md) and [template bindings](References/SCMS_Customer_Data_Drafting_Templates.json) | Ten intake-based draft profiles, field provenance, unknown states and limits |
| [Expanded customer intake](References/SCMS_Expanded_Customer_Intake.xlsx) and [intake handoff](References/SCMS_Portal_Intake_Handoff.md) | Stable questions/parameters, units, conditional branches, role routing, clarification and baseline acceptance |
| [Company audit checklist](References/Smart%20Company%20document%20management%20system%20audit%20checklist%20.xlsx) | Coverage checklist for Design Development Support, HW, Production & Assembly, OEM audit and AIS140 sheets; individual applicability requires review |

Reconcile references against the latest user decisions and configured lifecycle. The specification's 25 role labels are candidate functions, not 25 departments or a fixed role count. Keep the initial configurable 12-department registry. CFT/PM maps to Operations; DOC_CTRL is a configured document-controller capability, not a required new department. SW_BE/SW_FE/SW_APP are SW role profiles; STR/DSP are Procurement/store/dispatch responsibilities unless explicitly configured otherwise; TST is a testing function shared by QA/execution owners. RND, FAC and LEG map to explicitly configured department scopes. MMF retains the confirmed enclosure/3D stages. One person can hold several authorized department/role assignments.

Do not import source sample addresses, company names, dates, prices, revenue/KPI targets, engineering limits, schedules, signatures or certification banners as facts. Store approved values in versioned company/department settings. In-house SMT/THT remains outside the agreed production scope unless separately adopted; retain supplier evidence and outsourced-PCBA acceptance where applicable. NDA requiredness remains customer/program-configured. Standards, sampling methods, severity, certification and audit clauses require confirmed applicability. This plan inventories possible document coverage without certifying legal or standards completeness.

Source stage bindings need a reviewed crosswalk to stable configured IDs: for example the specification places DFMEA at HW_13 in one section and HW_11 in another, and DVP planning at HW_14 versus HW_12. Legacy G0_00/OTS/ESW aliases must not create or rename stages automatically. Unresolved bindings stay marked for mapping before activation. The referenced `SCMS_Expanded_Intake.json` is absent from this folder; use the supplied workbook for review and require a validated question-bank export and explicit mapping to existing portal keys before importing the template JSON. Its old Dropbox/template filename is provenance; the supplied header/footer DOCX is the local reference.

### Settings and coverage contract

Maintain one versioned profile registry keyed by stable profile ID and family ID. Each profile defines title/subtype, owning department and role capability, business context, project track/variant applicability, phase/stage IDs or operational trigger, required/optional rule, prerequisite evidence, source-field bindings, calculations/units, editable fields, output format, template/branding version, review/approval/release route, confidentiality and retention. Keep source aliases and a reviewed mapping status. Every applicable stage must resolve its required deliverables or an authorized recorded not-applicable decision; an unconfigured profile is a visible gap.

Admin configures shared company identity, numbering, department registry and authority limits. Authorized leads maintain their own profile content, stage/default-task bindings, fields and permitted preparer/reviewer assignments. Cross-department changes and approval authority follow configured governance; a lead cannot broaden their own access or bypass independent review. Stage RACI and document review/release roles are linked but distinct. Resolve current assignees through department/role membership, including multiple departments per lead, and retain historical actors and pinned configuration on existing work.

### Role and document coverage

| Configured role/function | Drafts, registers and deliverables | Existing families / required inputs |
|---|---|---|
| Every lead and member | Scoped SOP/WI, responsibility matrix, task/checklist, review minutes, KPI/risk inputs and controlled blank forms | D01, D25, D30, D32, D38; actual assigned work and approved procedures |
| Executive, Operations/CFT/PM and document controller | Quality/manual/policy drafts, charter, eight-tab PMSS summaries, controlled-document/format indexes, gate decision records, management review, risks, improvement and closeout | D01, D08, D25, D30–D33, D38; approved company data and recorded decisions |
| Sales and authorized client | Enquiry summary, customer requirements/SOR, clarification list, scope, feasibility inputs, quotation inputs/offer, NDA draft, order/customer register and requested acceptance | D02–D08; client sees only explicitly shared project/revision; commercial issuance needs approved terms |
| EHW and assigned R&D | PRS, SAR/block/HSI metadata, KPA, BOM, DFMEA, schematic/layout checklist, PoC/DVP plan and report, ECO/ECN and release index | D08–D16; reviewed design/parts data and actual evidence; native design originals uploaded |
| Firmware | Development plan, SWRS/SRS, architecture/design, HSI, code/static-analysis review, smoke/integration plan/report, configuration/release recipe, maintenance/change | D08–D10, D13–D16; source/build/test versions and verified tool outputs |
| SW backend/frontend/mobile | PRD/SRS, functional/design/API/data/telemetry contracts, UI review, software FMEA, security/performance/compatibility tests, release/deployment and incident summaries | D08–D10, D12–D15, D36; actual contracts, source/build, reviews and test/deployment evidence |
| MECH and MMF | Assigned enclosure/CAD review, tolerance/clearance, mechanical risk, tooling/custody/maintenance, FAI, torque/assembly WI, leak/dimensional plan/report | D09–D10, D12–D14, D17, D20–D24, D34; exact CAD/tool/part revisions and measurements |
| Procurement, stores and dispatch | PR, RFQ/quote comparison, PO, supplier qualification/ASL/scorecard, supplier PPAP, GRN/inspection index, FIFO/kitting, packing/challan/serial manifest | D18–D19, D11, D23 and D01 operational subprofiles; approved suppliers, actual transactions/serials and Finance terms |
| EMF assembly/production | PFD, PFMEA, control plan, station/startup WI, build traveler, traceability, process checks, capacity/5S/yield/scrap, maintenance | D20–D24, D34; applicable released configuration and accepted outsourced PCBA; no invented MES/instrument feeds |
| QA and authorized test/release functions | APQP checklist, DVP plan/report, IQC/IPQC/EOL/FQC/PDI, MSA/calibration indexes, NCR/SCAR/8D/CAPA, PPAP/PSW dossier, certification and audit readiness | D12–D13, D19–D25, D31–D33; evidence-bound disposition; external certificates remain originals |
| Finance | Expense/reimbursement and budget reviews, estimate/costing inputs, invoice/receivable/payable registers, reconciliation, financial closing/MIS | D06, D11, D26, D38; authorized financial data, approved terms and actual settlements |
| HR, Operations and authorized legal function | Competency/skills/TNI/training, onboarding/BGV, controlled letters/contracts, manpower/capacity, policy acknowledgements, grievance and legal/license indexes | D01, D07, D27–D29, D31–D32; personal/confidential scopes and approved templates |
| Service, IT, facilities and EHS | Ticket/visit/RMA/service report, complaint/repair/return, recurring-issue review and improvement proposal, backup/access/security/DR drill reports, equipment/utilities and waste/service records | D25, D30–D38, D01; actual tickets/readings/logs; policy/incident summaries exclude credentials and protected personal data |

These functions are extensible. Adding a department/role requires reviewing its applicable profiles, requiredness, sources and permissions in Settings. Procurement transactions and related operational subprofiles remain linked software records with printable renditions; adding a draft never posts stock, commits spend or dispatches goods.

### Lifecycle coverage from TG-0 through TG-9

| Fixed phase | Applicable drafting coverage | Required source and completion boundary |
|---|---|---|
| TG-0 Kickoff, Technical Feasibility & System Sizing | Enquiry/customer requirements, clarifications, feasibility packets, scope/quotation input, charter/risk/PMSS as authorized | Enquiry can exist without project; dispatch creates Opportunity and feasibility work. Only accepted feasibility permits project start |
| TG-1 Concept, Architecture & Interface Freeze | PRS/SRS, architecture/HSI/API/interface drafts, quality/development plans, preliminary BOM and verification plan | Accepted requirement baseline and reviewed design choices; interface freeze needs actual sign-off |
| TG-2 Proof of Concept & Subsystem Bring-Up | PoC plan/report, research/bring-up log, fit/gap, prototype risk and gate review | Plans use targets; report results require actual samples, revisions and evidence |
| TG-3 Detailed Engineering & Prototype Tooling | Detailed design review, KPA/DFMEA, BOM, native design package covers, tooling/fabrication procurement and firmware/software reviews | Exact engineering revisions, parts, supplier inputs and configured approvals |
| TG-4 Prototype Integration & Alpha Validation | Prototype build/configuration, integration checks, HSI/contract validation, alpha report, issue/CAPA | Actual as-built HW/FW/SW/mechanical identity and observed outcomes |
| TG-5 Design Verification & Environmental Stress | DVP execution/report, environmental/security/performance evidence, risk/change/retest summaries | Measurements and genuine lab/tool reports; missing execution remains pending |
| TG-6 Field Validation, Homologation & Pilot Sign-Off | Field/service trials, homologation dossier/index, external certification evidence and pilot decision | Product/market applicability, actual reports/certificates and authorized decision |
| TG-7 Pre-Production Pilot & Controlled Launch | PFD/PFMEA/control plan, WI/startup, training/readiness, pilot traveler/capacity and supplier readiness | Released inputs, trained assignees, actual process validation and approvals |
| TG-8 Industrialization, PPAP & Ramp-Up | Applicable PPAP/PSW, MSA/calibration, FAI/IQC/IPQC/EOL/FQC, yield/capacity and production handoff | Actual manufacturing/inspection records and customer-specific submission requirements |
| TG-9 Handover, Audit Compliance & Project Closure | PDI/dispatch index, as-built/warranty/manual/service package, final audit, lessons learned and closure | Approved released content, genuine shipment/acceptance records and closure decision |

This table describes coverage, not permission to draft every output immediately. Each profile uses the project's configured stage and dependencies; documents may span phases or reopen through controlled change. Ready-made deployment and reduced tracks use applicable configured stages, not a second phase register. Recurring audit, HR, Finance, Service and IT work runs through operational triggers independently of project phases.

### Customer data profiles and progressive drafting

| Supplied profile ID | Family mapping | Allowed draft |
|---|---|---|
| INTAKE_SUMMARY | D03 | Enquiry summary |
| CRS | D04, D08 | Normalized customer requirements |
| CLARIFICATIONS | D04 | Missing/conflicting requirement questions |
| SCOPE | D04, D05 | Requested scope and acceptance conditions |
| FEASIBILITY_INPUT | D05 | Department review input packets |
| QUOTATION_INPUT | D06 | Scope/estimate input; costs and commitments require Finance/Sales evidence |
| PRS | D08 | Requirements draft awaiting technical/baseline review |
| FUNCTIONAL_REQ | D08, D09 | Functional/application/SRS draft |
| TARGET_SPEC | D08 | Customer target specification, distinct from released datasheet |
| DVP_PLAN | D13 | Planned verification rows; actual results remain empty |

Reuse authorized customer/profile data and SOR candidates; ask only applicable missing/conflicting questions. Keep stable question/parameter IDs, original text, clause/page, value, unit, comparator, conditions, variant, source revision and answer state. Zero/false, unknown, not applicable and intentional blank are distinct. Reviewed normalization never silently overwrites original values. Intake supports save/resume, clarification and versioned customer/engineering acceptance. Architecture, final pin maps, stress conclusions, FMEA assessments, actual tests, change decisions, PPAP and released claims require later-stage sources.

### One contextual creation flow and generation pipeline

1. From a role workspace, task, stage or Docs Vault, open one compact dialog. Prefill project/enquiry, applicable stage, role, profile, owner and available verified fields. Common/operational documents can have no project. Show Draft, Upload original and Reuse where supported; explain missing inputs inline.
2. Resolve bindings using authorized source records and exact revisions. Show the parameters used, their provenance and gaps. AI can suggest editable wording from this context; use validated calculations for numbers and retain deterministic source links. Uploaded files retain original bytes, type, size, checksum and immutable revision metadata.
3. Preview the document with the configured issuer, role/department, title, numbering, revision, classification and page fields. Allocate controlled numbers on save with retry protection. Use A4 portrait DOCX/PDF for narrative reports and genuine XLSX plus A4 landscape PDF for matrices/registers where the profile supports them. Unsupported rendition formats show an explicit capability gap.
4. Save one draft/record and link it immediately to its role vault, project/stage/task and central index. Save/upload retries must not create duplicate records or lose manual edits. File/metadata failures retain a recoverable draft and visible retry status.
5. Submit the exact revision through configured preparation, review, approval and release. Approval metadata comes only from actual receipts; signature images and content hashes do not establish signing authority. External certificates/legal documents retain actual issuer and validity; generate only permitted cover/index or company declaration drafts from evidence.

### Role Docs Vault and audit readiness

The role's **Docs Vault** is a filtered view of canonical controlled documents, with the same four contexts: Common & Standards, Internal Projects, Client Projects, and Department Operations & References. Show owned templates, prepared drafts, assigned reviews, current released revisions, linked evidence and review/expiry status. One person with multiple roles can switch or combine authorized role scopes; one document can be linked into several views without copies. Central document control indexes the same IDs and revisions.

Audit dossiers map each applicable checklist item/clause to its owner, required profile, source record, exact file/revision, review status and validity. Distinguish Missing, Draft, In review, Approved/released, Expired, Superseded and Not applicable with rationale. A blank template is not completed evidence. Audit indexes link project evidence in place; approved bundles capture a manifest of exact revisions and hashes. Share only explicitly authorized content, with HR/Finance/client/security details filtered at list, preview, export and download.

Use the audit workbook as source coverage, including engineering, production, company/factory, software/version/access/backup records, team/competency, equipment/calibration and applicable certifications/licenses. The supplied specification's claimed item counts and numbering must be checked against workbook rows before importing; its overlapping AIS140 ranges are not authoritative item IDs. Store the checklist edition/customer/program and applicability decision. A readiness percentage is document coverage, never a claim that the company passed an audit.

### Company updates and automatic refresh

| Company/source update | Automatic response | Controlled decision |
|---|---|---|
| Company identity, logo, location, numbering or branding | Refresh current settings/index; identify dependent editable drafts | Preview section changes; keep issued documents on their original branding/number |
| Lead/member, role capability or RACI change | Refresh permitted views and future routing; flag pending assignments | Authorized transfer/review of pending work; keep original preparation/signatures attributable |
| Requirements, BOM, design, test or linked evidence revision | Detect affected draft sections and consumers; mark stale sources | Diff and merge with manual edits preserved; new document revision for approved/released output |
| Policy/SOP/template/standard or audit checklist update | Create review work, affected-profile list and acknowledgement tasks as configured | Review, approve, publish and set effectivity; preserve previous versions and prior acknowledgements |
| New inspection, ticket, CAPA, training, stock or Finance event | Update authorized live registers/index; propose related report sections | Actual dispositions, stock/spend and business decisions use their own workflows |
| Scheduled review, expiry or missing source | Deduplicated reminders and draft review task to configured owner/alternate | Owner verifies actual renewal/review; no invented date, certificate or completed check |

Configure event/recurrence rules, source versions, assignees, time zone, quiet hours and escalation. Queue processing uses idempotent event keys, visible errors/retries and permission checks. Editable documents receive proposed diffs; published documents remain immutable and obtain a superseding revision through review. Audit exports are dated snapshots while live indexes can refresh. Record who changed what and which profiles/projects/roles were affected.

### Delivery and acceptance

Deliver through the existing web plan: (1) reconcile profile/family/role/stage/question mappings and source conflicts; (2) save versioned Settings with lead/member permissions; (3) complete customer profiles plus shared header/footer and contextual draft/upload/reuse; (4) extend the same engine across all applicable stages and operational roles; (5) connect role vaults, audit coverage and controlled update events; (6) verify shared TEST persistence and then Android parity. The Android client consumes the same profiles and authorization; it does not create an independent template catalogue.

Acceptance uses fictional records: exercise all ten phases and applicable track variants; every configured role/department and a lead with multiple departments; each supported output format; common and project contexts; source provenance, units, missing/conflicting answers and manual-edit preservation; exact review/alternate approval; upload/download checksum; save/reload and replay; denied cross-department/client/HR/Finance access; company/lead/template/source updates; expired evidence, superseding revisions and audit manifests. Maintain a profile-by-role/stage coverage list with Supported, Planned, Needs source mapping and Not applicable status. Coverage must include every active required stage/profile before declaring completion. Local tests, generated templates and planned profiles do not prove live deployment or audit acceptance.

---

The original 89 annexure item/note blocks are organized into **38 document/record families** with **90 family-to-source links** because source block B0545 maps to two families; D02 and D04 are clarification-only. A family is a logical group, not one mandatory file. These are coverage counts, not mandatory file counts. Unique subtypes and confidential scopes stay separate; no source requirement is discarded.

Use [the web implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md) for web delivery order. The full source-block mapping is in [the catalogue JSON](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.json). The original source inventory is not included in this planning library.

<a id="source-31-confirmed-master-plan-alignment--1819-october-2026"></a>
#### Confirmed master-plan alignment — 18–19 October 2026

This section aligns the existing 38-family reference with the confirmed master-plan decisions. It does not create 38 mandatory files, certify implementation, or add another delivery roadmap. The original 89-block coverage and stable family IDs are unchanged. New UI/workflow capabilities are mapped as overlays; not every feature becomes a DOCX template. Document families attach to lifecycle stages through the master plan's versioned responsibility matrix; this catalogue does not define or replace the stage model. Reusable-asset master, project configuration/reuse assessment, component/project certification evidence, and as-built genealogy are structured subrecords within existing families (D08, D10, D11, D13, D14, D23 and D31), not new family IDs or additional mandatory files. JSON records the same mapping under confirmed_master_plan_alignment and each affected family.

| Confirmed addition | Existing family IDs | Clarification |
|---|---|---|
| Template ownership and approval | D01 | Web-only scoped lead template editing; members fill/verify instances; authenticated Prepared by; lead review/return; configured CPO hardware/product, CTO software and CEO business/money routing; exact revision and separate release. |
| Customer onboarding and requirement intake | D02 D03 D04 D05 D08 | Pending customer registration with Sales/Finance reviews; separate progressive technical intake, assigned feasibility/conflicts and exact baseline acceptance. Customer form submission is not automatic activation or project start. |
| Research, visit testing and MOM | D13 D25 | Assigned R&D/Service mobile observations/readings/evidence generate reviewable report drafts. Service/complaint context remains distinct; not every visit is a nonconformance or DVP. Client-visible MOM is separately accepted/published with a notification; copy email subject/body only, manual sending. |
| People policies, forms and monthly reviews | D01 D27 D28 D29 | Web policy/template administration; mobile applicable policy reads, assigned forms, training and monthly self-review/feedback; leave/calendar, attendance/travel rules and reviewer scope remain contract-dependent. HR case privacy stays separate. |
| Timing matrix and reminders | D01 D27 D32 | Versioned configurable recurrence/event triggers, current assignees/reviewers, quiet hours, dedup and completion cancellation. Suggested defaults are organizational proposals, not IATF-mandated intervals. |
| Newsletter draft and common summaries | D38 D01 | Reviewable period summary rendition from permitted verified milestones, source pins and manual-edit preservation. No automatic external sending or invented achievements; no separate authority or mandatory document per project. |
| Client view, verification and feedback | D04 D13 D23 D25 D26 D38 | Published client project/order/service projection, company/individual isolation, required inputs, immediate eligible milestone feedback and independent support tickets. Scan/manual reference verifies permitted recorded device/document status, not physical authenticity. Keep internal costs/private remarks excluded. |
| Department and project Process Flow | D01 D21 D32 | Main lifecycle overview and lead Process Flow menu. Diagram configuration editing reuses the same protected settings contract; draft/validate/review/activate, history and gate checks. Production PFD is a distinct technical subtype, not the portal workflow editor. |
| Web/Android handoff | D01 | Separate web/backend master and Android build plan; explicit planned contract packet with caller scope, payloads, replay/version pins, receipts/readback and device acceptance. No mobile business backend or inferred installation. |

**Template decision:** authorized department leads maintain controlled web templates/header/footer and revisions; assigned members verify auto-filled source data and complete permitted fields. Preparation, lead review/return, applicable management approval and release remain separate exact-revision receipts. A signature image is not approval. Shared templates require explicit ownership; lead status does not itself grant template or executive-route authority.

**Drive placement:** each department can receive a task or document record through explicit assignment. Place the record by its business context, not by the assignee alone. Use the same four top-level groups in each department workspace:

1. **Common & Standards** — approved company/department standards, policies, SOPs, controlled blank templates, and the cross-department audit/QMS index and evidence records. It is the shared standards and audit area; use a configured standards owner rather than assuming a new “Standards” department exists. Organize records by owning department and audit scope. Keep one canonical record and link to it from reviews; do not make uncontrolled duplicate copies.
2. **Internal Projects** — internal company initiatives and project work, including their assigned tasks, decisions, and project-specific records.
3. **Client Projects** — external/customer project records, with the client and project access boundary applied.
4. **Department Operations & References** — non-project operational records and miscellaneous/reference material, including team knowledge base, approved reference links, recurring reviews, tickets, registers, and operational handoffs.

Project-specific evidence remains with its internal or client project, even when it is later reviewed for audit. The audit index in Common & Standards links to that canonical evidence, while common company/department standards and non-project audit records remain in the common area. Reuse one controlled template revision across instances. A policy, blank form, submitted response and completed review are different records, even within one family. Folder labels and task assignment do not grant access; ownership, explicit authorization, classification and confidentiality rules remain authoritative.

**Selected scope exclusions:** Google Drive/Docs/Sheets API/provider integration remains outside the selected implementation decision. No automatic email sending or mailbox-draft integration; MOM subject/content is copied for manual sending. No automatic publication, test pass, client acceptance, spend decision or project start. New client layout approval is a design baseline only. The supplied reference templates are listed above; runtime template import and generation remain subject to verified mappings and implementation.

**Verification boundary:** this catalogue describes target behavior. Existing record APIs, template editors, private file persistence, source-calculation authority, ordinary employee/client/lead permissions, reminders, report generation and device flows require their own accepted contracts/evidence. The [web implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md) governs web sequencing; the separate Android build plan and planned handoff govern mobile implementation.

**Generation boundary and editing experience:** portal templates may prefill structured drafts, indexes and reports from authorized, source-linked project records. Users edit structured portal entries and can preview the populated template and download a DOCX or PDF rendition where listed; a full rich-text/in-app DOCX editor is not required. The downloaded file is a rendition, not a released source of truth; changes that need to be authoritative return through controlled revision and review. The tentative BOM is created in the portal from the controlled parts/inventory catalogue; it does not reserve or move stock. Native schematics, PCB/Gerber packages, firmware/software source and build artifacts, mechanical STEP/CAD/drawing files, actual lab/test reports and certificates are authored or issued by their specialist tools/providers and uploaded or linked as controlled files. The portal can generate their metadata index/cover/checklist, not the files themselves. This catalogue is the sole document-family, format, and generation-boundary reference; web and Android delivery steps remain in their existing platform plans.

<a id="source-31-current-usable-flow--prioritize-these-independently"></a>
#### Current usable flow — prioritize these independently

| Family | Needed behavior | Format |
|---|---|---|
| Customer Register | Customer master and contacts refresh one Sales workbook | Existing records → genuine synced XLSX |
| Enquiries & Opportunities | One linked queue, owner, next action and review status | Software records |
| Master Specification / SOR | Customer inputs captured once with immutable source/revision | Versioned fields + downloadable DOCX/PDF rendition |
| Feasibility / contract review | Selected department/person reviews, evidence, conditions and notifications | Review records + DOCX rendition |
| Confirmed PRS / project start | Approved pinned baseline and explicit authorized project creation | Baseline record + DOCX |

NDA is required only when the configured customer/program calls for it. Quotation, sourcing, development, testing and production documents follow their applicable stage. Missing private DOCX/XLSX contracts block those saves; they do not make the entire catalogue a prerequisite for unrelated working features.

<a id="source-31-common-pack-and-the-four-document-groups"></a>
#### Common pack and the four document groups

Each of the **12 departments in the initial registry** maintains its applicable SOPs, authority/roles matrix, KPI definitions and blank templates/work instructions under Common & Standards. Reuse controlled revisions; do not generate a new common pack for every project. The registry remains extensible as the organization changes. Engineering disciplines remain workstreams. The shared common area also supports department-wide audit/QMS indexing and evidence, organized by department and audit scope.

- **Common & Standards:** approved company/department standards, policies, templates and definitions, plus shared audit/QMS indexes and non-project audit evidence. Keep one canonical record; cross-link project evidence rather than copying it here.
- **Internal Projects / Client Projects:** actual applicable internal or customer project records/files, linked to the same source and revision. Explicitly assigned department tasks and records remain in the relevant project context.
- **Department Operations & References:** customer/supplier/personnel registers, recurring reviews, tickets, non-project operational work, and the approved references/knowledge base.

Periodic reviews are record types, not another top-level folder. PPAP is a conditional type; Starred is a shortcut. Existing protected folder mapping is preserved until a reviewed change; this catalogue defines target placement and does not itself move files.

<a id="source-31-department-catalogue"></a>
#### Department catalogue

All entries below are target/reference families. Actual readiness comes from saved records, file bytes and accepted contracts. Review frequency, owner assignments and requiredness are configured; source headings do not enforce them.

<a id="source-31-each-department"></a>
##### Each department

| Document / record family | Format | Use / applicability |
|---|---|---|
| Common operating pack: SOPs, authority matrix and work instructions | DOCX / approved references | Maintain one controlled pack per department/workstream; reuse its revision across projects. Includes engineering/SDLC/CI standards, FIFO and nonconformance procedures. |

<a id="source-31-sales"></a>
##### Sales

| Document / record family | Format | Use / applicability |
|---|---|---|
| Customer Register and contacts | Software records → synced XLSX | One managed Customer Register.xlsx from Customer master; refresh additions/changes, retain revisions. Not one file per customer and not external Excel import. |
| Enquiries & Opportunities register / pipeline reviews | Software records / review log | One linked queue and stage/owner/review tracking; pipeline review uses the same records rather than duplicate forms. |
| Master Specification / customer inputs / SOR | Versioned fields + DOCX | Capture known requirements once, preserve source/customer/revision, reuse in feasibility and project start. SOR is a rendition, not another source of truth. |
| Feasibility / contract review | Assigned review records + DOCX | Selected departments record scope, owner, due date, evidence, decision and conditions; one consolidated review links the contributions. |
| Quotation / commercial proposal | DOCX / commercial records | When an opportunity requires a commercial offer; scoped Finance input, explicit issuance and version history. |

<a id="source-31-hardware--rd"></a>
##### Hardware / R&D

The following reusable-asset records are overlays within the existing catalogue families, not additional template families or required standalone files:

| Document / record family | Format | Use / applicability |
|---|---|---|
| PRS / confirmed requirement baseline | Versioned baseline + DOCX | After required feasibility/confirmation, pin the exact approved requirements for explicit project start and engineering. |
| Architecture / block diagram / HSI | Design files / specification | Applicable engineering scope; architecture and HSI remain distinct linked subtypes and exact source revisions. |
| Reusable asset master and release package (D10 subtype) | Controlled asset record + native files/evidence | Maintain one master identity per reusable PCB/assembly, harness, FW/SW component, mechanical part/tool/fixture, or process module. Record owner, revision/status, interfaces, compatibility/limitations, source links/checksums, verification/qualification evidence and effectivity. Attach any component/asset certificate to its exact covered revision and scope, with issuer, standard/edition, tested sample/conditions, limitations, and validity. Native files remain authored in specialist tools and uploaded/linked. |
| Design and release file package (D10) | Externally authored native CAD / schematic / PCB / ZIP uploads or controlled links | Engineer-provided schematic, PCB/Gerber/fabrication, firmware/build, enclosure/STEP, drawing and tooling files. The portal links immutable file revisions/checksums and may generate a cover/index; it does not generate or edit source files. |
| Project configuration and reuse assessment (D08/D11/D14 linked subrecord) | Structured project record; DOCX/PDF summary only where useful | Pin exact asset revisions to a project/product variant; map requirements/interfaces; record fit/gap, adaptations/deviations, impact/risk, delta verification, component certificate links and their applicability, project-level certification/test requirements, evidence, decision/approval and any tailored/waived activity rationale. Reuse or component certification alone never proves finished-product compliance or waives a gate/certification. |
| As-built configuration and asset genealogy (D11/D23 linked subrecord) | Build/serial/lot records + evidence links | Record the released asset revisions and applicable component/firmware/software/harness/enclosure/tooling identities actually used by each build/serial/lot; link substitutions, production checks, nonconformance and change effectivity. |
| Engineering BOM / cost tracker | Portal-owned structured BOM + XLSX/CSV rendition | Create the tentative BOM by selecting parts from the controlled catalogue/inventory and entering project quantities/designators. Link each line to the reusable asset/configuration revision, item master, approved alternate, and supplier/lot controls as applicable. Procurement reviews the same pinned revision. Creating/exporting a tentative BOM does not reserve/move stock or create a purchase; the released baseline requires configured approval. |
| DFMEA | Structured ratings/actions + DOCX | When design risk analysis is applicable; ratings, actions and closure come from actual engineers/reviewers. |
| POC / design verification / DVP&R | Structured test plan/results + uploaded external report/evidence; DOCX/PDF rendition where useful | At applicable POC/validation stages; keep planned checks distinct from actual measured results and externally issued lab reports; link source/firmware/sample revisions. Never generate a test pass or certificate. |
| Design change / ECO / ECN review | Change register + evidence | On a change or failed review; preserve previous decisions and record impact/effectivity. Stage/ECO audits read this history. |
| Software quality / security / performance review | Review records | Only firmware/software/cloud scopes that need these reviews; frequency is configured, not imposed on every project. |
| DRC / component-library review | Review records | When hardware/library review is due or change-triggered; reference actual rules and evidence. |

**Inventory record boundary:** inventory balances and movements remain operational software records, not duplicate documents. Stock-controlled items include electronics components/accepted outsourced PCB assemblies, mechanical raw materials and purchased parts, configured WIP/subassemblies, consumables/MRO, and packaging. Physical production machinery, test equipment, fixtures, tooling, calibration instruments, and facility equipment use the fixed-asset register. Revisioned PCB/case/harness designs and similar reusable modules are engineering assets, not on-hand quantities; their BOMs link to exact stock item IDs and approved sourcing. The [Web Implementation Plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md) defines inventory/asset handling; receipts, inspections, issues, returns, adjustments, and maintenance keep their own authorized records and audit history.

<a id="source-31-procurement"></a>
##### Procurement

| Document / record family | Format | Use / applicability |
|---|---|---|
| Supplier qualification / ASL / ACML / performance and capacity | Supplier registers + review evidence | One supplier history with evaluation, on-site/system reviews, approved lists, scorecards/capacity/lead-time observations. No duplicate workbook per review title. |
| Supplier PPAP / submission warrant | Checklist + supplier evidence | Only applicable customer/product/supplier programs; a document-type/project category, never a fifth department Drive group. |

<a id="source-31-production"></a>
##### Production

Apply these families to the master plan's two manufacturing departments: **EMF** owns accepted outsourced PCBA receiving/traceability, line assembly/box-build, controlled firmware loading and production functional checks; **MMF** owns mechanical fabrication, finishing, subassembly and inspection. QA retains independent quality criteria and disposition. TST/EOL is not a separate current department; tests are assigned to the relevant process and authority. In-house bare-board fabrication and PCBA assembly remain out of scope.

| Document / record family | Format | Use / applicability |
|---|---|---|
| Tooling condition / custody / mold maintenance review | Asset/tool review records | Production maintains process tools; Engineering supplies design evidence; Facility handles custody where authorized. |
| Calibration / MSA / expiration review | Instrument register + evidence | Applicable instruments/gages/processes; Operations quality audit links the same authorized calibration evidence. |
| Line capacity / startup / process flow | Readiness records / PFD | When preparing an actual build/line; use recorded capacity and readiness, retain separate process-flow subtype. |
| PFMEA / control plan | Distinct structured templates / DOCX | Applicable manufacturing process; PFMEA and control plan retain their own fields/decisions and cross-references. |
| EOL / FQC / PDI | Measured unit records + uploaded evidence; DOCX/PDF rendition where useful | For actual build/dispatch units; serial, firmware, test/inspector evidence and explicit disposition, never generated passes. |
| 5S / OEE / yield / scrap / defects / KPI reviews | Operational registers + calculated views | When production observations/reviews exist; use defined formulas/time windows. Standards/templates are Common & Standards; completed non-project reviews are Department Operations & References, while project-specific evidence stays with its project and is linked from audit views. |
| Process-equipment PM / downtime / OEE | Maintenance and performance records | For applicable production equipment and actual maintenance/observations; Facility supports infrastructure separately. |

<a id="source-31-operations"></a>
##### Operations

| Document / record family | Format | Use / applicability |
|---|---|---|
| NCR / 8D / CAPA / lessons learned | Linked case and action records | When nonconformance or learning occurs; originating departments retain evidence and Operations coordinates the case. |
| Linked risk registers / project risk matrix | Scoped risk records | Combine repeated enterprise-risk titles into one index, with separate authorized strategic, financial, infrastructure/security and project scopes. No blanket shared confidential register. |
| Certification / statutory applicability and validity evidence (D31) | Applicability record + authentic external report/certificate | Keep component/asset certification attached to the exact PCB/assembly, enclosure/material, harness, or other covered revision; separately record project/finished-product certification for the exact combined configuration, customer, market, and applicable authority/lab scope. Link standards/editions, issuer, ID, test sample/configuration/conditions, limitations, validity and authentic source file. Component evidence may support, but never substitutes for, finished-product tests/approval. ISO/IATF/licenses/consents/NOC references are not automatically mandatory templates or claimed certificates. |
| APQP / internal audits / governance / management review | Assigned checklist/review records | Applicable program/governance reviews; one schedule/history links scope, customer feedback, risks and decisions across the current departments (12 in the initial registry). |
| DMAIC / improvement charter and tollgate evidence | Improvement project records | Only approved improvement work; real sign-offs/evidence, not a compulsory document for every client project. |
| Cross-department KPI definitions / dashboard | Definitions + authorized aggregate views | Reuse measured records and the reviewed formula from each department, not a second manually copied enterprise tracker. |

<a id="source-31-operations--legal"></a>
##### Operations / Legal

| Document / record family | Format | Use / applicability |
|---|---|---|
| NDA and confidential agreement | DOCX + actual agreement evidence | Only when required by the customer/program. Template belongs to Legal/Common; executed agreement is scoped to its case/project. Sales initiates/links, without Legal access. |

<a id="source-31-finance"></a>
##### Finance

| Document / record family | Format | Use / applicability |
|---|---|---|
| Receivables / MIS / financial KPI / closing / billing | Financial records + XLSX/DOCX renditions | Use Finance-owned records; Sales sees permitted commercial context. Tax invoice is a separate authorized rendition. IT tickets from the combined source note stay outside Finance records. |

<a id="source-31-hr"></a>
##### HR

| Document / record family | Format | Use / applicability |
|---|---|---|
| Skill matrix / TNI / training / manpower and workforce reviews | Restricted HR records + matrix rendition | Recorded competence/training/assignment; corporate scope unless project-linked work is needed. License governance is linked to Operations, not another HR workbook. |
| Onboarding / BGV | Restricted policy and case records | When an authorized onboarding/verification case exists; policy is Common, personnel evidence remains restricted. |
| Grievance / employee query | Restricted case register | Only actual authorized employee cases; not a generally shared project document. |

<a id="source-31-facility--maintenance"></a>
##### Facility / Maintenance

| Document / record family | Format | Use / applicability |
|---|---|---|
| Utilities / DG / electricity and water | Facility records + evidence | Actual utilities/assets/consumption/maintenance, with scoped Finance payment review; unknown source shorthand requires field configuration. |
| IT backup / security review / project IT tickets | Authorized IT records | Infrastructure work only; privileged configuration remains administrator-controlled. Split project IT tickets from financial billing in the source note. |
| Facility/security service / waste disposal / pest control | Contracts, service and disposal evidence | Applicable services/assets/schedules; actual agreements/qualified disposal evidence and private commercial terms. Short reminders are work tasks, not templates. |

<a id="source-31-avoid-duplicate-documents-and-unnecessary-work"></a>
#### Avoid duplicate documents and unnecessary work

Software registers, reviews, tasks, notifications, PR/RFQ/PO/GRN, work orders, releases and change cases remain authoritative software records. Create a file only for a useful controlled output or export. A reminder, dashboard, source note or certification reference is not automatically a new DOCX template.

Merged families preserve their meaningful subtypes: PRS and HSI; schematic/PCB/mechanical files; DFMEA and PFMEA; control plan and PDI; individual review contributions and the consolidated decision. Grouping never merges private Finance/IT/HR/Legal contents or overwrites revisions.

Legacy HLPL/SSM codes are source aliases, not instructions to renumber records. Official IDs come from the server. Certification/standards/license references stay conditional and unverified until real applicable evidence exists.

The web master plan already defines pilot sourcing, release/production/dispatch, change loops, audit and backend handoff. This catalogue does not repeat delivery packs or create another approval checklist. Current verification status belongs in the platform plans; technical contracts remain separate. Android builds are governed by their own plan.

Source coverage checked: **89 of 89 unique annexure blocks mapped across 90 family-source links**. D02 and D04 reflect later clarifications and are not additional mandatory files. The source-block IDs and family mapping are retained in the JSON; the separate original source inventory is not included in this library. No live records, grants, policies, templates or application storage paths changed by this planning update.


## Lifecycle integration — 8 November 2026

This catalogue is the single owner for the 38 controlled-document families and their source mappings. The [SSM One master plan](SSM_ONE_MASTER_PLAN.md) owns shared lifecycle and approval rules; the web and Android plans own platform implementation. Fixed TG-0–TG-9 phases and configurable department stages/tasks link to these existing families and exact revisions; a deliverable label does not create a new family or imply approval/release.

The latest recorded shared TEST settings checkpoint contains 110 stages and 478 default tasks, including 82 workbook source stages and 28 supporting stages. The 82 evidence bindings reuse the existing catalogue families. Full TG-0–TG-9 business acceptance and Android/hosted-preview parity remain open; refer to the master plan and dated evidence rather than older checkpoint counts.
