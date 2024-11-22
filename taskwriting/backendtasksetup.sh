# BACKEND task setup
# https://github.com/project-bnb/laravel-db-bnb
ORGANIZATION="project-bnb"
REPO="laravel-db-bnb"

create_issue() {

  local title=$1
  local body=$2

  title="Creare filtraggi API | Backend"
  body=$(cat <<EOF
**Descrizione:**  
Creare i filtraggi per le API, che dovranno includere i seguenti filtri:
- Numero di stanze
- Letti
- Bagni
- Metri quadrati
- Prezzo
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$body"

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
