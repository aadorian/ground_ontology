#!/bin/bash
# Script to create GitHub issue for SWRL rules
# Usage: ./create_swrl_issue.sh

REPO="aadorian/ground_ontology"
TITLE="[SWRL]: Add SWRL rules for automated reasoning in Grounded Research Ontology"
BODY_FILE="SWRL_RULES_ISSUE.md"
LABELS="enhancement,reasoning"

echo "Creating GitHub issue for SWRL rules..."
echo "Repository: $REPO"
echo "Title: $TITLE"
echo ""
echo "To create this issue, you can:"
echo ""
echo "1. Use GitHub CLI (if installed):"
echo "   gh issue create --title \"$TITLE\" --body-file \"$BODY_FILE\" --label \"$LABELS\""
echo ""
echo "2. Use GitHub Web Interface:"
echo "   - Go to: https://github.com/$REPO/issues/new"
echo "   - Copy the content from $BODY_FILE"
echo "   - Paste it into the issue body"
echo ""
echo "3. Use GitHub API (requires GITHUB_TOKEN):"
echo "   curl -X POST https://api.github.com/repos/$REPO/issues \\"
echo "     -H 'Authorization: token \$GITHUB_TOKEN' \\"
echo "     -H 'Content-Type: application/json' \\"
echo "     -d '{\"title\":\"$TITLE\",\"body\":\"$(cat $BODY_FILE | sed 's/"/\\"/g' | tr '\n' '\\n')\",\"labels\":[\"enhancement\",\"reasoning\"]}'"

