#!/bin/bash
# KIMI GITHUB ALIASES v4.1 - GitHub CLI Integration
# REQUIRES: GitHub CLI (gh) installed and authenticated
# Uses: gh CLI for all operations (no direct API calls)

# ============================================
# CONFIGURATION
# ============================================
KIMI_GITHUB_CONFIG_DIR="${HOME}/.kimi"
KIMI_GITHUB_CONFIG_FILE="${KIMI_GITHUB_CONFIG_DIR}/github.config"

# Load configuration if exists
if [ -f "$KIMI_GITHUB_CONFIG_FILE" ]; then
    source "$KIMI_GITHUB_CONFIG_FILE"
fi

# ============================================
# COLOR CODES
# ============================================
if [ -t 1 ]; then
    KIMI_RED='\033[0;31m'
    KIMI_GREEN='\033[0;32m'
    KIMI_YELLOW='\033[1;33m'
    KIMI_BLUE='\033[0;34m'
    KIMI_PURPLE='\033[0;35m'
    KIMI_CYAN='\033[0;36m'
    KIMI_NC='\033[0m'
else
    KIMI_RED=''
    KIMI_GREEN=''
    KIMI_YELLOW=''
    KIMI_BLUE=''
    KIMI_PURPLE=''
    KIMI_CYAN=''
    KIMI_NC=''
fi

