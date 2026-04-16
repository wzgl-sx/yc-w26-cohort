# Cloudflare Pages Deployment Guide

## Option 1: Direct Upload (No GitHub needed)

1. Go to https://dash.cloudflare.com/pages
2. Click "Create a project" → "Upload assets"
3. Drag and drop the `yc-w26-cohort` folder
4. Your site goes live instantly

## Option 2: GitHub Integration (Auto-deploy)

1. Create new GitHub repo: `yc-w26-cohort`
2. Upload files from this folder
3. In Cloudflare Pages: "Connect to Git"
4. Select your repo → Deploy

## Option 3: Wrangler CLI

```bash
# Install Wrangler
npm install -g wrangler

# Login (opens browser)
wrangler login

# Deploy
cd yc-w26-cohort
wrangler pages deploy . --project-name=yc-w26
```

## Option 4: API Deployment

If you have an API token, run:
```bash
./deploy.sh YOUR_API_TOKEN YOUR_ACCOUNT_ID
```

Or I can attempt direct upload if you share:
- Cloudflare API token (Pages:Edit permission)
- Account ID

---

## Your Site Will Be Available At:

`https://yc-w26.pages.dev` (or your custom domain)

---

## Files in This Folder

- `index.html` - Main website (interactive, searchable)
- `yc_w26_cohort.html` - Backup copy
- `yc_w26_companies.md` - Markdown summary
- `README.md` - Documentation
- `deploy.sh` - Helper script
