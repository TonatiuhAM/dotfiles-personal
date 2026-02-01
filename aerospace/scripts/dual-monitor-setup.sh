#!/bin/bash

# AeroSpace Dual Monitor Setup Script
# Run this when you connect your external monitor

CONFIG_FILE="$HOME/.aerospace.toml"

echo "Setting up dual monitor configuration..."

# Uncomment the workspace-to-monitor assignment
sed -i '' 's/^# \[workspace-to-monitor-force-assignment\]/[workspace-to-monitor-force-assignment]/' "$CONFIG_FILE"
sed -i '' 's/^# \([1-9] = \)/\1/' "$CONFIG_FILE"

# Change Ghostty to workspace 6 for dual monitor setup
sed -i '' 's/run = '\''move-node-to-workspace 3'\''/run = '\''move-node-to-workspace 6'\''/' "$CONFIG_FILE"

# Reload AeroSpace
aerospace reload-config

echo "Dual monitor setup complete!"
echo "Workspaces 1-4: External monitor"
echo "Workspaces 5-9: MacBook"
echo "Ghostty: workspace 6, WhatsApp: workspace 5"