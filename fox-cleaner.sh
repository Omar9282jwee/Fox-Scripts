#!/bin/bash
# 🧹 Fox-Cleaner
# Script to clean server logs & temp files

echo "🧼 Starting Fox Cleaner..."

# Delete old log files
find /var/log -type f -name "*.log" -delete

# Clean apt cache (Debian/Ubuntu)
apt clean -y >/dev/null 2>&1

# Remove temp files
rm -rf /tmp/* /var/tmp/*

echo "✅ Cleaning complete!"
echo "🦊 Server cleaned by Fox-Scripts"
