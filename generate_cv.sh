#!/usr/bin/env bash
set -e

echo "Starting CV PDF generation..."

# Generate PDF from cv.md using md-to-pdf
npx -y md-to-pdf cv.md

# Ensure target directories exist
mkdir -p static/uploads
mkdir -p static/ja/uploads

# Move the generated PDF to the correct locations
cp cv.pdf static/uploads/resume.pdf
mv cv.pdf static/ja/uploads/resume.pdf

echo "✅ CV PDF successfully generated and deployed to static/uploads/resume.pdf and static/ja/uploads/resume.pdf!"
