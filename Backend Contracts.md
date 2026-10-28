# SSM One Backend Contracts

The [master plan](SSM_ONE_MASTER_PLAN.md) and actual authenticated backend govern the shared contract. [Machine-readable baseline](Mobile%20Backend%20Contract.json) is preserved byte-for-byte. Sections below retain earlier verified snapshots and planned requirements; do not redeploy obsolete SQL or infer live availability from a snapshot. Account/organization/RLS and independent runtime acceptance remain required.


<a id="source-02"></a>
## Android Backend Handoff

**Source:** `Android and Backend Contracts/Android Backend Handoff.md`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

<a id="source-02-android-backend-handoff"></a>
### ANDROID BACKEND HANDOFF

<a id="source-02-safe-configuration"></a>
#### Safe configuration

Provide the Android project only these non-secret values through the Android build environment:

- `SUPABASE_URL`
- `SUPABASE_ANON_OR_PUBLISHABLE_KEY`

Do not add any service key, database password, signing secret, or third-party credential to Android.

<a id="source-02-environment-mapping"></a>
#### Environment mapping

The SSM-new-web Portal & Wizard project is configured for Supabase project rzskhndweihuczbdhoxk at https://rzskhndweihuczbdhoxk.supabase.co. Android Gradle pins SUPABASE_URL to this value and rejects a mismatch; its ignored local.properties contains the same URL and the portal publishable key. This resolves URL identity only: live schema, RLS, auth, storage authorization, and mobile data synchronization remain unverified. DEV/UAT/PROD separation is **not evidenced**. Do not add another backend authority.

<a id="source-02-app-flow"></a>
#### App flow

1. Sign in with the existing managed authentication provider.
2. Resolve the signed-in identity through `profiles`, staff linkage through `employees`, and capabilities through RLS/governed permission tables.
3. Query only RLS-permitted records with the publishable client.
4. Use the documented authenticated server mutation/RPC contracts for controlled actions.
5. For private files, request authorized signed delivery/upload flows; never build public object URLs.

<a id="source-02-stage-5-controlled-inventory-actions"></a>
#### Stage 5 controlled inventory actions

- Android posts Final GRN only through `create_grn` with a UUID generated once per submission and persisted across retries. The same UUID and unchanged payload return the original result; a changed payload is rejected.
- Material issue, return, transfer, and adjustment use their respective protected posting contracts. They are online-only, server-numbered, and never composed from client-side table writes.
- Use only `operational_receiving_purchase_orders` and `operational_receiving_purchase_order_items` for receiving screens. These operational projections deliberately omit unit prices, totals, tax, margins, payment terms, vendor banking, and finance-only data.

<a id="source-02-rls-assumptions"></a>
#### RLS assumptions

- Every mobile request is made with the current user session.
- RLS is authoritative; an empty result may mean access is not granted.
- Never replace an RLS check with locally cached role state.
- Re-check access and state when an offline draft is submitted.

<a id="source-02-storage-pattern"></a>
#### Storage pattern

Private buckets remain private. Download delivery uses an authorized signed URL when needed. External staged files use a server-issued signed upload token and remain quarantined until reviewed.

<a id="source-03"></a>
## Android Lifecycle Read Contract - 2026-10-03

**Source:** `Android and Backend Contracts/Android Lifecycle Read Contract - 2026-10-03.txt`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

Android lifecycle read contract

Verified date: 2026-10-02 UTC
Scope: authenticated read-only Android parity for lifecycle provenance. This contract does not authorize template editing, lifecycle materialization, feedback authoring, approvals, releases, notifications, or external sharing.

Read tables

All lifecycle tables have RLS enabled and grant SELECT to authenticated; service_role has ALL. There are no anon grants or write policies on these tables.

Table	Exact read predicate
department_process_templates	can_access_department_drive(auth.uid(), department_id, NULL)
department_process_template_stages	Parent template passes the template predicate.
project_stage_dependencies	Target stage joins to a project that passes can_access_department_drive(auth.uid(), project.department_id, project.id).
project_feedback_revisions	Project passes Drive access; the baseline is the project’s active baseline; optional Drive source belongs to the same project and department.
project_lifecycle_generation_requests	requested_by = auth.uid() only.

can_access_department_drive(user, department, project) accepts a Platform Owner, an active employee in the department, or an active employee project-team member. It does not infer ownership for legacy projects where department_id is null.

Exact table shape
department_process_templates

id uuid PK, department_id uuid NOT NULL → departments.id RESTRICT, template_key text NOT NULL, version integer NOT NULL, title text NOT NULL, description text, status text NOT NULL DEFAULT 'DRAFT' (DRAFT | ACTIVE | RETIRED), created_by uuid NOT NULL, created_at timestamptz NOT NULL, activated_at timestamptz, retired_at timestamptz; unique (department_id, template_key, version) and at most one ACTIVE version per (department_id, template_key).

department_process_template_stages

id uuid PK, template_id uuid NOT NULL → department_process_templates.id RESTRICT, stage_key text NOT NULL, title text NOT NULL, description text, sort_order integer NOT NULL, source_company_process_stage_id uuid NOT NULL → company_process_stages.id RESTRICT, task_department department_type NOT NULL (hardware | firmware | mechanical | qa | procurement | production | executive), required boolean NOT NULL DEFAULT true, created_by uuid NOT NULL, created_at timestamptz NOT NULL; unique per template for stage_key, sort_order, and source company stage.

project_stage_dependencies

id uuid PK, project_stage_record_id uuid NOT NULL → project_process_stage_records.id CASCADE, predecessor_stage_record_id uuid NOT NULL → project_process_stage_records.id CASCADE, created_by uuid NOT NULL, created_at timestamptz NOT NULL; self dependency is rejected and each ordered edge is unique.

project_feedback_revisions

id uuid PK, project_id uuid NOT NULL → projects.id CASCADE, requirement_baseline_id uuid NOT NULL → requirement_baselines.id RESTRICT, revision_number integer NOT NULL, status text NOT NULL DEFAULT 'DRAFT' (DRAFT | SUBMITTED | ACCEPTED | SUPERSEDED), feedback_text text NOT NULL, source_drive_node_id uuid → drive_nodes.id RESTRICT, created_by uuid NOT NULL, created_at timestamptz NOT NULL, submitted_at timestamptz, accepted_at timestamptz, superseded_at timestamptz; unique (project_id, revision_number).

project_lifecycle_generation_requests

request_key uuid PK, project_id uuid NOT NULL → projects.id RESTRICT, template_id uuid NOT NULL → department_process_templates.id RESTRICT, template_version integer NOT NULL, requested_by uuid NOT NULL, payload_hash text NOT NULL, result jsonb NOT NULL, created_at timestamptz NOT NULL.

Related read fields: project_process_stage_records.lifecycle_template_id, .lifecycle_template_version, .lifecycle_template_stage_id; project_tasks.lifecycle_source_key. drive_node_revisions uses sha256_checksum, not checksum.

Lifecycle action status

The six action routines are SECURITY DEFINER, use search_path=public, and are executable only by postgres and service_role: create_department_process_template(uuid,text,text,text), upsert_department_process_template_stage(uuid,uuid,text,text,text,integer,uuid,department_type,boolean), clone_department_process_template(uuid), activate_department_process_template(uuid), retire_department_process_template(uuid), and generate_project_lifecycle_draft(uuid,uuid,uuid).

Android action status: none accepted. Mobile clients must not call those routines, cannot create/modify lifecycle records, and must treat lifecycle data as read-only until protected server actions are deployed and database acceptance succeeds.

