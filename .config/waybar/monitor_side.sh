#!/usr/bin/env bash

# Script: ~/scripts/monitor_side.sh

monitors=$(hyprctl monitors -j)
active_workspace=$(hyprctl activeworkspace -j | jq '.id')

# Trouver le moniteur où se trouve le workspace actif
monitor=$(echo "$monitors" | jq -r --argjson wsid "$active_workspace" '.[] | select(.activeWorkspace.id == $wsid)')

if [ -z "$monitor" ]; then
    echo "?"
    exit 0
fi

x=$(echo "$monitor" | jq '.x')

if [ "$x" -eq 0 ]; then
    echo "L"
else
    echo "R"
fi

