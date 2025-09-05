#!/bin/bash

# Ploinky Cloud Quick Start Script
# No initialization needed - p-cloud handles everything!

echo "🚀 Starting Ploinky Cloud..."

# Get the directory where this script is located
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Just start the server - it will auto-initialize if needed
echo "🌐 Server: http://localhost:8000"
echo "📊 Dashboard: http://localhost:8000/management"
echo "🔑 Default login: admin / admin"
echo ""
echo "Press Ctrl+C to stop the server"
echo "-----------------------------------"

# Start with passed arguments or defaults
if [ $# -eq 0 ]; then
    exec "$SCRIPT_DIR/bin/p-cloud"
else
    exec "$SCRIPT_DIR/bin/p-cloud" "$@"
fi