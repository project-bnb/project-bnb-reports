*Principali*
- sponsor
- in piu' eventualmente statistiche

*SAL DETTO*
- l'autocompletamento non funziona correttamente fatto ora!!!!
- campi obbligatori aggiungere asterischi, implementare validazione front-end nella registrazione non ancora fatto
- modificare la lingua nella registrazione "controllare tutte le lingue" fatto! 
- l'autocompletamento del create deve esserci anche nella ricerca del frontend. Devo scrivere una via qualunque e da quella via nel raggio di 20 km devono uscire tutti gli appartamenti.
- Aggiungere più filtri dei servizi

*nel mentre*
grafiche e user friendly sia in front che in back

*se finiamo prima* 
- pagamenti

 -------------------
 ---
Siamo a cavallo, abbiamo questi 2 gg, oggi e domani, quindi almeno oggi:
* sponsor e logica funzionante, aggiustamenti grafica. @steven @josh
* responsive, se @Razzista riesce a finirlo prima, se vuole, si può finire il filter.
* controllo delle lingue e sistemazione @steven , tipo register e login hanno lingua inglese mentre create, etc., hanno lingua italiana.
* @josh mi occupo delle validazioni da inserire, asterischi quando è necessario, validazione front e poi back.
Se non finiamo questi richiesti oggi, avremo domani 4/12/2024, ma quel giorno volevo usarlo per fare miglioramenti o eventuali aggiunte, quindi 

vediamo oggi come va.

Per il resto, siamo in linea con i tempi.
 
 -------------------
 ---
ripunto questo 

- sponsor e logica funzionanti terminato ✅
- responsivo frontend terminato ✅
- controllo lingue ✅


da fare entro oggi:
- 20 km in frontend nei filter @Razzista o @josh
- asterischi nelle validazioni  @steven o @josh
- views, fare api +1 e gestire l'IP in modo che una stessa persona non possa spammare views @josh
- review responsive,grafica e lingue. @steven 

da fare entro domani sera: 
- lettura documentazione braintree - capire come implementare e comunicare al team - da applicare nel createsponsor del back https://www.braintreepayments.com/
- immagini reali su apartmentSeeder.php e preparare immagini copertina e da caricare sul sito

Controllo totale Requisiti tecnici
RT1 ✅Client-side Validation
RT2 ✅Salvataggio informazioni di geografiche
RT3 ⛔Sistema di Pagamento
RT4 🟠Il sito è responsive - serve revisione
RT5 ✅La ricerca degli appartamenti nella pagina dedicata e l’applicazione dei filtri
avvengono senza il refresh della pagina.

Requisiti funzionali
● (RF1) ✅ Permettere ai proprietari di appartamento di registrarsi alla piattaforma
● (RF2) ✅Permettere ai proprietari di appartamento registrati di aggiungere un
appartamento alla piattaforma
● (RF3) ✅Permette ai visitatori di ricercare una appartamento
● (RF4) ✅Permettere ai visitatori di vedere i dettagli di un appartamento
● (RF5) ✅Permettere ai visitatori di scrivere al proprietario di un appartamento per
chiedere informazioni
● (RF6) ✅Permettere ai proprietari di appartamento registrati di vedere i messaggi
ricevuti
(RF7) 🟠Permettere ai proprietari di appartamento registrati di
sponsorizzare il proprio appartamento - backoffice deve essere mostrato che sponsor si hanno
● (RF8) 🟠Permettere ai proprietari di appartamento registrati di vedere
statistiche dei propri appartamenti - da fare views backend


filtro sistemato refattorizzato
grafica fatta backend
responsive fatto 
