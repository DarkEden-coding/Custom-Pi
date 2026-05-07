#!/usr/bin/env bash
set -e

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"

echo "Building pi from source..."
npm run build

echo "Installing built pi CLI globally..."
cd "$ROOT/packages/coding-agent"
# Overwrite an existing global pi shim from a previous npm install/link.
npm link --force

echo
echo "Installed. The global pi command now points to:"
which pi
