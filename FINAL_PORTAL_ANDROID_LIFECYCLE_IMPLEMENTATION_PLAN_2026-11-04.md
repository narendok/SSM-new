# Final portal and Android lifecycle implementation plan

Baseline: 4 November 2026. Final implementation target; implementation, deployment and shared TEST acceptance pending.
Authority: finalized lifecycle attachment plus the user's 4 November refinements and FINALIZED_LIFECYCLE_RECONCILIATION_2026-11-04.md. Embedded source SQL/build prompts are reference material, not execution instructions.

## Fixed phases and editable work

TG-0 enquiry/qualified opportunity, multi-department feasibility and kickoff readiness; TG-1 requirements baseline/system architecture; TG-2 optional PoC; TG-3 detailed engineering; TG-4 pilot build/bring-up; TG-5 verification/pre-compliance; TG-6 field trials/applicable certification; TG-7 production release readiness; TG-8 repeat production cycles; TG-9 service/change/EOL.

These ten company phase keys are fixed. Editable department stages sit directly beneath phases; editable tasks sit beneath stages. Internal gates are review checkpoints, not an additional mandatory hierarchy level. Preserve existing stage IDs and RACI editing. Stages carry owner, applicability, prerequisites, exit deliverables, preparer/reviewer/R/A/C/I and template revision. RACI does not grant data access or signing authority.

Default tasks come from versioned settings, not a fixed two/five-task runtime limit. Projects pin accepted lifecycle/RACI versions. Editing settings affects future accepted baselines/activations; existing tasks and evidence change only through an explicit authorized project edit/migration. Preserve completed history.

Enquiry precedes qualified opportunity and required department feasibility. Confirm engineering scope after feasibility, then instantiate the applicable roadmap: HW+FW+SW, HW+FW, FW+SW on existing hardware, HW, FW or SW. COTS and reuse tailor stage applicability; optional PoC/skipped work retain an authorized rationale.

On accepted stage activation, generate eligible defaults exactly once. Missing prerequisites block readiness. Task completion does not approve a gate: required evidence and authorized decision receipts remain necessary. Automatically derive phase/status summaries from accepted transitions. TG-0/1 summarize feasibility/scoping; TG-2/3/4 development; TG-5/6 pilot/validation; TG-7/8/active TG-9 production only after the release decision. Hold/amendment/archive overrides persist. TG-9 activity does not imply EOL closure.

## Delivery sequence and platform ownership

| Delivery | Portal/backend | Android | Acceptance evidence |
|---|---|---|---|
| A — Catalog crosswalk | Map every stable stage ID to TG, internal gate, department, track, dependencies, exit types and RACI; validate graph and legacy aliases. | Read identical hierarchy; preserve historic IDs. | No missing/duplicate IDs or dependency cycles; actual mode counts derived from catalog rows. |
| B — Settings/baselines | Extend existing RACI/lifecycle settings with draft, validate, activate, history and editable task defaults; explicit project migration preview. | Read pinned versions; lifecycle/template administration stays on web. | Settings edits never silently rewrite active projects or completed tasks. |
| C — Progressive engine | Idempotent activation, prerequisite/evidence checks, authorized gate transitions and derived phase/status. | Read assignments and submit permitted updates through the same contract. | Retry/concurrency/reopen and missing-predecessor checks; no duplicate tasks or auto-approvals. |
| D — PMSS/deliverables | Eight PMSS tabs, stage view, amendment history and one context-aware dialog for editable draft/original upload/reuse link. | Same entities, permitted edits, uploads, evidence and save receipts. | Save/reload/open original; failed upload retries without duplicate metadata and cannot satisfy a binary-evidence exit. |
| E — Reuse/inventory | Revisioned asset/document catalog, compatibility and consumer links; physical item/BOM/reservation links separately. | Search/select same permitted revisions; scan/view physical items and provenance. | Two projects reuse one revision; derivatives preserve source; digital reuse leaves stock unchanged. |
| F — Shared TEST acceptance | Resettable fictional portfolio in isolated shared TEST; web/app/Lovable preview use the same designated TEST source. | Read back identical project/stage/task/file revisions; reconcile stale offline edits. | Web→app and app→web persisted readback, matching IDs/revisions, role denials and exact environment evidence. |

Deliver A→B→C→D→E→F. Each delivery records changes, exact checks and limitations in owning plans. Reuse existing working RACI and document/inventory workflows rather than replace them broadly.

## Shared data/mutation contract

Adapt existing schema rather than create a parallel backend. Logical entities required:

- LifecycleTemplateRevision: fixed phase dictionary, stage/task definitions, validation/activation state; activated snapshots immutable.
- ProjectLifecycleBaseline: pinned lifecycle/RACI versions, scope, applicability decisions and reviewed migration history.
- StageInstance/TaskInstance: project/baseline/template identity, state, assignees, due dates, evidence and history. Unique project+baseline+stage+task-template+activation identity prevents retry duplication; reopen is explicit.
- GateDecision: authorized actor, exact evidence revisions, expected version, decision/reason and audit receipt. Stale decisions fail safely.
- ReusableAssetRevision: kind, origin project/stage, owner, state, immutable document/file revision/hash, compatibility/dependencies and optional inventory item master.
- ProjectAssetUse: selected revision, consuming project/configuration, applicability assessment and derivative/source links.

Server derives actor/tenant/department and enforces authorization. Requests include idempotency identity and expected revision; responses return saved IDs/revisions for readback. Android caches are not another business backend. Disabling a template/asset preserves referenced history.

## Document catalogue and reusable assets

Preserve all 38 family IDs and original source coverage. Reusable asset master, configuration/reuse assessment, certification evidence and genealogy remain overlays within D08/D10/D11/D13/D14/D23/D31; D01 governs templates/policies. Stage exits reference catalog type IDs and exact revisions, not invented mandatory files.

