#!/bin/bash
# KIMI GIT ALIASES v4.1 - Local Git Operations
# Requires: git configured (user.name, user.email)
# No API keys needed - local repository operations only

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
# GIT CONFIGURATION CHECK
# ============================================
kimi_git_check_config() {
    local git_name=$(git config user.name 2>/dev/null)
    local git_email=$(git config user.email 2>/dev/null)
    
    if [ -z "$git_name" ] || [ -z "$git_email" ]; then
        echo "⚠️  Git not fully configured"
        echo ""
        echo "Run these commands to configure:"
        echo "  git config --global user.name \"Your Name\""
        echo "  git config --global user.email \"your.email@example.com\""
        return 1
    fi
    return 0
}

# ============================================
# 📝 GIT COMMIT STANDARDS
# ============================================
alias kimi-git-standards='cat << "GIT_STD_EOF"

📝 GIT COMMIT STANDARDS
═══════════════════════════════════════════════════════════════

COMMIT MESSAGE FORMAT:
<type>(<scope>): <subject>

TYPES:
  feat     → New feature
  fix      → Bug fix
  refactor → Code change (no fix, no feature)
  test     → Adding/correcting tests
  docs     → Documentation only
  chore    → Maintenance, deps, config
  perf     → Performance improvement
  security → Security fix
  style    → Formatting (no code change)
  ci       → CI/CD changes

SCOPE:
  • Component or module affected
  • Optional but recommended
  • Examples: auth, api, ui, db, utils

SUBJECT:
  • Imperative mood ("add" not "added")
  • Lowercase (except proper nouns)
  • No period at end
  • Maximum 72 characters
  • Describe what and why, not how

═══════════════════════════════════════════════════════════════
✅ GOOD EXAMPLES:

  fix(auth): handle expired JWT tokens with 401 response
  
  feat(users): add email verification on registration
  
  test(payments): add regression test for duplicate orders
  
  refactor(db): extract connection pool to singleton
  
  docs(api): update authentication endpoint examples

═══════════════════════════════════════════════════════════════
❌ BAD EXAMPLES:

  Fixed stuff                    (vague, past tense)
  
  Update code                    (no type, no scope)
  
  WIP                            (not descriptive)
  
  fixed bug in login             (lowercase type, past tense)
  
  Added new feature.             (period at end, too vague)

═══════════════════════════════════════════════════════════════

BODY (when needed):
  • Explain motivation for change
  • Contrast with previous behavior
  • Reference issues: "Fixes #123"
  • Wrap at 72 characters

═══════════════════════════════════════════════════════════════

GIT_STD_EOF'

# ============================================
# 🌿 BRANCH NAMING STANDARDS
# ============================================
alias kimi-git-branches='cat << "BRANCH_EOF"

🌿 BRANCH NAMING STANDARDS
═══════════════════════════════════════════════════════════════

FORMAT: <type>/<description>

TYPES:
  feature/   → New features
  bugfix/    → Bug fixes
  hotfix/    → Urgent production fixes
  refactor/  → Code restructuring
  test/      → Test additions/changes
  docs/      → Documentation updates
  chore/     → Maintenance tasks

DESCRIPTION:
  • Short, descriptive, kebab-case
  • Include issue number if applicable
  • Maximum 50 characters

═══════════════════════════════════════════════════════════════
✅ GOOD EXAMPLES:

  feature/user-authentication
  bugfix/login-redirect-loop-234
  hotfix/security-patch-cve-2024
  refactor/extract-payment-service
  test/add-unit-tests-for-auth
  docs/update-api-reference

═══════════════════════════════════════════════════════════════
❌ BAD EXAMPLES:

  feature                     (no description)
  fix-stuff                   (vague description)
  my-branch                   (no type)
  Feature/NewUserLogin        (wrong case, wrong separator)
  bugfix/fix_the_login_bug    (underscores, too long)

═══════════════════════════════════════════════════════════════
WORKFLOW BRANCHES:

  main/master     → Production-ready code
  develop         → Integration branch
  release/x.x.x   → Release preparation
  
