#!/usr/bin/env bash
set -euo pipefail

max_comments="${MAX_COMMENTS:-12}"

queries=(
  'bounty $50 is:open'
  'bounty $75 is:open'
  'bounty $100 is:open'
  '"$50" "bug" is:open'
  '"$75" "bug" is:open'
  '"$100" "bug" is:open'
  '"will pay" is:open'
  '"paid" "pull request" is:open'
  '"GitHub Sponsors" "issue" is:open'
)

scan_github() {
  local query="$1"

  gh search issues "$query" \
    --limit 50 \
    --json title,url,repository,updatedAt,commentsCount \
    --jq "
      .[]
      | select(.commentsCount <= ${max_comments})
      | select(.repository.nameWithOwner != \"claude-builders-bounty/claude-builders-bounty\")
      | select(.repository.nameWithOwner != \"Scottcjn/rustchain-bounties\")
      | select(.repository.nameWithOwner != \"Scottcjn/Rustchain\")
      | \"- [\\(.commentsCount) comments] \\(.repository.nameWithOwner): \\(.title)\\n  \\(.url)\""
}

scan_algora_board() {
  local board="$1"

  curl -fsSL "https://algora.io/${board}/bounties?status=open" |
    perl -0777 -ne '
      s/<[^>]+>/ /g;
      s/&nbsp;/ /g;
      s/&amp;/&/g;
      s/\s+/ /g;
      while (/\$([0-9,]+)\s+([a-zA-Z0-9_.-]+)#([0-9]+)\s+(.+?)\s+([0-9]+)\s+claims?/g) {
        my ($amount, $repo, $issue, $title, $claims) = ($1, $2, $3, $4, $5);
        next if $claims > '"${max_comments}"';
        $title =~ s/&quot;/"/g;
        print "- [${claims} claims] \$${amount} ${repo}#${issue}: ${title}\n  https://github.com/'"${board}"'/${repo}/issues/${issue}\n";
      }
    ' || true
}

for query in "${queries[@]}"; do
  printf '\n## %s\n' "$query"
  scan_github "$query"
done

printf '\n## Algora: archestra-ai\n'
scan_algora_board "archestra-ai"

printf '\n## Algora: projectdiscovery\n'
scan_algora_board "projectdiscovery"
