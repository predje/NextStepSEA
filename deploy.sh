#!/bin/bash

# HeadhuntSEA Deployment Script
echo "🚀 Deploying HeadhuntSEA..."

# Check if required files exist
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found"
    exit 1
fi

if [ ! -f "man-europe.png" ]; then
    echo "❌ Error: man-europe.png not found"
    exit 1
fi

if [ ! -f "woman-asia.png" ]; then
    echo "❌ Error: woman-asia.png not found"
    exit 1
fi

echo "✅ All required files found"

# Create deployment directory
mkdir -p dist
cp index.html dist/
cp man-europe.png dist/
cp woman-asia.png dist/
cp .htaccess dist/ 2>/dev/null || echo "No .htaccess file to copy"

echo "✅ Files copied to dist/ directory"

# If using git, add and commit changes
if [ -d ".git" ]; then
    git add .
    git commit -m "Deploy: $(date)" || echo "No changes to commit"
    echo "✅ Changes committed to git"
fi

echo "🎉 Deployment preparation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Upload the contents of the dist/ directory to your web server"
echo "2. Or deploy using:"
echo "   - Netlify: Connect your GitHub repo or drag & drop the dist/ folder"
echo "   - Vercel: 'vercel' command or GitHub integration"
echo "   - Traditional hosting: Upload via FTP/SFTP"
echo ""
echo "🌐 Your site will be available at your domain's root URL"