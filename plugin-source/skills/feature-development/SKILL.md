---
name: feature-development
description: End-to-end design, implementation, and local integration of new features following repository conventions.
---

# Feature Development Skill

## 1. Activation Conditions
- A new feature request or capability is assigned by the Engineering Manager.
- Milestone task is transitioned to active implementation.

## 2. Required Inputs
- Feature requirements and acceptance criteria.
- Target branch name and repository context.

## 3. Step-by-Step Procedure
1. **Branch Preparation**:
   - Create or switch to feature branch: `git checkout -b feature/<name>`.
   - When running concurrently with other agents, use git worktrees: `git worktree add ../wt-<name> feature/<name>`.
2. **Context Review**:
   - Check `ARCHITECTURE.md` and related source files to mirror coding styles.
3. **Implementation**:
   - Write clean, modular, and maintainable implementation.
   - Maintain documentation integrity and preserve unrelated docstrings.
4. **Local Integration & Unit Tests**:
   - Add unit and integration tests covering happy paths and edge cases.
   - Run tests and fix any compiler/runtime errors immediately.
5. **Atomic Commits**:
   - Commit code with descriptive conventional commit messages.

## 4. Verification Requirements
- Feature satisfies all acceptance criteria.
- Full test suite passes without regressions.
- Linter and type check commands pass with 0 errors.

## 5. Expected Outputs
- Feature code and accompanying automated tests.
- Updated `TASKS.md` marking task as ready for review.

## 6. Failure Handling
- If feature requires changes to core architecture, pause implementation and escalate to Software Architect / Supervisor.
