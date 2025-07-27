# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

HeadhuntSEA is a professional landing page for career relocation services to Southeast Asia. The repository contains a fully functional static website with modern design, responsive layout, and form integration.

## Current State

This repository contains a production-ready landing page:
- Professional landing page with hero section and contact form
- Modern responsive design with professional photography
- Form integration with Formspree for lead capture
- Optimized for performance and SEO
- Ready for server deployment

## Development Setup

This is a static HTML/CSS landing page project for HeadhuntSEA career relocation services.

**Local Development:**
- Use the custom Python server: `python3 server.py`
- Or use package.json scripts: `npm run dev` or `npm start`
- Alternative: `python3 -m http.server 8000`
- VS Code: Use Live Server extension

**File Structure:**
- `index.html` - Main landing page (deployment ready)
- `sea_relocation_landing.html` - Development version
- `man-europe.png` - Hero section background image
- `woman-asia.png` - Form section background image
- `server.py` - Custom local development server
- `package.json` - NPM scripts for development

## Deployment

The project is ready for server deployment with multiple hosting options:

**Quick Deploy:**
```bash
./deploy.sh
```

**Hosting Options:**

1. **Netlify (Recommended)**:
   - Connect GitHub repo or drag & drop files
   - Configuration: `netlify.toml` included
   - Automatic SSL and CDN

2. **Vercel**:
   - `npm i -g vercel && vercel`
   - Configuration: `vercel.json` included
   - GitHub integration available

3. **Traditional Web Hosting**:
   - Upload files via FTP/SFTP
   - Configuration: `.htaccess` included
   - Ensure server supports HTML5 routing

4. **GitHub Pages**:
   - Push to GitHub repository
   - Enable Pages in repository settings
   - Select source: Deploy from branch

**Required Files for Deployment:**
- `index.html` (main entry point)
- `man-europe.png` (hero background)
- `woman-asia.png` (form background)
- `.htaccess` (Apache server config)

## Architecture

Production-ready landing page:
- Single-page application with inline CSS and JavaScript
- Responsive design optimized for mobile and desktop
- Form integration with Formspree (requires setup)
- Professional SEO-friendly structure
- Optimized images and performance
- Security headers and caching configuration