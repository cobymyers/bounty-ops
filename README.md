# Bounty Ops

Small operating scripts for finding realistic paid open-source work.

## Scan

```bash
./scan-bounties.sh
```

Optional:

```bash
MAX_COMMENTS=5 ./scan-bounties.sh
```

The scanner combines:

- GitHub issue search for explicit bounty/payment language
- Algora bounty boards that publish payout-on-merge tasks
- simple crowding filters so heavily contested issues are easier to skip

## Current Operating Rule

Do not comment, claim, or open a pull request unless:

- the payment path is clear
- the issue is not already assigned
- the implementation can be validated locally
- the public message is short, specific, and honest about AI-assisted work
