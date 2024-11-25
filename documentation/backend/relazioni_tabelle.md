## Relazioni logiche

### Utente Relationships

- un utente può possedere piu' appartamenti, quindi la relazione e': `user` 1 a molti `apartments`.

### Apartments Relationships

- un appartamento può ricevere piu' messaggi, quindi la relazione e': `apartments` 1 a molti `messages`.
- un appartamento può avere molteplici registrazioni di visualizzazioni, quindi la relazione e': `apartments` 1 a molti `views`.
- un appartamento può essere associato a piu' sponsorizzazioni, quindi la relazione e': `apartments` M a M `sponsorships` (tramite tabella ponte o pivot).
- un appartamento può offrire diversi servizi aggiuntivi, quindi la relazione e': `apartments` M a M `additional services` (tramite tabella ponte o pivot).
- un appartamento può avere molteplici registrazioni statistiche, quindi la relazione e': `apartments` 1 a molti `statistics`.

## DB Show - @dartio

![image](https://github.com/user-attachments/assets/620a57c7-a73b-495c-9c04-ab52d0f978bf)