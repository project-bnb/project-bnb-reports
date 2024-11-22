# FRONTEND

## Descrizione

Questo documento l'ho scritto per pianificare il frontend del progetto, dalla base alle cose più complesse.

Seguendo il wireframe di Figma, il frontend sarà composto da:

---

## Route 1: Home

### 1. HOME | DESIGN
Decidere come sarà la home, un'idea generale di come sarà composta. Per ora non è necessario creare nulla, ma che almeno sia deciso e si abbia un'idea di come sarà composta. Sponsored apartments...

La home sarà composta da:
- **Navbar**
- **Filtri**
- **Appartamenti**: quindi da utilizzare il GET per prendere i dati

### 2. BASIC FILTERS | LOGIC (opzionale per il momento)
Filtri di base per la home:
- Numero di stanze
- Letti
- Bagni
- Square Meters
- Prezzo

### 3. Click su appartamento | DESIGN
Paginazione per gli appartamenti: dovrà mostrare quello che deve far vedere un appartamento. L'appartamento verrà passato tramite props da home così da non dover fare un altro fetch e una form per inviare i messaggi al proprietario. Dovrà avere i campi:
- Nome
- Email
- Messaggio

---

## Route 2: Sign in / Sign up

### 1. Sign in / Sign up | DESIGN and LOGIC
Paginazione form per login e registrazione (da scegliere se metterlo come modale o redirect in home) conterrà i campi:
- Email
- Password
- Nome
- Cognome
- Data di nascita
- Genere

Saranno dei POST per la registrazione e per il login. Invieranno un JSON con i dati per la registrazione e per il login, e poi avranno un token per la sessione.

Questo token da parte di frontend dovrà essere salvato in un cookie o in localStorage, mentre il backend lo salva in un database. Quando si farà il logout, il cookie o localStorage dovranno essere svuotati e mandare un POST per il logout che cancelli il token dal database.

### 2. Dashboard | DESIGN
Paginazione dashboard: dovrà mostrare:
- **Navbar**
- I propri appartamenti se registrato come proprietario
- I propri messaggi se registrato come utente

### 3. My Apartments | DESIGN
Potrà fare:
- Vedere i propri appartamenti

---

## Route 2.1: Sponsored Apartments
- Mostrare sponsor dell'appartamento

## Route 2.2: Statistic Apartments | Views
- Mostrare le statistiche degli appartamenti

## Route 2.3: Add/Edit Apartment | DESIGN
- Mostrare il form per aggiungere un appartamento
- Mostrare il form per modificare un appartamento
- Bottone per eliminare un appartamento

## Route 2.4: Apartment Messages | DESIGN
- Mostrare l'appartamento cliccato
- Mostrare i messaggi dell'appartamento

Se sei il proprietario puoi:
- Eliminare un messaggio
- Visualizzare i messaggi