Guard behavior
Template and stage provenance is server-owned; DRAFT-only edits are enforced by triggers.
Activation and retirement are protected transitions; active and retired content is immutable.
Generation authorizes before replay. An exact same request_key, actor, project, template/version, and payload hash returns the saved receipt; any difference conflicts.
Stage generation rejects an existing project/company-stage source; successor versions do not regenerate automatically.
New dependency edges and legacy predecessor_record_id writes run one mixed graph cycle guard under a project advisory lock.
A linked process stage cannot move to another project; the reassignment trigger checks both new dependency edges and legacy predecessor links.
Generation receipts are insert-only and immutable.
Applied source integrity
Migration	SHA-256
supabase/migrations/20261002220916_5d158822-de77-479d-a8af-54037acc96ad.sql	5e169d9c341e64b9395408e3b17f8342aa1368f9060e95b621e9fc1b5f7a1612
supabase/migrations/20261002220956_e9863fb2-326a-48c2-92e7-3ecf984fadef.sql	0a1fcc234fd3d440472129f7413c0159345ed1de6a6867699a996cc19f7df580
supabase/migrations/20261002222912_968576b3-8784-47e4-acd1-90a0855c459b.sql	ae262f3354f420c02b81c2380cd66ca561d22dd222f4a0ba226d506be46457dc
supabase/migrations/20261002223025_f7f9fcf2-063e-4223-b757-54c0dac73714.sql	42dfb5773f322b02479284b75d36b96bd99b55280a510dd6c39b26d068e36773
Remaining acceptance findings

No database mutation, concurrent reverse-edge, rollback, or non-administrator RLS acceptance was run. Suitable isolated database access and approved test identities are required before enabling the server-action execution bridge. The Android build may read the contract above, but does not establish least-privilege acceptance.

<a id="source-04"></a>
## Mobile Backend Contract

**Source:** `Android and Backend Contracts/Mobile Backend Contract.md`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

<a id="source-04-mobile-backend-contract"></a>
### MOBILE BACKEND CONTRACT

**Generated:** 2026-09-24 UTC; refreshed after Mobile Stage 5 remediation.
**Authority:** live managed backend inventory, current migration history, and `src/integrations/supabase/types.ts`. This contract does not create a mobile backend or mobile UI. Object classifications below describe handoff suitability, not a blanket confirmation that every mobile user can read every object; RLS and purpose-specific permissions remain authoritative.

<a id="source-04-environment-strategy"></a>
#### Environment strategy

- Android may receive only `SUPABASE_URL` and `SUPABASE_ANON_OR_PUBLISHABLE_KEY` through its secure build configuration.
- Never ship a service-role key, database password, JWT signing key, OAuth secret, or any server-only vendor key.
- One managed backend is currently evidenced for preview and production. Separate DEV/UAT/PROD environments are **not evidenced** and must not be assumed.

<a id="source-04-authentication-identity-and-authorization"></a>
#### Authentication, identity, and authorization

- Reuse the same managed authentication account/session as the web application.
- Identity contract: `profiles` → `employees` (when staff-linked), `user_roles`, `employee_access_roles`, `employee_departments`.
- Authorization is enforced by RLS plus `has_role`, `has_permission`, `has_any_permission`, and domain helpers. Android must not store or decide a role locally.

<a id="source-04-authoritative-domain-object-map"></a>
#### Authoritative domain object map

`MOBILE_READ_SAFE` means an object may be evaluated for a mobile read surface only through a current-user session and its existing RLS policies. It does not imply unrestricted access, offline write support, or financial-data suitability.

