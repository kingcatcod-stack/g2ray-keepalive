#!/usr/bin/env bash
set -e

KEEPALIVE_SCRIPT=".devcontainer/codespace-keepalive.sh"

if ! pgrep -f "${KEEPALIVE_SCRIPT}" >/dev/null 2>&1; then
  nohup bash "${KEEPALIVE_SCRIPT}" >/tmp/codespace-keepalive.log 2>&1 &
fi

echo ""
echo "✅ Codespace keepalive started"
echo "✅ xray should be available on port 443"
echo ""
echo "VLESS link:"
echo "vless://550e8400-e29b-41d4-a716-446655440000@94.130.50.12:443?encryption=none&security=tls&type=xhttp&mode=packet-up&sni=${CODESPACE_NAME}-443.app.github.dev&path=%2F#ghtun"
echo ""
