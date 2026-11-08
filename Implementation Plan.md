# SSM One Workspace Migration and Historical Handoff Index
> This file is not an active product plan. Shared requirements live in SSM_ONE_MASTER_PLAN.md; web and Android work live in their respective platform plans. This file retains the workspace migration checkpoint and stable links used by historical evidence.
<a id="laptop-migration-2026-10-28"></a>
## Laptop migration and continuation checkpoint — 28 October 2026

This section records the machine handoff as of 28 October 2026. It is retained for historical context and is not a current setup checklist. Keep existing original layouts and account-backed shared data; do not treat this dated migration note as authorization to reset, reload samples, replace working screens or change the backend. Later requirements and acceptance status are owned by the linked active plans.

### Verified source and cloud boundary

| Repository | GitHub URL | Verified source checkpoint before this documentation update |
|---|---|---|
| Canonical plans | https://github.com/narendok/SSM-new.git | `5f9d349` |
| Web | https://github.com/narendok/ssm-new-web.git | `1a06015` (code `a464d47`, `98daa65`) |
| Android | https://github.com/narendok/SSM-new-app.git | `b572ba7` |

All three HEADs matched the actual remote main branch; no tracked modifications existed at the migration audit. Always fetch/check again before continuing because Antigravity shares these folders. There were 9 untracked planning files and 101 untracked web files, plus local workspace evidence; these are not carried by a Git clone.

Existing Lovable project: https://lovable.dev/projects/a3399684-daab-4b38-8666-187b96b451af . Existing backend: `rzskhndweihuczbdhoxk`. Continue using these same resources and organization memberships. Cloud records/storage are not stored in Git and do not need moving simply because the laptop changes. No database export/reset/import was performed for migration. Source sync to Lovable is separate from publishing the public frontend.

Migrations `20261028120000` through `20261028120002` were deployed and independently rollback-tested. Do not reapply them or run the sample loader just to set up another machine. Last completed verification was 210/210 web tests, TypeScript and build; live stage review checks passed with 34 records, 29 tasks, 21 approvals and 27 memberships preserved. Those are dated results, not a fresh test of every feature on the new laptop.

### Transfer and setup (Windows)

1. Install Git, Node.js compatible with the lockfile/current runtime (old machine: Node `v24.22.1`), Android Studio and its required SDK/JDK. Sign into the same GitHub, Lovable, Antigravity and ChatGPT/Codex accounts. Reconnect plugins through normal sign-in; do not transfer authentication cookies/tokens.
2. Run the tracked `Restore-SSMWorkspace.ps1` from the planning repository with a chosen parent directory. It clones all three repositories, checks remotes and refuses to overwrite unrelated/existing dirty checkouts. Alternatively clone the three URLs above manually. Use current GitHub HEAD, not an old downloaded ZIP.
3. Transfer the private local-only ZIP from the old laptop using a private encrypted drive/location. It contains web `.env`, Android `local.properties` and the original debug signing key, as well as unique local files. It is not encrypted itself and must never be uploaded to GitHub or a public chat link. Its manifest contains source locations, archive entries and SHA-256 checksums; the archive was read back and checked after creation. It intentionally excludes account session/auth stores, Git internals, dependency/build caches and the workspace junction targets.
4. Restore `repositories/SSM-new`, `repositories/SSM-new-web` and `repositories/SSM-new-app` local-only contents into the corresponding clones, without overwriting a different existing file. `workspace/` contains the old scratch/evidence folder, not another code checkout. The old workspace's web/app entries were Windows junctions, so copying that folder alone does not copy the repositories. No junctions are required when opening the actual cloned repositories directly.
5. Restore Android `private/android/debug.keystore` privately to the new user's `.android/debug.keystore` before building an update. Preserve application ID `com.example.myapplication` and signer; do not uninstall or clear the existing app to get past a signing error. Update only `sdk.dir` in the restored Android `local.properties` for the new SDK path; retain its configured backend values. Restore web `.env` privately. Never commit these files or privileged keys.
6. Web: run `npm ci`, `npm run test:department`, `npx tsc --noEmit`, `npm run build`; start `npm run dev -- --host 127.0.0.1 --port 8080` from the web checkout. Android: configure Android Studio's bundled JDK, then run `gradlew.bat testDebugUnitTest assembleDebug`. Dependency installs/build caches are recreated, not copied. Complete authenticated original-layout and shared read/write checks before calling the new-machine setup accepted. Browser-local DEMO state/drafts and browser login sessions are not shared cloud records and are not included in this archive.
7. Keep the old laptop intact until configuration, signer, private originals and shared account access have been verified on the new one. A repository clone is not a database backup or a complete copy of Downloads.

