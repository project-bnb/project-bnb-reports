# BACKEND task setup
# https://github.com/project-bnb/laravel-db-bnb
ORGANIZATION="project-bnb"
REPO="BoolBnB-back"

create_issue() {
  local title="GET /api/apartments API | MTM API"
  local description=$(cat <<EOF
Le API dovranno restituire i dati in formato JSON dei dati appartamento quindi:

\`\`\`json
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
    "is_visible": true,
    "services": [
        {
            "service_id": 1,
            "name": "WiFi"
        },
        {
            "service_id": 2,
            "name": "Piscina"
        }
    ],
    "sponsorships": [
        {
            "sponsorship_id": 1,
            "name": "Sponsorizzazione 1"
        }
    ]
}
\`\`\`

La parte services e sponsorships vengono da una tabella pivot; capire come fare a mandare un JSON di questo formato.

EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"


  local title="POST /api/apartments API | MTM API"
  local description=$(cat <<EOF
Le API dovranno avere i seguenti campi:
\`\`\`json
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
    "is_visible": true,
    "services": [
        {
            "service_id": 1,
            "name": "WiFi"
        },
        {
            "service_id": 2,
            "name": "Piscina"
        }
    ],
    "sponsorships": [
        {
            "sponsorship_id": 1,
            "name": "Sponsorizzazione 1"
        }
    ]
}
\`\`\`
Gestire un POST che crea un appartamento, e dovrà essere in grado di modificare i campi services e sponsorships.

EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="PUT /api/apartments/{id} API | MTM API"
  local description=$(cat <<EOF
L'API dovrà essere uguale a quella di creazione, solo che dovrà aggiornare l'appartamento corrispondente all'id passato.

Le API dovranno avere i seguenti campi:
\`\`\`json
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
    "is_visible": true,
    "services": [
        {
            "service_id": 1,
            "name": "WiFi"
        },
        {
            "service_id": 2,
            "name": "Piscina"
        }
    ],
    "sponsorships": [
        {
            "sponsorship_id": 1,
            "name": "Sponsorizzazione 1"
        }
    ]
}
\`\`\`
Fare l'API per aggiornare i dati di un appartamento; dovrà essere possibile passare i dati per services e sponsorships.

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
