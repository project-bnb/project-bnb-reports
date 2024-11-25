# MVP backend

## user stories
- da utente voglio potermi registrare, fare login e logout
- da utente voglio poter vedere i dati dell'appartamento
- da utente voglio poter inviare un messaggio all'host
- da utente voglio poter vedere le statistiche dell'appartamento


### Ricezione dei Dati dal Frontend

- **Login**: Il frontend invia una richiesta POST al backend per il login. Il backend verifica l'esistenza dei dati e, se validi, invia un token come cookie al frontend.
- **Registrazione**: Il frontend invia una richiesta POST al backend per registrare un nuovo utente. Il backend crea l'utente con i dati forniti se non esistono già, altrimenti restituisce un errore.
- **Logout**: Il frontend invia una richiesta POST al backend per effettuare il logout. Il backend elimina il token e il frontend rimuove il cookie.