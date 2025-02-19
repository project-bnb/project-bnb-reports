# TITLE 
# SITE>...
ORGANIZATION="CHANGETONAMEORGANIZATION"
REPO="CHANGETONAMEREPO"

create_issue() {
 
  local title="test | test"
  local description=$(cat <<EOF
  test sag
  \`\`\`json
  {
    "test": "test"
  }
  \`\`\`
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
}

while true; do
  echo "crea la issue? (s/n)"
  read -r choice
  if [ "$choice" = "s" ]; then
    create_issue
  else
    echo "Uscita dallo script."
    break
  fi
done
