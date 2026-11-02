---
name: bug-investigation
description: Reproduce, isolate root causes, and prepare diagnostic regression tests for reported bugs.
---

# Bug Investigation Skill

## 1. Activation Conditions
- Bug report received, error log reported, or automated test failure detected.

## 2. Required Inputs
- Error message, stack trace, or bug description.
- Reproduction steps or environment context.

## 3. Step-by-Step Procedure
1. **Reproduction**:
   - Write a minimal failing test reproducing the exact issue.
   - Confirm test fails with identical symptoms prior to modifying production code.
2. **Root Cause Analysis (RCA)**:
   - Trace call graph from symptom to root defect.
   - Inspect boundary conditions, null/undefined states, state mutability, and async race conditions.
3. **Scope Assessment**:
   - Check if similar patterns exist elsewhere across the codebase.
4. **Handoff Package**:
   - Document root cause in `TASKS.md`.
   - Provide minimal failing test for the Senior Developer.

## 4. Verification Requirements
- Bug reproduced with a deterministic, failing test case.
- Root cause clearly isolated to specific file and line numbers.

## 5. Expected Outputs
- Failing test file / script demonstrating the bug.
- Root cause diagnosis report.

## 6. Failure Handling
- If unreproducible after 3 attempts, document system assumptions, log missing environment details, and escalate.
