#!/bin/bash

# --------------------------------------
# 📜 Fox Script
# 🔒 Copyright (c) 2025 Fox - All Rights Reserved
# 📌 This script is created and maintained by Fox (aka Adolta)
# 🌐 https://github.com/Omar9282jwee/Fox-scripts
# --------------------------------------

echo "🔄 Fox Script is starting..."

# Download playit agent
wget https://github.com/playit-cloud/playit-agent/releases/download/v0.15.26/playit-linux-amd64

# Make it executable
chmod +x playit-linux-amd64

# Run the agent
./playit-linux-amd64

echo "✅ Fox Script finished."
