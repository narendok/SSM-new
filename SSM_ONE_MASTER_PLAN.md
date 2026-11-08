# SSM One Cross-Platform Master Plan

**Updated:** 8 November 2026
**Status:** Single authority for shared SSM One product requirements. Web and Android subplans implement this plan; they do not redefine shared lifecycle, organization, data or approval rules.

## Document map — one owner per topic

| Topic | Owner document |
|---|---|
| Shared product, project/people management, departments, lifecycle, RACI, procedures, automation, permissions and acceptance | This master plan |
| Web routes, forms, settings UI, implementation order and web verification | [Web implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md) |
| Android implementation and mobile verification | [Android build plan](https://github.com/narendok/SSM-new-app/blob/main/docs/planning/SSM_ONE_ANDROID_BUILD_PLAN.md) |
| Document families, drafting, originals, revisions and release boundaries | [Document catalogue](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.md); its [JSON mapping](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.json) is companion data, not a separate plan |
| Electronics phase/stage/task crosswalk and APQP source mapping | [Electronics Multi-Track Lifecycle and APQP Roadmap](Electronics%20Multi-Track%20Lifecycle%20and%20APQP%20Roadmap.md) |
| Fictional portfolio, fixtures, reset and test scenarios | [Sample Data and Test Plan](Feature%20Roadmap/Sample%20Data%20and%20Test%20Plan.md) |

These are the six active plans: four shared planning documents above, plus the web and Android subplans. The catalogue JSON is companion data, not a seventh plan. A feature has one authoritative home; the platform plans link back here and contain only their own implementation and verification. Backend contract snapshots, test evidence and historical archives are references, not competing plans. Old combined implementation bundles and superseded copies are not active plans.

## Supporting references — not additional plans

- [Backend Contracts](Backend%20Contracts.md): technical interface snapshots; verify against the current backend before use.
- [Historical Evidence](References/Historical%20Evidence.md): source provenance and superseded records only.
- `Implementation Plan.md` and `SSM_ONE_PLANNING_ARCHIVE_2026-10-28.md`: historical workspace-migration and source bundles; not active product plans.

## 1. Product and data authority

SSM One manages company people, projects, departmental procedures, tasks, controlled records and documents through one connected portal with an Android companion. Authenticated web/backend services are authoritative for identity, membership, settings, permissions, numbering, operational records, approvals, audit history and private files. Android reads and writes the same authorized records through verified contracts; it is not a second source of truth.

Use stable IDs and explicit links between enquiry, opportunity, project, phase, stage, task, record, document revision, asset and inventory item. Settings and templates are versioned. A project pins the accepted lifecycle, department and RACI versions. Changes apply to new work by default; existing projects change only through a reviewed, auditable update. Never silently rewrite signed, completed or historical records.

## 2. Organization, roles and people management

The initial department registry is SAL, EHW, FW, SW, MECH, PUR, QA, EMF, MMF, FIN, SIT and HR/OPS. It is configurable, not a permanent company limit. CFT and PM belong to Operations. MECH owns mechanical design; MMF owns mechanical manufacturing and the confirmed enclosure/3D manufacturing stages. EMF owns electronics manufacturing. Service and IT may share a configured workspace while retaining distinct work registers and permissions.

Manage employees through authenticated people records linked to their actual role, department membership, manager, project/team assignments, skills or competency, training and onboarding status. HR/OPS owns confidential people records and applicable company policies. A department merge changes workspace grouping and routing only; it does not merge business records or grant access. RACI assignments never grant data access. Department, role and team changes require server-side authorization, audit history and explicit handling of pending work.

Employee self-service includes the person's permitted profile details, assigned work, training/policy acknowledgements, forms, requests, assigned assets and released personal letters. Web manages authorized templates and campaigns; Android provides the same person's everyday view and actions against shared IDs. HR letters are generated from approved templates and verified employee fields, reviewed before issue, and retained as versioned records. Policies, training and recurring forms bind completion to the exact published version. Survey anonymity, audience and response visibility must be explicit. Chat, discussion, poll, tags and search help find or coordinate work but never grant access to linked records. A role title or Admin overview does not automatically allow task reassignment or self-approval; capabilities and alternate approvers come from authorized settings.

Each department has its own settings, procedures, supported registers, task templates and access scope. Shared teams can participate in a project where the configured responsibility matrix says they apply. No department inherits access simply because another department was merged into the same workspace.

## 3. Project lifecycle and work automation

Use **Project → Phase → Stage → Task**. The company overview has fixed phases TG-0 through TG-9, named from the reconciled New Hexa source. A tollgate is the recorded decision at a phase boundary, not another work level. Within phases, authorized settings owners can edit applicable department stages, descriptions, dependencies, evidence/document links, RACI and default task templates. The settings screen filters stages by selected phase. Keep stable IDs and version history.

The current shared TEST checkpoint records 110 stages and 478 default tasks: all 82 workbook source stages plus 28 supporting stages. These figures describe the TEST configuration, not a production guarantee. The lifecycle roadmap owns detailed phase names and crosswalks.

Sales flow: capture an **Enquiry**; dispatching it creates/updates the **Opportunity** and starts configured multi-department **Feasibility** work. Departments provide scoped inputs and evidence. Only after the authorized feasibility decision is the engineering track selected and the **Project** created. Do not ask users to choose a track at enquiry intake or create a project before feasibility approval.

Supported engineering scopes are Hardware only, Firmware only, Software only, Hardware + Firmware, Firmware + Software on existing hardware, Hardware + Firmware + Software, and Ready-made deployment. Optional PoC/pilot intent is separate from the technical scope. Applicable QA, procurement, manufacturing, Finance, Service/IT and HR/OPS work can run in parallel when configured dependencies allow.

When a stage becomes eligible, create its configured default tasks for applicable departments exactly once, assigned from the pinned RACI/settings version. Show the planned work and why it applies. Task completion may prepare a stage for review; it never approves a stage or passes a tollgate. Only an authorized, attributable and audited decision advances gated work. Retries are idempotent; blocked or missing evidence stays visible.

## 4. Operational systems and procedures

- **Project and department work:** one project identity across overview, timeline, tasks, requirements, records, documents, decisions and reports. Department views show only authorized relevant work; project-wide views obey the same access checks.
- **Procurement and inventory:** keep purchase requests, suppliers, quotations, purchase orders, receiving, BOM and inventory as distinct workflows. Goods/services requests go to Procurement first. Stock changes only through authorized receipt/issue/transfer/adjustment transactions. A digital file or reusable design never changes stock quantity.
- **Finance and expenses:** direct request choices are Travel, Reimbursement and Purchase. Travel and reimbursement route to Finance; goods/services requests route to Procurement before any Finance review. Keep one Finance category field; do not duplicate it with a business-purpose field. Project/stage context may suggest a value, but the employee chooses or edits it. Do not invent company limits, tax rules or approval caps.
- **Budgets and settlements:** Finance configures periods, categories and controls. Department allocations and transfers are versioned, reasoned and approved by a separate authorized person. Requests, reservations, invoices, payments and reimbursements must not double-count spend. Employees attach actual receipts/evidence; Finance reviews and records settlement/payment references. No employee or lead approves their own personal request; route to an authorized alternate.
- **Services:** a shared, settings-managed company/service catalogue covers approved e-waste, cloud/IT, engineering software, lab/testing and other company services. Authorized department leads maintain their own services; Finance/Admin govern shared expense categories.
- **Quality:** QA owns applicable criteria, reviews, nonconformance/CAPA disposition and release authority. Certification applicability and evidence are project-specific; no simulated certificate or result is accepted as proof.
- **Service and IT:** distinct ticket types may appear in one configured workspace. Tickets can request scoped help from another department without exposing protected client/project/asset details or changing ticket status. Repeated matching tickets may be highlighted as candidates for human technical review; frequency alone does not diagnose a cause or create an approved product change.
- **People and Operations:** use authorized people/team records for capacity, competency, training, onboarding and relevant safety/compliance readiness. Keep confidential HR data restricted. CFT/PM work belongs to Operations.

## 5. Records, documents and reusable assets

The document catalogue is the single source for the 38 document families and their mappings. Generate editable drafts from verified project, stage, people and settings data; show provenance and leave unknown/conflicting values for authorized review. An auto-draft is not an approved document.

Minimize effort with one contextual record/document dialog: infer project, current phase and eligible stage; record type determines its fixed stage rule. Allow draft entry, original-file upload or authorized reuse in the same flow. Common documents can be created without a project; project deliverables require one. Keep originals immutable and drafts/revisions distinct. Upload, reuse, task completion or a generated template never implies approval, release, certification or customer acceptance.

PCB, harness, enclosure/3D, firmware and documents may be reused by linking an exact compatible source revision. Derivatives preserve source, project, stage, revision and consumer lineage; changing the source does not silently change existing projects. Physical inventory is tracked separately from digital design/document files.

## 6. Shared interface and settings

Keep the existing portal theme, responsive behavior and working controls. Prefer compact headings, one clear destination per workflow, searchable project/department selectors and on-demand descriptions. Overview is the entry point; Tasks, Projects, Team, Registers and Documents have clear destinations. Checklist, Kanban and Table are views of the same authorized tasks, not separate task stores. Completed tasks start collapsed; review/approval guards remain in force. Training lifecycle simulations belong under Help/Training, separate from operational status.

Settings are the source for department registry, phase/stage templates, default tasks, RACI, expense categories, services and applicable department procedures. An authorized settings change is versioned, permission-checked, impact-previewed and audited. Each client must read the same saved configuration; no duplicate hard-coded catalogs that drift from Settings.

## 7. Security, test data and rollout

RACI is separate from access and signer authority. Enforce organization membership, department/project scope, capability, record/file visibility and signer authority on the server. Use private storage and verified file metadata. Validate role denials and avoid exposing restricted HR, Finance, client or IT details through summaries and cross-department ticket requests.

Use a realistic but explicitly fictional, resettable shared TEST portfolio for demonstrations and acceptance. Keep TEST distinct from production and browser-local fixtures. Reset is an authorized web Admin control; shared TEST data should be read consistently by web and Android. A local fixture, URL role, screenshot, passing unit test or HTTP response does not prove hosted persistence or cross-platform parity.

## 8. Current evidence and remaining acceptance

The latest recorded shared TEST verification confirms phase-filtered settings, RACI table editing, the 110-stage/478-default-task configuration, a fictional enquiry-to-project phase-0 path, and a project record with a private original shown as Draft. On 8 November, local browser TEST showed scoped ticket help, a recurring-issue candidate and an editable linked follow-up draft.

Still open: full TG-0–TG-9 business acceptance; all configured role/RACI and negative-access cases; complete common/project document-family coverage; hosted Lovable and Android read/write parity; and final deployment acceptance. Do not describe these as complete until independently reproduced with saved-state readback and evidence. Production data, approvals, releases and stock must remain untouched during TEST verification.

## 9. Delivery and completion rule

Deliver in this order: (1) reconcile source, schema and settings; (2) verify department/people permissions and versioned RACI; (3) complete enquiry → feasibility → opportunity → project start; (4) verify phase/stage/default-task automation; (5) finish contextual record, drafting, upload and revision reuse; (6) complete department workflows for Procurement, Finance, QA, Service/IT and HR/OPS; (7) verify the shared TEST portfolio in web and Android; (8) report remaining gaps and deployment boundary.

For each feature, record the changed source, environment, role, saved record and reload/readback evidence. Run relevant web or Android checks after implementation. Close a feature only when positive and negative permissions, persistence, retries, linked records and user-visible behavior are verified. Never force-push, overwrite local work or claim parity from a plan or local test alone.
