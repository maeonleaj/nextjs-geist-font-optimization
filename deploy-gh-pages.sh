#!/bin/bash

# Build and export the Next.js app as static files
npm run export

# Navigate to the out directory
cd out

# Initialize a new git repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Deploy static site to GitHub Pages"

# Add remote repository (replace with your repo URL)
git remote add origin https://github.com/maeonleaj/drops.git

# Force push to the gh-pages branch
git push --force origin master:gh-pages

# Go back to the root directory
cd ..

echo "Deployment to GitHub Pages completed."
