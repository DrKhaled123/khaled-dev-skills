# GitHub Token Setup

## Automatic Setup

Run the setup script:
```bash
./setup-github-token.sh
```

## Manual Setup

1. Create config directory:
   ```bash
   mkdir -p ~/.kimi
   ```

2. Create config file:
   ```bash
   cat > ~/.kimi/github.config << 'CONFIG'
   export GITHUB_TOKEN="your_token_here"
   export GITHUB_API_URL="https://api.github.com"
   CONFIG
   ```

3. Secure the file:
   ```bash
   chmod 600 ~/.kimi/github.config
   ```

## Getting a Token

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Select scopes:
   - ✓ repo (full control of private repositories)
   - ✓ workflow (update GitHub Action workflows)
   - ✓ read:org (read org membership)
4. Generate and copy the token

## Testing

```bash
source ~/.kimi/aliases/kimi-aliases-github.sh
kimi-github-user
```

Should show your GitHub profile information.
