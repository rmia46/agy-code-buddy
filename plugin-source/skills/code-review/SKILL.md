---
name: code-review
description: Perform strict, independent code reviews covering architecture, style, error handling, performance, and maintainability.
---

# Code Review Skill

## 1. Activation Conditions
- A feature or bug-fix branch is ready before PR creation.
- A PR diff requires independent review.

## 2. Required Inputs
- Git diff or commit range (`git diff main...HEAD`).
- Target requirements and acceptance criteria.

## 3. Step-by-Step Procedure
1. **Diff Audit**:
   - Inspect every changed file and line.
   - Look for unintended changes, dead code, leftover debug statements, or whitespace churn.
2. **Architecture & Design Check**:
   - Verify alignment with `ARCHITECTURE.md` and repository conventions.
   - Check for proper separation of concerns and error propagation.
3. **Edge Case & Robustness Check**:
   - Check resource leaks, async unhandled promises, memory allocations, or missing validations.
4. **Independent Verdict**:
   - Deliver clear verdict: `APPROVED` or `CHANGES_REQUESTED`.
   - Provide concrete file and line citations with actionable remediation suggestions.

## 4. Verification Requirements
- Every issue raised has a clear rationale and solution recommendation.
- Never approve without reviewing tests and verifying that tests pass.

## 5. Expected Outputs
- Structured review assessment with line-specific feedback.
- Final approval status.

## 6. Failure Handling
- If severe architecture violation is found, block PR progression and notify Engineering Manager.
