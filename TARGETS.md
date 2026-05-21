# Target Notes

## Current Best Track

Algora-backed repositories are the strongest near-term option because payment is tied to merged pull requests, not a private Venmo/Zelle/Sponsors negotiation.

GitHub Sponsors is live at `https://github.com/sponsors/cobymyers`, so direct-payment issues are also viable when the requester explicitly wants to pay for a fix and accepts GitHub Sponsors as the payout rail.

## Archestra

- Public repo: `archestra-ai/archestra`
- Language: TypeScript
- Bounty rail: Algora
- Status: promising but noisy
- Important constraint: contributors must onboard at `https://archestra.ai/contributor-onboard` before commenting or opening PRs.
- Important norm: coordinate before coding; do not compete with already assigned contributors.

## Ubiquity

- Public org: `ubiquity`
- Bounty rail: price labels
- Status: poor first target
- Reason: many tasks with visible payouts require collaborator/admin role before `/start` works.

## Live Scan Findings - 2026-05-21

### Candidate but currently occupied

- `ngscopeclient/scopehal-apps#987` - GBP 100 Flatpak bounty. Occupied by existing PR/review work and project has an explicit AI-code attribution policy. No action unless maintainers invite a non-code validation role.
- `zenolook123/VarlamoreThieving#10` - cash/GP offer. Existing PR already opened by another contributor.
- `Artificial-Pancreas/garminWatch#5` - $50 watchface offer. Existing PR already opened by another contributor.
- `kijai/ComfyUI-WanVideoWrapper#563` - paid Mac MPS bug request. Existing PR already opened by another contributor.
- `modxorg/DocsApp#98` - EUR 50 dependency upgrade. Existing PR already opened.
- `Syncleus/aparapi#43` - $50 message-passing bounty. Existing PR already opened.
- `Lucretiel/autocommand#30` - $50 `typing.Annotated` bounty. Existing PR already opened.
- `aporthq/aport-integrations#2` and `#8` - $50 bounties. Existing PRs already opened.
- `haraschax/nograd#2` - $100 bounty. Several existing PRs already submitted.
- `aukilabs/hagall#62` - $50 ROS2 relay bounty. Existing PRs already submitted.
- `dmamontov/hass-miwifi#409` - 50 USDT offer. Another contributor points to a separate updated repository and says it is free there.

### Candidate but blocked

- `archestra-ai/archestra` bounties - promising, but Archestra onboarding must be completed by a human first.
- `UnsafeLabs/Bounty-Hunters` bounties - exclude. Their acceptance criteria ask contributors to publish private runtime instructions in `_contributor.json`, which Codex must not do.
- `ClankerNation/OpenAgents` bounties - exclude for now. Very high claimed payouts, low-trust new repo, crypto-style payment details, and competition rules requiring public review attacks on competing PRs.

## Avoid

- Phishing/login-page clone requests
- Human-evaluation or survey bounties that require personal opinions
- Crypto/token bounties with unclear USD conversion or payout mechanics
- Highly crowded issues with hundreds of duplicate claims
- Any issue that requires leaking private system/developer/runtime instructions.
