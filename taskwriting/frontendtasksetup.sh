# FRONTEND task setup
# https://github.com/project-bnb/BoolBnB-front
ORGANIZATION="project-bnb"
REPO="BoolBnB-front"

create_issue() {
 
  local title="Stilizzare la pagina per lo sponsorizzazione"
  local description=$(cat <<EOF

  - fare il layout della pagina per lo sponsorizzazione
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Aggiungere un asterisco ai campi obbligatori nella pagina di registrazione"
  local description=$(cat <<EOF

  - aggiungere un asterisco ai campi obbligatori nella pagina di registrazione
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Modificare la lingua nella pagina di registrazione"
  local description=$(cat <<EOF

  - modificare la lingua nella pagina di registrazione
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
  local title="Aggiungere l'autocompletamento della barra di ricerca"
  local description=$(cat <<EOF

  - aggiungere l'autocompletamento alla barra di ricerca
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
  local title="responsive frontend"
  local description=$(cat <<EOF

  - fare il responsive del frontend
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="gestire views"
  local description=$(cat <<EOF

- quando si clicca su un appartamento aumenta la view di +1 da aggiungere nel backend
- parte due gestire anche gli IP potresti usare questo https://ip-api.com/#JSON
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="backend da stilizzare tutto!"
  local description=$(cat <<EOF

- stilizzare tutto il backend
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
  local title="revisione grafica e lingue"
  local description=$(cat <<EOF

- fare la revisione grafica e delle lingue controllare se il responsive funziona la grafica e' bella e le lingue sono corrette
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
  local title="controllo totale requisiti tecnici"
  local description=$(cat <<EOF

- controllare che siano stati rispettati tutti i requisiti tecnici
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
  local title="controllo totale requisiti funzionali"
  local description=$(cat <<EOF

- controllare che siano stati rispettati tutti i requisiti funzionali
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"
  local title="controllare eventuali bug testare tutto"
  local description=$(cat <<EOF

- controllare eventuali bug testare tutto
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Implementare ricerca nel raggio di 20km"
  local description=$(cat <<EOF
- Aggiungere filtro per ricerca appartamenti nel raggio di 20km da un indirizzo
- Integrare con l'autocompletamento esistente
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Completare validazione frontend"
  local description=$(cat <<EOF
- Aggiungere asterischi ai campi obbligatori
- Implementare validazione client-side nella registrazione
- Uniformare la validazione in tutto il frontend
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Review finale UI/UX"
  local description=$(cat <<EOF
- Controllare responsive design su tutti i dispositivi
- Verificare consistenza delle lingue in tutte le pagine
- Revisione generale della grafica
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Implementare filtri servizi aggiuntivi"
  local description=$(cat <<EOF
- Aggiungere più opzioni di filtro per i servizi
- Migliorare UX dei filtri
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
