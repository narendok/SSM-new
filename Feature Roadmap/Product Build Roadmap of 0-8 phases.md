# Product Build Roadmap

**Purpose:** Select and sequence features to rebuild or extend SSM One.  
**Status:** Proposed delivery sequence; implementation and release status are tracked separately.  
**Authority:** [SSM One Master Plan](../../SSM_ONE_MASTER_PLAN.md); electronics product-process reference: [Electronics Project Lifecycle and APQP Roadmap](../Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md).

## Planning model

The master plan defines the final product requirements. This roadmap organizes SSM One's software/product implementation into generic build phases 0–8. These phases are separate from the electronics product's nine operational lifecycle stages and the proposed 37-activity APQP crosswalk documented in the electronics-specific reference. They are related planning views, not a one-to-one stage mapping. The unified master controls common scope; Web and Android plans control platform implementation; the feature plans below define shared test data and acceptance.

The initial company structure has twelve departments: SAL, EHW, FW, SW, MECH, PUR, QA, EMF, MMF, FIN, SIT, and HR/OPS. Production has two manufacturing departments, EMF and MMF; PCB assembly is outsourced. Lifecycle stage IDs remain independent from departments, with a versioned stage responsibility matrix for each project.

## Feature phases

| Phase | Scope | Main features | Completion evidence |
|---|---|---|---|
| **0 — Product baseline** | Confirm the build baseline | Final scope and terminology; department registry; nine lifecycle stages; extensible department/role model; document types and data provenance; project and access boundaries | Reviewed baseline, named owners for open decisions, versioned configuration plan |
| **1 — Secure foundation and demo data** | Establish safe environments and identity | Environment separation; authenticated users and memberships; department/project/client permissions; schema, API, migration and audit baseline; versioned sample loader, restore-to-demo-defaults and remove-demo actions | Non-production target verified; access-denial tests pass; sample load/reset repeatable and scoped; no production seed path |
| **2 — Company and core workspace** | Enable everyday department work | Company/department/team masters; clients, products and projects; project selector; team views; task board and My Tasks; approvals; document and reference views; notifications | Department/project boundaries pass across lists, details, counts, search and actions; project switching has no data bleed |
| **3 — Client intake and project lifecycle** | Turn an enquiry into a governed project | Client portal; enquiry/RFQ/SOR; OMS records; feasibility; project master; requirement baseline and amendments; project-pinned stages and responsibility matrix; stage remarks and handoffs | Linked records retain source and owner; incomplete/conflicting values remain visible; stage and signer permissions are separately enforced |
| **4 — Product engineering, test and quality** | Develop and verify products | EHW/FW/SW/MECH requirements and design; BOM and revisions; engineering changes; DVP&R; product test cases/results; QA review; NCR/CAPA | Criteria and results are source-backed; simulated and measured results are distinct; no release without required approved evidence |
| **5 — Supply and manufacturing** | Control sourcing and production | PUR supplier/quote/PO/receiving workflows; outsourced-PCBA receipt; EMF box-build; MMF mechanical manufacturing; travelers; work instructions; traceability; inspections; quarantine | No sample creates live stock; separate EMF/MMF work packages and controlled cross-team handoffs are verified |
| **6 — Release, delivery and company operations** | Close the project lifecycle | QA disposition; PPAP/type-approval evidence; production readiness; client release; dispatch/delivery; FIN; SIT/service; HR/OPS; assets and calibration | Client sees only explicitly released/granted fields; finance, employee and security records stay restricted; operational writes are audited |
| **7 — Android parity** | Deliver approved workflows on mobile | Shared identity and contracts; role-safe workspaces; project/task/document/approval flows; defined offline drafts and sync/conflict behavior | Android uses the same backend authorization and record identity; device tests cover denial, persistence, offline and recovery |
| **8 — Future extensions** | Scale only when approved | New department configuration; reusable stage/RACI templates; analytics; integrations; automation; multi-organization needs; advanced offline and bulk operations | Each extension has an owner, access model, migration plan and acceptance evidence; no capability is implied by a source mention |

### Recommended scope choices

- **Basic rebuild and safe demo:** Phases 0–3. The result is a non-production product walkthrough, not production approval.
- **Operational web product:** Phases 0–6 plus every identity, authorization, persistence, audit, document-security, recovery and acceptance gate in the master plan.
- **Mobile release:** Add Phase 7 only against verified shared contracts.
- **Future version:** Select Phase 8 features individually after owner approval.

Security is foundational and must not be deferred to a later phase. Phase 5 may run in parallel with Phase 4 after data and authorization contracts are stable; both join at QA and release. A successful build, populated demo, or local browser action does not prove operational acceptance.

## Planning documents

| Document | Use |
|---|---|
| `../../SSM_ONE_MASTER_PLAN.md` | Final cross-platform requirements and decisions |
| `Electronics Project Lifecycle and APQP Roadmap.md` | Electronics product's nine operational stages, proposed HW_01–HW_37 mapping, and supporting domain requirements |
| `Decisions and Controls/Department Lifecycle and Gate Framework - APQP Audit IATF Mapping.md` | Department-specific stage checkpoints and evidence, pending owner approval; external criteria remain applicability-driven |
| `Feature Roadmap/Product Build Roadmap.md` | Choose generic SSM One software/product build phases, scope and dependencies |
| `Feature Roadmap/Sample Data and Test Plan.md` | Sample team with display names, stage RACI, client/OMS/projects, product tests, and sample load/reset |
| `Current Plans/Web Implementation Plan.md` | Web/backend implementation detail |
| `Current Plans/Android Build Plan.md` | Android implementation detail |
| `SSM One Document Catalogue - Auto-Drafting Audit and Native Upload Rules.md` | Document families, formats, structured template auto-drafting, audit placement, and portal-generation versus native-upload boundaries |

## Phase plan record

For each selected release or implementation batch, record:

- **Selected phase and features:**
- **Deferred features:**
- **Dependencies and accountable owners:**
- **Data, permissions and environments affected:**
- **Acceptance tests and evidence:**
- **Migration, reset and recovery approach:**
- **Status:** planned / approved / implemented / independently verified / released
