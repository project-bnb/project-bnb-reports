# FRONTEND task setup
# https://github.com/project-bnb/BoolBnB-front
ORGANIZATION="project-bnb"
REPO="BoolBnB-front"

create_issue() {
  local title="Sign in / Sign up | DESIGN and LOGIC"
  local description=$(cat <<EOF
**Descrizione:**  
Paginazione form per login e registrazione (da scegliere se metterlo come modale o redirect in home) conterrà i campi:
- Email
- Password
- Nome
- Cognome
- Data di nascita
- Genere

Saranno dei POST per la registrazione e per il login. Invieranno un JSON con i dati per la registrazione e per il login, e poi avranno un token per la sessione.

**Gestione del token:**
- Salvare il token in un cookie o in localStorage.
- Il backend salva il token in un database.
- Al logout, svuotare il cookie o localStorage e inviare un POST per cancellare il token dal database.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Dashboard | DESIGN"
  local description=$(cat <<EOF
**Descrizione:**  
Paginazione dashboard: dovrà mostrare:
- **Navbar**
- I propri appartamenti se registrato come proprietario
- I propri messaggi se registrato come utente
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="My Apartments | DESIGN"
  local description=$(cat <<EOF
**Descrizione:**  
Funzionalità per vedere i propri appartamenti.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Sponsored Apartments"
  local description=$(cat <<EOF
**Descrizione:**  
Mostrare sponsor dell'appartamento.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Statistic Apartments | Views"
  local description=$(cat <<EOF
**Descrizione:**  
Mostrare le statistiche degli appartamenti.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Add/Edit Apartment | DESIGN"
  local description=$(cat <<EOF
**Descrizione:**  
- Mostrare il form per aggiungere un appartamento.
- Mostrare il form per modificare un appartamento.
- Bottone per eliminare un appartamento.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Apartment Messages | DESIGN"
  local description=$(cat <<EOF
**Descrizione:**  
- Mostrare l'appartamento cliccato.
- Mostrare i messaggi dell'appartamento.

**Se sei il proprietario puoi:**
- Eliminare un messaggio.
- Visualizzare i messaggi.
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
