# BACKEND task setup
# https://github.com/project-bnb/laravel-db-bnb
ORGANIZATION="project-bnb"
REPO="laravel-db-bnb"

create_issue() {
  local title="Implementare sistema di views con IP tracking"
  local description=$(cat <<EOF
- Creare API endpoint per incrementare view (+1)
- Implementare tracking degli IP per evitare spam di views
- Utilizzare ip-api.com per la gestione degli IP
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Implementare Braintree payment system"
  local description=$(cat <<EOF
- Studiare documentazione Braintree
- Implementare sistema di pagamento nel backend
- Integrare con createsponsor
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Aggiornare ApartmentSeeder con immagini reali"
  local description=$(cat <<EOF
- Aggiornare seeder con immagini reali per gli appartamenti
- Preparare immagini di copertina appropriate
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Implementare visualizzazione sponsor nel backoffice"
  local description=$(cat <<EOF
- Mostrare gli sponsor attivi nel backoffice
- Visualizzare lo stato delle sponsorizzazioni per ogni appartamento
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Implementare statistiche appartamenti"
  local description=$(cat <<EOF
- Creare dashboard per visualizzare statistiche
- Implementare tracking delle views
- Mostrare statistiche per proprietario
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