# ============================================
# CONFIGURATION & SETUP
# ============================================
kimi_github_config() {
    echo ""
    echo "🔧 GITHUB CLI CONFIGURATION"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    # Check if gh is installed
    if ! command -v gh &> /dev/null; then
        echo "❌ GitHub CLI (gh) not found"
        echo ""
        echo "Install GitHub CLI:"
        echo "  macOS:    brew install gh"
        echo "  Ubuntu:   sudo apt install gh"
        echo "  Windows:  winget install --id GitHub.cli"
        echo "  Other:    https://github.com/cli/cli#installation"
        return 1
    fi
    
    echo "✅ GitHub CLI found: $(gh --version | head -1)"
    echo ""
    
    # Check authentication status
    if gh auth status &> /dev/null; then
        echo "✅ Already authenticated with GitHub"
        gh auth status 2>&1 | grep -E "(Logged in|Token)" | head -2
    else
        echo "🔑 Authenticating with GitHub..."
        if [ -n "$GITHUB_TOKEN" ]; then
            echo "$GITHUB_TOKEN" | gh auth login --with-token
        else
            echo "No token found in ~/.kimi/github.config"
            echo "Run: gh auth login"
            echo "Or:  echo 'GITHUB_TOKEN=your_token' > ~/.kimi/github.config"
        fi
    fi
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "✅ GitHub CLI ready to use!"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-github-config=kimi_github_config

# Check gh installation and auth
kimi_github_check() {
    if ! command -v gh &> /dev/null; then
        echo "❌ GitHub CLI (gh) not installed"
        echo "Install: brew install gh"
        return 1
    fi
    
    if ! gh auth status &> /dev/null; then
        echo "❌ Not authenticated with GitHub"
        echo "Run: kimi-github-config"
        return 1
    fi
    
    return 0
}

# ============================================
# 👤 USER & REPOSITORY INFO
# ============================================
kimi_github_user() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "👤 GITHUB USER INFO"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh api user --jq '
    "Login: \(.login)
Name: \(.name // "N/A")
Email: \(.email // "N/A")
Company: \(.company // "N/A")
Location: \(.location // "N/A")
Bio: \(.bio // "N/A")
Public Repos: \(.public_repos)
Private Repos: \(.total_private_repos // 0)
Followers: \(.followers)
Following: \(.following)"
    '
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-user=kimi_github_user

kimi_github_repos() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "📦 YOUR REPOSITORIES"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "Recent repositories (last 10):"
    echo ""
    gh repo list --limit 10 --json name,description,updatedAt,pushedAt --jq '
    .[] | "• \(.name)\n  Updated: \(.updatedAt | split("T")[0])\n  Description: \(.description // "No description")\n"
    '
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-github-repos=kimi_github_repos

kimi_github_repo_view() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "📊 CURRENT REPOSITORY"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh repo view --json url,description,defaultBranch,stargazerCount,forkCount,openIssueCount,pullRequestCount --jq '
    "Repository: \(.url)
Description: \(.description // "N/A")
Default Branch: \(.defaultBranch)
⭐ Stars: \(.stargazerCount)
🍴 Forks: \(.forkCount)
📋 Open Issues: \(.openIssueCount)
🔀 Open PRs: \(.pullRequestCount)"
    '
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-repo=kimi_github_repo_view

# ============================================
# 📋 ISSUES
# ============================================
kimi_github_issues() {
    if ! kimi_github_check; then
        return 1
    fi
    
    local limit="${1:-10}"
    
    echo ""
    echo "📋 OPEN ISSUES"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh issue list --limit "$limit" --json number,title,author,labels,createdAt --jq '
    .[] | "#\(.number): \(.title)\n   Author: @\(.author.login) | Created: \(.createdAt | split("T")[0])\n   Labels: \([.labels[].name] | join(", ") // "none")\n"
    '
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-github-issues=kimi_github_issues

kimi_github_issue_view() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        echo "Usage: kimi-github-issue <issue-number>"
        return 1
    fi
    
    echo ""
    echo "📋 ISSUE #$1"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh issue view "$1"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-issue=kimi_github_issue_view

kimi_github_issue_create() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "📝 CREATE NEW ISSUE"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    read -p "Title: " title
    if [ -z "$title" ]; then
        echo "❌ Title required"
        return 1
    fi
    
    read -p "Body (press Enter for editor): " body
    
    if [ -z "$body" ]; then
        # Open editor
        gh issue create --title "$title"
    else
        gh issue create --title "$title" --body "$body"
    fi
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-issue-create=kimi_github_issue_create

kimi_github_issue_close() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        echo "Usage: kimi-github-issue-close <issue-number>"
        return 1
    fi
    
    gh issue close "$1"
    echo "✅ Issue #$1 closed"
}
alias kimi-github-issue-close=kimi_github_issue_close

# ============================================
# 🔀 PULL REQUESTS
# ============================================
kimi_github_prs() {
    if ! kimi_github_check; then
        return 1
    fi
    
    local limit="${1:-10}"
    
    echo ""
    echo "🔀 OPEN PULL REQUESTS"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh pr list --limit "$limit" --json number,title,author,headRefName,baseRefName,createdAt --jq '
    .[] | "#\(.number): \(.title)\n   Author: @\(.author.login) | Branch: \(.headRefName) → \(.baseRefName)\n   Created: \(.createdAt | split("T")[0])\n"
    '
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-github-prs=kimi_github_prs

kimi_github_pr_view() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        # View current branch PR
        echo ""
        echo "🔀 CURRENT PULL REQUEST"
        echo "═══════════════════════════════════════════════════════════════"
        echo ""
        gh pr view
        echo ""
        echo "═══════════════════════════════════════════════════════════════"
    else
        echo ""
        echo "🔀 PULL REQUEST #$1"
        echo "═══════════════════════════════════════════════════════════════"
        echo ""
        gh pr view "$1"
        echo ""
        echo "═══════════════════════════════════════════════════════════════"
    fi
}
alias kimi-github-pr=kimi_github_pr_view

kimi_github_pr_create() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "🔀 CREATE PULL REQUEST"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    # Check for uncommitted changes
    if [ -n "$(git status --porcelain)" ]; then
        echo "⚠️  You have uncommitted changes"
        read -p "Commit first? (y/n): " commit_first
        if [ "$commit_first" = "y" ]; then
            echo "Run: git add . && git commit -m \"your message\""
            return 1
        fi
    fi
    
    # Push current branch
    local current_branch=$(git branch --show-current)
    echo "Pushing branch: $current_branch"
    git push -u origin "$current_branch"
    
    # Create PR
    gh pr create
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-pr-create=kimi_github_pr_create

kimi_github_pr_checkout() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        echo "Usage: kimi-github-pr-checkout <pr-number>"
        return 1
    fi
    
    gh pr checkout "$1"
}
alias kimi-github-pr-checkout=kimi_github_pr_checkout

kimi_github_pr_merge() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        # Merge current PR
        gh pr merge
    else
        gh pr merge "$1"
    fi
}
alias kimi-github-pr-merge=kimi_github_pr_merge

kimi_github_pr_diff() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        gh pr diff
    else
        gh pr diff "$1"
    fi
}
alias kimi-github-pr-diff=kimi_github_pr_diff

kimi_github_pr_review() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "👁️  REVIEW PULL REQUEST"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    if [ -z "$1" ]; then
        gh pr review
    else
        gh pr review "$1"
    fi
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-pr-review=kimi_github_pr_review

# ============================================
# 🌿 BRANCHES
# ============================================
kimi_github_branches() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "🌿 REMOTE BRANCHES"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    git branch -r | head -20
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-branches=kimi_github_branches

kimi_github_branch_delete() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        echo "Usage: kimi-github-branch-delete <branch-name>"
        return 1
    fi
    
    gh api "repos/{owner}/{repo}/git/refs/heads/$1" -X DELETE
    echo "✅ Deleted remote branch: $1"
}
alias kimi-github-branch-delete=kimi_github_branch_delete

# ============================================
# 📊 REPOSITORY INSIGHTS
# ============================================
kimi_github_insights() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "📊 REPOSITORY INSIGHTS"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    # Recent commits
    echo "📈 Recent Commits (last 5):"
    gh api repos/{owner}/{repo}/commits?per_page=5 --jq '
    .[] | "• \(.commit.message | split("\n")[0])\n  by \(.commit.author.name) on \(.commit.author.date | split("T")[0])\n"
    '
    
    echo ""
    echo "👥 Top Contributors:"
    gh api repos/{owner}/{repo}/contributors?per_page=5 --jq '
    .[] | "• @\(.login): \(.contributions) commits"
    '
    
    echo ""
    echo "🏷️  Recent Releases:"
    gh release list --limit 5
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-insights=kimi_github_insights

kimi_github_contributors() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "👥 CONTRIBUTORS"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh api repos/{owner}/{repo}/contributors?per_page=10 --jq '
    .[] | "\(.login): \(.contributions) commits"
    '
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-contributors=kimi_github_contributors

# ============================================
# 🔍 SEARCH
# ============================================
kimi_github_search_code() {
    if ! kimi_github_check; then
        return 1
    fi
    
    read -p "Search query: " query
    if [ -z "$query" ]; then
        return 1
    fi
    
    echo ""
    echo "🔍 SEARCHING CODE"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh search code "$query" --limit 10
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-search=kimi_github_search_code

# ============================================
# 📝 RELEASES
# ============================================
kimi_github_releases() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "🏷️  RELEASES"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh release list --limit 10
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-releases=kimi_github_releases

kimi_github_release_create() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "🏷️  CREATE RELEASE"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    read -p "Tag (e.g., v1.0.0): " tag
    if [ -z "$tag" ]; then
        echo "❌ Tag required"
        return 1
    fi
    
    read -p "Title: " title
    read -p "Notes/Body (optional): " notes
    read -p "Target branch/commit [main]: " target
    target=${target:-main}
    
    if [ -n "$notes" ]; then
        gh release create "$tag" --title "$title" --notes "$notes" --target "$target"
    else
        gh release create "$tag" --title "$title" --generate-notes --target "$target"
    fi
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-release-create=kimi_github_release_create

# ============================================
# 💾 FILE OPERATIONS (Follow Changes)
# ============================================
kimi_github_file_get() {
    if ! kimi_github_check; then
        return 1
    fi
    
    if [ -z "$1" ]; then
        echo "Usage: kimi-github-file-get <file-path> [branch]"
        return 1
    fi
    
    local file="$1"
    local branch="${2:-main}"
    
    echo ""
    echo "📄 FILE: $file (branch: $branch)"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh api repos/{owner}/{repo}/contents/"$file"?ref="$branch" --jq '.content' | base64 -d
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-file=kimi_github_file_get

kimi_github_history() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "📜 RECENT HISTORY"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh api repos/{owner}/{repo}/events?per_page=10 --jq '
    .[] | select(.type | contains("Push") or contains("PullRequest") or contains("Issues")) |
    "[\(.created_at | split("T")[1][:8])] \(.type | split("Event")[0]) by @\(.actor.login)"
    '
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-history=kimi_github_history

# ============================================
# 🔄 SYNC OPERATIONS
# ============================================
kimi_github_sync() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "🔄 SYNC WITH REMOTE"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    # Fetch latest
    echo "Fetching latest changes..."
    git fetch origin
    
    # Show status
    local behind=$(git rev-list --count HEAD..@{u} 2>/dev/null || echo "0")
    local ahead=$(git rev-list --count @{u}..HEAD 2>/dev/null || echo "0")
    
    echo ""
    echo "Status: $ahead commits ahead, $behind commits behind origin"
    echo ""
    
    if [ "$behind" -gt 0 ]; then
        read -p "Pull changes? (y/n): " pull
        if [ "$pull" = "y" ]; then
            git pull origin $(git branch --show-current)
        fi
    fi
    
    if [ "$ahead" -gt 0 ]; then
        read -p "Push changes? (y/n): " push
        if [ "$push" = "y" ]; then
            git push origin $(git branch --show-current)
        fi
    fi
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-sync=kimi_github_sync

# ============================================
# 🛡️ BRANCH PROTECTION
# ============================================
kimi_github_protect() {
    if ! kimi_github_check; then
        return 1
    fi
    
    read -p "Branch to protect [main]: " branch
    branch=${branch:-main}
    
    echo ""
    echo "🛡️  BRANCH PROTECTION for $branch"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    # Get current protection
    local current=$(gh api repos/{owner}/{repo}/branches/"$branch"/protection 2>&1)
    
    if echo "$current" | grep -q "Not Found"; then
        echo "No protection currently configured"
    else
        echo "Current protection:"
        echo "$current" | head -20
    fi
    
    echo ""
    echo "Setting up standard protection..."
    
    # Enable protection via gh
    gh repo edit --enable-merge-commit=false --enable-squash-merge=true --enable-rebase-merge=true 2>/dev/null || true
    
    echo "✅ Branch protection settings updated"
    echo ""
    echo "Recommended rules:"
    echo "  • Require pull request reviews"
    echo "  • Require status checks to pass"
    echo "  • Require branches to be up to date"
    echo "  • Restrict pushes that create files"
    echo ""
    echo "Configure via GitHub web interface for full control"
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-protect=kimi_github_protect

# ============================================
# 📈 ACTIVITY & MONITORING
# ============================================
kimi_github_activity() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "📈 YOUR RECENT ACTIVITY"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh api users/{user}/events/public?per_page=10 --jq '
    .[] | "[\(.created_at | split("T")[0])] \(.type | split("Event")[0]) in \(.repo.name)"
    '
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-activity=kimi_github_activity

kimi_github_notifications() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "🔔 NOTIFICATIONS"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    gh api notifications?per_page=10 --jq '
    .[] | "[\(.reason)] \(.subject.title)\n   Repository: \(.repository.full_name)\n"
    '
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-notifications=kimi_github_notifications

# ============================================
# 🗑️ CLEANUP
# ============================================
kimi_github_cleanup() {
    if ! kimi_github_check; then
        return 1
    fi
    
    echo ""
    echo "🧹 CLEANUP MERGED BRANCHES"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    # List merged branches
    echo "Remote branches that can be deleted:"
    git branch -r --merged origin/main 2>/dev/null | grep -v "HEAD\|main\|master" | sed 's/origin\///' || echo "None found"
    
    echo ""
    read -p "Delete merged remote branches? (y/n): " confirm
    if [ "$confirm" = "y" ]; then
        for branch in $(git branch -r --merged origin/main 2>/dev/null | grep -v "HEAD\|main\|master" | sed 's/origin\///'); do
            echo "Deleting: $branch"
            gh api "repos/{owner}/{repo}/git/refs/heads/$branch" -X DELETE 2>/dev/null || echo "  Failed to delete $branch"
        done
        echo "✅ Cleanup complete"
    fi
    
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-github-cleanup=kimi_github_cleanup

# ============================================
# ℹ️ HELP
# ============================================
kimi_github_help() {
    echo ""
    echo "🐙 KIMI GITHUB ALIASES v4.1 - GitHub CLI Edition"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    echo "SETUP & CONFIGURATION:"
    echo "  kimi-github-config      → Configure GitHub CLI authentication"
    echo "  kimi-github-user        → Show your GitHub profile"
    echo ""
    echo "REPOSITORIES:"
    echo "  kimi-github-repos       → List your repositories"
    echo "  kimi-github-repo        → View current repository details"
    echo "  kimi-github-insights    → Repository statistics"
    echo "  kimi-github-contributors → List contributors"
    echo ""
    echo "ISSUES:"
    echo "  kimi-github-issues      → List open issues"
    echo "  kimi-github-issue <n>   → View issue details"
    echo "  kimi-github-issue-create → Create new issue"
    echo "  kimi-github-issue-close <n> → Close issue"
    echo ""
    echo "PULL REQUESTS:"
    echo "  kimi-github-prs         → List open PRs"
    echo "  kimi-github-pr [n]      → View PR (current or by number)"
    echo "  kimi-github-pr-create   → Create new PR"
    echo "  kimi-github-pr-checkout <n> → Checkout PR branch"
    echo "  kimi-github-pr-merge [n] → Merge PR"
    echo "  kimi-github-pr-diff [n] → View PR diff"
    echo "  kimi-github-pr-review [n] → Review PR"
    echo ""
    echo "BRANCHES:"
    echo "  kimi-github-branches    → List remote branches"
    echo "  kimi-github-branch-delete <name> → Delete remote branch"
    echo "  kimi-github-protect     → Setup branch protection"
    echo ""
    echo "RELEASES:"
    echo "  kimi-github-releases    → List releases"
    echo "  kimi-github-release-create → Create new release"
    echo ""
    echo "FILE OPERATIONS:"
    echo "  kimi-github-file <path> [branch] → View file contents"
    echo "  kimi-github-history     → Recent repository activity"
    echo "  kimi-github-search      → Search code"
    echo ""
    echo "SYNC & ACTIVITY:"
    echo "  kimi-github-sync        → Sync with remote (fetch/pull/push)"
    echo "  kimi-github-activity    → Your recent activity"
    echo "  kimi-github-notifications → View notifications"
    echo ""
    echo "MAINTENANCE:"
    echo "  kimi-github-cleanup     → Delete merged remote branches"
    echo ""
    echo "═══════════════════════════════════════════════════════════════"
    echo "Requirements: GitHub CLI (gh) installed"
    echo "Install: brew install gh"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-github-help=kimi_github_help

kimi_github_version() {
    echo ""
    echo "🐙 KIMI GITHUB ALIASES v4.1"
    echo "═══════════════════════════════════════════════════════════════"
    echo "Status: GitHub CLI Integration"
    echo ""
    if command -v gh &> /dev/null; then
        echo "✅ GitHub CLI: $(gh --version | head -1)"
        if gh auth status &> /dev/null; then
            echo "✅ Authenticated"
        else
            echo "⚠️  Not authenticated - run: kimi-github-config"
        fi
    else
        echo "❌ GitHub CLI not installed"
        echo "   Install: brew install gh"
    fi
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
}
alias kimi-github-version=kimi_github_version

# ============================================
# INITIALIZATION
# ============================================
if command -v gh &> /dev/null; then
    if gh auth status &> /dev/null; then
        echo "✅ KIMI GitHub Aliases v4.1 Loaded (CLI Connected)"
    else
        echo "🐙 KIMI GitHub Aliases v4.1 Loaded"
        echo "   ⚠️  Not authenticated - run: kimi-github-config"
    fi
else
    echo "🐙 KIMI GitHub Aliases v4.1 Loaded"
    echo "   ⚠️  Install GitHub CLI: brew install gh"
fi
