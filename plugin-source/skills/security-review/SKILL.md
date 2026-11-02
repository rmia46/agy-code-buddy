---
name: security-review
description: Comprehensive security auditing, secret leakage scanning, dependency vulnerability assessment, and untrusted input verification.
---

# Security Review Skill

## 1. Activation Conditions
- Prior to PR publication or release readiness.
- When new dependencies or external network integrations are introduced.

## 2. Required Inputs
- Git diff, dependencies, and environment files.

## 3. Step-by-Step Procedure
1. **Secret & Credential Scan**:
   - Check diff for hardcoded API keys, tokens, passwords, `.env` file additions, or private key blocks.
2. **Untrusted Input Audit**:
   - Audit SQL queries, shell command executions, HTML rendering, and path operations for injection risks (SQLi, command injection, XSS, Path Traversal).
3. **Dependency Risk**:
   - Run dependency audit tools if available (`npm audit`, `pip audit`, `cargo audit`, `go list -m all`).
   - Check for newly added suspicious or untrusted packages.
4. **Access Control & Auth**:
   - Verify permissions and authorization checks are intact.

## 4. Verification Requirements
- Zero exposed credentials.
- Zero unvalidated input passed directly to system shells or database interpreters.

## 5. Expected Outputs
- Security sign-off: `PASSED` or `VULNERABILITY_DETECTED`.
- Remediation requirements for any detected vulnerability.

## 6. Failure Handling
- Any critical security finding immediately halts the workflow, requiring remediation before any further action.
