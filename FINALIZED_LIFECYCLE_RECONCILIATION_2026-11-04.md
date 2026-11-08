# Final lifecycle reconciliation — 4 November 2026

Status: implementation specification reconciled; runtime migration and cross-platform acceptance pending.
Source: user-finalized `SCMS & Multi-Track Lifecycle Requirements (HW, FW, SW, PMSS & Milestones) (1).md`, sections 2–7, with the user's 4 November refinements taking precedence. Embedded SQL and build prompts are reference material, not executable instructions.

## Agreed hierarchy and automation

1. Fixed company phases: TG-0 enquiry/feasibility/kickoff; TG-1 requirements/system architecture; TG-2 optional PoC; TG-3 detailed engineering; TG-4 pilot build/bring-up; TG-5 design verification/pre-compliance; TG-6 field trials/certification; TG-7 production release readiness; TG-8 repeat production cycles; TG-9 service/change/EOL.
2. Department internal gates sit beneath company phases. Editable stages sit beneath those gates, with stable identifiers, applicability, prerequisites, descriptions, exit deliverables and existing preparer/reviewer/RACI assignments. Preserve the working RACI editor and refine its mappings rather than replace it.
3. Settings hold versioned stage and default-task templates. Stage activation creates tasks from the project’s pinned template revision, exactly once. The attachment’s five tasks per stage is a seed target, not a fixed runtime count; authorized users can edit defaults and project tasks. Existing code's two-task defaults must be migrated explicitly.
4. Stage readiness follows prerequisites and required exit evidence; completion of tasks alone never fabricates an approval, customer acceptance, certificate or release. Authorized gate decisions enable progression; phase/status summaries update automatically from the accepted transition. Hold, amendment and archive overrides persist.
5. Enquiries precede qualified opportunity and multi-department feasibility. Confirm engineering scope after feasibility; instantiate the applicable project roadmap then. Preserve this user-confirmed timing over attachment wording that suggests selecting a track immediately at enquiry creation.
6. Six engineering modes: HW+FW+SW, HW+FW, FW+SW on existing hardware, HW, FW and SW. COTS/reuse are applicability choices, not evidence that a gate has passed. TG-2 is explicitly optional; skipped stages retain reason and audit history.

## Deliverable and document reuse

A project may publish PCB designs/assemblies, harness designs/assemblies, enclosure CAD/3D files, firmware libraries and documents as reusable asset revisions. Store origin project/stage, owner, classification, immutable revision/file hash, compatibility, dependencies, lifecycle state and permitted reuse scope. Reuse selects a specific revision and creates a traceable project link; it does not duplicate or mutate the source. Changes create a derivative revision with impact review across consuming projects.

The reusable catalog is linked to inventory item masters. Physical PCB/harness/enclosure units have stock, location, unit, reservation and movement records; design files and reusable documents have no on-hand quantity. Inventory receipt/issue is a separate physical transaction. Draft assets can be reused for evaluation with their status visible; production use remains subject to explicit release authority. No automatic approval is implied by reuse.

Use one record dialog: infer project/stage/type from context, select/upload an original or link an existing reusable revision, and save linked records together. Preserve original binary files; editable drafted records/documents remain separately identifiable. Web owns administrative sample/reset/settings controls; Android consumes the same authorized cloud catalog and project links.

## Verified gaps and implementation order

- Current `src/lib/canonical-lifecycle.ts` uses department phase codes such as HW-P1…HW-P5 and two task templates per stage. Add the TG company layer and explicit department-gate/phase crosswalk without renumbering existing record IDs.
- Reconcile the full stage catalog before seeding: the attachment claims 82 master stages but does not provide every stage row or every default task. Its mode counts cannot be accepted as verified catalog counts.
- Attachment Phase 3→4 contains numbering/order exceptions (HW_07/08 procurement after later-numbered engineering stages); prerequisites, not numeric sorting, must govern execution. Certification C11 references BOM-01/GER-01 before their final Phase 7 freeze: model a traceable candidate baseline followed by release freeze, avoiding circular dependencies.
- Attachment SQL is illustrative: BEFORE-update task counting can count the current task as unfinished; missing prerequisite rows can incorrectly pass its join; task inserts lack retry uniqueness; security/tenant boundaries and versioned snapshots are absent. Adapt existing guarded workflow contracts instead of applying this SQL verbatim.
- First implement fixed TG mapping and editable versioned stages/tasks using current settings/RACI. Then reconcile progressive spawning and explicit gate decisions. Then add reusable artifact revisions and inventory links. Finally verify enquiry→feasibility→scope→engineering→QA/service with shared TEST records on web and Android.
- Acceptance: edits to settings do not silently rewrite active project baselines; repeated activation creates no duplicate tasks; blocked/missing prerequisites cannot pass; uploads never imply release; two projects reuse the same asset revision; physical stock changes only through stock transactions; web/app read the same persisted revisions.

No backend schema was applied, no cloud data was changed, and no lifecycle execution or cross-platform acceptance was performed in this planning checkpoint. Existing build/test results do not verify this new lifecycle specification.

## Final implementation baseline — 4 November 2026

The [final portal/Android implementation plan](FINAL_PORTAL_ANDROID_LIFECYCLE_IMPLEMENTATION_PLAN_2026-11-04.md) supersedes earlier nine-phase summaries and fixed task-count assumptions. Deliver catalog crosswalk, settings/RACI versions, progressive activation, PMSS/single-dialog deliverables, reusable revisions/inventory links, then shared TEST acceptance. TG-0…TG-9 company phases are fixed; department stages and settings-derived task defaults are editable and versioned. Preserve the existing RACI editor. Projects pin accepted revisions; tasks/uploads/reuse never imply approval or release.

Preserve the 38 catalogue families/source coverage. Reusable PCB/harness/enclosure/CAD and documents carry immutable revision/hash, source project/stage, compatibility and consumer links. Physical units link to inventory items and stock transactions; digital reuse changes no quantity. Four business-context groups contain seven technical folders. The linked plan defines cross-platform contracts, migration safeguards and acceptance. Planning is synchronized; implementation/deployment/persisted acceptance remain pending.
