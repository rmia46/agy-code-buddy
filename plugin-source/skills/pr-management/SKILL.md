---
name: pr-management
description: Manage GitHub Pull Request creation, linking to issues, monitoring CI checks, and addressing review comments.
---

# Pull Request Management Skill

## 1. Activation Conditions
- Code has passed independent QA and Code Review gates.
- New PR needs to be authored or an existing PR updated.
- CI results or PR comments need to be processed.

## 2. Required Inputs
- Branch name, target base branch (e.g., `main`).
- Linked issue number and summary of changes.

## 3. Step-by-Step Procedure
1. **Branch Push**:
   - Push branch to remote: `git push -u origin <branch-name>`.
2. **PR Creation**:
   - Create PR using GitHub CLI:
     ```bash
     gh pr create --title "<Type>: <Summary>" --body "..." --base main --head <branch-name>
     ```
   - Include description, test evidence, and `Closes #<issue-id>` link.
3. **CI Status Monitoring**:
   - Check status using `gh pr checks <pr-number>`.
   - If CI fails, fetch logs with `gh run view --log-failed`, triage failure, and assign Senior Developer to resolve.
4. **Review Comment Processing**:
   - Inspect PR comments via `gh pr view <pr-number> --comments`.
   - Implement legitimate feedback, commit, push, and respond to comments.
5. **Human Approval Gate**:
   - Note: Do NOT merge PR autonomously. Keep PR ready for supervisor sign-off.

## 4. Verification Requirements
- PR created and cleanly visible on GitHub.
- Issue properly linked.
- CI checks monitored and reported.

## 5. Expected Outputs
- Active PR URL and CI status report.

## 6. Failure Handling
- If CI persistently fails after 2 resolution cycles, escalate to supervisor with log summary.
