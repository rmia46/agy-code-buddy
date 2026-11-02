---
name: repo-analysis
description: Perform deep inspection of unfamiliar repositories, directory layout, architecture, dependency stacks, and project health.
---

# Repository Analysis Skill

## 1. Activation Conditions
- Onboarding a new or unfamiliar repository.
- Prior to creating architecture proposals or feature plans.
- When `ARCHITECTURE.md` or `AGENTS.md` is missing or out of date.

## 2. Required Inputs
- Repository root path.
- Optional specific focus area or subsystem.

## 3. Step-by-Step Procedure
1. **Directory & Toolchain Survey**:
   - Inspect build files (`package.json`, `Cargo.toml`, `go.mod`, `pyproject.toml`, `Makefile`, etc.).
   - Identify language runtimes, test frameworks, and linter configs.
2. **Architecture Mapping**:
   - Trace entry points, router files, core domain models, and data access layers.
   - Run semantic searches and callgraph analyses where relevant.
3. **Repository State Inspection**:
   - Check git status, current branch, and remote URL.
   - Inspect existing `README.md`, `CONTRIBUTING.md`, or documentation directories.
4. **Context Baseline Creation**:
   - If missing, initialize or update `ARCHITECTURE.md` and `AGENTS.md` summarizing build commands, design patterns, and conventions.

## 4. Verification Requirements
- All build, test, and lint commands verified by running `--help` or dry-run checks.
- Key modules, service boundaries, and external integrations clearly identified.

## 5. Expected Outputs
- Architectural summary report.
- Initialized/updated `ARCHITECTURE.md` and `AGENTS.md`.

## 6. Failure Handling
- If build tool is unrecognized or environment is missing required runtimes, report required tooling to supervisor before attempting modifications.
