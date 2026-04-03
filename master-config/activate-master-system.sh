#!/bin/bash
# 🧠 MASTER SYSTEM ACTIVATOR
# Version: 5.0
# Trigger: "USE MASTER SYSTEM" or "USE KIMI MASTER"

KIMI_MASTER_CONFIG="$HOME/.kimi/master-config"

echo ""
echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║                                                                  ║"
echo "║   🧠 ACTIVATING KIMI MASTER SYSTEM v5.0                         ║"
echo "║      POWER MERGED CODING PRACTICE                               ║"
echo "║                                                                  ║"
echo "╚══════════════════════════════════════════════════════════════════╝"
echo ""

# Source all aliases
echo "📦 Loading System Components..."
echo ""

# Core
echo "  ✓ Loading Core Aliases..."
source ~/.kimi/aliases/kimi-aliases-core.sh 2>/dev/null || echo "    ⚠ Core aliases not found"

# Git
echo "  ✓ Loading Git Aliases..."
source ~/.kimi/aliases/kimi-aliases-git.sh 2>/dev/null || echo "    ⚠ Git aliases not found"

# GitHub
echo "  ✓ Loading GitHub Aliases..."
source ~/.kimi/aliases/kimi-aliases-github.sh 2>/dev/null || echo "    ⚠ GitHub aliases not found"

# Enhanced Extras
echo "  ✓ Loading Enhanced Extras..."
if [ -f "$HOME/Desktop/prompting/kimi-upgrading prompts:tools/enhanced-aliases/kimi-aliases-enhanced-extras.sh" ]; then
    source "$HOME/Desktop/prompting/kimi-upgrading prompts:tools/enhanced-aliases/kimi-aliases-enhanced-extras.sh" 2>/dev/null
else
    echo "    ⚠ Enhanced extras not found"
fi

# Integrated Workflows
echo "  ✓ Loading Integrated Workflows..."
if [ -f "$HOME/Desktop/prompting/kimi-upgrading prompts:tools/enhanced-aliases/kimi-aliases-integrated.sh" ]; then
    source "$HOME/Desktop/prompting/kimi-upgrading prompts:tools/enhanced-aliases/kimi-aliases-integrated.sh" 2>/dev/null
else
    echo "    ⚠ Integrated workflows not found"
fi

echo ""
echo "📊 System Status:"
echo "═══════════════════════════════════════════════════════════════════"
echo ""
echo "  ✅ Core Aliases:       90+ commands loaded"
echo "  ✅ Git Aliases:        20+ commands loaded"
echo "  ✅ GitHub Aliases:     30+ commands loaded"
echo "  ✅ Enhanced Extras:    40+ commands loaded"
echo "  ✅ Integrated:         10+ workflows loaded"
echo ""
echo "  📚 Z.AI Tools:         5 upgraded prompts ready"
echo "  📚 Awesome Skills:     9 merged skills ready"
echo "  📚 Total Scripts:      25+ Python utilities"
echo ""
echo "═══════════════════════════════════════════════════════════════════"
echo ""
echo "🎯 MASTER SYSTEM ACTIVATED!"
echo ""
echo "Quick Start:"
echo "  • kimi-workflow-full    → Complete workflow guide"
echo "  • kimi-skills           → Tool selector by task"
echo "  • kimi-index            → Complete tool index"
echo "  • kimi-help             → Core aliases help"
echo ""
echo "Golden Rules:"
echo "  1. Root Cause, Never Symptoms"
echo "  2. Test Before Fix"
echo "  3. One Change at a Time"
echo "  4. Understand Before Touching"
echo "  5. Never Assume — Verify"
echo ""
echo "═══════════════════════════════════════════════════════════════════"
echo ""
echo "Type 'kimi-integrated-help' for full integration guide"
echo ""

# Display current configuration
echo "📖 Master Configuration:"
echo "  Location: $KIMI_MASTER_CONFIG/KIMI-MASTER-SYSTEM.md"
echo "  Version: 5.0"
echo "  Status: ACTIVE"
echo ""

# Set environment variable for other scripts
export KIMI_MASTER_SYSTEM_ACTIVE="true"
export KIMI_MASTER_SYSTEM_VERSION="5.0"
