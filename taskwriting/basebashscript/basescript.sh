# TITLE 
# SITE>...
ORGANIZATION="CHANGETONAMEORGANIZATION"
REPO="CHANGETONAMEREPO"

create_issue() {


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