FEATURE WORKFLOW:
  1. Create: git checkout -b feature/description
  2. Work: Make commits following standards
  3. Update: git fetch origin && git rebase origin/main
  4. Push: git push -u origin feature/description
  5. Merge: Via PR/MR (or git merge --no-ff)
  6. Clean: git branch -d feature/description

═══════════════════════════════════════════════════════════════

BRANCH_EOF'

# ============================================
# 🔧 DAILY GIT WORKFLOW
# ============================================
alias kimi-git-workflow='cat << "WORKFLOW_EOF"

🔧 DAILY GIT WORKFLOW
═══════════════════════════════════════════════════════════════

MORNING STARTUP:
───────────────────────────────────────────────────────────────
  git fetch origin                    # Get latest changes
  git status                          # Check current state
  git log --oneline -5                # See recent commits

BEFORE STARTING WORK:
───────────────────────────────────────────────────────────────
  git checkout main                   # Switch to main branch
  git pull origin main                # Update main
  git checkout -b feature/name        # Create feature branch

DURING DEVELOPMENT:
───────────────────────────────────────────────────────────────
  git status                          # See what changed
  git diff                            # Review changes
  git add -p                          # Stage interactively (recommended)
  # OR: git add <specific-files>
  
  git commit -m "type(scope): subject" # Commit with standards

BEFORE PUSHING:
───────────────────────────────────────────────────────────────
  git fetch origin                    # Get latest
  git rebase origin/main              # Rebase on latest main
  # Fix any conflicts
  
  git log --oneline --graph -10       # Review commit history
  
  git push -u origin feature/name     # Push to remote

END OF DAY:
───────────────────────────────────────────────────────────────
  git status                          # Check for uncommitted work
  git log --oneline -3                # Review today commits
  
  # If work in progress:
  git commit -m "WIP: description"    # Commit WIP
  git push origin feature/name        # Push WIP to remote

═══════════════════════════════════════════════════════════════

WORKFLOW_EOF'

# ============================================
# 🛠️ GIT COMMANDS
# ============================================

# Status with style
alias kimi-git-status='git status'

# Log with graph
alias kimi-git-log='git log --oneline --graph --decorate -15'

# Recent commits
alias kimi-git-recent='git log --oneline --since="1 week ago"'

# Today's commits
alias kimi-git-today='git log --oneline --since="today" --author="$(git config user.name)"'

# Show changed files
alias kimi-git-files='git diff --name-only'

# Show diff staged
alias kimi-git-diff='git diff --cached'

# Create feature branch
kimi_git_feature() {
    if [ -z "$1" ]; then
        echo "Usage: kimi-git-feature <description>"
        echo "Example: kimi-git-feature user-authentication"
        return 1
    fi
    
    if ! kimi_git_check_config; then
        return 1
    fi
    
    local branch_name="feature/$1"
    git checkout -b "$branch_name"
}
alias kimi-git-feature=kimi_git_feature

# Create bugfix branch
kimi_git_bugfix() {
    if [ -z "$1" ]; then
        echo "Usage: kimi-git-bugfix <description>"
        echo "Example: kimi-git-bugfix login-redirect-234"
        return 1
    fi
    
    if ! kimi_git_check_config; then
        return 1
    fi
    
    local branch_name="bugfix/$1"
    git checkout -b "$branch_name"
}
alias kimi-git-bugfix=kimi_git_bugfix

# Stage interactively (recommended)
alias kimi-git-stage='git add -p'

# Commit with template
kimi_git_commit() {
    if ! kimi_git_check_config; then
        return 1
    fi
    
    echo "Commit types: feat, fix, refactor, test, docs, chore, perf, security"
    echo "Format: type(scope): subject"
    echo ""
    read -p "Enter commit message: " msg
    
    if [ -z "$msg" ]; then
        echo "Abort: Empty commit message"
        return 1
    fi
    
    git commit -m "$msg"
}
alias kimi-git-commit=kimi_git_commit