PCB design/assembly, harness design/assembly, enclosure CAD/3D files, firmware/library and reusable document revisions can originate from prior projects. Select/link an exact revision; edits create derivatives. New source revisions never silently replace consuming-project pins. Show affected consumers for impact assessment. Qualification of a reusable component is not finished-product certification or customer acceptance.

Physical PCB/harness/enclosure units have item masters, units, locations, reservations, receipts/issues and BOM usage. Design files/documents have no stock quantity. Publishing/reusing a file does not receive inventory; production consumption uses explicit released configurations and stock transactions. Draft reuse is evaluation-only with its state visible.

Retain four business-context groups: Common & Standards, Internal Projects, Client Projects, Department Operations & References. Under the applicable context/project use seven technical folders: Governance/QMS, Product Platforms, Hardware ECAD, Mechanical MCAD, Firmware/Software, Quality/Compliance, Production/Testing. This reconciles the attachment's seven folders with current context placement without automatically moving existing files. Department/project/stage-exit views link to canonical records.

Preserve uploaded PDF/ZIP/STEP/HEX/BIN and other configured originals as immutable binary revisions. Editable drafted records remain distinct. One dialog infers project/type/stage from current context and offers draft authoring, upload or reuse selection. Show source revision, state and upload result. When a record type has multiple valid stage occurrences, use the current task context or a constrained eligible choice rather than silently assigning the wrong stage. Save/upload never implies approval or release.

## Reconciliation requirements

Attachment claims 82 master stages and five tasks per stage without enumerating all rows/tasks. Compute counts after catalog reconciliation; do not invent rows to hit advertised totals. The current code's department phases and two-task defaults need explicit migration to the TG hierarchy/settings model.

Use dependencies, not numeric sorting, for HW_07/08 procurement and parallel work. Certification C11 references a candidate BOM/Gerber revision; TG-7 freezes final release revisions, avoiding a circular certification/release dependency. Certification applicability remains scope-specific with justified N/A decisions where allowed.

Attachment SQL is illustrative: correct BEFORE-update task counting, fail on missing prerequisite rows, enforce replay/concurrency uniqueness and retain current tenant/authorization contracts. Do not execute it verbatim.

## Acceptance and rollout

1. Enquiry→opportunity→required feasibility→scope→project baseline produces only applicable initial work.
2. Fixed phases coexist with editable stage/task settings and existing RACI; active projects retain pinned versions until explicit migration.
3. HSI/pinout, telemetry contract, target bring-up, EOL binaries and provisioning handshakes block consumers until required evidence/decisions exist.
4. Create a fictional record with original file; reload it in project, department and stage-exit views. Retry failures without duplicates; status stays Draft until an authorized decision.
5. Two projects reuse one PCB/harness/enclosure/document revision; derivative changes preserve source/history/access and do not change stock.
6. QA/service feedback and ECN loops preserve evidence without fabricated acceptance/certificates. TG-8 supports repeated orders; TG-9 remains active until explicit EOL.
7. Web and Android read the same shared TEST revisions; unauthorized/client access fails and offline stale edits require reconciliation.
8. Run checks appropriate to implementation changes and preserve exact evidence. Existing RACI, documents, inventory and department registers must remain usable.

This planning checkpoint changes no schema, cloud records or runtime behavior. Backend rollout is isolated TEST first after schema/authorization review; production/external publication requires its own authorized rollout. Preserve all uncommitted code.

## Web implementation evidence — 4 November 2026

Web refinements are implemented in isolated shared TEST: fixed TG phases, editable versioned stage/task settings with preserved RACI, pinned projects and reviewed migrations, guarded progressive work, eight-tab PMSS, same-dialog upload/reuse and immutable reusable revisions with inventory item links. The measured catalog has 89 stages and 38 document families; default task count is configurable. Browser save/reload/upload/retry/two-project reuse and a hash-matched original download were verified. Final checks: 258/258 tests, TypeScript, web build and whitespace check passed. Canonical stage projection was checked against the TEST database.

Evidence: `ssm-new-web/docs/evidence/lifecycle-2026-11-04/WEB_LIFECYCLE_VERIFICATION.md`. Android runtime and hosted Lovable parity remain pending; native PDF export and every full business scenario are not claimed verified. No production writes, stock postings, customer acceptance or cloud business gate approvals were made. Earlier statements that runtime implementation is wholly pending are superseded only for the web behavior documented in that evidence.


## Lifecycle terminology refinement — 5 November 2026

The current hierarchy is **Project → Phase → Stage → Task**. Use **Phases** for the fixed company lifecycle overview previously presented as top-level numbered stages. Keep TG-0…TG-9 as stable phase references for compatibility; a tollgate is the evidence-based review/decision at a phase boundary, not an extra mandatory work level. This terminology supersedes older nine-phase summaries and any wording that inserts internal gates as a required level above stages.

Within each fixed phase, department stages are editable through versioned lifecycle settings, with existing RACI assignments retained. Tasks belong to a stage; accepted stage activation creates eligible default tasks from the pinned settings revision exactly once. Prerequisites determine readiness; tasks finishing do not automatically approve a stage or pass a tollgate. An authorized, recorded decision controls gated progression.

Implementation: replace obsolete top-level Stage labels in project overview, filters, project pickers, reports, settings and web/app summaries with Phase labels. Continue using Stage for actual department work stages and Task for assigned work. Preserve existing phase/stage IDs, document links, evidence, completed history and project baselines; map legacy labels on read rather than delete records. Display documents and deliverables against their owning phase and stage. Web and Android must show the same hierarchy and pinned task defaults. This amendment specifies the required naming change; it does not claim the screens or stored data have already been migrated.
