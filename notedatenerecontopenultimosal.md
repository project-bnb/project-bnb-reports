*Principali*
- Sponsor
- Eventualmente, statistiche

*Note Importanti*
- L'autocompletamento non funzionava correttamente, ora è stato sistemato!
- Aggiungere asterischi per i campi obbligatori e implementare la validazione front-end per la registrazione (ancora da completare).
- Modificare la lingua nella registrazione: "controllare tutte le lingue" è stato completato!
- L'autocompletamento deve essere presente anche nella ricerca del frontend. Scrivendo un indirizzo qualsiasi, devono apparire tutti gli appartamenti nel raggio di 20 km.
- Aggiungere ulteriori filtri per i servizi.

*Nel Frattempo*
- Migliorare la grafica e l'usabilità sia nel frontend che nel backend.

*Se Finiremo Prima*
- Implementare il sistema di pagamenti.

-------------------
---
Siamo a buon punto, abbiamo due giorni, oggi e domani. Quindi, per oggi:
* Sponsor e logica funzionante, con aggiustamenti grafici. @steven @josh
* Responsività: se @Razzista riesce a completarlo prima, possiamo finire il filtro.
* Controllo delle lingue e sistemazione: @steven, il login e la registrazione sono in inglese, mentre il create e altri sono in italiano.
* @josh si occuperà delle validazioni da inserire, con asterischi dove necessario, validazione front-end e poi back-end.
Se non completiamo questi requisiti oggi, avremo domani, 4/12/2024, ma quel giorno vorrei utilizzarlo per miglioramenti o eventuali aggiunte, quindi vediamo come va oggi.

Per il resto, siamo in linea con i tempi.

-------------------
---
Riepilogo:

- Sponsor e logica funzionanti: completato ✅
- Responsività del frontend: completato ✅
- Controllo delle lingue: completato ✅

Da fare entro oggi:
- Implementare il filtro di 20 km nel frontend: @Razzista o @josh
- Aggiungere asterischi nelle validazioni: @steven o @josh
- Gestire le views: creare API per +1 e gestire l'IP per evitare spam di views: @josh
- Revisione della responsività, grafica e lingue: @steven

Da fare entro domani sera:
- Leggere la documentazione di Braintree: capire come implementare e comunicare al team, da applicare nel createsponsor del backend: https://www.braintreepayments.com/
- Aggiornare apartmentSeeder.php con immagini reali e preparare le immagini di copertura da caricare sul sito.

Controllo totale dei Requisiti Tecnici:
RT1 ✅ Validazione lato client
RT2 ✅ Salvataggio delle informazioni geografiche
RT3 ✅ Sistema di pagamento
RT4 ✅ Il sito è responsive - necessita di revisione
RT5 ✅ La ricerca degli appartamenti nella pagina dedicata e l’applicazione dei filtri avvengono senza il refresh della pagina.

Requisiti Funzionali:
● (RF1) ✅ Permettere ai proprietari di appartamenti di registrarsi sulla piattaforma
● (RF2) ✅ Permettere ai proprietari di appartamenti registrati di aggiungere un appartamento alla piattaforma
● (RF3) ✅ Permettere ai visitatori di cercare un appartamento
● (RF4) ✅ Permettere ai visitatori di vedere i dettagli di un appartamento
● (RF5) ✅ Permettere ai visitatori di contattare il proprietario di un appartamento per richiedere informazioni
● (RF6) ✅ Permettere ai proprietari di appartamenti registrati di visualizzare i messaggi ricevuti
● (RF7) 🟠 Permettere ai proprietari di appartamenti registrati di sponsorizzare il proprio appartamento - il backoffice deve mostrare quali sponsor sono attivi
● (RF8) 🟠 Permettere ai proprietari di appartamenti registrati di visualizzare le statistiche dei propri appartamenti - da implementare le views nel backend

Filtro sistemato e refattorizzato.
Grafica backend completata.
Responsività completata.
