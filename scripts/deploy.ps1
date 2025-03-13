# Exit on error
$ErrorActionPreference = "Stop"

Write-Host "🚀 Starting deployment process..."

# Check if Vercel CLI is installed
if (-not (Get-Command vercel -ErrorAction SilentlyContinue)) {
    Write-Host "📦 Installing Vercel CLI..."
    npm install -g vercel
}

# Build the application
Write-Host "🏗️ Building the application..."
npm run build

# Deploy to Vercel
Write-Host "🚀 Deploying to Vercel..."
Write-Host "⚠️ Make sure you have set up your environment variables in the Vercel dashboard!"
Write-Host "ℹ️ You will be prompted to log in if not already logged in."

# Deploy with production flag
vercel --prod

Write-Host "✅ Deployment process completed!"
Write-Host "ℹ️ Note: Make sure to set up your environment variables in the Vercel dashboard:"
Write-Host "1. Go to https://vercel.com/dashboard"
Write-Host "2. Select your project"
Write-Host "3. Go to Settings > Environment Variables"
Write-Host "4. Add your Firebase configuration variables" 