# Quick commit for common types
alias kimi-git-feat='read -p "Scope: " scope && read -p "Subject: " subj && git commit -m "feat($scope): $subj"'
alias kimi-git-fix='read -p "Scope: " scope && read -p "Subject: " subj && git commit -m "fix($scope): $subj"'
alias kimi-git-docs='read -p "Scope: " scope && read -p "Subject: " subj && git commit -m "docs($scope): $subj"'
alias kimi-git-test='read -p "Scope: " scope && read -p "Subject: " subj && git commit -m "test($scope): $subj"'

# Fetch and rebase
alias kimi-git-update='git fetch origin && git rebase origin/main 2>/dev/null || git rebase origin/master'

# Clean up merged branches
kimi_git_cleanup() {
    echo "Fetching latest..."
    git fetch origin
    
    echo ""
    echo "Merged branches that can be deleted:"
    git branch --merged origin/main 2>/dev/null || git branch --merged origin/master
    
    echo ""
    read -p "Delete merged local branches? (y/n) " confirm
    if [ "$confirm" = "y" ]; then
        git branch --merged origin/main 2>/dev/null | grep -v "^\*" | grep -v "main\|master" | xargs -r git branch -d
        echo "✓ Cleanup complete"
    fi
}
alias kimi-git-cleanup=kimi_git_cleanup

# Show what would be committed
alias kimi-git-preview='git diff --cached --stat'

# Undo last commit (keep changes)
alias kimi-git-undo='git reset --soft HEAD~1'

# Discard all changes (DANGER)
alias kimi-git-discard='echo "⚠️  This will discard ALL uncommitted changes!" && read -p "Are you sure? (type yes): " confirm && [ "$confirm" = "yes" ] && git reset --hard HEAD'

# Stash helpers
alias kimi-git-stash='git stash push -m'
alias kimi-git-stash-list='git stash list'
alias kimi-git-stash-pop='git stash pop'
alias kimi-git-stash-drop='git stash drop'

# Show current branch
alias kimi-git-branch='git branch --show-current'

# List all branches
alias kimi-git-branches='git branch -a'

# Switch to main/master
alias kimi-git-main='git checkout main 2>/dev/null || git checkout master'

# Push current branch
alias kimi-git-push='git push -u origin $(git branch --show-current)'

# Pull with rebase
alias kimi-git-pull='git pull --rebase'

# ============================================
# 📊 GIT HEALTH CHECK
# ============================================
kimi_git_health() {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        echo "❌ Not a git repository"
        return 1
    fi
    
    echo "📊 GIT HEALTH CHECK"
    echo "═══════════════════════════════════════════════════════════════"
    echo ""
    
    # Config check
    local git_name=$(git config user.name 2>/dev/null)
    local git_email=$(git config user.email 2>/dev/null)
    
    echo "🔧 Configuration:"
    if [ -n "$git_name" ] && [ -n "$git_email" ]; then
        echo "  ✓ User: $git_name <$git_email>"
    else
        echo "  ✗ Missing user.name or user.email"
        echo "    Run: git config --global user.name \"Your Name\""
        echo "    Run: git config --global user.email \"email@example.com\""
    fi
    echo ""
    
    # Current state
    echo "📍 Current State:"
    echo "  Branch: $(git branch --show-current)"
    echo "  Commits ahead: $(git rev-list --count @{u}..HEAD 2>/dev/null || echo "N/A")"
    echo "  Commits behind: $(git rev-list --count HEAD..@{u} 2>/dev/null || echo "N/A")"
    echo ""
    
    # Uncommitted changes
    local uncommitted=$(git status --porcelain | wc -l | tr -d ' ')
    echo "📝 Working Directory:"
    if [ "$uncommitted" -eq 0 ]; then
        echo "  ✓ Clean (no uncommitted changes)"
    else
        echo "  ⚠ $uncommitted files with changes"
        git status --short | head -5
        [ "$uncommitted" -gt 5 ] && echo "  ... and $((uncommitted - 5)) more"
    fi
    echo ""
    
    # Recent activity
    echo "📈 Recent Activity:"
    git log --oneline -5 --all | sed 's/^/  /'
    echo ""
    
    # Branch stats
    echo "🌿 Branches:"
    local branch_count=$(git branch | wc -l | tr -d ' ')
    echo "  Total: $branch_count local branches"
    git branch --merged HEAD 2>/dev/null | grep -v "^\*" | wc -l | xargs echo "  Merged (can delete):"
    echo ""
    
    echo "═══════════════════════════════════════════════════════════════"
}
alias kimi-git-health=kimi_git_health

