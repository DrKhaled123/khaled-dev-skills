#!/bin/bash
# Setup GitHub Token for KIMI Aliases
# Run this after installing the aliases

CONFIG_DIR="${HOME}/.kimi"
CONFIG_FILE="${CONFIG_DIR}/github.config"

echo "🔧 Setting up GitHub API Token"
echo "==============================="
echo ""

# Create directory
mkdir -p "$CONFIG_DIR"

# Check if config exists
if [ -f "$CONFIG_FILE" ]; then
    echo "✓ Config file exists: $CONFIG_FILE"
    echo ""
    read -p "Update token? (y/n): " update
    if [ "$update" != "y" ]; then
        echo "Keeping existing configuration."
        exit 0
    fi
fi

# Get token from user
echo ""
echo "Get your token from: https://github.com/settings/tokens"
echo "Required scopes: repo, workflow, read:org"
echo ""
read -s -p "Enter GitHub token: " token
echo ""

if [ -z "$token" ]; then
    echo "❌ Token cannot be empty"
    exit 1
fi

# Save config
cat > "$CONFIG_FILE" << EOFCFG
# KIMI GitHub Configuration
# Generated: $(date)
export GITHUB_TOKEN="$token"
export GITHUB_API_URL="https://api.github.com"
EOFCFG

chmod 600 "$CONFIG_FILE"

echo ""
echo "✅ Token saved to $CONFIG_FILE"
echo "   Permissions: 600 (secure)"
echo ""
echo "Test with: source ~/.kimi/aliases/kimi-aliases-github.sh && kimi-github-user"
