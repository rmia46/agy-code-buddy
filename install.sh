#!/usr/bin/env bash
# ==============================================================================
# Installer for Antigravity Autonomous AI Engineering Organization
# ==============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_PLUGIN_DIR="${HOME}/.gemini/config/plugins/code-buddy"
TARGET_AGENTS_DIR="${HOME}/.gemini/config/agents"
CONFIG_FILE="${HOME}/.gemini/config/config.json"

echo "==> Installing Antigravity Autonomous Engineering Organization..."

# 1. Verify Prerequisites
if ! command -v agy &>/dev/null; then
    echo "Warning: 'agy' CLI not found in PATH. Ensure Antigravity is installed."
fi

if ! command -v gh &>/dev/null; then
    echo "Warning: 'gh' (GitHub CLI) not found. Issue automation requires gh."
fi

# 2. Create Target Directories
mkdir -p "${TARGET_PLUGIN_DIR}" "${TARGET_AGENTS_DIR}" "${HOME}/.gemini/config"

# 3. Copy Plugin Components
echo "==> Deploying plugin files..."
cp -r "${SCRIPT_DIR}/plugin-source/." "${TARGET_PLUGIN_DIR}/"
chmod +x "${TARGET_PLUGIN_DIR}/bin/autonomous-daemon.py" 2>/dev/null || true

# 4. Copy Agent Definitions
echo "==> Registering global agent definitions..."
cp "${SCRIPT_DIR}/engineering-manager.json" "${TARGET_AGENTS_DIR}/"

# 5. Enable Plugin in config.json
echo "==> Enabling plugin in config.json..."
python3 - << 'EOF'
import json, os

config_path = os.path.expanduser("~/.gemini/config/config.json")
config = {}
if os.path.exists(config_path):
    try:
        with open(config_path, "r") as f:
            config = json.load(f)
    except Exception:
        config = {}

plugins = config.setdefault("plugins", {})
plugins["code-buddy"] = {"enabled": True}

with open(config_path, "w") as f:
    json.dump(config, f, indent=2)
print("Updated ~/.gemini/config/config.json")
EOF

# 6. Verification
if command -v agy &>/dev/null; then
    echo "==> Verifying with agy plugin list..."
    agy plugin list | grep -E "code-buddy" || echo "Note: Run 'agy plugin list' to check status."
fi

echo ""
echo " Installation completed successfully!"
echo "Global skills, rules, and subagent configurations are now active."
