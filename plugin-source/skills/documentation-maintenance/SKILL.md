---
name: documentation-maintenance
description: Keep technical documentation, architecture specs, API guides, and README files in sync with code reality.
---

# Documentation Maintenance Skill

## 1. Activation Conditions
- Code changes alter public APIs, CLI flags, configuration files, or workflows.
- Periodic documentation health audit.

## 2. Required Inputs
- Modified code files, schemas, or architectural updates.
- Relevant doc files (`README.md`, `ARCHITECTURE.md`, `docs/`, inline docstrings).

## 3. Step-by-Step Procedure
1. **Discrepancy Audit**:
   - Compare code changes against existing docs to find stale instructions or missing options.
2. **Document Updates**:
   - Update `README.md` for user-facing changes (setup, environment variables, commands).
   - Update `ARCHITECTURE.md` and `DECISIONS.md` for internal structural decisions.
   - Maintain accurate code examples and API signatures.
3. **Markdown Quality Check**:
   - Verify all links, code blocks, alerts, and formatting are valid.

## 4. Verification Requirements
- All instructions and sample commands tested and validated.
- Documentation accurately mirrors current code state.

## 5. Expected Outputs
- Updated documentation files with atomic git commit (`docs: ...`).

## 6. Failure Handling
- If architecture intent is unclear, request clarification from Software Architect or authoring agent.
