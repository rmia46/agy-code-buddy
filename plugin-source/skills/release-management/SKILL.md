---
name: release-management
description: Handle release preparation, semantic versioning, changelog compilation, and release artifact verification.
---

# Release Management Skill

## 1. Activation Conditions
- Milestone goals are fully achieved and approved by human supervisor.
- A new version tag or release is scheduled.

## 2. Required Inputs
- Target release version (SemVer: `vX.Y.Z`).
- Completed PRs and commits since previous release.

## 3. Step-by-Step Procedure
1. **Changelog Compilation**:
   - Aggregate all merged features, bug fixes, breaking changes, and documentation updates.
   - Update `CHANGELOG.md` following Keep a Changelog standards.
2. **Version Bump**:
   - Update project version metadata files (`package.json`, `Cargo.toml`, `pyproject.toml`, etc.).
3. **Release Readiness Report**:
   - Prepare a release summary document for supervisor approval.
4. **Draft Release via GitHub CLI**:
   - When supervisor approves, create release:
     ```bash
     gh release create <tag> --title "<tag>" --notes-file <notes.md> --draft
     ```

## 4. Verification Requirements
- Changelog reflects all changes accurately.
- Version numbers aligned across all project files.
- Release remains in draft or requires human confirmation before publication.

## 5. Expected Outputs
- Updated `CHANGELOG.md`.
- Release candidate draft report.

## 6. Failure Handling
- If unmerged blockers or open failing CI checks remain, abort release preparation and report blockers.
