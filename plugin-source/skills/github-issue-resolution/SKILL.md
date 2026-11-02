---
name: github-issue-resolution
description: Triage, analyze, plan, and autonomously resolve GitHub issues from discovery to PR.
---

# GitHub Issue Resolution Skill

## 1. Activation Conditions
- A GitHub issue number or URL is assigned for triage or implementation.
- Autonomous polling discovers an unassigned or pending open issue.

## 2. Required Inputs
- Issue number or URL.
- Current repository path with `gh` CLI access.

## 3. Step-by-Step Procedure
1. **Fetch & Triage**:
   - Run `gh issue view <issue-id> --json title,body,labels,assignees,comments`.
   - Check for duplicate or conflicting issues (`gh issue list --search "<keyword>"`).
2. **Clarification & Scope Check**:
   - If requirements are ambiguous or incomplete, synthesize clear acceptance criteria or flag questions in `TASKS.md`.
3. **Execution Delegation**:
   - Create isolated branch: `git checkout -b fix/issue-<issue-id>`.
   - Hand off to Senior Developer / QA Engineer subagents.
4. **Independent Verification**:
   - Run test suite and reproduce regression tests.
   - Run Code Reviewer / Security checks.
5. **PR Creation & Linking**:
   - Push branch and create PR using `gh pr create --title "..." --body "Closes #<issue-id> ..."`
   - Ensure PR links to issue.
6. **Task State Sync**:
   - Update `TASKS.md` and `CHANGELOG.md`.

## 4. Verification Requirements
- Issue acceptance criteria satisfied.
- Associated tests pass locally.
- PR created and linked to issue without auto-merging.

## 5. Expected Outputs
- Completed feature/fix branch.
- Passed local test report.
- Active Pull Request URL.

## 6. Failure Handling
- If issue contains conflicting requirements, halt task, log blocker in `TASKS.md`, and notify human supervisor.
