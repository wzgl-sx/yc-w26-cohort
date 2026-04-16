#!/bin/bash
# Deploy YC W26 Cohort to Cloudflare Pages
# Usage: ./deploy.sh YOUR_API_TOKEN YOUR_ACCOUNT_ID

API_TOKEN=$1
ACCOUNT_ID=$2
PROJECT_NAME="yc-w26-cohort"

if [ -z "$API_TOKEN" ] || [ -z "$ACCOUNT_ID" ]; then
    echo "Usage: ./deploy.sh YOUR_API_TOKEN YOUR_ACCOUNT_ID"
    echo ""
    echo "Get your API token from: https://dash.cloudflare.com/profile/api-tokens"
    echo "Create token with: Account:Cloudflare Pages:Edit"
    echo "Get Account ID from: https://dash.cloudflare.com → Right sidebar"
    exit 1
fi

echo "Creating project: $PROJECT_NAME"

# Create project
curl -X POST "https://api.cloudflare.com/client/v4/accounts/$ACCOUNT_ID/pages/projects" \
    -H "Authorization: Bearer $API_TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"name\":\"$PROJECT_NAME\",\"production_branch\":\"main\"}" 2>/dev/null

echo ""
echo "Project created. Now go to Cloudflare Dashboard → Pages → $PROJECT_NAME"
echo "Connect your GitHub repo or drag-drop the yc-w26-cohort folder"
