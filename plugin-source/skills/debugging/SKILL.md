---
name: debugging
description: Systematic runtime diagnosis, stack trace analysis, and failure resolution for failing test suites and builds.
---

# Debugging Skill

## 1. Activation Conditions
- Failing unit/integration test, compilation/build error, or runtime panic.

## 2. Required Inputs
- Build command and execution log with stack trace / failure details.

## 3. Step-by-Step Procedure
1. **Analyze Diagnostic Output**:
   - Parse compiler warnings, syntax errors, or assertion failures.
2. **Isolate First Failure**:
   - In cascading errors, focus strictly on the earliest failure in the log.
3. **Targeted Hypothesis & Verification**:
   - Formulate targeted hypothesis and inspect offending lines.
   - Use non-invasive print debugging or local assertions if needed.
4. **Minimal Remediation**:
   - Apply minimal fix addressing the root issue without introducing regressions.
5. **Re-run Test**:
   - Verify that test passes cleanly. Clean up any diagnostic statements.

## 4. Verification Requirements
- Offending error eliminated.
- Full test suite passes cleanly.

## 5. Expected Outputs
- Clean test run.
- Documented explanation of failure and resolution in commit log.

## 6. Failure Handling
- If fix breaks other tests, revert temporary change and rethink underlying assumptions. Max retry: 3 attempts.
