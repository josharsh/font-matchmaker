#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="$HOME/.claude/skills/font-matchmaker"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Font Matchmaker skill..."

# Create directory
mkdir -p "$SKILL_DIR"

# Copy skill file
cp "$SOURCE_DIR/skills/font-matchmaker/SKILL.md" "$SKILL_DIR/SKILL.md"

echo ""
echo "Installed successfully!"
echo ""
echo "Usage:"
echo "  /font-matchmaker             — analyze project and recommend fonts"
echo "  /font-matchmaker check       — evaluate current font choices"
echo "  /font-matchmaker why <font>  — explain fit for a specific font"
echo ""
echo "Skill is installed at: $SKILL_DIR/SKILL.md"
