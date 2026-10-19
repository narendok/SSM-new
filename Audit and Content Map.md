# Planning package audit and content map

Audit date: 19 October 2026. Scope: the current SSM-new root, web repository, Android repository, and the readable SSMone web and Android planning repositories. This audit is a source reconciliation check, not approval to deploy or delete originals.

## Current authority

| Source | Package copy | Finding |
|---|---|---|
| `SSM_ONE_MASTER_PLAN.md` | SSM-new project root | Active cross-platform authority. `Electronics Project Lifecycle and APQP Roadmap.md` is domain-specific supporting detail and does not override it. |
| `ssm-new-web/SSM_ONE_WEB_PORTAL_MASTER_PLAN.md` | `Current Plans/Web Implementation Plan.md` | Current detailed web/backend subplan. |
| `SSM-new-app/docs/planning/SSM_ONE_ANDROID_BUILD_PLAN.md` | `Current Plans/Android Build Plan.md` | Current Android subplan; references backend contracts separately. |
| Web sync ledger and 19 October completion/evidence files | `Portal Progress and Handoffs/` | Records implementation checkpoints and qualifications. Browser/local demo checks are not authenticated production acceptance. |
| SSMone 18 October catalogue and mapping | Planning-library root | Active catalogue Markdown/JSON: 38 logical families, 89 unique source blocks, 90 source-family links; two entries are clarification-only. Original source inventory is not included in this library. These are inventory counts, not required-output counts. |

## Material carried forward from the earlier SSMone plan

`Historical References/SSMone Web Portal Master Plan - superseded 2026-10-14.md` is explicitly marked as superseded by the current SSM-new master on 19 October. It is retained because a heading/content comparison found substantial sections not present under identical headings in the active web plan. Examples include the refined budget and asset-cost workspace, People workspace and shared document intake, common project analysis, and detailed later task/inventory/identity/backend checkpoints dated 15–18 October.

Some subjects overlap current web sections, while others may be removed, deferred, or not yet reconciled. The old plan itself calls these candidate requirements pending comparison; this audit does not silently promote them back into current scope. A future reviewer should compare each such item with the latest user-confirmed decision and either incorporate it into the active plan, mark it explicitly deferred/removed, or leave it as historical evidence.

The document catalogue is a reference inventory, not a competing master plan. Its current Markdown/JSON pair at the planning-library root records 38 logical families, 89 unique source blocks, and 90 source-family links; two entries are clarification-only. These counts describe catalogue coverage, not mandatory output files. The original source inventory folder is no longer included in this library; source-block mapping remains in the JSON. The owner deleted the master-plan DOCX review copy; the active master is Markdown. The SSMone Android plan dated 18 October remains historical input because it contains staged mobile and People/self-service details that should be reconciled against the current plan. The People/Client web-to-Android file is a planned handoff, not a certified API contract.

## Significant historical/status cautions

- The October 2026 feature knowledge base and project-context snapshot include older labels, requirements, paths, and status claims. They are included only as historical context.
- The Android backend contract was refreshed on 24 September 2026 and says environment separation and some live acceptance remain unverified. Recheck against current source/configuration before relying on it.
- The reported document-control read contract is not proof of authenticated acceptance.
- The 17 October backend installation checkpoint is specific to its recorded environment and SQL bundle. It does not establish that the entire portal lifecycle is operational.
- The owner deleted the master-plan DOCX review copy. The source DOCX inputs are not part of this curated library; no source folder was moved by this cleanup.

## Package scope

Included: the feature-first build roadmap and demo/test data plan; current shared/web/Android plans; document standardization and control references; latest 19 October portal handoff and three user-requested feature checkpoints; Android/backend handoff and contract references; the reconciled 18 October document catalogue and original source map; the superseded but materially informative SSMone web and Android plans; the planned People/Client handoff; and clearly marked older project context/knowledge base.

Excluded: source code, SQL migration/pending-install scripts, generated catalogue build utilities, screenshots, sample controlled business documents, generic repo instructions, and every dated implementation log. Relevant recent findings are summarized in the included handoffs; the originals remain in place.

The root `SSM_ONE_MASTER_PLAN.md` is the active authority. The detailed product-process reference is `Electronics Project Lifecycle and APQP Roadmap.md`; the generic system-build sequence is `Feature Roadmap/Product Build Roadmap.md`. The 40 archived source copies and their index were removed from the library after confirming all 40 original files remain at their original paths byte-for-byte. No original source file was moved or deleted. The owner removed the DOCX review copy, so the Markdown master is the maintained source.