### Conversation continuity

An authorized immutable conversation snapshot was created; its URL is in this chat and the private transfer README. The sharing tool labels its audience **public**: keep the link private; do not place credentials in a shared conversation. It is a reference snapshot, not a promise that the same running local thread, tool sessions, files, browser tabs or later messages migrate. The link is intentionally not added to a Git-tracked file; retrieve it from this chat or the private transfer README. Local attachment originals are included where found in the private pack. Normal same-account sign-in and reopening the local folder are required. If the original local chat is unavailable, start a chat on the new checkout with this prompt:

> Continue SSM from Implementation Plan.md, section Laptop migration and continuation checkpoint, the canonical master plan, and the web docs consolidated handoff. First inspect current HEADs, dirty files and actual deployed state. Preserve original layouts, working features, actual authenticated scopes and the existing backend. Do not re-seed samples, reset data or reapply deployed migrations. Stage-completion fixes are accepted; other pending items below are not accepted. Finish one small patch at a time with focused tests and real shared verification; ask only for a material unresolved business rule.

### Remaining feature work — not migration blockers and not certified complete

| Item | Current acceptance boundary / next action |
|---|---|
| Android original shared UI and parity | The existing Android UI-preserving repair plan A0–A6 remains planned. Canonical models/sample catalogue do not establish device-verified shared UI parity. Reproduce authenticated routing before scoped fixes; retain original Compose screens. |
| Full connected LC2 fixture pack | Loader is deployed but was not executed in the latest acceptance run. Verify all eight projects plus the declined enquiry, inputs, BOM lines, documents, links and progressive tasks in ordinary screens against the canonical sample plan before claiming full acceptance. Never seed mobile copies or merge in-memory examples into live records. |
| Legacy lifecycle adoption | Older Stage 1–9 history is preserved and silent canonical conversion is blocked. A reviewed adoption flow is still separate work; do not bypass the guard or relabel old stages automatically. |
| Future custom tasks / full roadmap preview | Audit planning versus activation for custom tasks against the confirmed progressive-creation rule. Whole future roadmap visibility and all task interactions have not received complete end-to-end acceptance. Do not generate future actionable work merely to populate a board. |
| All department forms, connected automation and module regressions | Earlier reports do not prove every record type/property/action accepted. Verify catalogue-to-form-to-persisted-ID round trips, permissions, reference generation, revisions and authorized inline masters one feature at a time. Preserve purchase enhancements and original Profile/Chat/Documents views. |
| Document generation/OCR and production release | Deferred drafting/conversion/OCR work and public frontend publishing require their own implementation/acceptance. No claim that this migration finishes them. |

The migration package completes preservation and continuation preparation. Actual new-laptop restore/build/login verification can only be completed on that laptop. Do not label the entire master plan finished from this handoff.


<a id="android-ui-preserving-repair-2026-10-28"></a>
## Active plan links

- [Cross-platform master](SSM_ONE_MASTER_PLAN.md)
- [Web implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md)
- [Android build plan](https://github.com/narendok/SSM-new-app/blob/main/docs/planning/SSM_ONE_ANDROID_BUILD_PLAN.md)
- [Document catalogue](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.md)
- [Electronics multi-track lifecycle](Electronics%20Multi-Track%20Lifecycle%20and%20APQP%20Roadmap.md)
- [Sample Data and Test Plan](Feature%20Roadmap/Sample%20Data%20and%20Test%20Plan.md)

## Historical source anchors

<a id="source-01"></a>
### Android handoff source

Current mobile implementation instructions are in the [Android build plan](https://github.com/narendok/SSM-new-app/blob/main/docs/planning/SSM_ONE_ANDROID_BUILD_PLAN.md). The former bundle is historical source only.

<a id="source-07"></a>
### People and client handoff source

Shared people, roles, project, access and data rules are owned by the [cross-platform master](SSM_ONE_MASTER_PLAN.md); platform work belongs in the linked subplans.

<a id="source-15"></a>
### Historical Android plan source

Use the [current Android build plan](https://github.com/narendok/SSM-new-app/blob/main/docs/planning/SSM_ONE_ANDROID_BUILD_PLAN.md).

<a id="source-16"></a>
### Historical web plan source

Use the [current web implementation plan](https://github.com/narendok/ssm-new-web/blob/main/SSM_ONE_WEB_IMPLEMENTATION_PLAN.md).

<a id="source-16-8-controlled-document-engine--native-printpdf-output"></a>
### Historical document-engine source

Current document families, drafts, originals and revision rules are owned by the [document catalogue](SSM%20One%20Document%20Catalogue%20-%20Auto-Drafting%20Audit%20and%20Native%20Upload%20Rules.md).
