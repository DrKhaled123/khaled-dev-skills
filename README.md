# 🏆 Khaled Dev Skills

Ultimate development aliases and expert coding practices for macOS/Linux.

## 📦 What's Included

This repository contains 90+ shell aliases organized into 3 modules:

### 🏆 Core Module (40+ commands)
API-free expert coding standards and practices.

**Key Features:**
- 10 Universal Golden Rules
- 5-Phase Diagnosis Protocol
- 10-Point Verification Checklist
- Bug Taxonomy (10 types)
- Quality Scoring System
- Language Standards (Python, TypeScript, React)
- Debug Modes (5 types)
- Security & Validation Checklists

### 🌿 Git Module (20+ commands)
Local git operations and workflow helpers.

**Key Features:**
- Commit message standards
- Branch management
- Interactive staging
- Repository health checks
- Daily workflow guides

### 🐙 GitHub Module (30+ commands)
GitHub CLI integration for remote operations.

**Key Features:**
- Issue management
- Pull request workflows
- Repository insights
- Release management
- Branch protection

## 🚀 Quick Install

```bash
# Clone the repository
git clone https://github.com/Khaled-K-E/khaled-dev-skills.git
cd khaled-dev-skills

# Install aliases
mkdir -p ~/.kimi/aliases
cp kimi-aliases-*.sh ~/.kimi/aliases/

# Add to your shell
echo 'source ~/.kimi/aliases/kimi-aliases-core.sh' >> ~/.zshrc
echo 'source ~/.kimi/aliases/kimi-aliases-git.sh' >> ~/.zshrc
echo 'source ~/.kimi/aliases/kimi-aliases-github.sh' >> ~/.zshrc

# Reload
source ~/.zshrc
```

## 📚 Documentation

Each module is self-documented. Run:
- `kimi-help` - Core commands
- `kimi-git-help` - Git commands  
- `kimi-github-help` - GitHub commands

## 🔧 Requirements

- **Core**: None (uses standard Unix tools)
- **Git**: Git configured with user.name and user.email
- **GitHub**: GitHub CLI (`gh`) installed and authenticated

## 📄 Files

- `kimi-aliases-core.sh` - Core coding standards (71 KB)
- `kimi-aliases-git.sh` - Git operations (19 KB)
- `kimi-aliases-github.sh` - GitHub integration (33 KB)

## 🎯 Version

v4.1 - API-Free, Ready to Use

---

**Created by Khaled** - Expert coding practices distilled into shell aliases.
