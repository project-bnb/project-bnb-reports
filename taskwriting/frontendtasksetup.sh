# FRONTEND task setup
# https://github.com/project-bnb/BoolBnB-front
ORGANIZATION="project-bnb"
REPO="BoolBnB-front"

create_issue() {
  local title="MTM API"
  local description=$(cat <<EOF
Le api dovranno restituire i dati in formato json dei dati appartmento quindi:

{
    "user_id": 2,
    "title": "Esempio Appartamento",
    "rooms": 3,
    "beds": 2,
    "bathrooms": 1,
    "square_meters": 75,
    "address": "Via Esempio 123, Città",
    "latitude": 40.7128,
    "longitude": -74.0060,
    "image": "url_o_percorso_immagine",
    "is_visible": true
}

EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="relazioni DB"
  local description=$(cat <<EOF
    sistemare il DB secondo al nuovo diagramma, e modificare il readme
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"


}

while true; do
  echo "crea la issue? (s/n)"
  read -r choice
  if [[ "$choice" == "s" ]]; then
    create_issue
  else
    echo "Uscita dallo script."
    break
  fi
done
