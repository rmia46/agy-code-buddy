# Antigravity Autonomous AI Engineering Organization

A turnkey, multi-agent AI engineering organization plugin for Google Antigravity. It configures your Antigravity environment to plan, implement, test, review, and manage GitHub pull requests across any software repository.

---

## Architecture Overview

```
                      ┌──────────────────────────────┐
                      │    Engineering Manager       │
                      │   (Central Orchestrator)     │
                      └──────────────┬───────────────┘
         ┌───────────────┬───────────┴───────────┬───────────────┬───────────────┐
         ▼               ▼                       ▼               ▼               ▼
┌─────────────────┐ ┌─────────┐         ┌─────────────────┐ ┌─────────┐ ┌─────────────────┐
│ Product Manager │ │Architect│         │Senior Developer │ │   QA    │ │  Code Reviewer  │
└─────────────────┘ └─────────┘         └─────────────────┘ └─────────┘ └─────────────────┘
                                                                                 ▲
                                                                        [Technical Writer]
```

### Specialist Agents
- **Engineering Manager**: Central coordinator receiving high-level user goals, delegating tasks, and compiling milestone reports.
- **Product Manager**: Requirement clarification, acceptance criteria, and GitHub issue triage.
- **Software Architect**: System design, component boundary definition, and architectural decision records (`ARCHITECTURE.md`, `DECISIONS.md`).
- **Senior Developer**: Implementation and refactoring in isolated branches and Git worktrees.
- **QA Engineer**: Independent automated test authoring, regression verification, and test execution evidence.
- **Code Reviewer & Security Engineer**: Strict read-only diff audits (`git diff main...HEAD`), credential leak checks, and security gates.
- **Technical Writer**: Maintenance of `README.md`, `CHANGELOG.md`, and technical documentation.

---

## 12 Included Global Skills

1. **`repo-analysis`**: Inspects unfamiliar repositories, dependencies, and architecture.
2. **`github-issue-resolution`**: Triages issues, creates feature branches, and builds linked PRs.
3. **`feature-development`**: Implements features adhering to repository standards.
4. **`bug-investigation`**: Diagnostic reproduction and root cause analysis.
5. **`debugging`**: Systematic compiler and runtime error diagnosis.
6. **`automated-testing`**: Unit, integration, and regression test authoring.
7. **`code-review`**: Independent architectural and code quality review.
8. **`security-review`**: Vulnerability, input sanitization, and secret leakage audits.
9. **`pr-management`**: Branch publishing, PR creation via GitHub CLI, and CI check monitoring.
10. **`release-management`**: SemVer bumping, changelog compilation, and draft releases.
11. **`documentation-maintenance`**: Synchronizes documentation with codebase realities.
12. **`technical-research`**: Library comparisons and technical trade-off evaluation.

---

## Global Engineering Rules

Enforced automatically on all agent operations:
- **Git Safety**: Never push directly to `main` or protected branches. Work in dedicated branches or git worktrees. No autonomous force-pushing.
- **Quality Gates**: Every bug fix requires an automated regression test. Independent code review required before PR creation.
- **Security**: Zero credential exposure. Never commit `.env` files or tokens. Untrusted input sanitization.
- **Supervisory Controls**: Halts and prompts the supervisor before destructive database migrations, PR merging, production deployments, or changes to protected branches.

---

## Installation & Restore

To restore or install this setup on any machine with Google Antigravity:

```bash
git clone https://github.com/rmia46/antigravity-autonomous-org.git
cd antigravity-autonomous-org
./install.sh
```

### Verification
Verify installation:
```bash
agy plugin list
```
You should see:
```text
Installed plugins:
- autonomous-eng-org (enabled)
    Components: 13 skills, 1 rule
```

---

## How to Use

1. Open any project workspace in Antigravity.
2. Assign a high-level goal to the **Engineering Manager**:
   > *"Engineering Manager: Take issue #15, analyze requirements, plan the implementation, and produce an independently reviewed pull request ready for my sign-off."*
3. The organization will handle triage, planning, branch isolation, implementation, testing, review, and PR authoring.
4. Review the generated milestone report and approve PR merging when ready.
