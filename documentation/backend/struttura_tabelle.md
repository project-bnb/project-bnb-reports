## Struttura delle Tabelle

### Tabella `users`

 - **id** numero univoco;
 - **name** nome;
 - **surname** cognome;
 - **birth_date** data di nascita;
 - **email** email (univoca);
 - **password** password;
 - **rememberToken** token per il ricordo;
 - **timestamps** data di creazione e aggiornamento;

### Tabella `apartments`

 - **id** numero univoco;
 - **user_id** numero riferimento all'utente;
 - **title** titolo;
 - **rooms** numero di stanze;
 - **beds** numero di letti;
 - **bathrooms** numero di bagni;
 - **square_meters** metri quadrati;
 - **address** indirizzo;
 - **latitude** latitudine;
 - **longitude** longitudine;
 - **image** immagine;
 - **is_visible** visibilità;
 - **timestamps** data di creazione e aggiornamento;

### Tabella `services`

 - **id** numero univoco;
 - **name** nome;
 - **timestamps** data di creazione e aggiornamento;

### Tabella `messages`

 - **id** numero univoco;
 - **message** testo del messaggio;
 - **sender_name** nome del mittente;
 - **apartment_id** numero riferimento all'appartamento;
 - **timestamps** data di creazione e aggiornamento;

### Tabella `views`

 - **id** numero univoco;
 - **ip_address** indirizzo IP;
 - **date** data;
 - **apartment_id** numero riferimento all'appartamento;
 - **timestamps** data di creazione e aggiornamento;

### Tabella `sponsorships`

 - **id** numero univoco;
 - **name** nome;
 - **price** prezzo;
 - **timestamps** data di creazione e aggiornamento;

### Tabella `statistics`

 - **id** numero univoco;
 - **apartment_id** numero riferimento all'appartamento;
 - **price** prezzo;
 - **timestamps** data di creazione e aggiornamento;

![image](https://github.com/user-attachments/assets/00eca0c4-22cb-43f4-957b-123a7c97b181)