## User-confirmed refinements traced into this package

- Department naming: FW is Firmware and SW is Cloud/Application Software; EFW, CSW, and ESW are not current department names. Production has EMF for electronics manufacturing and MMF for mechanical manufacturing; outsourced PCBA assembly is not in current in-house scope. See the current master.
- Lifecycle and organization: stage IDs remain independent from the department chart; a versioned responsibility matrix connects roles/departments to applicable stages and preserves project baselines/history. See the current master.
- Department isolation: tasks, approvals, projects, records, documents, references, and teams are scoped by ownership/explicit assignment; assignment does not itself grant access. See current master and the dated department-scope checkpoint.
- Shared task board: Today/In Progress at left, Review in the middle, To Do at right, and Completed collapsed by default with an expand control. See the current master, web section 28.5, Android parity note, and task-board evidence.
- Project workspace: one department view with an authorized project selector; project details, tasks, docs/references, approvals, records and owners follow the selected project. See the current master, web section 28.6, and workspace browser evidence.
- Project documents: use structured entries, preview, and configured DOCX/PDF downloads; show missing/conflicting values rather than inventing technical, commercial, approval or signature data. The Catalogue owns document families and generation/upload rules; platform plans own delivery and acceptance checks.
- Reusable modular assets and inventory: maintain revisioned master identities, project-pinned configuration/reuse assessments, source-to-variant change lineage, and as-built genealogy. Master §6.2 now shows the domain relationships: BOM lines point to item masters, stock lots/serials carry physical balances, projects pin exact reusable module revisions, plant assets hold capability/custody, and as-built records capture actual use. Keep these classes distinct; reuse or component certification alone never proves finished-product compliance or waives verification/approval.
- Document inventory: the catalogue preserves the 89 original source blocks across 38 logical families. It is an inventory, not a requirement to generate 38 files.

## Specific items still requiring an explicit reconciliation decision

| Historical detail | Where retained | Audit finding |
|---|---|---|
| People self-service, training/reviews, leave/calendar, reminders, newsletter and shared smart intake; client workspace and feedback/support handoff | Superseded SSMone web/Android plans and the dated People/Client handoff | The current plans contain some HR/OPS and client capabilities, but the older cross-platform detail is not all restated in the current master. Keep historical copies; compare item-by-item before dropping or promoting any detail. |
| Finance budget lifecycle, expense/asset-cost summaries and richer analysis views | Superseded SSMone web plan | The active web plan mentions budget tracking and costing, but the older detailed workspace and acceptance boundaries should be checked before calling the requirement fully reconciled. |
| Common project-analysis continuation, reusable PCB/harness/firmware/software records, optional research/POC and pilot flow | Superseded SSMone web plan; partly represented in current web and cross-platform plans | Some shared project/workspace and lifecycle ideas are present in current plans. Keep the detailed historical version to resolve remaining scope and distinguish current requirements from abandoned UI alternatives. |
| Detailed legacy Android stages and older integration assertions | Superseded 18 October SSMone Android plan and historical backend reports | The current SSM-new Android plan is the authority. Treat earlier completion labels and backend claims as historical until independently verified. |

The package intentionally preserves these candidates rather than silently copying them into the active master. That is the point where an additional product decision is needed: whether each candidate is still wanted, already covered, explicitly deferred, or removed.





## Demo and test data reconciliation

The unified master sets the rules for demo data and explicitly prevents sample values from being treated as real business evidence; it does not define a reusable seed manifest or a complete set of role journeys. The detailed web demo-readiness strategy is in `Current Plans/Web Implementation Plan.md`, §27. The current web source also has a browser-local demo load/reload/remove panel, but it does not seed Supabase or provide cross-device persistence. It is a prototype behavior, not an authenticated shared dataset. A prior coordination ledger mixed status history with fixture and migration notes; it was not a canonical seed specification.

This audit entry records an earlier review snapshot. The active [Sample Data and Test Plan](Feature%20Roadmap/Sample%20Data%20and%20Test%20Plan.md) now provides the current fictional employee display names and IDs, twelve-department roster, nine-stage responsibility example, client/OMS and project fixtures, DVP&R examples, and sample-data operation boundaries. Use the active plan for current fixture decisions; this historical audit text is retained only as provenance.

The lengthy coordination ledger is not part of this curated package. Dated handoffs remain the place for implementation evidence; the reusable demo-data requirements live in the companion plan.