# ============================================
# 🔄 INTERACTIVE REBASE HELPERS
# ============================================
alias kimi-git-rebase-interactive='git rebase -i HEAD~5'
alias kimi-git-rebase-continue='git rebase --continue'
alias kimi-git-rebase-abort='git rebase --abort'
alias kimi-git-rebase-skip='git rebase --skip'

# ============================================
# 🔍 GIT SEARCH
# ============================================
alias kimi-git-search='git log --all --full-history --'
alias kimi-git-who='git log --format="%an" --'
alias kimi-git-when='git log --format="%ad" --date=short --'

# ============================================
# ℹ️ HELP
# ============================================
alias kimi-git-help='cat << "GIT_HELP_EOF"

🌿 KIMI GIT ALIASES v4.1
═══════════════════════════════════════════════════════════════
Requirements: Git configured (user.name, user.email)
No API keys needed - local operations only

STANDARDS:
  kimi-git-standards    → Commit message standards
  kimi-git-branches     → Branch naming conventions
  kimi-git-workflow     → Daily workflow guide

DAILY COMMANDS:
  kimi-git-status       → Repository status
  kimi-git-log          → Commit log (graph view)
  kimi-git-recent       → Commits this week
  kimi-git-today        → Your commits today
  kimi-git-files        → Changed files
  kimi-git-diff         → Staged diff

BRANCH MANAGEMENT:
  kimi-git-feature <name>  → Create feature branch
  kimi-git-bugfix <name>   → Create bugfix branch
  kimi-git-main            → Switch to main/master
  kimi-git-branch          → Show current branch
  kimi-git-branches        → List all branches
  kimi-git-update          → Fetch and rebase
  kimi-git-cleanup         → Remove merged branches

COMMITTING:
  kimi-git-stage        → Stage interactively (recommended)
  kimi-git-commit       → Commit with prompt
  kimi-git-feat         → Quick feat commit
  kimi-git-fix          → Quick fix commit
  kimi-git-docs         → Quick docs commit
  kimi-git-test         → Quick test commit
  kimi-git-preview      → See what would be committed

STASHING:
  kimi-git-stash <msg>  → Stash with message
  kimi-git-stash-list   → List stashes
  kimi-git-stash-pop    → Apply and remove stash
  kimi-git-stash-drop   → Delete stash

SAFETY:
  kimi-git-undo         → Undo last commit (keep changes)
  kimi-git-discard      → Discard all changes (DANGER)

ADVANCED:
  kimi-git-push         → Push current branch
  kimi-git-pull         → Pull with rebase
  kimi-git-rebase-interactive  → Interactive rebase
  kimi-git-health       → Repository health check
  kimi-git-search       → Search commit history

═══════════════════════════════════════════════════════════════

GIT_HELP_EOF'

alias kimi-git-version='echo "
🌿 KIMI GIT ALIASES v4.1
═══════════════════════════════════════════════════════════════
Status: Local Git Operations Only
Requirements:
  • Git installed
  • user.name configured
  • user.email configured

No API keys required
No remote authentication needed
═══════════════════════════════════════════════════════════════
"'

# ============================================
# INITIALIZATION
# ============================================
echo "✅ KIMI Git Aliases v4.1 Loaded"
echo "   Type: kimi-git-help for all commands"
echo "   Note: Requires git user.name and user.email configured"
