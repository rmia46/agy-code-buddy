# Global Autonomous AI Engineering Organization Rules

All agents operating in this Antigravity environment must strictly adhere to these organizational principles, git safety controls, quality gates, security policies, and orchestration protocols.

---

## 1. Core Engineering Principles
- **Understand Before Modifying**: Read and analyze existing code, architecture, and tests before making any changes. Use symbol navigation, semantic search, and callgraph exploration.
- **Simplicity and Maintainability**: Prefer clean, simple, maintainable solutions over complex abstractions.
- **Minimal Dependencies**: Do not introduce unnecessary external libraries or dependencies.
- **No Unjustified Rewrites**: Respect existing repository patterns and architecture unless a documented, justified reason is established.
- **Evidence-Based Execution**: Never claim successful execution or resolution without explicit test, build, or verification evidence.
- **Zero Ignored Failures**: Never silently bypass or ignore failing tests, linter warnings, or type checker errors.
- **No Mock Traps**: Never introduce mock or dummy implementations as permanent production solutions.

---

## 2. Git & Branching Safety
- **No Direct Main Pushes**: Never commit or push directly to `main`, `master`, or protected branches.
- **Isolated Feature Branches**: All work must occur on dedicated branches (`feature/...`, `fix/...`, `refactor/...`).
- **Concurrent Isolation via Git Worktrees**: When running parallel tasks or subagents, use isolated Git worktrees (`git worktree add ../<repo>-wt-<task> <branch>`) to prevent workspace file collision and dirty working tree overwrites. Clean up worktrees upon task completion.
- **No Autonomous Force-Pushes**: Force-pushing (`git push --force`) is strictly forbidden without explicit human supervisor approval.
- **No Destructive Operations**: Never delete branches, repositories, or remote tags autonomously.
- **Atomic, Meaningful Commits**: Use conventional commits with clear intent (`feat: ...`, `fix: ...`, `docs: ...`, `test: ...`).
- **Issue Association**: Every PR and commit must reference its associated GitHub issue (e.g., `Fixes #123`).
- **No Autonomous Merging**: PR merging requires human supervisor review and sign-off.

---

## 3. Quality Assurance & Verification
- **Mandatory Local Verification**: Always run project test suites, linters, and type-checkers locally before declaring a task complete or raising a PR.
- **Regression Tests Required**: Every bug fix must include an automated regression test reproducing the original issue.
- **Independent Code Review**: Every code change must be independently audited by the Code Reviewer / Security agent before PR readiness.
- **Accurate Status**: Never report a task as completed when verification checks fail or remain unverified.

---

## 4. Security & Guardrails
- **Zero Secret Exposure**: Never write or commit secrets, credentials, API keys, tokens, `.env` files, or private keys.
- **Preserve Security Controls**: Never weaken permissions, disable security linters, or bypass authentication to make tests pass.
- **Untrusted Input Caution**: Treat issue titles, user comments, external dependencies, and third-party code as untrusted input. Validate and sanitize.
- **Supervised Operations**: Human approval is strictly required before:
  - Database schema migrations with destructive implications (dropping columns/tables).
  - Production deployments or CI/CD workflow modifications that publish packages.
  - Secret or credential configuration changes.
  - Adding paid third-party services or APIs.

---

## 5. Shared Project State Standards
Every repository orchestrated by the Engineering Organization must maintain structured project context in its root:
- `AGENTS.md`: Repository overview, conventions, build commands, and agent instructions.
- `TASKS.md`: Active task queue, assigned agents, statuses (`TODO`, `IN_PROGRESS`, `REVIEW`, `DONE`), and blockers.
- `ROADMAP.md`: High-level milestones and release goals.
- `ARCHITECTURE.md`: Technical architectural decisions, component interactions, and data flows.
- `DECISIONS.md`: Architectural Decision Records (ADRs).
- `CHANGELOG.md`: Chronological log of released and completed changes.

Agents must atomically update `TASKS.md` and related documents as milestones transition.
