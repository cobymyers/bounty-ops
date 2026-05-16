# Account Setup Tracker

This file tracks the accounts and access needed for the first paid OSS bounty attempt.

## Status

| Service | Purpose | Status | Owner |
| --- | --- | --- | --- |
| GitHub `cobymyers` | Public contributions, forks, PRs, issues | Ready | Codex can operate with approval |
| GitHub Sponsors | Future one-time sponsor payments | Pending approval | Coby |
| Stripe Connect | GitHub Sponsors payout rail | Connected, pending Sponsors approval | Coby |
| Algora | Payout-on-merge bounty rail | Not connected | Coby approval required |
| Archestra contributor onboarding | Required before Archestra PR/comment access | Blocked by human verification | Coby must complete |

## What Codex Can Handle

- Scout and rank paid OSS issues.
- Clone repos and inspect implementation paths.
- Create local branches and patches.
- Draft short, specific `/attempt` comments.
- Draft PR descriptions with `/claim #issue`.
- Run tests and prepare evidence.
- Publish support repos owned by `cobymyers` when approved.

## What Requires Human Action

- Human verification or anti-bot onboarding.
- GitHub OAuth app authorization.
- Algora payout account setup.
- KYC, tax forms, bank, Stripe, or identity details.
- Any action that submits payment details or legally binds the account.

## Current Human Blocker

Complete Archestra onboarding:

https://archestra.ai/contributor-onboard

Why: Archestra limits comments and PRs to onboarded/prior contributors. Their page is explicitly a human-verification gate, so Codex should not click through it.

## Next Codex Step After Onboarding

1. Pick a live Archestra Algora bounty that is not assigned or is explicitly up for grabs.
2. Draft the `/attempt #issue` comment with a concrete implementation plan.
3. Wait for maintainer assignment.
4. Implement on a branch.
5. Open PR with tests and `/claim #issue`.
