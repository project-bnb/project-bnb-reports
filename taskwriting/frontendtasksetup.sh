# FRONTEND task setup
# https://github.com/project-bnb/BoolBnB-front
ORGANIZATION="project-bnb"
REPO="BoolBnB-front"

create_issue() {
  local title="Modifica JSON API | MODIFICHE AXIOS E FORMS"
  local description=$(cat <<EOF
**Descrizione:**  
Da modificare quindi le pagine che usano AXIOS e le FORMS: GET POST PUT DELETE.  
Modificare il JSON API in modo che sia in formato JSON e che restituisca i dati in formato JSON dei dati appartamento.

**Esempio di JSON:**
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
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Decidere Grafica | SOLO GRAFICA"
  local description=$(cat <<EOF
**Descrizione:**  
Decidere la grafica del sito, in base al BRIEF SOLO GRAFICA NIENTE LOGICA.

**Da considerare:**
- Come deve essere la struttura del sito, navbar, footer, ecc.
- Dove mettere il login, se nella stessa pagina o in una pagina dedicata.
- Cosa mettere all'inizio pagina, banner, titolo, ecc.
- Se fare una modale quando si clicca un appartamento o in una pagina dedicata.

**MILESTONE 1:**  
Creare una grafica base per il sito. Questo include un layout iniziale che mostri gli appartamenti in una griglia sulla homepage. Questo layout sarà visibile a tutti i tipi di utenti:
- UR: Utente Registrato
- URA: Utente Registrato con Appartamento
- UI: Utente Non Registrato

**MILESTONE 2:**  
Implementare elementi di navigazione come Navbar e Footer.  
Aggiungere funzionalità di filtraggio e paginazione per migliorare l'esperienza utente nella navigazione degli appartamenti.

**MILESTONE 3:**  
Consentire agli utenti registrati (UR) e non registrati (UI) di inviare email per comunicare messaggi.  
Assicurarsi che gli utenti registrati (UR) possano visualizzare i loro messaggi nel profilo o nell'appartamento in cui hanno scritto il messaggio.

**MILESTONE 4:**  
Creare una pagina dedicata esclusivamente agli utenti registrati con appartamento (URA), che includa dettagli sull'appartamento e opzioni per modificare o eliminare l'appartamento.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Creare un autenticatore funzionante | SOLO LOGICA"
  local description=$(cat <<EOF
**Descrizione:**  
Istruzioni per creare un autenticatore funzionante SOLO LOGICA.  
Il frontend richiederà solo un modulo di autenticazione che invia un'email, un nome utente e una password al backend per la verifica.

**Formato JSON desiderato per il backend:**
\`\`\`json
{
  "email": "email",
  "username": "username",
  "password": "password",
  "token": "token"
}
\`\`\`

**MILESTONE 1:**  
Al termine dell'autenticazione, un token dovrebbe essere ricevuto e memorizzato nello storage locale.  
Questo token deve essere inviato come intestazione con ogni richiesta successiva.  
Considera di rivedere i tutorial per la guida e collabora se necessario.

**MILESTONE 2:**  
"UTILIZZEREMO I METODI CHE GIA ABBIAMO IMPLEMENTATO".  
Il token abiliterà metodi aggiuntivi, come:
- UR (Utente Registrato): Accedere alla pagina principale, visualizzare i messaggi, prenotare un appartamento, inviare messaggi all'host e visualizzare il proprio profilo.
- URA (Utente Registrato con Appartamento): Accedere alla pagina principale, visualizzare i messaggi, prenotare un appartamento, inviare messaggi all'host, visualizzare il proprio profilo e gestire il proprio appartamento su una pagina dedicata.
- UI (Utente Non Registrato): Accedere alla pagina principale, registrarsi, accedere e inviare messaggi via email senza registrazione.

**MILESTONE 3:**  
Implementare una funzione di logout che cancella il token dallo storage locale e reindirizza l'utente alla pagina di login. Sarà un POST al backend per la cancellazione del token.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Controllare i forms aggiungere i validatori | SOLO LOGICA"
  local description=$(cat <<EOF
**Descrizione:**  
Controllare i forms e aggiungere i validatori per Login e Register.
EOF
  )
  gh issue create --repo "$ORGANIZATION/$REPO" --title "$title" --body "$description"

  local title="Creare un sistema di messaggistica funzionante | SOLO LOGICA"
  local description=$(cat <<EOF
**Descrizione:**  
Creare un sistema di messaggistica funzionante, che permetta di inviare e ricevere messaggi tra utenti tramite POST e GET al backend.
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
