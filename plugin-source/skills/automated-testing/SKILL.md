---
name: automated-testing
description: Author comprehensive automated tests, regression suites, edge-case validations, and test coverage improvements.
---

# Automated Testing Skill

## 1. Activation Conditions
- Code changes need verification.
- New feature or bug fix requires test coverage.
- Acceptance criteria require independent automated proof.

## 2. Required Inputs
- Target source files and specifications.
- Project testing framework (Jest, Pytest, Go test, Cargo test, Vitest, etc.).

## 3. Step-by-Step Procedure
1. **Framework Alignment**:
   - Identify existing test patterns, naming conventions (`*.test.ts`, `*_test.go`, `test_*.py`), and fixtures.
2. **Test Authoring**:
   - Write unit tests for core logical branches.
   - Write integration tests verifying contract between modules.
   - Include boundary condition tests (empty lists, nil pointers, maximum length, invalid inputs).
3. **Execution**:
   - Run tests using the native project command.
4. **Verification**:
   - Confirm all written tests pass and do not depend on external live networks or untrusted state.

## 4. Verification Requirements
- Tests run deterministically without flakiness.
- Real assertions tested (no tests with empty assertions).

## 5. Expected Outputs
- Newly added or updated automated test files.
- Test execution summary log.

## 6. Failure Handling
- If test suite fails, isolate whether failure is in the test or code under test, and report to QA / Senior Dev.