| Platform support | `access_role_permissions` | role_id + permission_id | — | — | MOBILE_READ_SAFE |
| Identity & access | `access_roles` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `activity_log` | id | — | — | MOBILE_READ_SAFE |
| Identity & access | `application_modules` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `asset_assignments` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `asset_categories` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `assets` | id | asset_code | status | MOBILE_READ_SAFE |
| Common work & documents | `assignment_batches` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `assignments` | id | — | — | MOBILE_READ_SAFE |
| Automation & provenance | `automation_job_leases` | id | — | — | MOBILE_READ_SAFE |
| Automation & provenance | `automation_rules` | id | — | — | MOBILE_READ_SAFE |
| Automation & provenance | `automation_runs` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `calibration_records` | id | record_code | — | MOBILE_READ_SAFE |
| Platform support | `categories` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `component_projects` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `component_substitutes` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `components` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `customer_complaints` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `customer_contacts` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `customer_field_failures` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `customer_portal_access` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `customer_portal_shares` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `customer_requirement_revisions` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `customer_requirements` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `customer_returns` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `customer_satisfaction_surveys` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `customer_warranty_claims` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `customers` | id | customer_code | — | MOBILE_READ_SAFE |
| Automation & provenance | `data_provenance` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `datasheet_cache` | id | — | — | MOBILE_READ_SAFE |
| Identity & access | `departments` | id | — | — | MOBILE_READ_SAFE |
| Platform support | `document_numbering_config` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `drive_node_revisions` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `drive_nodes` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `drive_share_links` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `drive_user_favorites` | id | — | — | MOBILE_READ_SAFE |
| Identity & access | `employee_access_roles` | employee_id + role_id | — | — | MOBILE_READ_SAFE |
| Identity & access | `employee_departments` | employee_id + department_id | — | — | MOBILE_READ_SAFE |
| Identity & access | `employees` | id | employee_code | — | MOBILE_READ_SAFE |
| Common work & documents | `entity_registry` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_access_events` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_actions` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_api_clients` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_contacts` | id | — | — | MOBILE_READ_SAFE |
| Automation & provenance | `external_data_cache` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_data_room_items` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_data_rooms` | id | — | — | MOBILE_READ_SAFE |
| Automation & provenance | `external_integrations` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_parties` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_portal_access` | id | — | is_active / expires_at | MOBILE_READ_SAFE |
| External collaboration | `external_review_requests` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_share_snapshots` | id | snapshot_code | revoked_at / expires_at | MOBILE_READ_SAFE |
| External collaboration | `external_transmittals` | id | transmittal_number | — | MOBILE_READ_SAFE |
| External collaboration | `external_upload_requests` | id | request_code | — | MOBILE_READ_SAFE |
| External collaboration | `external_uploads` | id | — | — | MOBILE_READ_SAFE |
| External collaboration | `external_webhook_deliveries` | id | — | — | ONLINE_REQUIRED |
| External collaboration | `external_webhook_subscriptions` | id | — | active / disabled_at | MOBILE_READ_SAFE |
| Facility, assets & security | `facility_location_responsibilities` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `facility_locations` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `goods_receipt_items` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `goods_receipt_notes` | id | grn_number | status | ONLINE_REQUIRED |
| HR, QMS & management | `hr_applications` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_assessments` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_candidates` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_employee_onboarding_items` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_employee_onboardings` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_interview_feedback` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_interview_rounds` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_job_postings` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_job_profiles` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_job_requisitions` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_leave_balances` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_leave_requests` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_leave_types` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_offers` | id | — | — | MOBILE_READ_SAFE |
| Platform support | `hr_onboarding_items` | id | — | — | MOBILE_READ_SAFE |
| Platform support | `hr_onboarding_plans` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_policies` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_policy_acknowledgements` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_training_enrollments` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `hr_training_programs` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `imte_instruments` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `incoming_inspections` | id | — | status | MOBILE_READ_SAFE |
| Procurement, stores & quality | `inventory_lots` | id | — | status | ONLINE_REQUIRED |
| Procurement, stores & quality | `inventory_reservations` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `locations` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `maintenance_plans` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `maintenance_work_orders` | id | work_order_code | status | MOBILE_READ_SAFE |
| Facility, assets & security | `material_gate_passes` | id | pass_code | — | MOBILE_READ_SAFE |
| Common work & documents | `notifications` | id | — | — | MOBILE_READ_SAFE |
| Platform support | `organizations` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `payment_milestones` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `pcb_task_history` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `pcb_task_notes` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `pcb_task_photos` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `pcb_tasks` | id | — | — | MOBILE_READ_SAFE |
| Identity & access | `permissions` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `po_delivery_revisions` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `po_shipments` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_dispatch_units` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_dispatches` | id | — | — | ONLINE_REQUIRED |
| Production | `production_finished_goods_releases` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_in_process_inspections` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_kit_lines` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_kits` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_ncrs` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_ppap_packages` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_route_steps` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_routes` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_step_executions` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_unit_tests` | id | — | — | MOBILE_READ_SAFE |
| Production | `production_units` | id | — | status | ONLINE_REQUIRED |
| Identity & access | `profiles` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_bom_items` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_boms` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_change_requests` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_design_inputs` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_engineering_registers` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_issues` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_research_records` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `project_stage_gates` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `project_task_activity` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `project_task_checklists` | id | — | — | MOBILE_READ_SAFE |
| Common work & documents | `project_tasks` | id | — | status | MOBILE_READ_SAFE |
| Engineering & R&D | `project_team_members` | project_id + employee_id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `projects` | id | project_code | status | MOBILE_READ_SAFE |
| Procurement, stores & quality | `purchase_order_items` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `purchase_orders` | id | po_number | status | ONLINE_REQUIRED |
| Procurement, stores & quality | `purchase_request_items` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `purchase_requests` | id | request_number | status | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_audit_findings` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_audits` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_capas` | id | capa_number | status | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_contingency_plans` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_contingency_tests` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_improvements` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_kpi_formula_versions` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_kpi_snapshots` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_kpis` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_lessons_learned` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_management_reviews` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_objective_kpis` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_quality_objectives` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_retention_policies` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `qms_risks` | id | — | — | MOBILE_READ_SAFE |
| HR, QMS & management | `quick_expenses` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `quotation_items` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `quotations` | id | quotation_number | status | MOBILE_READ_SAFE |
| Platform support | `rd_members` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `requirement_baselines` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `requirement_change_requests` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `requirement_feasibility_reviews` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `rfq_vendors` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `rfqs` | id | rfq_number | status | MOBILE_READ_SAFE |
| Procurement, stores & quality | `rtv_records` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `sales_commercial_records` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `sales_enquiries` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `sales_nda_records` | id | — | — | MOBILE_READ_SAFE |
| Platform support | `sales_nda_templates` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `sales_opportunities` | id | — | — | MOBILE_READ_SAFE |
| Sales & customer | `sales_project_handovers` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `security_incidents` | id | — | — | MOBILE_READ_SAFE |
| Engineering & R&D | `shared_boms` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `stock_history` | id | — | — | ONLINE_REQUIRED |
| Procurement, stores & quality | `supplier_ncrs` | id | — | — | MOBILE_READ_SAFE |
| Identity & access | `user_roles` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `vehicle_entries` | id | — | — | MOBILE_READ_SAFE |
| Procurement, stores & quality | `vendors` | id | vendor_code | — | MOBILE_READ_SAFE |
| Facility, assets & security | `visitor_visits` | id | visit_code | — | MOBILE_READ_SAFE |
| Production | `work_order_materials` | id | — | — | MOBILE_READ_SAFE |
| Production | `work_orders` | id | work_order_number | status | ONLINE_REQUIRED |
| Facility, assets & security | `workstation_allocations` | id | — | — | MOBILE_READ_SAFE |
| Facility, assets & security | `workstations` | id | — | — | MOBILE_READ_SAFE |

<a id="source-04-domain-inventory"></a>
#### Domain inventory

<a id="source-04-identity--access"></a>
##### Identity & access

- `profiles`
- `employees`
- `departments`
- `access_roles`
- `permissions`
- `user_roles`
- `employee_access_roles`
- `employee_departments`
- `application_modules`

<a id="source-04-common-work--documents"></a>
##### Common work & documents

- `project_tasks`
- `project_task_checklists`
- `project_task_activity`
- `assignments`
- `assignment_batches`
- `notifications`
- `activity_log`
- `entity_registry`
- `drive_nodes`
- `drive_node_revisions`
- `drive_share_links`
- `drive_user_favorites`

<a id="source-04-engineering--rd"></a>
##### Engineering & R&D

- `projects`
- `project_team_members`
- `project_design_inputs`
- `project_research_records`
- `project_engineering_registers`
- `project_stage_gates`
- `project_issues`
- `project_change_requests`
- `components`
- `component_projects`
- `component_substitutes`
- `datasheet_cache`
- `project_boms`
- `project_bom_items`
- `shared_boms`
- `pcb_tasks`
- `pcb_task_history`
- `pcb_task_notes`
- `pcb_task_photos`

<a id="source-04-sales--customer"></a>
##### Sales & customer

- `customers`
- `customer_contacts`
- `sales_enquiries`
- `sales_opportunities`
- `sales_nda_records`
- `sales_commercial_records`
- `sales_project_handovers`
- `customer_requirements`
- `customer_requirement_revisions`
- `requirement_baselines`
- `requirement_change_requests`
- `requirement_feasibility_reviews`
- `customer_portal_access`
- `customer_portal_shares`

<a id="source-04-procurement-stores--quality"></a>
##### Procurement, stores & quality

- `vendors`
- `purchase_requests`
- `purchase_request_items`
- `rfqs`
- `rfq_vendors`
- `quotations`
- `quotation_items`
- `purchase_orders`
- `purchase_order_items`
- `po_delivery_revisions`
- `po_shipments`
- `goods_receipt_notes`
- `goods_receipt_items`
- `inventory_lots`
- `inventory_reservations`
- `stock_history`
- `locations`
- `incoming_inspections`
- `rtv_records`
- `supplier_ncrs`
- `payment_milestones`

<a id="source-04-production"></a>
##### Production

- `production_routes`
- `production_route_steps`
- `work_orders`
- `work_order_materials`
- `production_kits`
- `production_kit_lines`
- `production_units`
- `production_step_executions`
- `production_in_process_inspections`
- `production_unit_tests`
- `production_ncrs`
- `production_finished_goods_releases`
- `production_ppap_packages`
- `production_dispatches`
- `production_dispatch_units`

<a id="source-04-facility-assets--security"></a>
##### Facility, assets & security

- `facility_locations`
- `facility_location_responsibilities`
- `asset_categories`
- `assets`
- `asset_assignments`
- `maintenance_plans`
- `maintenance_work_orders`
- `imte_instruments`
- `calibration_records`
- `workstations`
- `workstation_allocations`
- `visitor_visits`
- `vehicle_entries`
- `material_gate_passes`
- `security_incidents`

<a id="source-04-hr-qms--management"></a>
##### HR, QMS & management

- `hr_job_postings`
- `hr_job_profiles`
- `hr_job_requisitions`
- `hr_candidates`
- `hr_applications`
- `hr_assessments`
- `hr_interview_rounds`
- `hr_interview_feedback`
- `hr_offers`
- `hr_employee_onboardings`
- `hr_employee_onboarding_items`
- `hr_leave_types`
- `hr_leave_balances`
- `hr_leave_requests`
- `hr_policies`
- `hr_policy_acknowledgements`
- `hr_training_programs`
- `hr_training_enrollments`
- `quick_expenses`
- `qms_quality_objectives`
- `qms_kpis`
- `qms_kpi_formula_versions`
- `qms_kpi_snapshots`
- `qms_objective_kpis`
- `qms_risks`
- `qms_contingency_plans`
- `qms_contingency_tests`
- `qms_audits`
- `qms_audit_findings`
- `qms_capas`
- `qms_improvements`
- `qms_lessons_learned`
- `qms_management_reviews`
- `qms_retention_policies`
- `customer_complaints`
- `customer_field_failures`
- `customer_warranty_claims`
- `customer_returns`
- `customer_satisfaction_surveys`

<a id="source-04-automation--provenance"></a>
##### Automation & provenance

- `automation_rules`
- `automation_runs`
- `automation_job_leases`
- `data_provenance`
- `external_data_cache`
- `external_integrations`

<a id="source-04-external-collaboration"></a>
##### External collaboration

- `external_parties`
- `external_contacts`
- `external_portal_access`
- `external_share_snapshots`
- `external_access_events`
- `external_transmittals`
- `external_review_requests`
- `external_actions`
- `external_upload_requests`
- `external_uploads`
- `external_data_rooms`
- `external_data_room_items`
- `external_api_clients`
- `external_webhook_subscriptions`
- `external_webhook_deliveries`

<a id="source-04-database-function--rpc-inventory"></a>
#### Database function / RPC inventory

| Function | Contract |
|---|---|
| `can_inward` | See generated type signature; server/database function. |
| `can_manage_leave` | See generated type signature; server/database function. |
| `can_manage_onboarding` | See generated type signature; server/database function. |
| `can_manage_recruitment` | See generated type signature; server/database function. |
| `can_manage_training` | See generated type signature; server/database function. |
| `can_purchase` | See generated type signature; server/database function. |
| `complete_automation_lease` | See generated type signature; server/database function. |
| `create_grn` | Atomic GRN posting via a security-definer RPC; service-side only. |
| `create_phase6_quotation` | Controlled supplier quotation creation; server-side only. |
| `create_phase6_rfq` | Controlled RFQ creation; server-side only. |
| `create_phase7_dispatch` | See generated type signature; server/database function. |
| `create_phase7_ppap_package` | See generated type signature; server/database function. |
| `create_phase7_work_order` | Controlled work-order creation; server-side only. |
| `create_purchase_order` | Atomic PO header and line creation via a security-definer RPC; service-side only. |
| `create_purchase_request_from_bom_shortage` | See generated type signature; server/database function. |
| `decide_incoming_inspection` | Incoming inspection decision; server-side only. |
| `decide_phase7_finished_goods_release` | See generated type signature; server/database function. |
| `decide_phase7_ppap_package` | See generated type signature; server/database function. |
| `disposition_phase7_ncr` | See generated type signature; server/database function. |
| `ensure_phase5_project_access_catalog` | See generated type signature; server/database function. |
| `external_contact_has_access` | See generated type signature; server/database function. |
| `external_current_contact_id` | See generated type signature; server/database function. |
| `external_current_party_id` | See generated type signature; server/database function. |
| `external_is_current_contact` | See generated type signature; server/database function. |
| `external_is_staff_manager` | See generated type signature; server/database function. |
| `external_log_access` | Server-side external access audit writer. |
| `get_drive_breadcrumbs` | See generated type signature; server/database function. |
| `get_public_application_status` | See generated type signature; server/database function. |
| `has_any_permission` | See generated type signature; server/database function. |
| `has_permission` | See generated type signature; server/database function. |
| `has_role` | See generated type signature; server/database function. |
| `is_employee_manager` | See generated type signature; server/database function. |
| `mark_po_sent` | See generated type signature; server/database function. |
| `next_business_number` | Central business-identifier allocator; do not call from mobile. |
| `next_document_number` | Central document-number allocator; do not call from mobile. |
| `phase6_can_finance` | See generated type signature; server/database function. |
| `phase6_can_quality` | See generated type signature; server/database function. |
| `phase6_shortage_snapshot` | See generated type signature; server/database function. |
| `phase7_can_production` | See generated type signature; server/database function. |
| `phase8_can` | See generated type signature; server/database function. |
| `provision_drive_for_project` | See generated type signature; server/database function. |
| `record_phase7_unit_execution` | Controlled unit execution event; server-side only. |
| `record_phase7_unit_inspection` | Controlled in-process inspection; server-side only. |
| `record_phase7_unit_test` | Controlled unit test; server-side only. |
| `review_phase6_record` | Controlled Phase 6 decision; server-side only. |
| `short_close_po_item` | See generated type signature; server/database function. |
| `submit_public_job_application` | See generated type signature; server/database function. |
| `toggle_node_star` | See generated type signature; server/database function. |
| `transition_phase7_work_order` | Controlled work-order lifecycle transition; server-side only. |
| `try_acquire_automation_lease` | See generated type signature; server/database function. |

<a id="source-04-server-transaction-contracts"></a>
#### Server transaction contracts

<a id="source-04-final-grn"></a>
##### Final GRN

- **Authority:** `create_grn(_po_id, _vendor_invoice_number, _vendor_invoice_date, _storage_notes, _items, _idempotency_key)`
- **Caller:** authenticated approved operational client/session; Android sends the protected RPC only with its current session and never with privileged credentials.
- **Inputs/outputs:** authoritative generated signature is in `src/integrations/supabase/types.ts`; returns JSON.
- **Atomicity:** **VERIFIED** as one database RPC.
- **Idempotency:** **VERIFIED** — request UUID plus canonical payload fingerprint returns the original result on identical retry and rejects conflicting reuse.
- **Concurrency:** **VERIFIED** — PO and affected PO item rows are locked before balance validation/mutation in the same posting transaction.
- **Authorization:** `can_inward` is checked inside the protected contract.
- **Numbering:** server-controlled; **VERIFIED**.

<a id="source-04-material-issue--return--transfer--adjustment--rtv"></a>
##### Material issue / return / transfer / adjustment / RTV

- **Material issue:** `post_material_issue` — online-only, numbered, permission-checked, idempotent atomic posting.
- **Return:** `post_material_return` — online-only, numbered, partial-return-aware, idempotent atomic posting.
- **Transfer:** `post_stock_transfer` — online-only, balance-neutral, numbered, idempotent atomic posting.
- **Adjustment:** `post_stock_adjustment` — online-only, reason-required, numbered, idempotent atomic posting.
- **RTV:** `rtv_records` exists with a controlled review contract, but stock posting atomicity/idempotency/concurrency are **NOT VERIFIED**.

<a id="source-04-storage-inventory"></a>
#### Storage inventory

| Bucket | Public | Path / use | Mobile rule |
|---|---|---|---|
| `project-drive` | No | Project-scoped drive objects | Read only through authorized RLS/signed delivery flows. |
| `pcb-photos` | No | PCB task evidence | Authorized engineering/project use only. |
| `datasheet-cache` | No | Datasheet cache | Treat as private cached reference data. |
| `external-staging` | No | `{party_id}/{contact_id}/{uuid}-{filename}` | Server-issued upload token; review required before internal use. |

<a id="source-04-mobile-action-classification"></a>
#### Mobile action classification

| Action | Classification | Rule |
|---|---|---|
| Lists and detail reads allowed by RLS | MOBILE_READ_SAFE | Cache only data authorized for the active session. |
| Task/activity/checklist drafts | OFFLINE_DRAFT_ONLY | Revalidate authorization and current record state when submitting. |
| Final GRN, stock posting, material issue/return/transfer/adjustment | ONLINE_REQUIRED | Invoke an approved server contract only; do not compose client-side writes. |
| Releases, approvals, PPAP, dispatch | ONLINE_REQUIRED | Server function/RPC plus permissions. |
| External webhook deliveries / integration secrets | NOT_FOR_MOBILE | Server-only. |

<a id="source-04-offline-policy"></a>
#### Offline policy

- Use one Android sync coordinator.
- **Cache read-only:** authorized reference data, assigned tasks, permitted documents metadata.
- **Offline draft only:** task notes/checklists and user-entered form drafts without official identifiers.
- **Online only:** all approvals, releases, inventory effects, GRN, production execution decisions, external access changes, and any controlled business identifier.
- Do not generate official numbers on-device; server numbering functions and triggers are the authority.

<a id="source-04-known-backend-gaps-for-mobile"></a>
#### Known backend gaps for mobile

See `BACKEND_GAPS.md`. Stage 5 stock posting and receiving-read gaps are remediated; legacy migration reconciliation, environment separation, outbound webhook delivery, and full live-session acceptance evidence remain documented gaps.

<a id="source-08"></a>
## Verified Department Drive Scope - 2026-10-02

**Source:** `Android and Backend Contracts/Verified Department Drive Scope - 2026-10-02.md`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

<a id="source-08-department-drive-read-scope--2026-10-02"></a>
### Department Drive read scope — 2026-10-02

Source: existing 2026-10-01 document-control contract and visible Lovable scope-repair report on 2026-10-02. This is a reported implementation contract, not independent non-admin RLS acceptance.

<a id="source-08-verified-existing-fields-and-relations"></a>
#### Verified existing fields and relations

- `public.drive_nodes.department_id`: nullable UUID; department ownership. `project_id` and `parent_id` are nullable UUIDs; `is_trashed` is boolean; `folder_kind` is text (default `STANDARD`). Names and aliases are presentation only.
- Drive reads remain under `can_access_department_drive(auth.uid(), department_id, project_id)`.
- `project_boms.project_id` links a BOM to its project; `projects.id/name` provide its display name.
- Controlled-register reads use `drive_node_id` and selected `department_id`; events are read for that visible register ID.

<a id="source-08-reported-web-correction"></a>
#### Reported web correction

Lovable reports changes in `DriveBrowser.tsx`, `SsmOneSidebar.tsx`, `MobileWorkspaceTabs.tsx` and `department-workspace-navigation.ts`: missing HR/Procurement Documents entry points added, workspace ID retained in Drive links, owned department roots/categories filtered, stale folder/search/filter/open-file state cleared on workspace switch. All-workspace Drive is admin-only. Null-department legacy records are excluded, not assigned by inference.

<a id="source-08-android-implementation-boundary"></a>
#### Android implementation boundary

Select `drive_nodes` with `is_trashed=false` and the actual active `department_id`. Never interpret absent department ID as permission for an unscoped query. Clear listing/history/selection immediately on scope switch; invalidate stale responses, including A→B→A and delayed signed-file effects. Query BOM/project display records only for project IDs linked by returned department-owned nodes. This presentation filter supplements backend RLS; it does not grant access or impersonate another identity.

No ownership, membership, role, storage-policy or RLS migration is authorized by this contract. Legacy records need a separate reviewed ownership mapping. Category enum values other than the documented default and exact category metadata keys are not established here; do not invent them in Android.

<a id="source-08-acceptance-limits"></a>
#### Acceptance limits

The old hosted preview independently reproduced the mismatch. Lovable reports a current editor-preview correction and successful build; our editor preview remains blank, and Lovable reports an incident affecting hosted preview delivery. Independent web runtime acceptance is pending a working served build. Admin workspace selection is not least-privilege testing. Actual employee identities and allowed/denied private-file reads must still be tested.

<a id="source-09"></a>
## Verified Document Control Read Contract - 2026-10-01

**Source:** `Android and Backend Contracts/Verified Document Control Read Contract - 2026-10-01.md`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

<a id="source-09-lovable-document-control-handoff--2026-10-01"></a>
### Lovable document-control handoff — 2026-10-01

Source: visible Lovable project response to read-only contract request. This is a reported schema inspection, not authenticated acceptance evidence.

Read-only follow-up: please print the exact dated mobile document-control read contract here, not just filenames. Include actual table/view names, fields/types and relation keys for register, Drive scope, revisions, review/approval timeline and lifecycle/evidence; exact RPC arguments/results, existing states and permissions. Distinguish backend enforced functionality from UI-only/planned gaps and list exact tests and authenticated acceptance evidence. No additional changes in this follow-up.

Show more
Today at 9:38 PM
Used 9 tools
Dated mobile document-control read contract — 2026-10-01 UTC
Scope and client boundary
Read access: authenticated mobile clients may query only records permitted by backend row-level policies. The backend is authoritative; an empty result can mean no access.
Private files: Drive files remain private. This contract does not establish a general mobile signed-download endpoint for controlled files.
Mutations: document review, approval, release, and supersession are currently web-only / online-only. Android must not directly invoke the transition RPC until a dedicated mobile server action and authenticated acceptance testing are approved.
No invented evidence: no real controlled-document records, reviewer/approver assignments, OEM audit outcomes, certificates, KPIs, or customer applicability data were seeded.
1. Controlled-document register
Table: public.document_control_registers

One register row represents one controlled Drive file. drive_node_id is unique: a Drive file can have only one controlled-document register record.

Field	Type	Required	Meaning
id	uuid	yes	Register primary key; default gen_random_uuid()
drive_node_id	uuid	yes	Controlled file; FK → drive_nodes.id, ON DELETE CASCADE; UNIQUE
department_id	uuid	yes	Owning department; FK → departments.id, ON DELETE RESTRICT
document_number	text	yes	Controlled identifier; UNIQUE
title	text	yes	Controlled-document title
document_status	text	yes	Default DRAFT; constrained to DRAFT, IN_REVIEW, APPROVED, OBSOLETE
controlled_version	integer	yes	Default 1; must be greater than zero
approval_note	text	no	Latest recorded decision/release note
approved_by	uuid	no	Approving user identifier
approved_at	timestamptz	no	Approval timestamp
created_by	uuid	yes	Defaults to current authenticated user
created_at	timestamptz	yes	Defaults to now()
updated_at	timestamptz	yes	Defaults to now()
project_id	uuid	no	Related project; FK → projects.id, ON DELETE SET NULL
source_revision_id	uuid	no	Authoritative source revision; FK → drive_node_revisions.id, ON DELETE SET NULL
source_revision_number	integer	no	Source Drive revision number
owner_employee_id	uuid	no	Document owner; FK → employees.id, ON DELETE SET NULL
reviewer_employee_id	uuid	no	Assigned reviewer; FK → employees.id, ON DELETE SET NULL
reviewer_decision	text	no	APPROVED or REJECTED only
reviewer_decided_at	timestamptz	no	Reviewer decision timestamp
approver_employee_id	uuid	no	Assigned approver; FK → employees.id, ON DELETE SET NULL
change_reason	text	no	Reason for the controlled change
released_at	timestamptz	no	Release timestamp
superseded_by_register_id	uuid	no	Replacement record; self-FK → document_control_registers.id, ON DELETE SET NULL
linked_task_id	uuid	no	Related work item; FK → project_tasks.id, ON DELETE SET NULL
evidence_drive_node_id	uuid	no	Evidence file; FK → drive_nodes.id, ON DELETE SET NULL
Register read permission

Authenticated users can read a row only if:

can_access_department_drive(auth.uid(), department_id, NULL)

Platform Owners (admin) additionally have full register management access. Normal mobile use should treat the above as the effective scope; never use cached client role state as authority.

2. Drive scope and authoritative source file
Table: public.drive_nodes

drive_nodes stores folders and files used by the Drive hierarchy.

Field	Type	Required	Meaning
id	uuid	yes	Drive node primary key
project_id	uuid	no	Project scope for project documents
parent_id	uuid	no	Parent Drive folder/node
name	text	yes	Display name
slug	text	yes	Stable folder/file slug
node_type	text	yes	File or folder classification
file_type	text	no	Document classification, where supplied
mime_type	text	no	MIME type
file_size_bytes	bigint	no	File size
storage_bucket	text	no	Private storage bucket
storage_path	text	no	Private object path
sha256_checksum	text	no	File checksum
is_starred	boolean	yes	Default false
current_version	integer	yes	Default 1
is_locked	boolean	yes	Default false
is_trashed	boolean	yes	Default false
created_by	uuid	no	Creator
created_at, updated_at	timestamptz	yes	Audit timestamps
metadata	jsonb	yes	Default empty object
department_id	uuid	no	Department scope
folder_kind	text	yes	Default STANDARD; used by Drive hierarchy/filtering

Read policy: an authenticated user may read a Drive node only where:

can_access_department_drive(auth.uid(), department_id, project_id)

This applies department and project context together. Controlled documents inherit their access boundary through their department/project-linked record and Drive file.

3. Revision history
Table: public.drive_node_revisions

Each revision belongs to exactly one Drive node.

Field	Type	Required	Meaning
id	uuid	yes	Revision primary key
node_id	uuid	yes	FK → drive_nodes.id, ON DELETE CASCADE
version	integer	yes	Revision sequence number
file_size_bytes	bigint	yes	Defaults to 0
storage_path	text	yes	Private revision object path
sha256_checksum	text	no	Revision checksum
change_summary	text	no	Revision summary
uploaded_by	uuid	no	Uploader
created_at	timestamptz	yes	Defaults to now()

Read policy currently enforced: authenticated users need projects.view or projects.manage.

Important relation rule: the controlled-document revision link is validated so that the referenced revision belongs to the registered Drive node; version traceability is not inferred from free-text labels.

Service-only revision helper
resolve_document_control_revision(
  p_node_id uuid,
  p_revision_number integer
) returns uuid
Security-definer helper.
Execute permission: service role only.
Not available to mobile clients or normal authenticated browser clients.
4. Review, approval, release, and evidence timeline
Table: public.document_control_events

Append-only event history for the existing register.

Field	Type	Required	Meaning
id	uuid	yes	Event primary key
register_id	uuid	yes	FK → document_control_registers.id, ON DELETE CASCADE
event_type	text	yes	REGISTERED, STATUS_CHANGED, APPROVED, or VERSION_UPDATED
from_status	text	no	Previous lifecycle state
to_status	text	no	Resulting lifecycle state
version	integer	no	Controlled version at event time
note	text	no	Decision or workflow note
actor_id	uuid	yes	Actor; defaults to auth.uid()
created_at	timestamptz	yes	Defaults to now()
revision_id	uuid	no	FK → drive_node_revisions.id, ON DELETE SET NULL
action_request_key	uuid	no	Idempotency key that produced the event
decision	text	no	Recorded decision when applicable
change_reason	text	no	Recorded change reason

Event read policy: authenticated users may read events only when they can access the linked register’s department:

can_access_department_drive(auth.uid(), register.department_id, NULL)

Platform Owners have full history management access.

View: public.controlled_document_audit_timeline

Use for a chronological controlled-document timeline. It joins document events to the register and Drive revision context where linked. It is a security-invoker view: the caller’s normal RLS access remains in force.

View: public.controlled_document_audit_gaps

Use to display honest missing-evidence flags rather than assuming compliance. Current gap codes are:

SOURCE_REVISION_MISSING
OWNER_MISSING
REVIEWER_MISSING
APPROVER_MISSING
CHANGE_REASON_MISSING
LINKED_TASK_MISSING
EVIDENCE_MISSING

This is also a security-invoker view. A gap is evidence that information is missing, not an audit result or a failure determination.

5. Lifecycle states and protected transition
Existing document states
DRAFT
IN_REVIEW
APPROVED
OBSOLETE
Supported protected actions
SUBMIT_REVIEW
REVIEW_APPROVE
REVIEW_REJECT
APPROVE
RELEASE
SUPERSEDE
RPC contract
transition_document_control(
  p_register_id uuid,
  p_action text,
  p_expected_status text,
  p_note text,
  p_change_reason text,
  p_request_key uuid
) returns jsonb

Expected successful JSON result:

{
  "register_id": "uuid",
  "action": "SUBMIT_REVIEW | REVIEW_APPROVE | REVIEW_REJECT | APPROVE | RELEASE | SUPERSEDE",
  "status": "DRAFT | IN_REVIEW | APPROVED | OBSOLETE",
  "controlled_version": 1,
  "processed_at": "timestamp with time zone"
}
Backend-enforced transition rules
Action	Required current state	Result
SUBMIT_REVIEW	DRAFT	IN_REVIEW
REVIEW_APPROVE	IN_REVIEW	Remains IN_REVIEW; sets reviewer decision to APPROVED
REVIEW_REJECT	IN_REVIEW	DRAFT; sets reviewer decision to REJECTED
APPROVE	IN_REVIEW and reviewer decision APPROVED	APPROVED
RELEASE	APPROVED	Remains APPROVED; sets released_at
SUPERSEDE	APPROVED	OBSOLETE
Backend permissions

The caller must be authenticated and meet both conditions:

Has Drive access for the record’s department/project:
can_access_department_drive(auth.uid(), register.department_id, register.project_id)
Is a Platform Owner (admin) or has at least one of:
documents.edit
projects.manage
engineering.manage
qms.edit
quality.edit

Additional assignment enforcement:

If reviewer_employee_id exists, only that active employee’s user account or a Platform Owner may run REVIEW_APPROVE / REVIEW_REJECT.
If approver_employee_id exists, only that active employee’s user account or a Platform Owner may run APPROVE / RELEASE.
Concurrency and replay protection

The backend enforces:

A UUID p_request_key is required.
document_control_action_requests.request_key is unique.
Repeating the same request key, same authenticated user, and same payload returns the original JSON result.
Reusing the key with a different payload or user fails.
The register row is locked during transition processing.
p_expected_status must equal the stored current status or the action fails with a refresh-and-retry error.
The transition writes the register update, event history, request receipt, and activity log transactionally.
Table: public.document_control_action_requests
Field	Type	Required	Meaning
id	uuid	yes	Receipt primary key
request_key	uuid	yes	Unique client idempotency key
register_id	uuid	yes	FK → document_control_registers.id, ON DELETE CASCADE
action	text	yes	One of the six supported actions
requested_by	uuid	yes	Authenticated actor
payload_hash	text	yes	Backend replay-integrity hash
result	jsonb	yes	Persisted successful action response
created_at	timestamptz	yes	Receipt timestamp

Receipt read policy: the requesting user may read their own receipt; Platform Owners may read all receipts.

6. Project lifecycle, handover, and evidence links
Table: public.company_process_stages

Internal taxonomy for HW_01 through HW_37; this is not a claim of APQP conformance, certification, customer applicability, or OEM audit completion.

Field	Type
id	uuid
stage_code	text, unique
title	text
description	text, nullable
owning_department_id	uuid, nullable
reviewer_department_id	uuid, nullable
sort_order	integer
requires_gated_handover	boolean
is_active	boolean
created_at, updated_at	timestamptz

Authenticated users may read this taxonomy.

Table: public.project_process_stage_records

Maps a project to one internal stage. The pair (project_id, company_process_stage_id) is unique.

Field	Type	Relation / meaning
id	uuid	Primary key
project_id	uuid	Project scope
company_process_stage_id	uuid	FK → company_process_stages.id
status	text	NOT_STARTED, IN_PROGRESS, IN_REVIEW, BLOCKED, HANDED_OVER, COMPLETE, REDESIGN_REQUIRED
owner_employee_id	uuid	Optional responsible employee
reviewer_employee_id	uuid	Optional reviewing employee
predecessor_record_id	uuid	Optional preceding stage record
linked_task_id	uuid	Optional linked project task
evidence_drive_node_id	uuid	Optional evidence Drive file
change_request_id	uuid	Optional engineering change request
handover_note	text	Optional handover record
created_at, updated_at	timestamptz	Audit timestamps

Read: project team members with project/department Drive access.
Manage: additionally requires one of projects.manage, engineering.manage, or documents.edit.

7. Engineering BOM source traceability
Table: public.project_boms

The source-link fields are optional and preserve the authoritative Drive file rather than duplicating it.

Field	Type	Meaning
id	uuid	BOM primary key
bom_number	text	Protected generated BOM identifier
project_id	uuid	BOM project
name	text	BOM name
source_filename	text, nullable	Legacy display field only
revision	text, nullable	Legacy display field only
source_drive_node_id	uuid, nullable	Authoritative Drive source file
source_drive_revision_id	uuid, nullable	Exact source revision
notes	text, nullable	Notes
line_count	integer	Default 0
total_cost	numeric, nullable	Cost when authorized/available
created_by	uuid, nullable	Creator
created_at, updated_at	timestamptz	Audit timestamps

Backend validation verifies:

source_drive_node_id belongs to the BOM’s project_id.
If supplied, source_drive_revision_id belongs to that Drive node.

The legacy source_filename and revision fields are descriptive only; they do not prove a source document or revision.

Backend-enforced functionality vs UI/planned gaps
Enforced now
Department/project Drive RLS checks for controlled-document and Drive-node reads.
Controlled lifecycle state validation.
Reviewer and approver assignment restrictions where assignments exist.
Required authenticated permission and department/project scope for progression.
Idempotency receipts, payload-bound replay protection, row locking, and expected-state concurrency control.
Event history and activity logging for protected transitions.
Register-to-Drive and source-revision relationships.
Audit-gap projection for missing source, ownership, decision, task, reason, or evidence data.
BOM authoritative Drive file/revision ownership validation.
Internal HW_01–HW_37 project-stage records with task/evidence/change/handover references.
UI-only or not yet evidenced
The web UI exposes controlled-document next actions; mobile does not have an approved decision workflow.
No dedicated mobile signed-file delivery contract exists for controlled document files.
No authenticated end-to-end mobile evidence has been captured for these records, transitions, or file delivery.
No evidence confirms that existing legacy register rows contain all owner/reviewer/approver/source/task/evidence fields.
Customer applicability, OEM-specific requirements, certificate assertions, and actual audit results are not modelled as verified evidence by this contract.
The taxonomy does not itself enforce APQP gates or certify completion.
Exact acceptance tests required
Backend/RPC tests
Authentication: unauthenticated transition fails with Authentication required.
Scope: user outside the record’s department/project Drive scope cannot transition it.
Permission: scoped user without one of the required permissions cannot transition it.
Reviewer assignment: a different non-admin reviewer cannot approve or reject an assigned review.
Approver assignment: a different non-admin approver cannot approve or release an assigned document.
State flow: validate each accepted transition and reject invalid transitions:
Draft → submit review → in review
In review → reviewer approve → remains in review
In review + approved review → approve → approved
Approved → release → remains approved with timestamp
Approved → supersede → obsolete
In review → reviewer reject → draft
Approval guard: APPROVE fails unless reviewer decision is APPROVED.
Optimistic concurrency: stale p_expected_status fails after another valid transition.
Replay: identical request key/payload/user returns the original persisted JSON result.
Replay conflict: reusing a request key with another payload or actor fails.
Source revision integrity: source revision must belong to the registered Drive file.
BOM integrity: BOM Drive source file must belong to the BOM project, and revision must belong to that file.
RLS reads: a user sees only permitted register rows, events, Drive nodes, revisions, stage records, and security-invoker audit views.
Audit gaps: incomplete records show the correct missing-evidence codes without claiming audit failure.
Authenticated acceptance evidence currently available
Backend schema, constraints, policies, RPC signatures, and transition implementation: inspected and confirmed.
Type safety and production application build: passed on 2026-10-01.
Signed-in browser/mobile acceptance: not executed. No approved test identity/session was available for live role-, department-, reviewer-, and approver-scoped testing.
Live controlled-document data: no register rows were available to validate against; no production-like records were invented for acceptance.

Correction: this was a read-only backend contract inspection, not a live workflow test.

Checked: live schema fields, constraints, RLS policies, foreign-key relationships, RPC signature/implementation, and permission grants through read-only backend queries.
Not checked: rendered UI, signed-in document actions, file delivery, mobile behavior, or end-to-end lifecycle transitions.
Current acceptance evidence: no authenticated session or controlled-document records were used; the listed acceptance tests remain required.
Seed real controlled documents
Wire document actions to mobile
Build the document lifecycle
Build the OEM traceability
Ask Lovable...

Build

<a id="source-10"></a>
## Verified Material Issue Read Contract - 2026-09-27

**Source:** `Android and Backend Contracts/Verified Material Issue Read Contract - 2026-09-27.md`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

<a id="source-10-verified-material-issue-read-contract"></a>
### Verified Material Issue Read Contract

Source: current Lovable post-remediation inspection, 2026-09-27.

<a id="source-10-assignees"></a>
#### Assignees

Read `rd_members`, filtering `active = true`, using `id`, `name`, `email`,
`role`, `department`, and `department_id`. Send `rd_members.id` as
`post_material_issue._assignee_id`; do not send an employee ID. Read access is
RLS-controlled by the existing projects/engineering permissions; administrators
are included.

<a id="source-10-issueable-stock"></a>
#### Issueable stock

Read `locations` with `quantity > 0`, using `id`, `component_id`,
`location_type`, `label`, and `quantity`, and join it to `components` by
`locations.component_id = components.id`. The RPC validates and decrements
`locations.quantity`. Do not include lot IDs in the issue request.

`inventory_lots` may be displayed as supplementary visibility data but its
balances are not the posting source.

<a id="source-10-protected-posting"></a>
#### Protected posting

`post_material_issue(_assignee_id, _project_id, _project_name, _notes, _items,
_idempotency_key)` is the sole authority. Items contain exactly
`component_id`, `location_id`, and positive integer `quantity`. An
Administrator is authorized. The server atomically creates issue, assignments,
stock-history events, and reduces location balance.

Persist one unchanged canonical payload and UUID for ambiguous retry. Do not
queue final issue offline.

<a id="source-11"></a>
## Verified Material Issue Return Contract - 2026-09-27

**Source:** `Android and Backend Contracts/Verified Material Issue Return Contract - 2026-09-27.md`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

<a id="source-11-verified-material-issue-and-return-contract"></a>
### Verified Material Issue and Return Contract

**Retrieved:** 2026-09-27 from the current Lovable project after post-remediation inspection.
**Scope:** Android Mobile Stage 5D. This is an additive handoff record; protected server RPCs remain the sole authority.

<a id="source-11-post_material_issue"></a>
#### `post_material_issue`

```text
post_material_issue(
  _assignee_id uuid,
  _project_id uuid | null,
  _project_name text | null,
  _notes text | null,
  _items jsonb,
  _idempotency_key uuid
) -> jsonb
```

`_items` is a non-empty JSON array. Every entry contains exactly these fields:

| Field | Type | Rule |
|---|---|---|
| `component_id` | UUID string | Must match the component at `location_id`. |
| `location_id` | UUID string | Must be an existing stock location. |
| `quantity` | positive integer | Must not exceed the locked location balance. |

Do not send extra item fields.

Example:

```json
[
  {
    "component_id": "a8bfbb6c-cc80-4179-8664-def9fee6869e",
    "location_id": "11111111-2222-3333-4444-555555555555",
    "quantity": 2
  }
]
```

Success response:

```json
{ "issue_id": "uuid", "issue_number": "ISS-2026-0001", "assignment_batch_id": "uuid" }
```

<a id="source-11-post_material_return"></a>
#### `post_material_return`

```text
post_material_return(
  _assignment_id uuid,
  _quantity integer,
  _idempotency_key uuid
) -> jsonb
```

Success response:

```json
{ "return_id": "uuid", "return_number": "RET-2026-0001", "assignment_id": "uuid", "status": "partial" }
```

`status` is `partial` until all issued quantity is returned, then `returned`.

<a id="source-11-return-selection"></a>
#### Return selection

`assignments` is authenticated/RLS-controlled and can supply `id`, `component_id`, `location_id`, `quantity`, `quantity_returned`, `assignee_id`, `status`, project details, and timestamps. A signed-in user sees an assignment only if they are the assigner/assignee or hold the documented project/engineering visibility permissions. An empty result can mean no access.

The return RPC independently requires `inventory.manage`, `procurement.manage`, or Administrator access. Calculate outstanding quantity as `quantity - quantity_returned`; server validation remains authoritative.

<a id="source-11-retry-and-errors"></a>
#### Retry and errors

Generate one UUID for one logical operation, persist it with the unchanged canonical payload before sending, and use the same UUID/payload for ambiguous transport retries. The server returns the original response without a further stock movement on a matching retry. A changed payload or use with the other transaction type fails with `Idempotency key already used with a different request`.

Validation and authorization errors are non-retryable until corrected. Relevant messages include `Not allowed to issue material`, `Assignee, item(s), and request key are required`, `Active R&D member not found`, `Invalid issue location`, `Insufficient stock for material issue`, `Not allowed to return material`, `Quantity and request key are required`, `Assignment not found`, and `Return quantity exceeds issued quantity`.

<a id="source-12"></a>
## Verified Safe Procurement Contract - 2026-09-26

**Source:** `Android and Backend Contracts/Verified Safe Procurement Contract - 2026-09-26.md`. **Treatment:** contract/reference snapshot; verify actual backend version. Latest decisions at the beginning of the master plan override conflicting older universal-stage, department or completion claims.

<a id="source-12-verified-safe-procurement-read-contract--2026-09-26"></a>
### Verified Safe Procurement Read Contract — 2026-09-26

<a id="source-12-evidence"></a>
#### Evidence

Verified in the Lovable Supabase SQL editor and from the authenticated Android app session for `narendok@gmail.com` (System Admin).

<a id="source-12-approved-stage-5a-read-projections"></a>
#### Approved Stage 5A read projections

- `operational_purchase_requests`
- `operational_purchase_request_items`
- `operational_rfqs`
- `operational_rfq_vendors`
- `operational_vendors`
- `operational_po_shipments`
- `operational_receiving_purchase_orders`
- `operational_receiving_purchase_order_items`

Use these projections only for Stage 5A mobile reads. Do not query their raw source tables from Android.

<a id="source-12-verified-safe-fields-used-by-android"></a>
#### Verified safe fields used by Android

`operational_receiving_purchase_orders`: `id`, `po_number`, `status`, `expected_delivery_date`.

`operational_vendors`: `id`, `name`, `vendor_code`, `is_active`, `supplier_status`, `quality_risk`.

The projection also exposes operational contact and address data for receiving POs. Android must request only fields needed for the screen and must continue to exclude commercial, payment, and bank fields.

<a id="source-12-test-evidence"></a>
#### Test evidence

The backend had zero procurement records despite the prior seed completion message. An idempotent, non-transactional vendor named `Android Sync Test Vendor` was added through Supabase. It contains no stock, approval, receiving, payment, or financial transaction. The authenticated Android Procurement screen displayed it from `operational_vendors`.

<a id="source-12-verified-server-contracts-discovered"></a>
#### Verified server contracts discovered

- `create_phase6_rfq(_purchase_request_id uuid, _project_id uuid, _response_due_date date, _terms text, _vendor_ids uuid[])`
- `create_purchase_order(_vendor_id uuid, _expected_delivery_date date, _notes text, _tax_amount numeric, _items jsonb)`
- `create_purchase_request_from_bom_shortage(_bom_id uuid, _required_date date)`

These are not used by the Android app yet. Any future mutation must be reviewed against the current backend handoff and remain online-only when required.


<a id="workspace-planning-consolidation--28-october-2026"></a>
## Workspace planning consolidation — 28 October 2026

These dated source files were consolidated from the working folder. Current master decisions and the ongoing Antigravity handoff take precedence; historical completion or pending statements are not current acceptance evidence. Application code, active repository handoffs and source data are unchanged. The source digest identifies the original bytes; the full source text is preserved below.

| Former working-folder file | Original SHA-256 | Retained section |
|---|---|---|
| `shared-test-workspace.md` | `22ad0243c3c0ed3604c3be2ff8c60f42e2a13305032cd9e255506fe385199c7d` | [Retained source](#workspace-shared-test-workspace-md) |


<a id="workspace-shared-test-workspace-md"></a>
### Retained source: shared-test-workspace.md

Original location: `C:/Users/Test/Documents/SSM-new/shared-test-workspace.md`. Treat as dated reference, not a second execution plan.

<!-- BEGIN CONSOLIDATED SOURCE 22ad0243c3c0ed3604c3be2ff8c60f42e2a13305032cd9e255506fe385199c7d -->
# Shared TEST workspace

Authenticated TEST sign-in opens `SharedTestWorkspace`, backed by the existing Lovable/Supabase project. The browser-local DEMO portal and its attachments are preserved independently; TEST never reads, imports, or writes that local record store.

## Shared behavior

- Projects, department evidence records, tasks and assignments, cross-department approval requests/decisions, document metadata, private-file revision access, and audit activity use the normalized backend tables.
- Reads are refreshed after each successful transaction, when the window regains focus, and every ten seconds. The header shows the last server read. A connection failure does not fall back to a local save.
- Admin/Sales create projects. Members can update their assigned tasks; leads manage their department. Only the explicitly requested reviewer department or an administrator can decide a review. Viewers receive no internal records without a separate client-release contract.
- Server transactions derive organization, actor and department from active membership. They serialize TEST writes, reject stale versions, preserve request identities across uncertain network retries, and create attributable audit entries atomically.
- Stage changes call the existing checked gate RPC. The client supplies approval identities and revisions; it cannot set stage/status as a substitute for a gate decision.
- Existing synthetic employees are assigned their known TEST department without creating users or changing passwords. No approval permission is granted to the employee role.

## Boundary

The shared TEST interface exposes the connected workflow modules above. The extensive demonstration-only domain screens, sample lifecycle walkthrough, inventory simulations, and local draft catalogue remain in the local DEMO portal. They are not presented as shared operational screens. Existing local records/files are not silently migrated to the cloud.

## Verification

`tests/shared-test-postgres.test.cjs` runs the real repository migrations against PostgreSQL via PGlite. It verifies independent actor reads, assigned-employee updates, denied cross-department reads/writes, delegated review decisions, atomic stage checks, stale edits, idempotent replay, immutable decisions, viewer restrictions and migration reapplication without data loss. The complete Node test suite, TypeScript check and production build are required before sync/deployment.

<!-- END CONSOLIDATED SOURCE 22ad0243c3c0ed3604c3be2ff8c60f42e2a13305032cd9e255506fe385199c7d -->
