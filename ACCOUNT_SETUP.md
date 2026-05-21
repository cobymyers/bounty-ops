# Account Setup Tracker

This file tracks the accounts and access needed for the first paid OSS bounty attempt.

## Status

| Service | Purpose | Status | Owner |
| --- | --- | --- | --- |
| GitHub `cobymyers` | Public contributions, forks, PRs, issues | Ready | Codex can operate with approval |
| GitHub Sponsors | One-time sponsor payments for accepted work | Live | Codex can reference public link |
| Stripe Connect | GitHub Sponsors payout rail | Connected | Coby |
| Algora | Payout-on-merge bounty rail | Account created | Codex can target eligible bounties |
| Archestra contributor onboarding | Required before Archestra PR/comment access | Blocked by human verification | Coby must complete |

## What Codex Can Handle

- Scout and rank paid OSS issues.
- Clone repos and inspect implementation paths.
- Create local branches and patches.
- Draft short, specific `/attempt` comments.
- Draft PR descriptions with `/claim #issue`.
- Run tests and prepare evidence.
- Publish support repos owned by `cobymyers` when approved.

## Algora Operating Rule

Do not comment `/attempt`, claim, or open a PR on issues that have an assigned contributor, visible active attempt, active claim, or existing PR. Algora sign-up warns this can result in an immediate ban, so Codex should treat any occupied issue as off limits unless a maintainer explicitly reopens it.

## What Requires Human Action

- Human verification or anti-bot onboarding.
- GitHub OAuth app authorization.
- KYC, tax forms, bank, Stripe, or identity details.
- Any action that submits payment details or legally binds the account.

## Current Human Blocker

Complete Archestra onboarding:

https://archestra.ai/contributor-onboard

Why: Archestra limits comments and PRs to onboarded/prior contributors. Their page is explicitly a human-verification gate, so Codex should not click through it.

## Algora Account Boundary

Coby created the Algora account. Codex can find eligible Algora-backed issues and prepare/submit useful PRs, but should not approve OAuth changes, KYC, tax, payout, or identity forms.

## Sponsors Link

https://github.com/sponsors/cobymyers

Use this only after there is a concrete accepted or reviewable contribution. Avoid asking for payment before a maintainer has confirmed the work is useful.

## Next Codex Step After Onboarding

1. Pick a live Archestra Algora bounty that is not assigned or is explicitly up for grabs.
2. Draft the `/attempt #issue` comment with a concrete implementation plan.
3. Wait for maintainer assignment.
4. Implement on a branch.
5. Open PR with tests and `/claim #issue`.

## Next Codex Step Without Onboarding

1. Continue scanning for direct GitHub issues where the requester explicitly offers payment.
2. Prefer unoccupied issues where GitHub Sponsors is acceptable as the payout rail.
3. Open a PR only when the fix is useful even if no payment arrives.
