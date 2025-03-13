Write-Host "Setting up Vercel environment variables..."

# Firebase configuration variables
$envVars = @{
    "NEXT_PUBLIC_FIREBASE_APP_ID" = "1:652976336451:web:1f96fc4cffe3e63f4deef6"
    "NEXT_PUBLIC_FIREBASE_PROJECT_ID" = "studymanagerwebsite"
    "NEXT_PUBLIC_FIREBASE_MESSAGING_SENDER_ID" = "652976336451"
    "NEXT_PUBLIC_FIREBASE_MEASUREMENT_ID" = "G-WL2XKFQ5CQ"
    "NEXT_PUBLIC_FIREBASE_AUTH_DOMAIN" = "studymanagerwebsite.firebaseapp.com"
    "NEXT_PUBLIC_FIREBASE_STORAGE_BUCKET" = "studymanagerwebsite.firebasestorage.app"
    "NEXT_PUBLIC_FIREBASE_API_KEY" = "AIzaSyAM8hiXDQc4c_mFnK7eXG4TN8cTm74Dedg"
}

# Add each environment variable to Vercel
foreach ($key in $envVars.Keys) {
    Write-Host "Adding $key..."
    vercel env rm $key
    vercel env add $key $envVars[$key]
}

Write-Host "Environment variables setup complete!" 