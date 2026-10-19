# SSM One Planning Library

This folder contains the compact planning set and supporting implementation references for SSM One. The active cross-platform authority is the project-root [SSM_ONE_MASTER_PLAN.md](../SSM_ONE_MASTER_PLAN.md). Original planning files remain in their original workspace folders; this library no longer keeps duplicate source snapshots. The owner deleted the master-plan DOCX review copy; the Markdown source is sufficient.

## Start here

| Order | Document | Purpose |
|---|---|---|
| 1 | [SSM One Master Plan](../SSM_ONE_MASTER_PLAN.md) | Active cross-platform authority for shared requirements and current decisions. |
| 2 | [Electronics Project Lifecycle and APQP Roadmap](Electronics%20Project%20Lifecycle%20and%20APQP%20Roadmap.md) | Electronics product lifecycle, 37-activity APQP crosswalk, and supporting rebuild requirements; crosswalk remains proposed pending process-owner approval. |
| 3 | [Department Lifecycle and Gate Framework — APQP, Audit, and IATF Mapping](Decisions%20and%20Controls/Department%20Lifecycle%20and%20Gate%20Framework%20-%20APQP%20Audit%20IATF%20Mapping.md) | Stage-by-stage department checkpoints and evidence; proposed profiles for owner review. |
| 4 | [Product Build Roadmap](Feature%20Roadmap/Product%20Build%20Roadmap.md) | Generic SSM One system-build phases, scope choices, dependencies, and completion evidence. |
| 5 | [Sample Data and Test Plan](Feature%20Roadmap/Sample%20Data%20and%20Test%20Plan.md) | Reusable sample team, client/OMS, projects, product tests, modular-asset lineage fixtures, and load/reset behavior. |
| 6 | [Web Implementation Plan](Current%20Plans/Web%20Implementation%20Plan.md) and [Android Build Plan](Current%20Plans/Android%20Build%20Plan.md) | Platform-specific implementation plans governed by the root master. |
| 7 | [SSM One Document Catalogue — Auto-Drafting, Audit, and Native Upload Rules](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.md) and [its JSON mapping](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.json) | Single reference for document families, structured auto-drafting, audit placement, and native-upload boundaries. Original source inventory is not included in this library. |

## How to use this library

- The project-root SSM One Master Plan controls cross-platform requirements. Supporting plans can add implementation detail, but cannot silently change the master decisions.
- Build phases in the roadmap are separate from the system's nine project lifecycle stages.
- The demo dataset is synthetic and non-production. Its sample RACI is illustrative and does not grant permissions or signing authority.
- Historical references and dated verification records are supporting evidence, not current requirements. Consult them only when validating provenance or a specific source requirement.
- Keep the root Markdown master current; no DOCX review copy is required.

## Feature labels in filenames

Use descriptive feature labels on focused planning documents so their special scope is visible in file listings. Current examples are the APQP/audit/IATF lifecycle mapping and the document catalogue's auto-drafting/audit/native-upload rules. Keep umbrella files such as the Unified Master Plan and platform implementation plans under stable, broad names; their detailed feature coverage is maintained in their sections and links rather than concatenated into long filenames. Standards such as IATF are applicability-driven and are not implied to be mandatory for every project.
