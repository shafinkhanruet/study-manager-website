#!/bin/bash

# Exit on error
set -e

# Function to check if running on Windows
is_windows() {
    case "$(uname -s)" in
        CYGWIN*|MINGW*|MSYS*)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "Installing Vercel CLI..."
    npm install -g vercel
fi

# Check if .env.local exists
if [ ! -f .env.local ]; then
    echo "Error: .env.local file not found!"
    echo "Please create a .env.local file with your environment variables."
    exit 1
fi

# Build the application
echo "Building the application..."
npm run build

# Deploy to Vercel
echo "Deploying to Vercel..."
if is_windows; then
    # Windows-specific deployment command
    vercel deploy --prod --yes
else
    # Unix-like systems deployment command
    vercel deploy --prod
fi

echo "Deployment complete!" 