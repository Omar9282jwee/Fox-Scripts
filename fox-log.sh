#!/bin/bash
# 🪵 Fox-Log - System Health Checker
# Created by Fox 🦊

echo "📋 Fox Log — Full System Check"

# Show latest system logs
echo "🧾 System Logs:"
journalctl -p 3 -xb | tail -n 10

# Show dmesg errors
echo ""
echo "⚠️ Kernel Errors (dmesg):"
dmesg --level=err | tail -n 10

# Check service failures
echo ""
echo "❌ Failed Services:"
systemctl --failed

# Check auth log (login issues)
echo ""
echo "🔐 Auth Failures (last 10 attempts):"
grep "Failed password" /var/log/auth.log 2>/dev/null | tail -n 10

# Check nginx/apache logs if they exist
echo ""
if [ -f /var/log/nginx/error.log ]; then
  echo "🌐 Nginx Errors:"
  tail -n 10 /var/log/nginx/error.log
fi

if [ -f /var/log/apache2/error.log ]; then
  echo "🌐 Apache Errors:"
  tail -n 10 /var/log/apache2/error.log
fi

echo ""
echo "🦊 Fox-Log finished."
